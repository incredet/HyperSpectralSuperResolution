#!/usr/bin/env python3
"""
distance_to_bicubic.py — Measure how far each fusion method deviates from
simple bicubic interpolation of the degraded HSI.

For each scene and method, computes:
  - RMSE(method, bicubic)   — spatial distance from bicubic
  - SAM(method, bicubic)    — spectral distance from bicubic
  - RMSE(method, GT)        — error vs ground truth (for context)

A method that scores well on Wald but has low distance to bicubic is
essentially "playing it safe" — staying close to the interpolated input
rather than injecting new spectral-spatial information from the MSI.

Usage
-----
    python main/distance_to_bicubic.py --dataset EMIT32_WALD --scale 6

Output
------
    data/eval/{dataset}_{scale}_bicubic_distance.csv
"""

import argparse
import os
import sys
from pathlib import Path

import numpy as np

try:
    import scipy.io
    from scipy.ndimage import zoom
except ImportError:
    sys.exit("ERROR: scipy is required.")


def bicubic_upsample(hsi_lr, scale):
    h, w, b = hsi_lr.shape
    out = np.empty((h * scale, w * scale, b), dtype=np.float64)
    for i in range(b):
        out[:, :, i] = zoom(hsi_lr[:, :, i], scale, order=3)
    return np.clip(out, 0.0, 1.0)


def rmse(a, b):
    return float(np.sqrt(np.mean((a - b) ** 2)))


def sam(a, b):
    h, w, bands = a.shape
    a_flat = a.reshape(-1, bands)
    b_flat = b.reshape(-1, bands)
    dot = np.sum(a_flat * b_flat, axis=1)
    norm_a = np.linalg.norm(a_flat, axis=1)
    norm_b = np.linalg.norm(b_flat, axis=1)
    denom = norm_a * norm_b
    valid = denom > 1e-10
    if not np.any(valid):
        return 0.0
    cos_angle = np.clip(dot[valid] / denom[valid], -1.0, 1.0)
    return float(np.degrees(np.mean(np.arccos(cos_angle))))


def psnr(gt, sr):
    mse_val = np.mean((gt - sr) ** 2)
    if mse_val == 0:
        return float("inf")
    return 10.0 * np.log10(1.0 / mse_val)


