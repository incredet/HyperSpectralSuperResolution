"""
spectral/sfim.py
----------------
Pure-Python implementation of SFIM (Smoothing Filter-based Intensity
Modulation) with hypersharpening, matching the MATLAB ``SFIM.m`` (mode 3).

Algorithm
---------
1.  Downsample each MS band to HS resolution via bicubic interpolation
    → ``low_res_ms`` (rows_lr, cols_lr, B_ms).
2.  Fit NNLS (non-negative least squares) per HS band:
        [low_res_ms, 1] @ X ≈ HS
    giving coefficient matrix ``X`` (B_ms+1, B_hs).
3.  Compute per-band R² of the NNLS fit.
4.  For each HS band *i*:
    a.  Bicubic-upsample HS band to HR grid → ``hs_up`` (rows_hr, cols_hr).
    b.  Compute synthetic band at HR:  ``synth_hr = [MS, 1] @ X[:, i]``
    c.  Compute synthetic band at LR:  ``synth_lr = [low_res_ms, 1] @ X[:, i]``
    d.  Bicubic-upsample ``synth_lr`` to HR → ``synth_lr_up``.
    e.  Modulate:  ``out[i] = hs_up * clip(synth_hr / synth_lr_up, 0, 2)``

This is the "hypersharpening" variant of SFIM [2] which uses NNLS-fitted
linear combinations of MS bands (with intercept) instead of a single
best-correlated MS band.

Performance
-----------
Uses OpenCV (cv2) when available for ~10-20× faster bicubic resize
compared to per-band scipy.ndimage.zoom.  Falls back to vectorized 3D
scipy zoom if cv2 is not installed.

References
----------
[1] Liu, 2000, "Smoothing filter-based intensity modulation"
[2] Selva et al., 2015, "Hypersharpening: A first approach on SIM-GA data"

Public API
----------
  sfim_fuse(hs, ms)           → fused (H_hr, W_hr, B_hs), r2 (B_hs,)
  sfim_fuse_tile(hs_path, ms_path, out_path)  → file-based wrapper
"""

from __future__ import annotations

from pathlib import Path
from typing import Optional

import numpy as np
from scipy.ndimage import zoom as scipy_zoom, gaussian_filter
from scipy.optimize import nnls

try:
    import cv2
    _HAS_CV2 = True
except ImportError:
    _HAS_CV2 = False

try:
    import rasterio
except ImportError:
    rasterio = None


# ---------------------------------------------------------------------------
# Resize helpers  (cv2 fast path  /  scipy fallback)
# ---------------------------------------------------------------------------

def _resize_3d_cv2(arr: np.ndarray, target_hw: tuple[int, int],
                   anti_alias: bool = False) -> np.ndarray:
    """
    Resize (H, W, B) array to (target_h, target_w, B) via OpenCV bicubic.

    Parameters
    ----------
    arr : (H_in, W_in, B) float64
    target_hw : (H_out, W_out)
    anti_alias : if True and downsampling, apply Gaussian pre-filter
    """
    h_in, w_in = arr.shape[:2]
    h_out, w_out = target_hw

    src = arr
    if anti_alias and (h_out < h_in or w_out < w_in):
        # Gaussian AA — sigma = scale / 2.35482 (FWHM = scale), matches
        # Wald protocol convention used in cnmf._gaussian_downsample and
        # tif2mat_wald.py.
        sigma_h = (h_in / h_out) / 2.35482 if h_out < h_in else 0.0
        sigma_w = (w_in / w_out) / 2.35482 if w_out < w_in else 0.0
        # cv2.GaussianBlur needs odd kernel sizes (≥ 6σ+1)
        kh = max(int(np.ceil(sigma_h * 6)) | 1, 1)
        kw = max(int(np.ceil(sigma_w * 6)) | 1, 1)
        src = cv2.GaussianBlur(src, (kw, kh), sigmaX=sigma_w, sigmaY=sigma_h)

    # cv2.resize expects dsize = (width, height)
    out = cv2.resize(src, (w_out, h_out), interpolation=cv2.INTER_CUBIC)

    # cv2 drops last dim when B==1
    if out.ndim == 2:
        out = out[:, :, np.newaxis]

    return out


