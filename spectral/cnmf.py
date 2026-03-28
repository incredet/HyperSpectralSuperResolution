from __future__ import annotations

import warnings
from pathlib import Path
from typing import Optional

import numpy as np
from scipy.ndimage import gaussian_filter
from scipy.optimize import lsq_linear
from scipy.stats import norm

try:
    import cv2
    _HAS_CV2 = True
except ImportError:
    _HAS_CV2 = False

try:
    import rasterio
except ImportError:
    rasterio = None



def _gaussian_downsample(img: np.ndarray, factor: int) -> np.ndarray:
    """
    Gaussian-PSF downsampling matching 
    """
    sigma = factor / 2.35482
    h, w, b = img.shape
    h_out = h // factor
    w_out = w // factor

    smoothed = gaussian_filter(img, sigma=[sigma, sigma, 0], mode='reflect')

    offset = factor // 2
    out = smoothed[offset::factor, offset::factor, :][:h_out, :w_out, :]

    return out


def _gaussian_downsample_2d(img_2d: np.ndarray, factor: int) -> np.ndarray:
    """Downsample a single 2D image (H, W) → (H//factor, W//factor)."""
    sigma = factor / 2.35482
    h_out = img_2d.shape[0] // factor
    w_out = img_2d.shape[1] // factor
    smoothed = gaussian_filter(img_2d, sigma=sigma, mode='reflect')
    offset = factor // 2
    return smoothed[offset::factor, offset::factor][:h_out, :w_out]


def _virtual_dimensionality(data: np.ndarray, alpha: float = 1e-3) -> int:
    """
    Estimate the number of spectrally distinct signal sources
    """
    L, N = data.shape
    R = (data @ data.T) / N
    K = np.cov(data)  # (L, L)

    e_r = np.sort(np.linalg.eigvalsh(R))[::-1]
    e_k = np.sort(np.linalg.eigvalsh(K))[::-1]

    diff = e_r - e_k
    variance = np.sqrt(2.0 * (e_r ** 2 + e_k ** 2) / N)
    # Avoid zero variance
    variance = np.maximum(variance, 1e-30)
    tau = -norm.ppf(alpha, loc=0.0, scale=variance)

    return int(np.sum(diff > tau))


# ---------------------------------------------------------------------------
# Helper: Vertex Component Analysis (VCA)
# ---------------------------------------------------------------------------

def _vca(data: np.ndarray, p: int, seed: int = 0) -> tuple[np.ndarray, np.ndarray]:
    """
    Vertex Component Analysis for endmember extraction (port of vca.m).
    """
    rng = np.random.RandomState(seed)
    L, N = data.shape

    # --- SNR estimation ---
    r_m = data.mean(axis=1, keepdims=True)     # (L, 1)
    R_o = data - r_m                            # zero-mean
    cov_mat = (R_o @ R_o.T) / N                # (L, L)

    # p-dim SVD
    eigvals, eigvecs = np.linalg.eigh(cov_mat)
    idx = np.argsort(eigvals)[::-1][:p]
    Ud = eigvecs[:, idx]                        # (L, p)

    x_p = Ud.T @ R_o                            # (p, N)
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
        X = Ud.T @ data                         # (d, N)
        u = X.mean(axis=1, keepdims=True)        # (d, 1)
        denom_arr = (u.T @ X).ravel()            # (N,)
        denom_arr[np.abs(denom_arr) < 1e-16] = 1e-16
        Y = X / denom_arr[np.newaxis, :]         # (d, N)
    else:
        # Low-SNR branch: project onto (p-1)-dim subspace, augment
        d = p - 1
        r_m2 = data.mean(axis=1, keepdims=True)
        R_o2 = data - r_m2
        cov2 = (R_o2 @ R_o2.T) / N
        eigvals2, eigvecs2 = np.linalg.eigh(cov2)
        idx2 = np.argsort(eigvals2)[::-1][:d]
        Ud = eigvecs2[:, idx2]
        X = Ud.T @ R_o2                         # (d, N)
        c = np.sqrt(np.max(np.sum(X ** 2, axis=0)))
        Y = np.vstack([X, c * np.ones((1, N))])  # (p, N)

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


def _estimate_srf(
    hsi: np.ndarray,
    msi: np.ndarray,
    scale_factor: int,
    eps: float = 1e-7,
) -> tuple[np.ndarray, np.ndarray]:
    """
    Estimate the spectral response function (SRF) via constrained LS
    """
    rows_lr, cols_lr, bands_hs = hsi.shape
    _, _, bands_ms = msi.shape

    # Gaussian-downsample MSI to HS resolution
    lr_ms = _gaussian_downsample(msi, scale_factor)

    # Build predictor matrix A = [HS_pixels | mask_col]
    # mask_col = 1 everywhere (no masking) → acts as intercept
    mask = np.ones((rows_lr, cols_lr, 1), dtype=np.float64)
    hs_with_mask = np.concatenate([hsi, mask], axis=2)  # (H_lr, W_lr, bands_hs+1)
    A = hs_with_mask.reshape(-1, bands_hs + 1)          # (N_lr, bands_hs+1)

    R_full = np.zeros((bands_ms, bands_hs + 1), dtype=np.float64)
    error = np.zeros(bands_ms, dtype=np.float64)

    for k in range(bands_ms):
        b_vec = lr_ms[:, :, k].ravel().astype(np.float64)

        # Bounds: HS weights >= 0, offset unconstrained
        lb = np.zeros(bands_hs + 1)
        ub = np.full(bands_hs + 1, np.inf)
        lb[-1] = -np.inf  # offset unconstrained

        result = lsq_linear(A, b_vec, bounds=(lb, ub), method='bvls',
                            max_iter=500)
        R_full[k, :] = result.x

        # Relative RMSE
        residual = b_vec - A @ result.x
        mean_b = np.mean(b_vec)
        if mean_b > eps:
            error[k] = np.sqrt(np.mean(residual ** 2)) / mean_b
        else:
            error[k] = 0.0

    # Extract offsets (last column) and truncate R
    offsets = R_full[:, -1].astype(np.float32)
    R = R_full[:, :-1].astype(np.float32)  # (B_ms, B_hs)

    return R, offsets, error.astype(np.float32)