def main():
    ap = argparse.ArgumentParser(
        description="Measure distance of each fusion method from bicubic baseline."
    )
    ap.add_argument("--bench-root", default=".")
    ap.add_argument("--dataset", default="EMIT32_WALD")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--methods", nargs="*", default=None)
    args = ap.parse_args()

    os.chdir(args.bench_root)

    dataset = args.dataset
    scale = args.scale
    gt_dir = Path(f"data/GT/{dataset}")
    hs_dir = Path(f"data/HS/{dataset}/{scale}")
    sr_root = Path("data/SR")
    eval_dir = Path("data/eval")
    eval_dir.mkdir(parents=True, exist_ok=True)

    gt_files = sorted(gt_dir.glob("*.mat"))
    if not gt_files:
        sys.exit(f"No GT files in {gt_dir}")

    scene_names = [f.stem for f in gt_files]

    # Discover methods
    method_dirs = sorted(sr_root.iterdir()) if sr_root.is_dir() else []
    if args.methods:
        allowed = set(args.methods)
        method_dirs = [d for d in method_dirs if d.name in allowed]

    methods = []
    for md in method_dirs:
        if md.name.startswith("_") or md.name == "Bicubic":
            continue
        sr_scale_dir = md / dataset / str(scale)
        if sr_scale_dir.is_dir():
            methods.append(md.name)

    if not methods:
        sys.exit("No fusion methods found.")

    print(f"Distance to Bicubic Analysis")
    print(f"============================")
    print(f"Dataset: {dataset}, Scale: {scale}")
    print(f"Scenes:  {len(scene_names)}")
    print(f"Methods: {', '.join(methods)}")
    print()

    # Collect results: method -> list of per-scene dicts
    all_rows = []

    for i, scene in enumerate(scene_names):
        if (i + 1) % 50 == 0 or i == 0:
            print(f"  [{i+1}/{len(scene_names)}] {scene}")

        gt_path = gt_dir / f"{scene}.mat"
        hs_path = hs_dir / f"{scene}.mat"

        if not hs_path.exists():
            continue

        gt = scipy.io.loadmat(str(gt_path))["hsi"].astype(np.float64)
        hsi_lr = scipy.io.loadmat(str(hs_path))["hsi"].astype(np.float64)
        bic = bicubic_upsample(hsi_lr, scale)

        # Bicubic vs GT (the baseline performance)
        bic_gt_rmse = rmse(gt, bic)
        bic_gt_sam = sam(gt, bic)
        bic_gt_psnr = psnr(gt, bic)

        for method in methods:
            sr_path = sr_root / method / dataset / str(scale) / f"{scene}.mat"
            if not sr_path.exists():
                continue

            sri = scipy.io.loadmat(str(sr_path))
            if "sri" not in sri:
                continue
            sr = sri["sri"].astype(np.float64)
            if np.issubdtype(sri["sri"].dtype, np.integer):
                sr = sr / np.iinfo(sri["sri"].dtype).max

            if sr.shape != gt.shape:
                continue
            if np.all(sr == 0) or np.any(np.isnan(sr)):
                continue

            # Distance from bicubic
            dist_rmse = rmse(sr, bic)
            dist_sam = sam(sr, bic)

            # Distance from GT (fusion quality)
            gt_rmse = rmse(gt, sr)
            gt_sam = sam(gt, sr)
            gt_psnr = psnr(gt, sr)

            all_rows.append({
                "scene": scene,
                "method": method,
                "dist_bic_RMSE": dist_rmse,
                "dist_bic_SAM": dist_sam,
                "gt_RMSE": gt_rmse,
                "gt_SAM": gt_sam,
                "gt_PSNR": gt_psnr,
                "bic_gt_RMSE": bic_gt_rmse,
                "bic_gt_SAM": bic_gt_sam,
                "bic_gt_PSNR": bic_gt_psnr,
            })

    # Write per-scene CSV
    csv_path = eval_dir / f"{dataset}_{scale}_bicubic_distance.csv"
    cols = ["method", "scene", "dist_bic_RMSE", "dist_bic_SAM",
            "gt_RMSE", "gt_SAM", "gt_PSNR",
            "bic_gt_RMSE", "bic_gt_SAM", "bic_gt_PSNR"]
    with open(csv_path, "w") as f:
        f.write(",".join(cols) + "\n")
        for row in all_rows:
            f.write(",".join(str(row[c]) for c in cols) + "\n")

    print(f"\nPer-scene results: {csv_path}")

    # Summary table
    print()
    print("=" * 100)
    print(f"  DISTANCE TO BICUBIC — {dataset} (scale {scale})")
    print("=" * 100)
    print(f"  Bicubic baseline vs GT:  PSNR={all_rows[0]['bic_gt_PSNR']:.2f} dB  "
          f"RMSE={all_rows[0]['bic_gt_RMSE']:.5f}  SAM={all_rows[0]['bic_gt_SAM']:.3f}°"
          if all_rows else "")
    print()
    hdr = (f"{'Method':<12} {'n':>4}"
           f"  {'dist_RMSE':>10} {'dist_SAM':>10}"
           f"  {'gt_PSNR':>8} {'gt_RMSE':>10} {'gt_SAM':>8}"
           f"  {'PSNR_gain':>10}")
    print(hdr)
    print("-" * 90)

    # Compute mean bicubic PSNR across all scenes
    bic_psnrs = {}
    for row in all_rows:
        bic_psnrs[row["scene"]] = row["bic_gt_PSNR"]
    mean_bic_psnr = np.mean(list(bic_psnrs.values())) if bic_psnrs else 0

    method_summaries = {}
    for method in methods:
        rows = [r for r in all_rows if r["method"] == method]
        if not rows:
            continue
        method_summaries[method] = {
            "n": len(rows),
            "dist_rmse": np.mean([r["dist_bic_RMSE"] for r in rows]),
            "dist_sam": np.mean([r["dist_bic_SAM"] for r in rows]),
            "gt_psnr": np.mean([r["gt_PSNR"] for r in rows]),
            "gt_rmse": np.mean([r["gt_RMSE"] for r in rows]),
            "gt_sam": np.mean([r["gt_SAM"] for r in rows]),
        }
        method_summaries[method]["psnr_gain"] = method_summaries[method]["gt_psnr"] - mean_bic_psnr

    # Sort by distance from bicubic (ascending = closest to bicubic first)
    for method in sorted(method_summaries, key=lambda m: method_summaries[m]["dist_rmse"]):
        s = method_summaries[method]
        print(f"{method:<12} {s['n']:>4}"
              f"  {s['dist_rmse']:>10.5f} {s['dist_sam']:>9.3f}°"
              f"  {s['gt_psnr']:>8.2f} {s['gt_rmse']:>10.5f} {s['gt_sam']:>7.3f}°"
              f"  {s['psnr_gain']:>+9.2f} dB")

    print("=" * 90)
    print()
    print("  dist_RMSE / dist_SAM  = distance from bicubic (higher = more deviation)")
    print("  gt_PSNR / gt_RMSE / gt_SAM = quality vs ground truth")
    print("  PSNR_gain = method PSNR minus bicubic PSNR (how much better than bicubic)")
    print()

    print(f"Summary: {csv_path}")


if __name__ == "__main__":
    main()