def _resize_3d_scipy(arr: np.ndarray, target_hw: tuple[int, int],
                     anti_alias: bool = False) -> np.ndarray:
    """
    Resize (H, W, B) array to (target_h, target_w, B) via scipy 3D zoom.
    Fallback when cv2 is not available.
    """
    h_in, w_in = arr.shape[:2]
    h_out, w_out = target_hw
    zoom_h = h_out / h_in
    zoom_w = w_out / w_in

    src = arr
    if anti_alias and (zoom_h < 1.0 or zoom_w < 1.0):
        # sigma = scale / 2.35482, matches Wald convention
        sigma_h = (1.0 / zoom_h) / 2.35482 if zoom_h < 1.0 else 0.0
        sigma_w = (1.0 / zoom_w) / 2.35482 if zoom_w < 1.0 else 0.0
        src = gaussian_filter(src, sigma=(sigma_h, sigma_w, 0.0))

    return scipy_zoom(src, (zoom_h, zoom_w, 1.0), order=3)


def _resize_3d(arr: np.ndarray, target_hw: tuple[int, int],
               anti_alias: bool = False) -> np.ndarray:
    """Dispatch to cv2 (fast) or scipy (fallback)."""
    if _HAS_CV2:
        return _resize_3d_cv2(arr, target_hw, anti_alias=anti_alias)
    return _resize_3d_scipy(arr, target_hw, anti_alias=anti_alias)


# ---------------------------------------------------------------------------
# Core algorithm
# ---------------------------------------------------------------------------

def _nnls_coefficients(Y: np.ndarray, D: np.ndarray) -> np.ndarray:
    """
    Solve NNLS: D @ X ≈ Y, column by column.

    Parameters
    ----------
    Y : (N, B_hs)  — target (HS pixels)
    D : (N, B_ms+1) — predictor (downsampled MS pixels with intercept)

    Returns
    -------
    X : (B_ms+1, B_hs) — non-negative coefficients
    """
    n_pred = D.shape[1]
    n_hs = Y.shape[1]
    X = np.zeros((n_pred, n_hs), dtype=np.float64)

    for i in range(n_hs):
        X[:, i], _ = nnls(D, Y[:, i])

    return X


def _compute_r2(Y: np.ndarray, Y_pred: np.ndarray) -> np.ndarray:
    """Per-column R² between Y and Y_pred. Shape: (B_hs,)."""
    ss_res = np.sum((Y - Y_pred) ** 2, axis=0)
    ss_tot = np.sum((Y - Y.mean(axis=0, keepdims=True)) ** 2, axis=0)
    r2 = np.ones(Y.shape[1], dtype=np.float64)
    nonconstant = ss_tot > 0
    r2[nonconstant] = 1.0 - ss_res[nonconstant] / ss_tot[nonconstant]
    return r2