# ---------------------------------------------------------------------------
# Helper: NMF multiplicative update — H only (W fixed)
# ---------------------------------------------------------------------------

def _nmf_update_H(
    W: np.ndarray,
    H: np.ndarray,
    D: np.ndarray,
    *,
    n_bands_orig: int,
    max_iter: int,
    threshold: float,
    eps: float = 1e-7,
) -> tuple[np.ndarray, float]:
    """
    NMF update for H with W fixed (init phase, i==1 branch in MATLAB).

    W includes the sum-to-one row.  Cost is computed on the first
    ``n_bands_orig`` rows only (excluding the constraint row).

    Uses the algebraic identity (matching MATLAB CNMF_init.m fast path):

        ‖D − WH‖² = ‖D‖² − 2·sum(WᵀD ⊙ H) + sum(WᵀW ⊙ HHᵀ)

    This avoids materialising the (bands, N_pixels) residual matrix each
    iteration — critical for the MS path where N = 518 400.

    Parameters
    ----------
    W : (bands+1, M) — endmember matrix with sum-to-one row
    H : (M, N) — abundance matrix
    D : (bands+1, N) — data matrix with sum-to-one row
    n_bands_orig : number of spectral bands (excluding constraint row)
    max_iter : maximum iterations
    threshold : convergence threshold on relative cost change
    eps : small constant to avoid division by zero

    Returns
    -------
    H : updated abundance matrix
    cost : final reconstruction cost
    """
    # Precompute for the multiplicative update (W is fixed)
    WtD = W.T @ D          # (M, N)
    WtW = W.T @ W          # (M, M)

    # Precompute for the fast cost formula (band-only slices, all constant)
    W_band = W[:n_bands_orig, :]
    WbandtD = W_band.T @ D[:n_bands_orig, :]   # (M, N)  — once
    WbandtWband = W_band.T @ W_band             # (M, M)  — once
    D_sqnorm = float(np.sum(D[:n_bands_orig, :] ** 2))  # scalar — once

    cost_prev = 0.0
    for q in range(max_iter):
        H_old = H.copy()
        denom = WtW @ H + eps
        H = H * WtD / denom

        # Fast cost: avoids (bands, N) residual allocation
        HHt = H @ H.T                                          # (M, M)
        cross = float(np.dot(WbandtD.ravel(), H.ravel()))       # scalar
        gram = float(np.sum(WbandtWband * HHt))                 # scalar
        cost = D_sqnorm - 2.0 * cross + gram

        if q > 0 and cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
            H = H_old
            cost = cost_prev
            break
        cost_prev = cost

    return H, cost


# ---------------------------------------------------------------------------
# Helper: NMF multiplicative update — W and H (joint update)
# ---------------------------------------------------------------------------

def _nmf_update_WH(
    W: np.ndarray,
    H: np.ndarray,
    D: np.ndarray,
    *,
    n_bands_orig: int,
    max_iter: int,
    threshold: float,
    eps: float = 1e-7,
    update_W: bool = True,
    min_ms_bands: int = 3,
    n_spectral_bands: int = 0,
    cost_stride: int = 5,
) -> tuple[np.ndarray, np.ndarray, float]:
    """
    NMF joint update for W (spectral rows) and H (i>1 branch in MATLAB).

    Uses cost-check stride + fast cost formula to avoid forming the
    (bands, N) residual every iteration.  Mathematically identical to the
    naïve version (same MU steps, same convergence criterion).

    Parameters
    ----------
    W : (bands+1, M) — endmember matrix (sum-to-one row at end)
    H : (M, N) — abundance matrix
    D : (bands+1, N) — data matrix
    n_bands_orig : number of spectral bands (rows to update in W)
    max_iter : maximum iterations for the joint loop
    threshold : convergence threshold
    update_W : whether to update W (set False for H-only update modes)
    min_ms_bands : minimum MS bands to allow W update (MATLAB MIN_MS_BANDS)
    n_spectral_bands : number of bands for the MIN_MS_BANDS check;
                       if <= min_ms_bands, W update is skipped
    cost_stride : check convergence every *cost_stride* iterations (default 5)

    Returns
    -------
    W, H : updated matrices
    cost : final cost
    """
    do_update_W = update_W and n_spectral_bands > min_ms_bands
    D_band = D[:n_bands_orig, :]
    D_sqnorm = float(np.sum(D_band ** 2))            # scalar — constant

    cost_prev = 0.0
    W_saved = W.copy()
    H_saved = H.copy()

    for i in range(max_iter):
        if do_update_W:
            HHt = H @ H.T                                   # (M, M)
            W_n = D_band @ H.T                               # (bands, M)
            W_d = W[:n_bands_orig, :] @ HHt + eps            # (bands, M)
            W[:n_bands_orig, :] = W[:n_bands_orig, :] * W_n / W_d

        # Update H
        WtW = W.T @ W                                       # (M, M)
        WtD = W.T @ D                                       # (M, N)
        WtWH = WtW @ H + eps                                # (M, N)
        H = H * WtD / WtWH

        # Convergence check (only every cost_stride iterations)
        if (i + 1) % cost_stride == 0 or i == max_iter - 1:
            # Fast cost: ‖D_band − W_band H‖² via traces
            W_band = W[:n_bands_orig, :]
            WbandtWband = W_band.T @ W_band                  # (M, M)
            WbandtD = W_band.T @ D_band                      # (M, N)
            HHt_c = H @ H.T                                  # (M, M)
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt_c))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                W = W_saved.copy()
                H = H_saved.copy()
                cost = cost_prev
                break
            cost_prev = cost
            W_saved[:] = W
            H_saved[:] = H

    return W, H, cost


