import time as _time
from pathlib import Path

import numpy as np
from scipy.ndimage import gaussian_filter
from scipy.optimize import lsq_linear
from scipy.stats import norm

# Module-level deadline for NMF early exit. Set by cnmf_fuse() before
# calling NMF helpers; checked inside inner loops. 0 = no limit.
_deadline = 0.0

try:
    import cv2
    _HAS_CV2 = True
except ImportError:
    _HAS_CV2 = False

try:
    import rasterio
except ImportError:
    rasterio = None


def _gaussian_downsample(img, factor):
    sigma = factor / 2.35482
    h, w, b = img.shape
    h_out = h // factor
    w_out = w // factor

    smoothed = gaussian_filter(img, sigma=[sigma, sigma, 0], mode='reflect')

    offset = factor // 2
    out = smoothed[offset::factor, offset::factor, :][:h_out, :w_out, :]

    return out


def _virtual_dimensionality(data, alpha=1e-3):
    L, N = data.shape
    R = (data @ data.T) / N
    K = np.cov(data)

    e_r = np.sort(np.linalg.eigvalsh(R))[::-1]
    e_k = np.sort(np.linalg.eigvalsh(K))[::-1]

    diff = e_r - e_k
    variance = np.sqrt(2.0 * (e_r ** 2 + e_k ** 2) / N)
    variance = np.maximum(variance, 1e-30)
    tau = -norm.ppf(alpha, loc=0.0, scale=variance)

    return int(np.sum(diff > tau))


def _vca(data, p, seed=0):
    rng = np.random.RandomState(seed)
    L, N = data.shape

    r_m = data.mean(axis=1, keepdims=True)
    R_o = data - r_m
    cov_mat = (R_o @ R_o.T) / N

    eigvals, eigvecs = np.linalg.eigh(cov_mat)
    idx = np.argsort(eigvals)[::-1][:p]
    Ud = eigvecs[:, idx]

    x_p = Ud.T @ R_o
    P_y = float(np.sum(data ** 2)) / N
    P_x = float(np.sum(x_p ** 2)) / N + float(r_m.T @ r_m)
    denom_snr = P_y - P_x
    if abs(denom_snr) < 1e-30:
        denom_snr = 1e-30
    snr_arg = (P_x - p / L * P_y) / denom_snr
    if snr_arg <= 0:
        SNR = 0.0  # degenerate case → force low-SNR branch
    else:
        SNR = abs(10.0 * np.log10(snr_arg))

    SNRth = 15.0 + 10.0 * np.log(p) + 8.0

    if SNR > SNRth:
        d = p
        cov_full = (data @ data.T) / N
        eigvals_f, eigvecs_f = np.linalg.eigh(cov_full)
        idx_f = np.argsort(eigvals_f)[::-1][:d]
        Ud = eigvecs_f[:, idx_f]
        X = Ud.T @ data
        u = X.mean(axis=1, keepdims=True)
        denom_arr = (u.T @ X).ravel()
        denom_arr[np.abs(denom_arr) < 1e-16] = 1e-16
        Y = X / denom_arr[np.newaxis, :]
    else:
        # Low-SNR branch: project onto (p-1)-dim subspace, augment
        d = p - 1
        r_m2 = data.mean(axis=1, keepdims=True)
        R_o2 = data - r_m2
        cov2 = (R_o2 @ R_o2.T) / N
        eigvals2, eigvecs2 = np.linalg.eigh(cov2)
        idx2 = np.argsort(eigvals2)[::-1][:d]
        Ud = eigvecs2[:, idx2]
        X = Ud.T @ R_o2
        c = np.sqrt(np.max(np.sum(X ** 2, axis=0)))
        Y = np.vstack([X, c * np.ones((1, N))])

    e_u = np.zeros(p)
    e_u[p - 1] = 1.0
    A = np.zeros((p, p))
    A[:, 0] = e_u
    indices = np.zeros(p, dtype=np.intp)

    for i in range(p):
        w = rng.rand(p)
        A_pinv = np.linalg.pinv(A)
        f = w - A @ (A_pinv @ w)
        f_norm = np.sqrt(np.sum(f ** 2))
        if f_norm < 1e-16:
            f_norm = 1e-16
        f = f / f_norm
        v = f @ Y
        indices[i] = np.argmax(np.abs(v))
        A[:, i] = Y[:, indices[i]]

    if SNR > SNRth:
        U = Ud @ X[:, indices]
    else:
        U = Ud @ X[:, indices] + r_m2

    return U, indices


