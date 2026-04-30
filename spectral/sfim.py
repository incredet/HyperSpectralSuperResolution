from pathlib import Path

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


def _resize_3d_cv2(arr, target_hw, anti_alias=False):
    h_in, w_in = arr.shape[:2]
    h_out, w_out = target_hw

    src = arr
    if anti_alias and (h_out < h_in or w_out < w_in):
        # Gaussian AA — sigma = scale / 2.35482 (FWHM = scale), matches Wald
        # protocol convention used in cnmf._gaussian_downsample and tif2mat_wald.py
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


def _resize_3d_scipy(arr, target_hw, anti_alias=False):
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


def _resize_3d(arr, target_hw, anti_alias=False):
    if _HAS_CV2:
        return _resize_3d_cv2(arr, target_hw, anti_alias=anti_alias)
    return _resize_3d_scipy(arr, target_hw, anti_alias=anti_alias)


def _nnls_coefficients(Y, D):
    n_pred = D.shape[1]
    n_hs = Y.shape[1]
    X = np.zeros((n_pred, n_hs), dtype=np.float64)
    for i in range(n_hs):
        X[:, i], _ = nnls(D, Y[:, i])
    return X


def _compute_r2(Y, Y_pred):
    ss_res = np.sum((Y - Y_pred) ** 2, axis=0)
    ss_tot = np.sum((Y - Y.mean(axis=0, keepdims=True)) ** 2, axis=0)
    r2 = np.ones(Y.shape[1], dtype=np.float64)
    nonconstant = ss_tot > 0
    r2[nonconstant] = 1.0 - ss_res[nonconstant] / ss_tot[nonconstant]
    return r2


def sfim_fuse(hs, ms, *, min_r2=-np.inf, ratio_clip=2.0, eps=1e-6):
    rows_lr, cols_lr, B_hs = hs.shape
    rows_hr, cols_hr, B_ms = ms.shape

    low_res_ms = _resize_3d(ms, (rows_lr, cols_lr), anti_alias=True)

    # NNLS regression: [low_res_ms, 1] @ X ≈ HS
    N_lr = rows_lr * cols_lr
    A_lr = np.column_stack([
        low_res_ms.reshape(N_lr, B_ms),
        np.ones(N_lr, dtype=np.float64),
    ])
    Y_hs = hs.reshape(N_lr, B_hs)

    X = _nnls_coefficients(Y_hs, A_lr)

    Y_pred = A_lr @ X
    r2 = _compute_r2(Y_hs, Y_pred)

    if np.min(r2) < min_r2:
        return None, r2

    N_hr = rows_hr * cols_hr
    A_hr = np.column_stack([
        ms.reshape(N_hr, B_ms),
        np.ones(N_hr, dtype=np.float64),
    ])

    synth_hr_all = (A_hr @ X).reshape(rows_hr, cols_hr, B_hs)
    synth_lr_all = (A_lr @ X).reshape(rows_lr, cols_lr, B_hs)

    hs_up = _resize_3d(hs, (rows_hr, cols_hr), anti_alias=False)
    synth_lr_up = _resize_3d(synth_lr_all, (rows_hr, cols_hr), anti_alias=False)

    ratio = synth_hr_all / np.maximum(synth_lr_up, eps)
    np.clip(ratio, 0.0, ratio_clip, out=ratio)
    fused = hs_up * ratio

    return fused, r2


def sfim_fuse_tile(hs_path, ms_path, out_path=None, *,
                   min_r2=-np.inf, scale_factor=10_000.0, nodata_val=65535):
    assert rasterio is not None, "rasterio is required for file-based SFIM"

    with rasterio.open(hs_path) as ds:
        hs_raw = ds.read().astype(np.float64)
        hs_profile = ds.profile.copy()

    with rasterio.open(ms_path) as ds:
        ms_raw = ds.read().astype(np.float64)
        ms_profile = ds.profile.copy()

    hs_raw[hs_raw == nodata_val] = np.nan
    ms_raw[ms_raw == 0] = np.nan  # S2 nodata sentinel

    hs_refl = hs_raw / scale_factor
    ms_refl = ms_raw / scale_factor

    # Replace NaN with 0 so the fusion sees zeros at edges, not NaNs
    hs_refl = np.nan_to_num(hs_refl, nan=0.0)
    ms_refl = np.nan_to_num(ms_refl, nan=0.0)

    # Transpose to (H, W, B) for sfim_fuse
    hs_hwb = np.transpose(hs_refl, (1, 2, 0))
    ms_hwb = np.transpose(ms_refl, (1, 2, 0))

    fused_hwb, r2_nnls = sfim_fuse(hs_hwb, ms_hwb, min_r2=min_r2)

    if fused_hwb is None:
        return {
            "fused": None,
            "r2_nnls": r2_nnls, "r2_nnls_mean": float(np.mean(r2_nnls)),
            "r2_wald": np.zeros_like(r2_nnls), "r2_wald_mean": 0.0,
            "status": "R2_FILTERED", "out_path": None,
        }

    # Wald self-consistency R²: downsample fused HR back to LR, compare to original HS.
    # Apples-to-apples with how we score CNMF.
    from spectral.cnmf import _gaussian_downsample, _compute_r2
    rows_lr, cols_lr, bands_hs = hs_hwb.shape
    rows_hr, _, _ = ms_hwb.shape
    scale_w = rows_hr // rows_lr
    fused_lr = _gaussian_downsample(fused_hwb, scale_w)
    r2_wald = _compute_r2(
        hs_hwb.reshape(-1, bands_hs),
        fused_lr.reshape(-1, bands_hs),
    )

    fused_bwh = np.transpose(fused_hwb, (2, 0, 1))
    fused_dn = np.clip(fused_bwh * scale_factor, 0, 65534).astype(np.uint16)

    out_str = None
    if out_path is not None:
        out_path = Path(out_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)

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