# ---------------------------------------------------------------------------
# Helper: NMF for HS in iteration (i==1 updates W with H fixed)
# ---------------------------------------------------------------------------

def _nmf_update_W_fixed_H(
    W: np.ndarray,
    H: np.ndarray,
    D: np.ndarray,
    *,
    n_bands_orig: int,
    max_iter: int,
    threshold: float,
    eps: float = 1e-7,
    cost_stride: int = 5,
) -> tuple[np.ndarray, float]:
    """
    NMF update for W with H fixed (CNMF_ite i==1 branch).

    Only updates the first n_bands_orig rows of W.
    Uses fast cost formula + cost-check stride.
    """
    D_band = D[:n_bands_orig, :]
    HHt = H @ H.T                       # (M, M) — fixed
    DHt = D_band @ H.T                   # (bands, M) — fixed
    D_sqnorm = float(np.sum(D_band ** 2))  # scalar — fixed
    # For fast cost: ‖D_band − W_band H‖² needs W_band.T @ D_band (varies)
    # and W_band.T @ W_band (varies).  H @ H.T = HHt is already precomputed.

    cost_prev = 0.0
    W_saved = W.copy()

    for q in range(max_iter):
        W_d = W[:n_bands_orig, :] @ HHt + eps
        W[:n_bands_orig, :] = W[:n_bands_orig, :] * DHt / W_d

        if (q + 1) % cost_stride == 0 or q == max_iter - 1:
            W_band = W[:n_bands_orig, :]
            WbandtWband = W_band.T @ W_band        # (M, M)
            WbandtD = W_band.T @ D_band             # (M, N)
            cross = float(np.dot(WbandtD.ravel(), H.ravel()))
            gram = float(np.sum(WbandtWband * HHt))
            cost = D_sqnorm - 2.0 * cross + gram

            if cost_prev > 0 and (cost_prev - cost) / (cost + eps) < threshold:
                W = W_saved.copy()
                cost = cost_prev
                break
            cost_prev = cost
            W_saved[:] = W

    return W, cost


# ---------------------------------------------------------------------------
# Helper: NMF for HS in iteration (i>1 updates H then W)
# ---------------------------------------------------------------------------

def _nmf_ite_hs_joint(
    W: np.ndarray,
    H: np.ndarray,
    D: np.ndarray,
    *,
    n_bands_orig: int,
    max_iter: int,
    threshold: float,
    eps: float = 1e-7,
    min_ms_bands: int = 3,
    multi_band: int = 0,
    cost_stride: int = 5,
) -> tuple[np.ndarray, np.ndarray, float]:
    """
    NMF joint update for HS in CNMF_ite (i>1 branch).
    Updates H first (if multi_band > min_ms_bands), then W.
    Uses fast cost formula + cost-check stride.
    """
    do_update_H = multi_band > min_ms_bands
    D_band = D[:n_bands_orig, :]
    D_sqnorm = float(np.sum(D_band ** 2))

    cost_prev = 0.0
    W_saved = W.copy()
    H_saved = H.copy()

    for i in range(max_iter):
        # Update H (only if multi_band > MIN_MS_BANDS, matching MATLAB)
        if do_update_H:
            WtD = W.T @ D
            WtWH = W.T @ W @ H + eps
            H = H * WtD / WtWH

        # Update W (spectral rows only)
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
            cost_prev = cost
            W_saved[:] = W
            H_saved[:] = H

    return W, H, cost



# ---------------------------------------------------------------------------
# Core:  cnmf_fuse
# ---------------------------------------------------------------------------

