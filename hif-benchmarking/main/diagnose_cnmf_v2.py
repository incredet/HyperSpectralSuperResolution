#!/usr/bin/env python3
"""
diagnose_cnmf_v2.py — Trace CNMF failure root cause in pure Python.

Loads the same .mat files CNMF uses, replicates the key steps
(estR dimensionality, VCA rank analysis, NMF stability) to pinpoint
where NaN originates.

Usage:
    cd /path/to/hif-benchmarking
    python main/diagnose_cnmf_v2.py --bench-root . --dataset EMIT32 --scale 6 \
        --scene 20250422T182135_T11SPS_20250419_tile041
"""

import argparse
import sys
from pathlib import Path
import numpy as np
import scipy.io as sio


def load_mat_var(path, var):
    """Load a single variable from a .mat file."""
    d = sio.loadmat(str(path))
    return d[var]


def im2double(x):
    """Replicate MATLAB's im2double."""
    if np.issubdtype(x.dtype, np.floating):
        return x.astype(np.float64)
    elif x.dtype == np.uint16:
        return x.astype(np.float64) / 65535.0
    elif x.dtype == np.uint8:
        return x.astype(np.float64) / 255.0
    return x.astype(np.float64)


def gaussian_down_sample_simple(img, factor):
    """Simplified Gaussian downsampling (average pooling)."""
    from scipy.ndimage import uniform_filter
    if img.ndim == 2:
        smoothed = uniform_filter(img.astype(np.float64), size=factor)
        return smoothed[::factor, ::factor]
    # 3D
    out_bands = []
    for b in range(img.shape[2]):
        smoothed = uniform_filter(img[:, :, b].astype(np.float64), size=factor)
        out_bands.append(smoothed[::factor, ::factor])
    return np.stack(out_bands, axis=2)