def _estimate_srf(hsi, msi, scale_factor, eps=1e-7):
    rows_lr, cols_lr, bands_hs = hsi.shape
    _, _, bands_ms = msi.shape

    lr_ms = _gaussian_downsample(msi, scale_factor)

    # Predictor matrix A = [HS_pixels | mask_col]; mask_col=1 → intercept
    mask = np.ones((rows_lr, cols_lr, 1), dtype=np.float64)
    hs_with_mask = np.concatenate([hsi, mask], axis=2)
    A = hs_with_mask.reshape(-1, bands_hs + 1)

    R_full = np.zeros((bands_ms, bands_hs + 1), dtype=np.float64)
    error = np.zeros(bands_ms, dtype=np.float64)

    for k in range(bands_ms):
        b_vec = lr_ms[:, :, k].ravel().astype(np.float64)

        # HS weights ≥ 0, offset unconstrained
        lb = np.zeros(bands_hs + 1)
        ub = np.full(bands_hs + 1, np.inf)
        lb[-1] = -np.inf

        result = lsq_linear(A, b_vec, bounds=(lb, ub), method='bvls',
                            max_iter=500)
        R_full[k, :] = result.x

        residual = b_vec - A @ result.x
        mean_b = np.mean(b_vec)
        if mean_b > eps:
            error[k] = np.sqrt(np.mean(residual ** 2)) / mean_b
        else:
            error[k] = 0.0

    offsets = R_full[:, -1].astype(np.float32)
    R = R_full[:, :-1].astype(np.float32)

    return R, offsets, error.astype(np.float32)


def _nmf_update_H(W, H, D, *, n_bands_orig, max_iter, threshold, eps=1e-7, cost_stride=5):
    # Algebraic identity for fast cost: ‖D − WH‖² = ‖D‖² − 2·sum(WᵀD ⊙ H) + sum(WᵀW ⊙ HHᵀ)
    WtD = W.T @ D
    WtW = W.T @ W

    W_band = W[:n_bands_orig, :]
    WbandtD = W_band.T @ D[:n_bands_orig, :]
    WbandtWband = W_band.T @ W_band
    D_sqnorm = float(np.sum(D[:n_bands_orig, :] ** 2))

    cost_prev = 0.0
    H_saved = H.copy()

    for q in range(max_iter):
        denom = WtW @ H + eps
        H = H * WtD / denom

        if (q + 1) % cost_stride == 0 or q == max_iter - 1:
            HHt = H @ H.T
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                H = H_saved.copy()
                cost = cost_prev
                break
            if _deadline and _time.monotonic() > _deadline:
                break
            cost_prev = cost
            H_saved[:] = H

    return H, cost


def _nmf_update_WH(W, H, D, *, n_bands_orig, max_iter, threshold, eps=1e-7,
                   update_W=True, min_ms_bands=3, n_spectral_bands=0, cost_stride=5):
    do_update_W = update_W and n_spectral_bands > min_ms_bands
    D_band = D[:n_bands_orig, :]
    D_sqnorm = float(np.sum(D_band ** 2))

    cost_prev = 0.0
    W_saved = W.copy()
    H_saved = H.copy()

    for i in range(max_iter):
        if do_update_W:
            HHt = H @ H.T
            W_n = D_band @ H.T
            W_d = W[:n_bands_orig, :] @ HHt + eps
            W[:n_bands_orig, :] = W[:n_bands_orig, :] * W_n / W_d

        WtW = W.T @ W
        WtD = W.T @ D
        WtWH = WtW @ H + eps
        H = H * WtD / WtWH

        if (i + 1) % cost_stride == 0 or i == max_iter - 1:
            W_band = W[:n_bands_orig, :]
            WbandtWband = W_band.T @ W_band
            WbandtD = W_band.T @ D_band
            HHt_c = H @ H.T
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt_c))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                W = W_saved.copy()
                H = H_saved.copy()
                cost = cost_prev
                break
            if _deadline and _time.monotonic() > _deadline:
                break
            cost_prev = cost
            W_saved[:] = W
            H_saved[:] = H

    return W, H, cost