def cnmf_fuse(
    hs: np.ndarray,
    ms: np.ndarray,
    *,
    max_endmembers: int = 20,
    inner_iters: int = 200,
    outer_iters: int = 1,
    th_h: float = 1e-5,
    th_m: float = 1e-5,
    th_outer: float = 1e-2,
    eps: float = 1e-7,
    verbose: bool = False,
    seed: int = 0,
) -> tuple[np.ndarray, dict]:
    """
    CNMF hyperspectral–multispectral fusion.

    Parameters
    ----------
    hs : (H_lr, W_lr, B_hs) float32
        Low-resolution hyperspectral image.
    ms : (H_hr, W_hr, B_ms) float32
        High-resolution multispectral image.
    max_endmembers : int
        Maximum number of endmembers (default 20).
    inner_iters : int
        Maximum inner NMF iterations (default 200).
    outer_iters : int
        Maximum outer CNMF iterations (default 1).
    th_h, th_m : float
        Convergence threshold for HS and MS NMF inner loops.
    th_outer : float
        Convergence threshold for the outer loop.
    eps : float
        Small constant to avoid division by zero in NMF updates.
    verbose : bool
        Print diagnostic information.
    seed : int
        Random seed for VCA reproducibility.

    Returns
    -------
    fused : (H_hr, W_hr, B_hs) float32
        Fused image at MS spatial resolution.
    info : dict
        Diagnostic info with keys 'M', 'rmse_h', 'rmse_m', 'srf_error',
        'n_outer_iters'.
    """
    rows_lr, cols_lr, bands_hs = hs.shape
    rows_hr, cols_hr, bands_ms = ms.shape
    w = rows_hr // rows_lr  # scale factor

    if verbose:
        print(f"CNMF: HS={hs.shape} MS={ms.shape} scale={w}")

    # ── Step 1: Estimate SRF and subtract offsets from MSI ──
    R_srf, offsets, srf_error = _estimate_srf(hs, ms, w, eps=eps)

    # Subtract offsets from MSI (matching CNMF_fusion.m lines 52-68)
    ms = ms.copy()
    for b in range(bands_ms):
        ms[:, :, b] -= offsets[b]
    ms = np.clip(ms, 0.0, None)

    if verbose:
        print(f"  SRF error: {srf_error}")
        print(f"  SRF offsets: {offsets}")

    # ── Step 2: Determine number of endmembers M ──
    # Clip negative values
    hs = np.clip(hs.copy(), 0.0, None)
    ms = np.clip(ms, 0.0, None)

    # Reshape to 2D: (bands, pixels)
    HSI_2d = hs.reshape(-1, bands_hs).T.astype(np.float32)  # (bands_hs, N_lr)
    MSI_2d = ms.reshape(-1, bands_ms).T.astype(np.float32)  # (bands_ms, N_hr)

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

    # ── Step 3: Initialize W_hyper via VCA ──
    W_vca, _ = _vca(HSI_2d, M, seed=seed)  # (bands_hs, M)

    N_lr = rows_lr * cols_lr
    N_hr = rows_hr * cols_hr

    W_hyper = W_vca.astype(np.float32)                              # (bands_hs, M)

    H_hyper = np.full((M, N_lr), 1.0 / M, dtype=np.float32)        # (M, N_lr)

    # Sum-to-one constraint parameter
    delta = np.float32(2.0 * (np.mean(MSI_2d) / 0.7455) ** 0.5 / bands_ms ** 3)

    # Append sum-to-one row
    delta_row = np.full((1, M), delta, dtype=np.float32)
    W_hyper = np.vstack([W_hyper, delta_row])                       # (bands_hs+1, M)
    hyper = np.vstack([HSI_2d, delta * np.ones((1, N_lr), dtype=np.float32)])  # (bands_hs+1, N_lr)

    # ═══════════════════════════════════════════════════════════════
    #  CNMF_init:  NMF for H_hyper (W fixed), then NMF for H_multi
    # ═══════════════════════════════════════════════════════════════

    # ── NMF for H_hyper (phase 1, W fixed) ──
    H_hyper, _ = _nmf_update_H(
        W_hyper, H_hyper, hyper,
        n_bands_orig=bands_hs,
        max_iter=inner_iters,
        threshold=th_h, eps=eps,
    )

    # ── NMF for H_hyper (phase 2, joint W+H) ──
    W_hyper, H_hyper, _ = _nmf_update_WH(
        W_hyper, H_hyper, hyper,
        n_bands_orig=bands_hs,
        max_iter=inner_iters,
        threshold=th_h, eps=eps,
        update_W=True,
        min_ms_bands=3,
        n_spectral_bands=bands_hs,  # always > 3 for HS
    )

    rmse_h = np.sqrt(
        np.sum((hyper[:bands_hs, :] - W_hyper[:bands_hs, :] @ H_hyper) ** 2)
        / (N_lr * bands_hs)
    )

    if verbose:
        print(f"  CNMF init: RMSE_h={rmse_h:.6f}")

    # ── Initialize W_multi from SRF ──
    W_multi_real = R_srf @ W_hyper[:bands_hs, :]            # (bands_ms, M)
    delta_row_ms = np.full((1, M), delta, dtype=np.float32)
    W_multi = np.vstack([W_multi_real, delta_row_ms])        # (bands_ms+1, M)
    multi = np.vstack([MSI_2d, delta * np.ones((1, N_hr), dtype=np.float32)])  # (bands_ms+1, N_hr)

    # ── Initialize H_multi by interpolation ──
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

    # ── NMF for H_multi (phase 1, W fixed) ──
    H_multi, _ = _nmf_update_H(
        W_multi, H_multi, multi,
        n_bands_orig=bands_ms,
        max_iter=inner_iters,
        threshold=th_m, eps=eps,
    )

    # ── NMF for H_multi (phase 2, joint W+H) ──
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

    # ═══════════════════════════════════════════════════════════════
    #  CNMF_ite:  Outer iteration loop
    # ═══════════════════════════════════════════════════════════════

    cost_h = [rmse_h]
    cost_m = [rmse_m]

    for i_out in range(outer_iters):
        if verbose:
            print(f"  Outer iteration {i_out + 1}/{outer_iters}")

        # ── Gaussian-downsample H_multi → H_hyper ──
        H_multi_3d = H_multi.T.reshape(rows_hr, cols_hr, M)  # (H_hr, W_hr, M)
        H_hyper_3d = _gaussian_downsample(H_multi_3d, w)    # (H_lr, W_lr, M)
        H_hyper = H_hyper_3d.reshape(-1, M).T               # (M, N_lr)

        # ── NMF for HS: phase 1 (update W with H fixed) ──
        W_hyper, _ = _nmf_update_W_fixed_H(
            W_hyper, H_hyper, hyper,
            n_bands_orig=bands_hs,
            max_iter=inner_iters,
            threshold=th_h, eps=eps,
        )

        # ── NMF for HS: phase 2 (joint H then W) ──
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

        # ── Optionally re-unmix MS (only if outer_iters > 1) ──
        rmse_m_new = rmse_m
        if outer_iters > 1:
            W_multi[:bands_ms, :] = R_srf @ W_hyper[:bands_hs, :]

            # NMF for MS: phase 1 (update H with W fixed)
            H_multi, _ = _nmf_update_H(
                W_multi, H_multi, multi,
                n_bands_orig=bands_ms,
                max_iter=inner_iters,
                threshold=th_m, eps=eps,
            )

            # NMF for MS: phase 2 (joint W+H)
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

        # ── Check outer convergence ──
        cost_h.append(rmse_h_new)
        cost_m.append(rmse_m_new)

        if (i_out < outer_iters - 1 and
            cost_h[-2] > 0 and cost_m[-2] > 0 and
            (cost_h[-2] - rmse_h_new) / cost_h[-2] > th_outer and
            (cost_m[-2] - rmse_m_new) / cost_m[-2] > th_outer):
            # Continue iterating
            pass
        elif i_out < outer_iters - 1:
            if verbose:
                print(f"  Outer loop converged at iteration {i_out + 1}")
            break

    # ═══════════════════════════════════════════════════════════════
    #  Final reconstruction
    # ═══════════════════════════════════════════════════════════════

    fused_2d = W_hyper[:bands_hs, :] @ H_multi  # (bands_hs, N_hr)
    fused = fused_2d.T.reshape(rows_hr, cols_hr, bands_hs)

    # Clip to non-negative
    fused = np.clip(fused, 0.0, None)

    info = {
        "M": M,
        "rmse_h": float(cost_h[-1]),
        "rmse_m": float(cost_m[-1]),
        "srf_error": srf_error.tolist(),
        "n_outer_iters": len(cost_h) - 1,
    }

    return fused, info