def virtual_dimensionality(data, alpha=0.05):
    """
    Replicate MATLAB vd.m — estimate number of spectrally distinct sources.
    data: (bands, pixels)
    """
    from scipy.stats import norm
    L, N = data.shape
    R = (data @ data.T) / N
    K = np.cov(data)  # (L, L)
    e_r = np.sort(np.linalg.eigvalsh(R))[::-1]
    e_k = np.sort(np.linalg.eigvalsh(K))[::-1]
    diff = e_r - e_k
    variance = np.sqrt(2 * (e_r**2 + e_k**2) / N)
    tau = -norm.ppf(alpha, loc=0, scale=variance)
    return int(np.sum(diff > tau))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--bench-root", required=True)
    ap.add_argument("--dataset", default="EMIT32")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--scene", required=True,
                    help="Tile scene name, e.g. 20250422T182135_T11SPS_20250419_tile041")
    args = ap.parse_args()

    root = Path(args.bench_root)
    ds = args.dataset
    sc = args.scene
    s = args.scale

    hs_path = root / f"data/HS/{ds}/{s}/{sc}.mat"
    ms_path = root / f"data/MS/{ds}/{sc}.mat"
    sr_path = root / f"data/SR/CNMF/{ds}/{s}/{sc}.mat"

    print("\n" + "=" * 70)
    print("CNMF STEP-BY-STEP DIAGNOSTIC (Python)")
    print("=" * 70)

    # ---- Load data ----
    hsi = im2double(load_mat_var(hs_path, "hsi"))
    msi = im2double(load_mat_var(ms_path, "msi"))

    rows2, cols2, bands2 = hsi.shape
    rows1, cols1, bands1 = msi.shape
    w = rows1 // rows2

    print(f"\n[0] Data loaded:")
    print(f"    HSI: {hsi.shape} {hsi.dtype}  range=[{hsi.min():.6f}, {hsi.max():.6f}]  mean={hsi.mean():.6f}")
    print(f"    MSI: {msi.shape} {msi.dtype}  range=[{msi.min():.6f}, {msi.max():.6f}]  mean={msi.mean():.6f}")
    print(f"    Scale factor w = {w}")

    # Zero bands
    zero_bands = []
    for b in range(bands2):
        if np.abs(hsi[:, :, b]).max() == 0:
            zero_bands.append(b + 1)  # 1-indexed like MATLAB
    eff_rank = bands2 - len(zero_bands)
    print(f"    All-zero HS bands: {len(zero_bands)}  {zero_bands}")
    print(f"    Effective spectral dimensions: {eff_rank}")

    # ---- Step 1: Check HSI matrix rank ----
    print(f"\n[1] HSI matrix analysis:")
    HSI_2d = hsi.reshape(-1, bands2).T  # (bands, pixels)
    HSI_2d = np.clip(HSI_2d, 0, None)

    # Actual matrix rank
    s_vals = np.linalg.svd(HSI_2d, compute_uv=False)
    numerical_rank = int(np.sum(s_vals > 1e-10))
    print(f"    HSI_2d shape: ({HSI_2d.shape[0]}, {HSI_2d.shape[1]})")
    print(f"    Singular values (top 10): {np.array2string(s_vals[:10], precision=4, separator=', ')}")
    print(f"    Singular values near zero (<1e-10): {int(np.sum(s_vals < 1e-10))}")
    print(f"    Numerical rank: {numerical_rank}")

    # ---- Step 2: Virtual Dimensionality & M ----
    print(f"\n[2] Virtual Dimensionality (vd):")
    vd_result = virtual_dimensionality(HSI_2d, alpha=0.05)
    M = max(min(30, bands2), vd_result)
    print(f"    vd() = {vd_result}")
    print(f"    M = max(min(30, {bands2}), {vd_result}) = {M}")
    print(f"    *** M={M} but effective rank={eff_rank} ***")
    if M > eff_rank:
        print(f"    >>> PROBLEM: M > effective rank!")
        print(f"    >>> W_hyper will be (bands2 x M) = ({bands2} x {M}) with rank <= {eff_rank}")
        print(f"    >>> W'W will be ({M} x {M}) with rank <= {eff_rank} — SINGULAR!")
        print(f"    >>> NMF update H = H .* (W'D) ./ (W'W * H) will hit 0/0 = NaN")
    elif M > numerical_rank:
        print(f"    >>> WARNING: M > numerical rank ({numerical_rank})")
    else:
        print(f"    OK: M <= effective rank")

    # ---- Step 3: estR offset analysis ----
    print(f"\n[3] estR offset analysis (simplified):")
    # Downsample MS to HS resolution
    lr_ms = gaussian_down_sample_simple(msi, w)
    # Build A matrix: (pixels, bands2+1) with mask column
    mask = np.ones((rows2, cols2))
    hs_with_mask = np.concatenate([hsi, mask[:, :, np.newaxis]], axis=2)
    A = hs_with_mask.reshape(-1, bands2 + 1)
    H = A.T @ A  # Gram matrix (bands2+1, bands2+1)
    print(f"    Gram matrix H shape: {H.shape}")
    H_evals = np.linalg.eigvalsh(H)
    print(f"    H eigenvalues near zero (<1e-10): {int(np.sum(np.abs(H_evals) < 1e-10))}")
    print(f"    H condition number: {np.linalg.cond(H):.2e}")

    # Estimate offsets using least-squares (simplified quadprog)
    offsets = []
    for k in range(bands1):
        b_vec = lr_ms[:, :, k].ravel()
        # Least-squares: x = (A'A)^-1 A'b (ignoring nonnegativity for diagnostic)
        try:
            x, _, _, _ = np.linalg.lstsq(A, b_vec, rcond=None)
            offsets.append(x[-1])  # last element is the offset
        except:
            offsets.append(float('nan'))
    print(f"    Estimated offsets per MS band: {[f'{o:.6f}' for o in offsets]}")

    # Apply offsets to MSI (same as CNMF_fusion.m lines 61-67)
    msi_adj = msi.copy()
    for b_idx, off in enumerate(offsets):
        msi_adj[:, :, b_idx] -= off
    msi_adj = np.clip(msi_adj, 0, None)
    zeros_after = np.sum(msi_adj == 0)
    print(f"    MSI after offset subtraction: range=[{msi_adj.min():.6f}, {msi_adj.max():.6f}]  mean={msi_adj.mean():.6f}")
    print(f"    MSI zeros after subtraction: {zeros_after} / {msi_adj.size} ({100*zeros_after/msi_adj.size:.1f}%)")

    # ---- Step 4: Simulate VCA + NMF stability ----
    print(f"\n[4] NMF stability test:")

    # Use SVD-based endmember extraction (simplified VCA)
    # Pick M pixels that are most extreme in SVD space
    r_m = HSI_2d.mean(axis=1, keepdims=True)
    R_o = HSI_2d - r_m
    U, S_svd, Vt = np.linalg.svd(R_o, full_matrices=False)
    # U is (bands, min(bands,pixels)), project onto first d components
    d = min(M - 1, numerical_rank)
    Ud = U[:, :d]          # (bands, d)
    X = Ud.T @ R_o         # (d, pixels) — data in reduced space

    print(f"    SVD projection: {X.shape} (d={d})")

    # Greedily pick extreme points (simplified VCA)
    indices = []
    X_work = X.copy()
    for i in range(min(M, X_work.shape[1])):
        norms = np.sum(X_work**2, axis=0)
        idx = np.argmax(norms)
        indices.append(idx)
        if i < M - 1:
            xi = X_work[:, idx:idx+1]
            dot = xi.T @ xi
            if dot > 1e-30:
                proj = (xi @ (xi.T @ X_work)) / dot
                X_work = X_work - proj

    W_sim = HSI_2d[:, indices[:M]]  # (bands, M)
    print(f"    Simulated W_hyper: {W_sim.shape}")
    print(f"    rank(W_sim) = {np.linalg.matrix_rank(W_sim)}")

    WtW = W_sim.T @ W_sim
    cond_WtW = np.linalg.cond(WtW)
    evals_WtW = np.linalg.eigvalsh(WtW)
    print(f"    cond(W'W) = {cond_WtW:.2e}")
    print(f"    min eigenvalue of W'W = {evals_WtW.min():.2e}")
    print(f"    eigenvalues near zero: {int(np.sum(np.abs(evals_WtW) < 1e-10))}")

    if cond_WtW > 1e12:
        print(f"    >>> W'W is ill-conditioned! NMF will produce NaN.")

    # Test NMF update for 20 iterations
    print(f"\n    NMF update test (M={M}):")
    H_test = np.ones((M, rows2 * cols2)) / M
    WtD = W_sim.T @ HSI_2d
    WtW_test = W_sim.T @ W_sim

    for q in range(1, 21):
        denom = WtW_test @ H_test
        zero_denom = int(np.sum(denom == 0))
        H_test = H_test * WtD / (denom + 1e-30)  # eps to avoid Python crash
        nan_count = int(np.sum(np.isnan(H_test)))
        if q <= 3 or q % 5 == 0 or nan_count > 0:
            print(f"    iter {q:2d}: H range=[{np.nanmin(H_test):.4e}, {np.nanmax(H_test):.4e}]  NaN={nan_count}  zero_denom={zero_denom}")
        if nan_count > 0:
            print(f"    *** NaN at iteration {q}!")
            break

    # ---- Step 5: Test with reduced M ----
    M_fix = min(15, eff_rank - 1, numerical_rank - 1)
    print(f"\n[5] Test with reduced M = {M_fix}:")

    W_fix = HSI_2d[:, indices[:M_fix]]
    WtW_fix = W_fix.T @ W_fix
    cond_fix = np.linalg.cond(WtW_fix)
    evals_fix = np.linalg.eigvalsh(WtW_fix)
    print(f"    rank(W_fix) = {np.linalg.matrix_rank(W_fix)}")
    print(f"    cond(W'W) = {cond_fix:.2e}")
    print(f"    min eigenvalue = {evals_fix.min():.2e}")

    H_fix = np.ones((M_fix, rows2 * cols2)) / M_fix
    WtD_fix = W_fix.T @ HSI_2d
    WtW_fix_m = W_fix.T @ W_fix

    nan_found = False
    for q in range(1, 51):
        denom = WtW_fix_m @ H_fix
        H_fix = H_fix * WtD_fix / (denom + 1e-30)
        nan_count = int(np.sum(np.isnan(H_fix)))
        if q <= 3 or q == 50 or nan_count > 0:
            print(f"    iter {q:2d}: H range=[{np.nanmin(H_fix):.4e}, {np.nanmax(H_fix):.4e}]  NaN={nan_count}")
        if nan_count > 0:
            nan_found = True
            break

    if not nan_found:
        print(f"    SUCCESS: No NaN after 50 iterations with M={M_fix}")

    # ---- Step 6: Check existing output ----
    print(f"\n[6] Existing CNMF output:")
    if sr_path.exists():
        sri = load_mat_var(sr_path, "sri")
        print(f"    sri: shape={sri.shape} dtype={sri.dtype}")
        print(f"    range=[{sri.min()}, {sri.max()}]  mean={sri.mean():.6f}")
        print(f"    all-zero: {np.all(sri == 0)}")
    else:
        print(f"    No output file at {sr_path}")

    # ---- Summary ----
    print(f"\n{'='*70}")
    print("DIAGNOSIS SUMMARY")
    print(f"{'='*70}")
    print(f"  bands2={bands2}, zero_bands={len(zero_bands)}, effective_rank={eff_rank}")
    print(f"  M (current) = {M}  >>>  {'TOO HIGH' if M > eff_rank else 'OK'}")
    print(f"  M (proposed) = {M_fix}")
    print(f"\n  FIX: In CNMF_fusion.m line 114, change:")
    print(f"    M = max([min([30 bands2]) round(vd(HSI,5*10^-2))]);")
    print(f"  to:")
    print(f"    M = min([20 bands2-1 max(round(vd(HSI,5*10^-2)), 5)]);")
    print(f"\n  This caps M at 20 (or bands-1) instead of forcing M >= 30.")
    print(f"  For your data with {eff_rank} effective bands, M will be ~{min(20, vd_result)} instead of {M}.")
    print()


if __name__ == "__main__":
    main()