def _nmf_update_W_fixed_H(W, H, D, *, n_bands_orig, max_iter, threshold,
                          eps=1e-7, cost_stride=5):
    D_band = D[:n_bands_orig, :]
    HHt = H @ H.T
    DHt = D_band @ H.T
    D_sqnorm = float(np.sum(D_band ** 2))

    cost_prev = 0.0
    W_saved = W.copy()

    for q in range(max_iter):
        W_d = W[:n_bands_orig, :] @ HHt + eps
        W[:n_bands_orig, :] = W[:n_bands_orig, :] * DHt / W_d

        if (q + 1) % cost_stride == 0 or q == max_iter - 1:
            W_band = W[:n_bands_orig, :]
            WbandtWband = W_band.T @ W_band
            WbandtD = W_band.T @ D_band
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                W = W_saved.copy()
                cost = cost_prev
                break
            if _deadline and _time.monotonic() > _deadline:
                break
            cost_prev = cost
            W_saved[:] = W

    return W, cost


def _nmf_ite_hs_joint(W, H, D, *, n_bands_orig, max_iter, threshold, eps=1e-7,
                     min_ms_bands=3, multi_band=0, cost_stride=5):
    do_update_H = multi_band > min_ms_bands
    D_band = D[:n_bands_orig, :]
    D_sqnorm = float(np.sum(D_band ** 2))

    cost_prev = 0.0
    W_saved = W.copy()
    H_saved = H.copy()

    for i in range(max_iter):
        if do_update_H:
            WtD = W.T @ D
            WtWH = W.T @ W @ H + eps
            H = H * WtD / WtWH

        HHt = H @ H.T
        W_n = D_band @ H.T
        W_d = W[:n_bands_orig, :] @ HHt + eps
        W[:n_bands_orig, :] = W[:n_bands_orig, :] * W_n / W_d

        if (i + 1) % cost_stride == 0 or i == max_iter - 1:
            W_band = W[:n_bands_orig, :]
            WbandtWband = W_band.T @ W_band
            WbandtD = W_band.T @ D_band
            HHt_c = H @ H.T
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt_c))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                W = W_saved.copy()
                H = H_saved.copy()
                cost = cost_prev
                break
            if _deadline and _time.monotonic() > _deadline:
                break
            cost_prev = cost
            W_saved[:] = W
            H_saved[:] = H

    return W, H, cost