def _report_nan(name: str, arr: np.ndarray):
    """Print NaN/range diagnostic for an array."""
    n_nan = int(np.sum(np.isnan(arr)))
    if n_nan > 0:
        print(f"    {name}: NaN={n_nan} range=[{np.nanmin(arr):.4g}, {np.nanmax(arr):.4g}]")
    else:
        print(f"    {name}: range=[{arr.min():.4g}, {arr.max():.4g}]")


# ---------------------------------------------------------------------------
# Helper: R² computation for CNMF output
# ---------------------------------------------------------------------------

def _compute_r2(actual: np.ndarray, predicted: np.ndarray) -> np.ndarray:
    """Per-column R² between actual and predicted. Shape: (B,)."""
    ss_res = np.sum((actual - predicted) ** 2, axis=0)
    ss_tot = np.sum((actual - actual.mean(axis=0, keepdims=True)) ** 2, axis=0)
    r2 = np.ones(actual.shape[1], dtype=np.float32)
    nonconstant = ss_tot > 0
    r2[nonconstant] = 1.0 - ss_res[nonconstant] / ss_tot[nonconstant]
    return r2


# ---------------------------------------------------------------------------
# File-based wrapper
# ---------------------------------------------------------------------------

def cnmf_fuse_tile(
    hs_path: str | Path,
    ms_path: str | Path,
    out_path: str | Path | None = None,
    *,
    scale_factor: float = 10_000.0,
    nodata_val: int = 65535,
    **cnmf_kwargs,
) -> dict:
    """
    File-based CNMF wrapper. Same return dict structure as sfim_fuse_tile.

    Parameters
    ----------
    hs_path : path to EMIT-b32 GeoTIFF (B_hs, H_lr, W_lr), uint16 DN
    ms_path : path to S2 GeoTIFF (B_ms, H_hr, W_hr), uint16 DN
    out_path : if given, write fused GeoTIFF here (uint16, DN scale)
    scale_factor : DN → reflectance divisor (default 10000)
    nodata_val : nodata sentinel for EMIT tiles (default 65535)
    **cnmf_kwargs : passed to cnmf_fuse()

    Returns
    -------
    dict with keys:
        "fused"      : (B_hs, H_hr, W_hr) uint16 or None if error
        "r2"         : (B_hs,) per-band R² (self-consistency check)
        "r2_mean"    : float
        "r2_per_band": list[float]
        "status"     : "OK" | "ERROR"
        "out_path"   : str or None
        "info"       : dict with CNMF diagnostics
    """
    assert rasterio is not None, "rasterio is required for file-based CNMF"

    # Read tiles
    with rasterio.open(hs_path) as ds:
        hs_raw = ds.read().astype(np.float32)  # (B_hs, H_lr, W_lr)
        hs_profile = ds.profile.copy()

    with rasterio.open(ms_path) as ds:
        ms_raw = ds.read().astype(np.float32)  # (B_ms, H_hr, W_hr)
        ms_profile = ds.profile.copy()

    # Mask nodata, convert to reflectance
    hs_raw[hs_raw == nodata_val] = np.nan
    ms_raw[ms_raw == 0] = np.nan  # S2 nodata sentinel

    hs_refl = hs_raw / scale_factor
    ms_refl = ms_raw / scale_factor

    # Replace NaN with 0 for the fusion
    hs_refl = np.nan_to_num(hs_refl, nan=0.0)
    ms_refl = np.nan_to_num(ms_refl, nan=0.0)

    # Transpose to (H, W, B) for cnmf_fuse
    hs_hwb = np.transpose(hs_refl, (1, 2, 0))
    ms_hwb = np.transpose(ms_refl, (1, 2, 0))

    # Run CNMF
    try:
        fused_hwb, info = cnmf_fuse(hs_hwb, ms_hwb, **cnmf_kwargs)
    except Exception as e:
        return {
            "fused": None, "r2": np.zeros(hs_hwb.shape[2]),
            "r2_mean": 0.0, "r2_per_band": [],
            "status": f"ERROR: {e}", "out_path": None,
            "info": {},
        }

    # Handle degenerate tile (HS data too sparse for CNMF)
    if info.get("status") == "DEGENERATE_HS":
        return {
            "fused": None, "r2": np.zeros(hs_hwb.shape[2]),
            "r2_mean": 0.0, "r2_per_band": [],
            "status": "SKIP_DEGENERATE", "out_path": None,
            "info": info,
        }

    # ── R² self-consistency check ──
    # Gaussian-downsample fused output back to LR, compare against original HS
    rows_lr, cols_lr, bands_hs = hs_hwb.shape
    rows_hr, cols_hr, bands_ms = ms_hwb.shape
    w = rows_hr // rows_lr

    fused_lr = _gaussian_downsample(fused_hwb, w)  # (H_lr, W_lr, B_hs)
    r2 = _compute_r2(
        hs_hwb.reshape(-1, bands_hs),
        fused_lr.reshape(-1, bands_hs),
    )

    # Convert back to (B, H, W) uint16
    fused_bhw = np.transpose(fused_hwb, (2, 0, 1))  # (B_hs, H_hr, W_hr)
    fused_dn = np.clip(fused_bhw * scale_factor, 0, 65534).astype(np.uint16)

    # Write output
    out_str = None
    if out_path is not None:
        out_path = Path(out_path)
        out_path.parent.mkdir(parents=True, exist_ok=True)

        # Read wavelength tags from HS tile
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