def sfim_fuse(
    hs: np.ndarray,
    ms: np.ndarray,
    *,
    min_r2: float = -np.inf,
    ratio_clip: float = 2.0,
    eps: float = 1e-6,
) -> tuple[np.ndarray | None, np.ndarray]:
    """
    SFIM hypersharpening fusion (vectorized).

    Parameters
    ----------
    hs : (H_lr, W_lr, B_hs) float64
        Low-resolution hyperspectral image.
    ms : (H_hr, W_hr, B_ms) float64
        High-resolution multispectral image.
    min_r2 : float
        If worst per-band R² < min_r2, return (None, r2) early.
    ratio_clip : float
        Maximum modulation ratio (default 2.0, matches MATLAB).
    eps : float
        Denominator floor to prevent division by zero.

    Returns
    -------
    fused : (H_hr, W_hr, B_hs) float64 or None
        Fused image at MS resolution.  None if R² filter rejects.
    r2 : (B_hs,) float64
        Per-band R² of the NNLS fit.
    """
    rows_lr, cols_lr, B_hs = hs.shape
    rows_hr, cols_hr, B_ms = ms.shape

    # Step 1: Downsample MS to HS resolution — single 3D call (was 10 per-band calls)
    low_res_ms = _resize_3d(ms, (rows_lr, cols_lr), anti_alias=True)

    # Step 2: NNLS regression — [low_res_ms, 1] @ X ≈ HS
    N_lr = rows_lr * cols_lr
    A_lr = np.column_stack([
        low_res_ms.reshape(N_lr, B_ms),
        np.ones(N_lr, dtype=np.float64),
    ])  # (N_lr, B_ms+1)
    Y_hs = hs.reshape(N_lr, B_hs)

    X = _nnls_coefficients(Y_hs, A_lr)  # (B_ms+1, B_hs)

    # Step 3: Per-band R²
    Y_pred = A_lr @ X
    r2 = _compute_r2(Y_hs, Y_pred)

    if np.min(r2) < min_r2:
        return None, r2

    # Step 4: Modulation — fully vectorized (no per-band loops)
    N_hr = rows_hr * cols_hr
    A_hr = np.column_stack([
        ms.reshape(N_hr, B_ms),
        np.ones(N_hr, dtype=np.float64),
    ])  # (N_hr, B_ms+1)

    # Synthetic at HR and LR for all bands at once
    synth_hr_all = (A_hr @ X).reshape(rows_hr, cols_hr, B_hs)
    synth_lr_all = (A_lr @ X).reshape(rows_lr, cols_lr, B_hs)

    # Upsample HS and synth_lr — single 3D call each (was 32+32 per-band calls)
    hs_up = _resize_3d(hs, (rows_hr, cols_hr), anti_alias=False)
    synth_lr_up = _resize_3d(synth_lr_all, (rows_hr, cols_hr), anti_alias=False)

    # Vectorized modulation over all bands at once
    ratio = synth_hr_all / np.maximum(synth_lr_up, eps)
    np.clip(ratio, 0.0, ratio_clip, out=ratio)
    fused = hs_up * ratio

    return fused, r2


# ---------------------------------------------------------------------------
# File-based wrapper (for use in notebooks)
# ---------------------------------------------------------------------------