def cnmf_fuse(hs, ms, *, pre_R=None, max_endmembers=20, inner_iters=200,
              outer_iters=1, th_h=1e-8, th_m=1e-8, th_outer=1e-2, eps=1e-7,
              verbose=False, seed=0, tile_timeout=0):
    rows_lr, cols_lr, bands_hs = hs.shape
    rows_hr, cols_hr, bands_ms = ms.shape
    w = rows_hr // rows_lr

    global _deadline
    _deadline = (_time.monotonic() + tile_timeout) if tile_timeout > 0 else 0.0

    if verbose:
        print(f"CNMF: HS={hs.shape} MS={ms.shape} scale={w}")

    if pre_R is not None:
        # Analytical R provided — skip per-tile estimation and offset subtraction
        R_srf = np.asarray(pre_R, dtype=np.float32)
        assert R_srf.shape == (bands_ms, bands_hs), (
            f"pre_R shape {R_srf.shape} != expected ({bands_ms}, {bands_hs})")
        srf_error = np.zeros(bands_ms, dtype=np.float32)
        ms = ms.copy()
        if verbose:
            print(f"  Using pre-computed R ({bands_ms}×{bands_hs}), "
                  f"row sums={R_srf.sum(axis=1).round(4).tolist()}")
    else:
        R_srf, offsets, srf_error = _estimate_srf(hs, ms, w, eps=eps)
        ms = ms.copy()
        for b in range(bands_ms):
            ms[:, :, b] -= offsets[b]
        ms = np.clip(ms, 0.0, None)
        if verbose:
            print(f"  SRF error: {srf_error}")
            print(f"  SRF offsets: {offsets}")

    hs = np.clip(hs.copy(), 0.0, None)
    ms = np.clip(ms, 0.0, None)

    HSI_2d = hs.reshape(-1, bands_hs).T.astype(np.float32)
    MSI_2d = ms.reshape(-1, bands_ms).T.astype(np.float32)

    eff_rank = int(np.linalg.matrix_rank(HSI_2d))

    # Early exit for degenerate tiles (mostly nodata / all-zero HS)
    if eff_rank < 3:
        if verbose:
            print(f"  eff_rank={eff_rank} — tile is degenerate, returning MS-guided fallback")
        fused = np.zeros((rows_hr, cols_hr, bands_hs), dtype=np.float32)
        info = {"M": 0, "rmse_h": np.nan, "rmse_m": np.nan,
                "srf_error": srf_error.tolist(), "n_outer_iters": 0,
                "status": "DEGENERATE_HS"}
        return fused, info

    vd_est = max(round(_virtual_dimensionality(HSI_2d, alpha=0.05)), 5)
    M = min(max_endmembers, eff_rank - 1, bands_hs - 1, max(vd_est, 5))
    M = max(M, 3)

    if verbose:
        print(f"  eff_rank={eff_rank} vd={vd_est} → M={M}")

    W_vca, _ = _vca(HSI_2d, M, seed=seed)

    N_lr = rows_lr * cols_lr
    N_hr = rows_hr * cols_hr

    W_hyper = W_vca.astype(np.float32)
    H_hyper = np.full((M, N_lr), 1.0 / M, dtype=np.float32)

    # Sum-to-one constraint parameter
    delta = np.float32(2.0 * (np.mean(MSI_2d) / 0.7455) ** 0.5 / bands_ms ** 3)

    delta_row = np.full((1, M), delta, dtype=np.float32)
    W_hyper = np.vstack([W_hyper, delta_row])
    hyper = np.vstack([HSI_2d, delta * np.ones((1, N_lr), dtype=np.float32)])

    H_hyper, _ = _nmf_update_H(
        W_hyper, H_hyper, hyper,
        n_bands_orig=bands_hs,
        max_iter=inner_iters,
        threshold=th_h, eps=eps,
    )

    W_hyper, H_hyper, _ = _nmf_update_WH(
        W_hyper, H_hyper, hyper,
        n_bands_orig=bands_hs,
        max_iter=inner_iters,
        threshold=th_h, eps=eps,
        update_W=True,
        min_ms_bands=3,
        n_spectral_bands=bands_hs,
    )

    rmse_h = np.sqrt(
        np.sum((hyper[:bands_hs, :] - W_hyper[:bands_hs, :] @ H_hyper) ** 2)
        / (N_lr * bands_hs)
    )

    if verbose:
        print(f"  CNMF init: RMSE_h={rmse_h:.6f}")

    W_multi_real = R_srf @ W_hyper[:bands_hs, :]
    delta_row_ms = np.full((1, M), delta, dtype=np.float32)
    W_multi = np.vstack([W_multi_real, delta_row_ms])
    multi = np.vstack([MSI_2d, delta * np.ones((1, N_hr), dtype=np.float32)])

    H_multi = np.zeros((M, N_hr), dtype=np.float32)
    for i in range(M):
        h_lr = H_hyper[i, :].reshape(rows_lr, cols_lr)
        if _HAS_CV2:
            h_hr = cv2.resize(h_lr, (cols_hr, rows_hr),
                              interpolation=cv2.INTER_LINEAR)
        else:
            from scipy.ndimage import zoom as scipy_zoom
            h_hr = scipy_zoom(h_lr, (rows_hr / rows_lr, cols_hr / cols_lr),
                              order=1)
        H_multi[i, :] = h_hr.ravel()
    H_multi = np.clip(H_multi, 0.0, None)

    H_multi, _ = _nmf_update_H(
        W_multi, H_multi, multi,
        n_bands_orig=bands_ms,
        max_iter=inner_iters,
        threshold=th_m, eps=eps,
    )

    W_multi, H_multi, _ = _nmf_update_WH(
        W_multi, H_multi, multi,
        n_bands_orig=bands_ms,
        max_iter=inner_iters,
        threshold=th_m, eps=eps,
        update_W=True,
        min_ms_bands=3,
        n_spectral_bands=bands_ms,
    )

    rmse_m = np.sqrt(
        np.sum((multi[:bands_ms, :] - W_multi[:bands_ms, :] @ H_multi) ** 2)
        / (N_hr * bands_ms)
    )

    if verbose:
        print(f"  CNMF init: RMSE_m={rmse_m:.6f}")
        _report_nan("W_hyper", W_hyper)
        _report_nan("H_hyper", H_hyper)
        _report_nan("W_multi", W_multi)
        _report_nan("H_multi", H_multi)

    cost_h = [rmse_h]
    cost_m = [rmse_m]

    for i_out in range(outer_iters):
        if verbose:
            print(f"  Outer iteration {i_out + 1}/{outer_iters}")

        H_multi_3d = H_multi.T.reshape(rows_hr, cols_hr, M)
        H_hyper_3d = _gaussian_downsample(H_multi_3d, w)
        H_hyper = H_hyper_3d.reshape(-1, M).T

        W_hyper, _ = _nmf_update_W_fixed_H(
            W_hyper, H_hyper, hyper,
            n_bands_orig=bands_hs,
            max_iter=inner_iters,
            threshold=th_h, eps=eps,
        )

        W_hyper, H_hyper, _ = _nmf_ite_hs_joint(
            W_hyper, H_hyper, hyper,
            n_bands_orig=bands_hs,
            max_iter=inner_iters,
            threshold=th_h, eps=eps,
            min_ms_bands=3,
            multi_band=bands_ms,
        )

        rmse_h_new = np.sqrt(
            np.sum((hyper[:bands_hs, :] - W_hyper[:bands_hs, :] @ H_hyper) ** 2)
            / (N_lr * bands_hs)
        )

        if verbose:
            print(f"    RMSE_h = {rmse_h_new:.6f}")

        rmse_m_new = rmse_m
        if outer_iters > 1:
            W_multi[:bands_ms, :] = R_srf @ W_hyper[:bands_hs, :]

            H_multi, _ = _nmf_update_H(
                W_multi, H_multi, multi,
                n_bands_orig=bands_ms,
                max_iter=inner_iters,
                threshold=th_m, eps=eps,
            )

            W_multi, H_multi, _ = _nmf_update_WH(
                W_multi, H_multi, multi,
                n_bands_orig=bands_ms,
                max_iter=inner_iters,
                threshold=th_m, eps=eps,
                update_W=True,
                min_ms_bands=3,
                n_spectral_bands=bands_ms,
            )

            rmse_m_new = np.sqrt(
                np.sum((multi[:bands_ms, :] - W_multi[:bands_ms, :] @ H_multi) ** 2)
                / (N_hr * bands_ms)
            )

            if verbose:
                print(f"    RMSE_m = {rmse_m_new:.6f}")

        cost_h.append(rmse_h_new)
        cost_m.append(rmse_m_new)

        if (i_out < outer_iters - 1 and
            cost_h[-2] > 0 and cost_m[-2] > 0 and
            (cost_h[-2] - rmse_h_new) / cost_h[-2] > th_outer and
            (cost_m[-2] - rmse_m_new) / cost_m[-2] > th_outer):
            pass
        elif i_out < outer_iters - 1:
            if verbose:
                print(f"  Outer loop converged at iteration {i_out + 1}")
            break

    fused_2d = W_hyper[:bands_hs, :] @ H_multi
    fused = fused_2d.T.reshape(rows_hr, cols_hr, bands_hs)

    fused = np.clip(fused, 0.0, None)

    info = {
        "M": M,
        "rmse_h": float(cost_h[-1]),
        "rmse_m": float(cost_m[-1]),
        "srf_error": srf_error.tolist(),
        "n_outer_iters": len(cost_h) - 1,
    }

    return fused, info