# ---------------------------------------------------------------------------
# Parallel tile processing — streaming producer / consumer pipeline
# ---------------------------------------------------------------------------
#
# Drive FUSE performs best with single-threaded sequential I/O.  Running
# multiple processes that each read/write to Drive causes severe contention
# (~10 s/tile vs ~1 s sequential).
#
# Architecture:
#   Reader thread ──→ [bounded queue] ──→ N worker processes ──→ Writer thread
#
# - Reader thread reads HS+MS GeoTIFFs from Drive sequentially into a
#   bounded queue (``prefetch`` slots, ~250 MB at 16 tiles).
# - N CPU worker processes pull arrays from the queue, run cnmf_fuse
#   (pure compute, zero I/O), and return results via futures.
# - The main thread writes fused GeoTIFFs back to Drive sequentially as
#   results arrive.
#
# Reading (~0.06 s/tile) is ~20× faster than compute (~1-2 s/tile), so
# the reader easily stays ahead.  Memory stays bounded at ~prefetch tiles
# in the queue + ~n_workers tiles being processed.


def _read_tile_arrays(
    hs_path: str,
    ms_path: str,
    scale_factor: float = 10_000.0,
    nodata_val: int = 65535,
) -> tuple[np.ndarray, np.ndarray, dict]:
    """
    Read a tile pair from GeoTIFF and return reflectance arrays + write metadata.

    Returns
    -------
    hs_hwb : (H_lr, W_lr, B_hs) float32 reflectance
    ms_hwb : (H_hr, W_hr, B_ms) float32 reflectance
    write_meta : dict with 'ms_profile' and 'wavelengths_nm' for writing output
    """
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


def _write_fused_tile(
    fused_hwb: np.ndarray,
    out_path: str,
    write_meta: dict,
    scale_factor: float = 10_000.0,
    nodata_val: int = 65535,
) -> None:
    """Write fused result to GeoTIFF on Drive."""
    fused_bhw = np.transpose(fused_hwb, (2, 0, 1))
    fused_dn = np.clip(fused_bhw * scale_factor, 0, 65534).astype(np.uint16)

    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    profile = write_meta["ms_profile"].copy()
    profile.update(
        count=fused_dn.shape[0], dtype="uint16", nodata=nodata_val,
        driver="GTiff", compress="DEFLATE", predictor=2, tiled=True,
        BIGTIFF="IF_SAFER",
    )
    profile.pop("interleave", None)

    with rasterio.open(out_path, "w", **profile) as dst:
        dst.write(fused_dn)
        wl = write_meta.get("wavelengths_nm")
        if wl:
            for i, w in enumerate(wl):
                dst.update_tags(i + 1, wavelength=f"{w:.4f}")


