#!/usr/bin/env python3
"""
run_regression_wald.py — Run polynomial Ridge regression fusion for Wald's protocol.

This is the Python-only counterpart of the MATLAB fusion methods (GLP, SFIM,
CNMF, HySure, MAPSMM). It reads the same degraded .mat inputs as the MATLAB
methods and produces output in the same format (key='sri').

The regression works in the degraded Wald space:
  - HS input:  (H/s, W/s, B_hs)  e.g. 20×20×32  — degraded EMIT
  - MS input:  (H, W, B_ms)      e.g. 120×120×10 — degraded S2
  - Output:    (H, W, B_hs)      e.g. 120×120×32 — fused super-resolved

Approach:
  1. Downsample MS to HS resolution via block-averaging
  2. At each LR pixel: pair downsampled MS (10 bands) with HS values (32 bands)
  3. Fit 32 independent Ridge regressions with degree-2 polynomial features
  4. Apply to full-resolution MS to produce fused HSI

This mirrors the production pipeline (spectral/s2_to_emit.py, mode='downsample')
but operates in the normalized [0,1] Wald space instead of raw DN values.

Usage
-----
    python main/run_regression_wald.py --dataset EMIT32_WALD --scale 6

    # With custom parameters:
    python main/run_regression_wald.py --dataset EMIT32_WALD --scale 6 \
        --degree 2 --alpha 1.0

Output
------
    data/SR/Regression/EMIT32_WALD/6/{scene}.mat  (key: 'sri')
    data/SR/Regression/EMIT32_WALD/6/times.csv
"""

import argparse
import os
import sys
import time
from pathlib import Path

import numpy as np

try:
    import scipy.io
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")

try:
    from sklearn.linear_model import Ridge
    from sklearn.preprocessing import PolynomialFeatures, StandardScaler
except ImportError:
    sys.exit("ERROR: scikit-learn is required.  pip install scikit-learn")


# ---------------------------------------------------------------------------
# Regression fusion
# ---------------------------------------------------------------------------