def _report_nan(name, arr):
    n_nan = int(np.sum(np.isnan(arr)))
    if n_nan > 0:
        print(f"    {name}: NaN={n_nan} range=[{np.nanmin(arr):.4g}, {np.nanmax(arr):.4g}]")
    else:
        print(f"    {name}: range=[{arr.min():.4g}, {arr.max():.4g}]")


def _compute_r2(actual, predicted):
    ss_res = np.sum((actual - predicted) ** 2, axis=0)
    ss_tot = np.sum((actual - actual.mean(axis=0, keepdims=True)) ** 2, axis=0)
    r2 = np.ones(actual.shape[1], dtype=np.float32)
    nonconstant = ss_tot > 0
    r2[nonconstant] = 1.0 - ss_res[nonconstant] / ss_tot[nonconstant]
    return r2


def cnmf_fuse_tile(hs_path, ms_path, out_path=None, *,
                   scale_factor=10_000.0, nodata_val=65535, **cnmf_kwargs):
    assert rasterio is not None, "rasterio is required for file-based CNMF"

    with rasterio.open(hs_path) as ds:
        hs_raw = ds.read().astype(np.float32)
        hs_profile = ds.profile.copy()

    with rasterio.open(ms_path) as ds:
        ms_raw = ds.read().astype(np.float32)
        ms_profile = ds.profile.copy()

    hs_raw[hs_raw == nodata_val] = np.nan
    ms_raw[ms_raw == 0] = np.nan  # S2 nodata sentinel

    hs_refl = hs_raw / scale_factor
    ms_refl = ms_raw / scale_factor

    hs_refl = np.nan_to_num(hs_refl, nan=0.0)
    ms_refl = np.nan_to_num(ms_refl, nan=0.0)

    hs_hwb = np.transpose(hs_refl, (1, 2, 0))
    ms_hwb = np.transpose(ms_refl, (1, 2, 0))

    try:
        fused_hwb, info = cnmf_fuse(hs_hwb, ms_hwb, **cnmf_kwargs)
    except Exception as e:
        return {
            "fused": None, "r2": np.zeros(hs_hwb.shape[2]),
            "r2_mean": 0.0, "r2_per_band": [],
            "status": f"ERROR: {e}", "out_path": None,
            "info": {},
        }

    if info.get("status") == "DEGENERATE_HS":
        return {
            "fused": None, "r2": np.zeros(hs_hwb.shape[2]),
            "r2_mean": 0.0, "r2_per_band": [],
            "status": "SKIP_DEGENERATE", "out_path": None,
            "info": info,
        }

    # R² self-consistency: downsample fused HR back to LR, compare to original HS
    rows_lr, cols_lr, bands_hs = hs_hwb.shape
    rows_hr, cols_hr, bands_ms = ms_hwb.shape
    w = rows_hr // rows_lr

    fused_lr = _gaussian_downsample(fused_hwb, w)
    r2 = _compute_r2(
        hs_hwb.reshape(-1, bands_hs),
        fused_lr.reshape(-1, bands_hs),
    )

    fused_bhw = np.transpose(fused_hwb, (2, 0, 1))
    fused_dn = np.clip(fused_bhw * scale_factor, 0, 65534).astype(np.uint16)

    out_str = None
    if out_path is not None:
        out_path = Path(out_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)

        wavelengths_nm = None
        with rasterio.open(hs_path) as ds:
            wl_list = []
            for b in range(1, ds.count + 1):
                bt = ds.tags(b)
                ww = bt.get("wavelength") or bt.get("WAVELENGTH")
                if ww is not None:
                    wl_list.append(float(ww))
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
        "info": info,
    }


