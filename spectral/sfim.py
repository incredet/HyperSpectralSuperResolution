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
from scipy.ndimage import zoom, gaussian_filter
from scipy.optimize import nnls

try:
    import rasterio
except ImportError:
    rasterio = None


# ---------------------------------------------------------------------------
# Core algorithm
# ---------------------------------------------------------------------------

def _bicubic_resize_2d(arr_2d: np.ndarray, target_shape: tuple[int, int]) -> np.ndarray:
    """
    Resize a 2D array to target_shape using bicubic (order=3) interpolation.

    When downsampling, applies a Gaussian anti-aliasing pre-filter to match
    MATLAB's imresize behaviour. The kernel sigma is derived from the
    downsampling factor: sigma = 0.5 * (1/zoom_factor), which is the standard
    rule for preventing aliasing before decimation.
    """
    zoom_h = target_shape[0] / arr_2d.shape[0]
    zoom_w = target_shape[1] / arr_2d.shape[1]

    # Anti-alias when downsampling (zoom < 1)
    filtered = arr_2d
    if zoom_h < 1.0 or zoom_w < 1.0:
        sigma_h = 0.5 / zoom_h if zoom_h < 1.0 else 0.0
        sigma_w = 0.5 / zoom_w if zoom_w < 1.0 else 0.0
        filtered = gaussian_filter(arr_2d, sigma=(sigma_h, sigma_w))

    return zoom(filtered, (zoom_h, zoom_w), order=3)


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
    SFIM hypersharpening fusion.

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
    scale = rows_hr / rows_lr

    # Step 1: Downsample MS to HS resolution via bicubic
    low_res_ms = np.empty((rows_lr, cols_lr, B_ms), dtype=np.float64)
    for b in range(B_ms):
        low_res_ms[:, :, b] = _bicubic_resize_2d(ms[:, :, b], (rows_lr, cols_lr))

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

    # Step 4: Modulation — vectorized over all bands
    # Build HR predictor matrix
    N_hr = rows_hr * cols_hr
    A_hr = np.column_stack([
        ms.reshape(N_hr, B_ms),
        np.ones(N_hr, dtype=np.float64),
    ])  # (N_hr, B_ms+1)

    # Synthetic at HR and LR for all bands at once
    synth_hr_all = (A_hr @ X).reshape(rows_hr, cols_hr, B_hs)   # (H_hr, W_hr, B_hs)
    synth_lr_all = (A_lr @ X).reshape(rows_lr, cols_lr, B_hs)   # (H_lr, W_lr, B_hs)

    # Upsample HS and synth_lr to HR
    fused = np.empty((rows_hr, cols_hr, B_hs), dtype=np.float64)
    for i in range(B_hs):
        hs_up = _bicubic_resize_2d(hs[:, :, i], (rows_hr, cols_hr))
        synth_lr_up = _bicubic_resize_2d(synth_lr_all[:, :, i], (rows_hr, cols_hr))

        ratio = synth_hr_all[:, :, i] / np.maximum(synth_lr_up, eps)
        ratio = np.clip(ratio, 0.0, ratio_clip)

        fused[:, :, i] = hs_up * ratio

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
    fused_hwb, r2 = sfim_fuse(hs_hwb, ms_hwb, min_r2=min_r2)

    if fused_hwb is None:
        return {
            "fused": None, "r2": r2, "r2_mean": float(np.mean(r2)),
            "status": "R2_FILTERED", "out_path": None,
        }

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
        "r2": r2,
        "r2_mean": float(np.mean(r2)),
        "r2_per_band": r2.tolist(),
        "status": "OK",
        "out_path": out_str,
    }