def regression_fuse(hsi_lr: np.ndarray, msi_hr: np.ndarray, scale: int,
                    degree: int = 2, alpha: float = 1.0) -> np.ndarray:
    """
    Fuse degraded HSI and MSI via polynomial Ridge regression.

    Mirrors the production pipeline (spectral/s2_to_emit.py mode='downsample'):
    downsample MSI to HSI resolution via block-averaging, fit regression at
    the low-resolution grid, then apply to the full-resolution MSI.

    Parameters
    ----------
    hsi_lr : (h, w, B_hs) float64
        Degraded low-resolution HSI (e.g. 20×20×32), normalized [0,1].
    msi_hr : (H, W, B_ms) float64
        Degraded high-resolution MSI (e.g. 120×120×10), normalized [0,1].
    scale : int
        Spatial scale factor (H/h = W/w = scale).
    degree : int
        Polynomial feature expansion degree (default: 2).
    alpha : float
        Ridge regularization strength (default: 1.0).

    Returns
    -------
    fused : (H, W, B_hs) float64
        Fused HSI at MSI resolution.
    """
    h_lr, w_lr, b_hs = hsi_lr.shape
    h_hr, w_hr, b_ms = msi_hr.shape

    assert h_hr == h_lr * scale and w_hr == w_lr * scale, \
        f"Scale mismatch: HS {h_lr}×{w_lr}, MS {h_hr}×{w_hr}, scale {scale}"

    # Step 1: Downsample MSI to HSI resolution via block-averaging
    msi_blocks = msi_hr.reshape(h_lr, scale, w_lr, scale, b_ms)
    msi_lr = msi_blocks.mean(axis=(1, 3))  # (h_lr, w_lr, b_ms)

    # Step 2: Build training pairs at LR resolution
    X_train = msi_lr.reshape(-1, b_ms)    # (h*w, 10)
    Y_train = hsi_lr.reshape(-1, b_hs)    # (h*w, 32)

    # Step 3: Remove invalid pixels
    valid = np.all(np.isfinite(X_train), axis=1) & np.all(np.isfinite(Y_train), axis=1)
    valid &= np.any(X_train > 0, axis=1)
    X_train = X_train[valid]
    Y_train = Y_train[valid]

    if X_train.shape[0] < 50:
        raise ValueError(f"Only {X_train.shape[0]} valid LR pixels")

    # Step 4: Polynomial feature expansion + scaling
    poly = PolynomialFeatures(degree=degree, include_bias=True)
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(poly.fit_transform(X_train.astype(np.float64)))

    # Step 5: Fit Ridge (multi-output)
    ridge = Ridge(alpha=alpha, fit_intercept=True)
    ridge.fit(X_scaled, Y_train)

    # Step 6: Apply to full-resolution MS
    X_all = msi_hr.reshape(-1, b_ms).astype(np.float64)
    Y_pred = ridge.predict(scaler.transform(poly.transform(X_all)))

    fused = np.clip(Y_pred, 0.0, 1.0).reshape(h_hr, w_hr, b_hs)
    return fused


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(
        description="Run polynomial Ridge regression fusion for Wald's protocol."
    )
    ap.add_argument("--bench-root", default=".",
                    help="Root of the hif-benchmarking repo (default: cwd)")
    ap.add_argument("--dataset", default="EMIT32_WALD",
                    help="Dataset name (default: EMIT32_WALD)")
    ap.add_argument("--scale", type=int, default=6,
                    help="Scale factor (default: 6)")
    ap.add_argument("--degree", type=int, default=2,
                    help="Polynomial degree (default: 2)")
    ap.add_argument("--alpha", type=float, default=1.0,
                    help="Ridge alpha (default: 1.0)")
    ap.add_argument("--output-folder", default="Regression",
                    help="Output method folder name (default: Regression)")
    args = ap.parse_args()

    os.chdir(args.bench_root)

    dataset = args.dataset
    scale   = args.scale

    hs_dir = Path(f"data/HS/{dataset}/{scale}")
    ms_dir = Path(f"data/MS/{dataset}")
    sr_dir = Path(f"data/SR/{args.output_folder}/{dataset}/{scale}")
    sr_dir.mkdir(parents=True, exist_ok=True)

    # Discover scenes from HS directory
    scenes = sorted(p.stem for p in hs_dir.glob("*.mat"))
    if not scenes:
        sys.exit(f"No HS scenes found in {hs_dir}. Run tif2mat_wald.py first.")

    # Filter to pending
    pending = [s for s in scenes if not (sr_dir / f"{s}.mat").exists()]

    print(f"Regression Fusion (Wald's Protocol)")
    print(f"====================================")
    print(f"Dataset:    {dataset}")
    print(f"Scale:      {scale}")
    print(f"Degree:     {args.degree}")
    print(f"Alpha:      {args.alpha}")
    print(f"Mode:       downsample (block-average MS to HS resolution)")
    print(f"Scenes:     {len(pending)} pending / {len(scenes)} total")
    print()

    if not pending:
        print("All scenes already processed.")
        return

    times_path = sr_dir / "times.csv"

    for i, scene in enumerate(pending, 1):
        hs_path = hs_dir / f"{scene}.mat"
        ms_path = ms_dir / f"{scene}.mat"

        if not ms_path.exists():
            print(f"[{i}/{len(pending)}] {scene}: MS file missing — skipped")
            continue

        print(f"[{i}/{len(pending)}] {scene}", end="", flush=True)
        tic = time.time()

        # Load degraded data
        hsi_lr = scipy.io.loadmat(str(hs_path))["hsi"].astype(np.float64)
        msi_hr = scipy.io.loadmat(str(ms_path))["msi"].astype(np.float64)

        # Run regression fusion
        try:
            fused = regression_fuse(
                hsi_lr, msi_hr, scale,
                degree=args.degree, alpha=args.alpha,
            )
        except Exception as e:
            print(f" — FAILED: {e}")
            continue

        elapsed = time.time() - tic

        # Save output
        scipy.io.savemat(
            str(sr_dir / f"{scene}.mat"),
            {"sri": fused},
            do_compression=True,
        )

        # Append timing
        with open(times_path, "a") as f:
            f.write(f"{scene},{elapsed:.2f}\n")

        print(f" — {elapsed:.1f}s  "
              f"[{fused.min():.4f}, {fused.max():.4f}]  "
              f"shape={fused.shape}")

    print(f"\nDone. Outputs in {sr_dir}/")
    print(f"\nNext: python main/metrics_wald.py --dataset {dataset} --scale {scale}")


if __name__ == "__main__":
    main()