# Drive FUSE prefers single-threaded sequential I/O — running multiple
# processes that each read/write to Drive causes severe contention
# (~10 s/tile vs ~1 s sequential). So we keep I/O in the main thread
# and only farm out the pure-compute cnmf_fuse to worker processes.

def _read_tile_arrays(hs_path, ms_path, scale_factor=10_000.0, nodata_val=65535):
    with rasterio.open(hs_path) as ds:
        hs_raw = ds.read().astype(np.float32)
        wl_list = []
        for b in range(1, ds.count + 1):
            bt = ds.tags(b)
            ww = bt.get("wavelength") or bt.get("WAVELENGTH")
            if ww is not None:
                wl_list.append(float(ww))
        wavelengths_nm = wl_list if len(wl_list) == ds.count else None

    with rasterio.open(ms_path) as ds:
        ms_raw = ds.read().astype(np.float32)
        ms_profile = ds.profile.copy()

    hs_raw[hs_raw == nodata_val] = 0.0
    ms_raw[ms_raw == 0] = 0.0

    hs_hwb = np.transpose(np.clip(hs_raw / scale_factor, 0.0, None), (1, 2, 0))
    ms_hwb = np.transpose(np.clip(ms_raw / scale_factor, 0.0, None), (1, 2, 0))

    write_meta = {"ms_profile": ms_profile, "wavelengths_nm": wavelengths_nm}
    return hs_hwb, ms_hwb, write_meta