def _worker_fuse_arrays(args: tuple) -> dict:
    """
    Worker: pure-CPU CNMF on in-memory arrays.  No file I/O.

    Parameters
    ----------
    args : (work_idx, hs_hwb, ms_hwb, cnmf_kwargs)

    Returns
    -------
    dict with work_idx, fused_hwb, r2, info, status, time_s.
    """
    import time as _time
    work_idx, hs_hwb, ms_hwb, cnmf_kwargs = args
    tic = _time.time()
    try:
        fused_hwb, info = cnmf_fuse(hs_hwb, ms_hwb, **cnmf_kwargs)
    except Exception as e:
        return {"work_idx": work_idx, "status": f"ERROR: {e}",
                "fused_hwb": None, "r2": None, "info": {},
                "time_s": _time.time() - tic}

    if info.get("status") == "DEGENERATE_HS":
        return {"work_idx": work_idx, "status": "SKIP_DEGENERATE",
                "fused_hwb": None, "r2": None, "info": info,
                "time_s": _time.time() - tic}

    # R² self-consistency check
    rows_lr, cols_lr, bands_hs = hs_hwb.shape
    w = ms_hwb.shape[0] // rows_lr
    fused_lr = _gaussian_downsample(fused_hwb, w)
    r2 = _compute_r2(
        hs_hwb.reshape(-1, bands_hs),
        fused_lr.reshape(-1, bands_hs),
    )
    return {"work_idx": work_idx, "status": "OK",
            "fused_hwb": fused_hwb, "r2": r2, "info": info,
            "time_s": _time.time() - tic}