def sfim_fuse_tile(
    hs_path: str | Path,
    ms_path: str | Path,
    out_path: str | Path | None = None,
    *,
    min_r2: float = -np.inf,
    scale_factor: float = 10_000.0,
    nodata_val: int = 65535,
) -> dict:
    """
    Run SFIM fusion on a tile pair and optionally save the result.

    Parameters
    ----------
    hs_path : path to EMIT-b32 GeoTIFF (B_hs, H_lr, W_lr), uint16 DN
    ms_path : path to S2 GeoTIFF (B_ms, H_hr, W_hr), uint16 DN
    out_path : if given, write fused GeoTIFF here (uint16, DN scale)
    min_r2 : R² threshold — skip modulation if worst band < this
    scale_factor : DN → reflectance divisor (default 10000)
    nodata_val : nodata sentinel for EMIT tiles (default 65535)

    Returns
    -------
    dict with keys:
        "fused"    : (B_hs, H_hr, W_hr) uint16 or None if filtered
        "r2"       : (B_hs,) per-band R²
        "r2_mean"  : float
        "status"   : "OK" | "R2_FILTERED" | "ERROR"
        "out_path" : str or None
    """
    assert rasterio is not None, "rasterio is required for file-based SFIM"

    # Read tiles
    with rasterio.open(hs_path) as ds:
        hs_raw = ds.read().astype(np.float64)  # (B_hs, H_lr, W_lr)
        hs_profile = ds.profile.copy()

    with rasterio.open(ms_path) as ds:
        ms_raw = ds.read().astype(np.float64)  # (B_ms, H_hr, W_hr)
        ms_profile = ds.profile.copy()

    # Mask nodata, convert to reflectance
    hs_raw[hs_raw == nodata_val] = np.nan
    ms_raw[ms_raw == 0] = np.nan  # S2 nodata sentinel

    hs_refl = hs_raw / scale_factor  # (B, H, W)
    ms_refl = ms_raw / scale_factor

    # Replace NaN with 0 for the fusion (edges)
    hs_refl = np.nan_to_num(hs_refl, nan=0.0)
    ms_refl = np.nan_to_num(ms_refl, nan=0.0)

    # Transpose to (H, W, B) for sfim_fuse
    hs_hwb = np.transpose(hs_refl, (1, 2, 0))  # (H_lr, W_lr, B_hs)
    ms_hwb = np.transpose(ms_refl, (1, 2, 0))  # (H_hr, W_hr, B_ms)

    # Run SFIM
    fused_hwb, r2_nnls = sfim_fuse(hs_hwb, ms_hwb, min_r2=min_r2)

    if fused_hwb is None:
        return {
            "fused": None,
            "r2_nnls": r2_nnls, "r2_nnls_mean": float(np.mean(r2_nnls)),
            "r2_wald": np.zeros_like(r2_nnls), "r2_wald_mean": 0.0,
            "status": "R2_FILTERED", "out_path": None,
        }

    # ── Wald self-consistency R² (apples-to-apples with CNMF) ──
    # Downsample fused HR output back to LR, compare to original HS.
    from spectral.cnmf import _gaussian_downsample, _compute_r2
    rows_lr, cols_lr, bands_hs = hs_hwb.shape
    rows_hr, _, _ = ms_hwb.shape
    scale_w = rows_hr // rows_lr
    fused_lr = _gaussian_downsample(fused_hwb, scale_w)
    r2_wald = _compute_r2(
        hs_hwb.reshape(-1, bands_hs),
        fused_lr.reshape(-1, bands_hs),
    )

    # Convert back to (B, H, W) uint16
    fused_bwh = np.transpose(fused_hwb, (2, 0, 1))  # (B_hs, H_hr, W_hr)
    fused_dn = np.clip(fused_bwh * scale_factor, 0, 65534).astype(np.uint16)

    # Write output
    out_str = None
    if out_path is not None:
        out_path = Path(out_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)

        # Read wavelength tags from HS tile for the output
        wavelengths_nm = None
        with rasterio.open(hs_path) as ds:
            wl_list = []
            for b in range(1, ds.count + 1):
                bt = ds.tags(b)
                w = bt.get("wavelength") or bt.get("WAVELENGTH")
                if w is not None:
                    wl_list.append(float(w))
            if len(wl_list) == ds.count:
                wavelengths_nm = wl_list

        profile = ms_profile.copy()
        profile.update(
            count=fused_dn.shape[0],
            dtype="uint16",
            nodata=nodata_val,
            driver="GTiff",
            compress="DEFLATE",
            predictor=2,
            tiled=True,
            BIGTIFF="IF_SAFER",
        )
        profile.pop("interleave", None)

        with rasterio.open(out_path, "w", **profile) as dst:
            dst.write(fused_dn)
            if wavelengths_nm:
                for i, wl in enumerate(wavelengths_nm):
                    dst.update_tags(i + 1, wavelength=f"{wl:.4f}")

        out_str = str(out_path)

    return {
        "fused": fused_dn,
        "r2_wald": r2_wald,
        "r2_wald_mean": float(np.mean(r2_wald)),
        "r2_wald_per_band": r2_wald.tolist(),
        "r2_nnls": r2_nnls,
        "r2_nnls_mean": float(np.mean(r2_nnls)),
        "r2_nnls_per_band": r2_nnls.tolist(),
        "status": "OK",
        "out_path": out_str,
    }