def _write_fused_tile(fused_hwb, out_path, write_meta,
                      scale_factor=10_000.0, nodata_val=65535):
    fused_bhw = np.transpose(fused_hwb, (2, 0, 1))
    fused_dn = np.clip(fused_bhw * scale_factor, 0, 65534).astype(np.uint16)

    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    profile = write_meta["ms_profile"].copy()
    profile.update(
        count=fused_dn.shape[0], dtype="uint16", nodata=nodata_val,
        driver="GTiff", compress="DEFLATE", predictor=2,
    )
    # Strip tags that are invalid for 32-band output or break MemoryFile reads
    for key in ("interleave", "photometric", "tiled", "blockxsize", "blockysize",
                "BIGTIFF"):
        profile.pop(key, None)

    with rasterio.open(out_path, "w", **profile) as dst:
        dst.write(fused_dn)
        wl = write_meta.get("wavelengths_nm")
        if wl:
            for i, w in enumerate(wl):
                dst.update_tags(i + 1, wavelength=f"{w:.4f}")


def _process_tile(hs_path, ms_path, out_path, row,
                   scale_factor, nodata_val, cnmf_kwargs):
    import time as _t
    tic = _t.time()
    try:
        hs_hwb, ms_hwb, wmeta = _read_tile_arrays(
            hs_path, ms_path, scale_factor, nodata_val)
        fused_hwb, info = cnmf_fuse(hs_hwb, ms_hwb, **cnmf_kwargs)

        if info.get("status") == "DEGENERATE_HS":
            row["status"] = "SKIP_DEGENERATE"
            row["time_s"] = _t.time() - tic
            row["cnmf_M"] = info.get("M")
            return row

        w = ms_hwb.shape[0] // hs_hwb.shape[0]
        fused_lr = _gaussian_downsample(fused_hwb, w)
        r2 = _compute_r2(
            hs_hwb.reshape(-1, hs_hwb.shape[2]),
            fused_lr.reshape(-1, hs_hwb.shape[2]))
        _write_fused_tile(fused_hwb, out_path, wmeta, scale_factor, nodata_val)
        _fill_result_row(row, "OK", r2, info, _t.time() - tic, out_path)
    except Exception as e:
        row["status"] = f"ERROR: {e}"
        row["time_s"] = _t.time() - tic
    return row


def _process_tile_mp(args):
    from threadpoolctl import threadpool_limits
    *tile_args, blas_threads = args
    with threadpool_limits(limits=blas_threads):
        return _process_tile(*tile_args)