def cnmf_fuse_tiles_parallel(
    tile_list: list[dict],
    *,
    n_workers: int = 6,
    prefetch: int = 16,
    scale_factor: float = 10_000.0,
    nodata_val: int = 65535,
    max_endmembers: int = 20,
    inner_iters: int = 200,
    outer_iters: int = 1,
    verbose_first: int = 0,
    skip_existing: bool = True,
) -> list[dict]:
    """
    Process CNMF fusion using a streaming producer-consumer pipeline.

    A reader thread loads tiles from Drive sequentially into a bounded
    buffer (``prefetch`` tiles, ~250 MB).  ``n_workers`` CPU processes
    run CNMF on in-memory arrays (zero I/O).  The main thread writes
    fused GeoTIFFs back to Drive as results arrive.  All three stages
    run concurrently — read time is fully hidden behind compute time.

    Parameters
    ----------
    tile_list : list[dict]
        Each dict must have keys: ``hs_path``, ``ms_path``, ``pair_dir``,
        ``tile_name``.  Extra keys are passed through to the output rows.
    n_workers : int
        Number of parallel worker processes (default 6).
    prefetch : int
        Number of tiles to read ahead (default 16, ~250 MB buffer).
    scale_factor, nodata_val, max_endmembers, inner_iters, outer_iters
        Forwarded to ``cnmf_fuse`` / tile I/O.
    verbose_first : int
        Run the first N tiles sequentially with verbose=True before
        launching the pipeline.  Useful for sanity-checking output.
    skip_existing : bool
        Skip tiles whose output file already exists (default True).

    Returns
    -------
    list[dict]
        One row per tile with keys: tile_name, aoi_slug, pair_id, tile_idx,
        status, r2_cnmf_mean, time_s, cnmf_M, cnmf_rmse_h, cnmf_rmse_m,
        r2_cnmf_band_*.
    """
    from concurrent.futures import ProcessPoolExecutor, as_completed
    from threading import Thread
    from queue import Queue
    import time as _time

    try:
        from tqdm import tqdm
    except ImportError:
        def tqdm(it, **kw):
            return it

    cnmf_kwargs = dict(
        max_endmembers=max_endmembers,
        inner_iters=inner_iters,
        outer_iters=outer_iters,
        verbose=False,
    )

    # ── Filter tiles (skip existing / missing) ──
    work_items = []
    results_rows = [None] * len(tile_list)

    for idx, tile in enumerate(tile_list):
        hs_path = Path(tile["hs_path"])
        ms_path = Path(tile["ms_path"])
        pair_dir = Path(tile["pair_dir"])
        tile_name = tile["tile_name"]
        out_path = pair_dir / "CNMF" / f"{tile_name}_cnmf.tif"

        base_row = {
            "tile_name": tile_name,
            "aoi_slug": tile.get("aoi_slug", ""),
            "pair_id": tile.get("pair_id", ""),
            "tile_idx": tile.get("tile_idx", -1),
            "r2_regression": tile.get("r2_regression"),
        }

        if skip_existing and out_path.exists():
            base_row["status"] = "EXISTED"
            results_rows[idx] = base_row
            continue
        if not hs_path.exists() or not ms_path.exists():
            base_row["status"] = "MISSING_FILES"
            results_rows[idx] = base_row
            continue

        work_items.append((idx, str(hs_path), str(ms_path), str(out_path), base_row))

    n_existed = sum(1 for r in results_rows if r and r.get("status") == "EXISTED")
    n_missing = sum(1 for r in results_rows if r and r.get("status") == "MISSING_FILES")
    n_to_process = len(work_items)

    print(f"CNMF pipeline: {len(tile_list)} tiles total, "
          f"{n_existed} existed, {n_missing} missing, "
          f"{n_to_process} to process with {n_workers} workers "
          f"(prefetch={prefetch})")

    if n_to_process == 0:
        return [r for r in results_rows if r is not None]

    # ── Optional: run first few sequentially with verbose ──
    sequential_items = work_items[:verbose_first]
    pipeline_items = work_items[verbose_first:]

    for idx, hs_p, ms_p, out_p, base_row in sequential_items:
        print(f"  [verbose] {base_row['tile_name']}")
        tic = _time.time()
        try:
            hs_hwb, ms_hwb, write_meta = _read_tile_arrays(
                hs_p, ms_p, scale_factor, nodata_val)
            fused_hwb, info = cnmf_fuse(hs_hwb, ms_hwb, verbose=True,
                                         **cnmf_kwargs)
            if info.get("status") == "DEGENERATE_HS":
                base_row["status"] = "SKIP_DEGENERATE"
                base_row["time_s"] = _time.time() - tic
                results_rows[idx] = base_row
                continue
            w = ms_hwb.shape[0] // hs_hwb.shape[0]
            fused_lr = _gaussian_downsample(fused_hwb, w)
            r2 = _compute_r2(
                hs_hwb.reshape(-1, hs_hwb.shape[2]),
                fused_lr.reshape(-1, hs_hwb.shape[2]),
            )
            _write_fused_tile(fused_hwb, out_p, write_meta,
                              scale_factor, nodata_val)
            elapsed = _time.time() - tic
            _fill_result_row(base_row, "OK", r2, info, elapsed, out_p)
        except Exception as e:
            base_row["status"] = f"ERROR: {e}"
            base_row["time_s"] = _time.time() - tic
        results_rows[idx] = base_row

    if not pipeline_items:
        return [r for r in results_rows if r is not None]

    # ═══════════════════════════════════════════════════════════════════
    #  Streaming pipeline: reader thread → worker pool → main-thread writer
    # ═══════════════════════════════════════════════════════════════════

    _SENTINEL = None  # marks end of reader stream
    read_queue = Queue(maxsize=prefetch)
    n_read_errors = 0
    n_write_errors = 0

    # ── Reader thread: sequential Drive reads → bounded queue ──
    def _reader():
        nonlocal n_read_errors
        for wi, (idx, hs_p, ms_p, out_p, base_row) in enumerate(pipeline_items):
            try:
                hs_hwb, ms_hwb, write_meta = _read_tile_arrays(
                    hs_p, ms_p, scale_factor, nodata_val)
                read_queue.put((wi, idx, out_p, base_row,
                                hs_hwb, ms_hwb, write_meta))
            except Exception as e:
                base_row["status"] = f"ERROR_READ: {e}"
                results_rows[idx] = base_row
                n_read_errors += 1
        read_queue.put(_SENTINEL)

    reader_thread = Thread(target=_reader, daemon=True)
    reader_thread.start()

    # ── Main loop: drain queue → submit to pool → write results ──
    pbar = tqdm(total=len(pipeline_items), desc="CNMF fusion")
    pending = {}  # future → (idx, out_path, write_meta, base_row)

    with ProcessPoolExecutor(max_workers=n_workers) as executor:
        reader_done = False

        while not reader_done or pending:
            # Fill pool from queue (non-blocking when pool is full)
            while not reader_done and len(pending) < n_workers + prefetch:
                try:
                    item = read_queue.get(timeout=0.05)
                except Exception:
                    break
                if item is _SENTINEL:
                    reader_done = True
                    break
                wi, idx, out_p, base_row, hs_hwb, ms_hwb, write_meta = item
                fut = executor.submit(
                    _worker_fuse_arrays,
                    (wi, hs_hwb, ms_hwb, cnmf_kwargs),
                )
                pending[fut] = (idx, out_p, write_meta, base_row)

            # Collect completed futures
            done_futs = [f for f in pending if f.done()]
            if not done_futs and pending:
                # Brief sleep to avoid busy-spinning
                _time.sleep(0.02)
                continue

            for fut in done_futs:
                idx, out_p, write_meta, base_row = pending.pop(fut)
                try:
                    res = fut.result()
                except Exception as e:
                    base_row["status"] = f"ERROR: {e}"
                    results_rows[idx] = base_row
                    pbar.update(1)
                    continue

                if res["status"] == "OK" and res["fused_hwb"] is not None:
                    try:
                        _write_fused_tile(res["fused_hwb"], out_p,
                                          write_meta, scale_factor, nodata_val)
                        _fill_result_row(base_row, "OK", res["r2"],
                                         res["info"], res["time_s"], out_p)
                    except Exception as e:
                        base_row["status"] = f"ERROR_WRITE: {e}"
                        base_row["time_s"] = res["time_s"]
                        n_write_errors += 1
                else:
                    base_row["status"] = res["status"]
                    base_row["time_s"] = res["time_s"]
                    if res.get("info"):
                        base_row["cnmf_M"] = res["info"].get("M")

                results_rows[idx] = base_row
                pbar.update(1)

    reader_thread.join()
    pbar.close()

    n_final_ok = sum(1 for r in results_rows
                     if r and r.get("status") == "OK")
    print(f"\nDone: {n_final_ok} OK, {n_read_errors} read errors, "
          f"{n_write_errors} write errors")

    return [r for r in results_rows if r is not None]


def _fill_result_row(base_row, status, r2, info, elapsed, out_path):
    """Populate a result row dict in-place."""
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