def cnmf_fuse_tiles(tile_list, *, n_workers=1, blas_threads=2,
                    scale_factor=10_000.0, nodata_val=65535,
                    max_endmembers=20, inner_iters=200, outer_iters=1,
                    th_h=1e-8, th_m=1e-8, th_outer=1e-2, tile_timeout=120,
                    pre_R=None, verbose_first=2, skip_existing=True):
    import time as _time
    try:
        from tqdm import tqdm
    except ImportError:
        tqdm = None

    cnmf_kwargs = dict(max_endmembers=max_endmembers,
                       inner_iters=inner_iters,
                       outer_iters=outer_iters,
                       th_h=th_h, th_m=th_m, th_outer=th_outer,
                       tile_timeout=tile_timeout,
                       verbose=False, pre_R=pre_R)

    work = []
    results = [None] * len(tile_list)

    for i, tile in enumerate(tile_list):
        hs_path = Path(tile["hs_path"])
        ms_path = Path(tile["ms_path"])
        pair_dir = Path(tile["pair_dir"])
        tile_name = tile["tile_name"]
        out_path = pair_dir / "CNMF" / f"{tile_name}_cnmf.tif"

        row = {"tile_name": tile_name,
               "aoi_slug": tile.get("aoi_slug", ""),
               "pair_id": tile.get("pair_id", ""),
               "tile_idx": tile.get("tile_idx", -1),
               "r2_regression": tile.get("r2_regression")}

        if skip_existing and out_path.exists():
            row["status"] = "EXISTED"
            results[i] = row
            continue
        if not hs_path.exists() or not ms_path.exists():
            row["status"] = "MISSING_FILES"
            results[i] = row
            continue

        work.append((i, str(hs_path), str(ms_path), str(out_path), row))

    n_skip = len(tile_list) - len(work)
    print(f"CNMF: {len(tile_list)} tiles, {n_skip} skipped, "
          f"{len(work)} to process (n_workers={n_workers})")
    if not work:
        return [r for r in results if r is not None]

    # Verbose warm-up: first N tiles run sequentially with verbose=True
    verbose_kw = {**cnmf_kwargs, "verbose": True}
    for j in range(min(verbose_first, len(work))):
        idx, hs_p, ms_p, out_p, row = work[j]
        print(f"  [verbose] {row['tile_name']}")
        results[idx] = _process_tile(hs_p, ms_p, out_p, row,
                                      scale_factor, nodata_val, verbose_kw)

    remaining = [(hs_p, ms_p, out_p, row, scale_factor, nodata_val,
                  cnmf_kwargs, blas_threads)
                 for idx, hs_p, ms_p, out_p, row in work[verbose_first:]]
    if not remaining:
        return [r for r in results if r is not None]

    pbar = tqdm(total=len(remaining), desc="CNMF fusion") if tqdm else None
    name_to_idx = {row["tile_name"]: idx
                   for idx, _, _, _, row in work[verbose_first:]}

    if n_workers <= 1:
        for args in remaining:
            row = _process_tile(*args[:-1])  # drop blas_threads, unused sequentially
            results[name_to_idx[row["tile_name"]]] = row
            if pbar: pbar.update(1)
    else:
        from multiprocessing import Pool
        with Pool(n_workers) as pool:
            for row in pool.imap_unordered(_process_tile_mp, remaining):
                results[name_to_idx[row["tile_name"]]] = row
                if pbar: pbar.update(1)

    if pbar: pbar.close()

    n_ok = sum(1 for r in results if r and r.get("status") == "OK")
    n_err = sum(1 for r in results if r and r.get("status", "").startswith("ERROR"))
    print(f"\nDone: {n_ok} OK, {n_err} errors")
    return [r for r in results if r is not None]


def _fill_result_row(base_row, status, r2, info, elapsed, out_path):
    base_row["status"] = status
    base_row["r2_cnmf_mean"] = float(np.mean(r2)) if r2 is not None else None
    base_row["time_s"] = elapsed
    base_row["out_path"] = str(out_path) if out_path else None
    base_row["cnmf_M"] = info.get("M")
    base_row["cnmf_rmse_h"] = info.get("rmse_h")
    base_row["cnmf_rmse_m"] = info.get("rmse_m")
    if r2 is not None:
        for bi, v in enumerate(r2.tolist()):
            base_row[f"r2_cnmf_band_{bi:02d}"] = v
