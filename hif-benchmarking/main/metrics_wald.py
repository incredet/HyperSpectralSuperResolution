#!/usr/bin/env python3
"""
metrics_wald.py — Comprehensive evaluation for Wald's protocol.

Compares fused super-resolution outputs against ground truth EMIT tiles
and generates per-scene CSV files, a combined summary CSV, and a ranked
comparison table.

Metrics computed (standard in HSI fusion literature):
  - PSNR    (Peak Signal-to-Noise Ratio, dB)          ↑ higher is better
  - SSIM    (Structural Similarity Index)              ↑ higher is better
  - SAM     (Spectral Angle Mapper, degrees)           ↓ lower is better
  - ERGAS   (Erreur Relative Globale, dimensionless)   ↓ lower is better
  - RMSE    (Root Mean Square Error)                   ↓ lower is better
  - UIQI    (Universal Image Quality Index)            ↑ higher is better
  - SCC     (Spatial Correlation Coefficient)          ↑ higher is better

Usage
-----
    python main/metrics_wald.py --dataset EMIT32_WALD --scale 6

    # Specific methods only:
    python main/metrics_wald.py --dataset EMIT32_WALD --scale 6 \
        --methods FUSE CNMF GLP HySure CSTF MAPSMM

Output
------
    data/SR/{method}/{dataset}/{scale}/metrics_wald.csv   — per-scene metrics
    data/eval/{dataset}_{scale}_summary.csv               — all methods, all scenes
    data/eval/{dataset}_{scale}_ranking.csv                — mean metrics + rank
"""

import argparse
import glob
import os
import sys
import warnings
from pathlib import Path

import numpy as np

try:
    import scipy.io
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")

warnings.filterwarnings("ignore")

# ---------------------------------------------------------------------------
# Metric implementations
# ---------------------------------------------------------------------------

def compute_psnr(gt: np.ndarray, sr: np.ndarray) -> float:
    """Peak Signal-to-Noise Ratio (dB). Higher is better."""
    mse = np.mean((gt - sr) ** 2)
    if mse == 0:
        return float("inf")
    max_val = 1.0  # data is in [0, 1]
    return 10.0 * np.log10(max_val ** 2 / mse)


def compute_rmse(gt: np.ndarray, sr: np.ndarray) -> float:
    """Root Mean Square Error. Lower is better."""
    return float(np.sqrt(np.mean((gt - sr) ** 2)))


def compute_sam(gt: np.ndarray, sr: np.ndarray) -> float:
    """
    Spectral Angle Mapper — mean spectral angle in degrees.
    Lower is better. Computed per-pixel, then averaged.
    """
    # Reshape to (pixels, bands)
    h, w, b = gt.shape
    gt_flat = gt.reshape(-1, b)
    sr_flat = sr.reshape(-1, b)

    # Dot product and norms per pixel
    dot = np.sum(gt_flat * sr_flat, axis=1)
    norm_gt = np.linalg.norm(gt_flat, axis=1)
    norm_sr = np.linalg.norm(sr_flat, axis=1)

    # Avoid division by zero
    denom = norm_gt * norm_sr
    valid = denom > 1e-10
    if not np.any(valid):
        return 0.0

    cos_angle = np.clip(dot[valid] / denom[valid], -1.0, 1.0)
    angles = np.arccos(cos_angle)

    return float(np.degrees(np.mean(angles)))


def compute_ergas(gt: np.ndarray, sr: np.ndarray, scale: int) -> float:
    """
    Erreur Relative Globale Adimensionnelle de Synthèse.
    Lower is better. Scale-normalized RMSE per band.
    """
    h, w, b = gt.shape
    ergas_sum = 0.0
    for i in range(b):
        gt_band = gt[:, :, i]
        sr_band = sr[:, :, i]
        band_rmse = np.sqrt(np.mean((gt_band - sr_band) ** 2))
        band_mean = np.mean(gt_band)
        if band_mean > 1e-10:
            ergas_sum += (band_rmse / band_mean) ** 2
        # Skip zero-mean bands to avoid inf

    return 100.0 / scale * np.sqrt(ergas_sum / b)


def compute_ssim(gt: np.ndarray, sr: np.ndarray) -> float:
    """
    Structural Similarity Index — mean across all bands.
    Higher is better. Uses standard 7×7 window.
    """
    from scipy.ndimage import uniform_filter

    h, w, b = gt.shape
    win = 7
    C1 = (0.01) ** 2  # data range is 1.0
    C2 = (0.03) ** 2

    ssim_bands = []
    for i in range(b):
        g = gt[:, :, i]
        s = sr[:, :, i]

        mu_g = uniform_filter(g, win)
        mu_s = uniform_filter(s, win)
        mu_g2 = uniform_filter(g * g, win)
        mu_s2 = uniform_filter(s * s, win)
        mu_gs = uniform_filter(g * s, win)

        sigma_g2 = mu_g2 - mu_g ** 2
        sigma_s2 = mu_s2 - mu_s ** 2
        sigma_gs = mu_gs - mu_g * mu_s

        # Clip negative variances (numerical noise)
        sigma_g2 = np.maximum(sigma_g2, 0)
        sigma_s2 = np.maximum(sigma_s2, 0)

        num = (2 * mu_g * mu_s + C1) * (2 * sigma_gs + C2)
        den = (mu_g ** 2 + mu_s ** 2 + C1) * (sigma_g2 + sigma_s2 + C2)

        ssim_map = num / den
        # Trim edges
        pad = win // 2
        ssim_bands.append(np.mean(ssim_map[pad:-pad, pad:-pad]))

    return float(np.mean(ssim_bands))


def compute_uiqi(gt: np.ndarray, sr: np.ndarray) -> float:
    """
    Universal Image Quality Index — mean across bands.
    Higher is better. Uses 8×8 sliding window.
    """
    from scipy.ndimage import uniform_filter

    h, w, b = gt.shape
    win = 8

    uiqi_bands = []
    for i in range(b):
        g = gt[:, :, i]
        s = sr[:, :, i]

        mu_g = uniform_filter(g, win)
        mu_s = uniform_filter(s, win)
        mu_g2 = uniform_filter(g * g, win)
        mu_s2 = uniform_filter(s * s, win)
        mu_gs = uniform_filter(g * s, win)

        sigma_g2 = mu_g2 - mu_g ** 2
        sigma_s2 = mu_s2 - mu_s ** 2
        sigma_gs = mu_gs - mu_g * mu_s

        sigma_g2 = np.maximum(sigma_g2, 0)
        sigma_s2 = np.maximum(sigma_s2, 0)

        num = 4 * sigma_gs * mu_g * mu_s
        den = (sigma_g2 + sigma_s2) * (mu_g ** 2 + mu_s ** 2)

        valid = den > 1e-10
        q_map = np.zeros_like(den)
        q_map[valid] = num[valid] / den[valid]

        pad = win // 2
        uiqi_bands.append(np.mean(q_map[pad:-pad, pad:-pad]))

    return float(np.mean(uiqi_bands))


def compute_scc(gt: np.ndarray, sr: np.ndarray) -> float:
    """
    Spatial Correlation Coefficient — mean per-band Pearson correlation.
    Higher is better.
    """
    h, w, b = gt.shape
    scc_bands = []
    for i in range(b):
        g = gt[:, :, i].ravel()
        s = sr[:, :, i].ravel()
        if np.std(g) < 1e-10 or np.std(s) < 1e-10:
            scc_bands.append(0.0)
            continue
        corr = np.corrcoef(g, s)[0, 1]
        scc_bands.append(float(corr) if not np.isnan(corr) else 0.0)
    return float(np.mean(scc_bands))


# ---------------------------------------------------------------------------
# Main evaluation
# ---------------------------------------------------------------------------

METRIC_NAMES = ["PSNR", "SSIM", "SAM", "ERGAS", "RMSE", "UIQI", "SCC"]
# For ranking: True = higher is better, False = lower is better
METRIC_HIGHER_BETTER = {
    "PSNR": True, "SSIM": True, "SAM": False,
    "ERGAS": False, "RMSE": False, "UIQI": True, "SCC": True,
}


def load_times(sr_dir: Path) -> dict:
    """Load per-scene timing from times.csv written by run_batch.py / produce_sfim.py.

    Returns dict: scene_name -> elapsed_seconds.  Empty dict if no file found.
    """
    times_path = sr_dir / "times.csv"
    if not times_path.exists():
        return {}
    timings = {}
    with open(times_path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("scene"):
                continue
            parts = line.split(",")
            if len(parts) >= 2:
                try:
                    timings[parts[0]] = float(parts[1])
                except ValueError:
                    pass
    return timings


def evaluate_scene(gt: np.ndarray, sr: np.ndarray, scale: int) -> dict:
    """Compute all metrics for one scene. Returns dict of metric_name -> value."""
    return {
        "PSNR":  compute_psnr(gt, sr),
        "SSIM":  compute_ssim(gt, sr),
        "SAM":   compute_sam(gt, sr),
        "ERGAS": compute_ergas(gt, sr, scale),
        "RMSE":  compute_rmse(gt, sr),
        "UIQI":  compute_uiqi(gt, sr),
        "SCC":   compute_scc(gt, sr),
    }


def load_and_normalise(mat_path: str, key: str) -> np.ndarray:
    """Load a .mat variable and ensure float64 in [0, 1]."""
    data = scipy.io.loadmat(mat_path)[key]
    if np.issubdtype(data.dtype, np.integer):
        data = data.astype(np.float64) / np.iinfo(data.dtype).max
    else:
        data = data.astype(np.float64)
    return data


def main():
    ap = argparse.ArgumentParser(
        description="Evaluate fusion results against ground truth (Wald's protocol)."
    )
    ap.add_argument("--bench-root", default=".",
                    help="Root of the hif-benchmarking repo (default: cwd)")
    ap.add_argument("--dataset", default="EMIT32_WALD",
                    help="Dataset name (default: EMIT32_WALD)")
    ap.add_argument("--scale", type=int, default=6,
                    help="Scale factor (default: 6)")
    ap.add_argument("--methods", nargs="*", default=None,
                    help="Evaluate only these methods (default: all found)")
    args = ap.parse_args()

    os.chdir(args.bench_root)

    dataset = args.dataset
    scale = args.scale
    gt_dir = Path(f"data/GT/{dataset}")
    sr_root = Path("data/SR")
    eval_dir = Path("data/eval")
    eval_dir.mkdir(parents=True, exist_ok=True)

    # Discover GT scenes
    gt_files = sorted(gt_dir.glob("*.mat"))
    if not gt_files:
        sys.exit(f"No GT files found in {gt_dir}. Run tif2mat_wald.py first.")

    scene_names = [f.stem for f in gt_files]
    print(f"Wald's Protocol Evaluation")
    print(f"==========================")
    print(f"Dataset:  {dataset}")
    print(f"Scale:    {scale}")
    print(f"Scenes:   {len(scene_names)}")
    print()

    # Discover methods with output for this dataset
    method_dirs = sorted(sr_root.iterdir()) if sr_root.is_dir() else []
    if args.methods:
        allowed = set(args.methods)
        method_dirs = [d for d in method_dirs if d.name in allowed]

    methods = []
    for md in method_dirs:
        if md.name.startswith("_"):
            continue  # skip disabled methods
        sr_scale_dir = md / dataset / str(scale)
        if sr_scale_dir.is_dir():
            methods.append(md.name)

    if not methods:
        sys.exit(f"No fusion outputs found for {dataset}/{scale}. Run the methods first.")

    print(f"Methods:  {', '.join(methods)}")
    print()

    # Collect all results: method -> scene -> metrics
    all_results = {}

    method_timings = {}  # method -> {scene: seconds}

    for method in methods:
        print(f"--- {method} ---")
        sr_dir = sr_root / method / dataset / str(scale)
        method_results = {}
        method_timings[method] = load_times(sr_dir)

        for scene in scene_names:
            sr_path = sr_dir / f"{scene}.mat"
            gt_path = gt_dir / f"{scene}.mat"

            if not sr_path.exists():
                print(f"  {scene}: MISSING — skipped")
                continue

            # Load GT and SR
            gt = load_and_normalise(str(gt_path), "hsi")
            sr = load_and_normalise(str(sr_path), "sri")

            # Validate shapes match
            if gt.shape != sr.shape:
                print(f"  {scene}: Shape mismatch GT={gt.shape} SR={sr.shape} — skipped")
                continue

            # Check for all-zero or all-NaN output
            if np.all(sr == 0):
                print(f"  {scene}: ALL ZEROS — skipped (method failed)")
                continue
            if np.any(np.isnan(sr)):
                nan_pct = 100 * np.sum(np.isnan(sr)) / sr.size
                print(f"  {scene}: {nan_pct:.1f}% NaN — skipped (method failed)")
                continue

            metrics = evaluate_scene(gt, sr, scale)
            method_results[scene] = metrics

            print(f"  {scene}: PSNR={metrics['PSNR']:.2f}  SSIM={metrics['SSIM']:.4f}  "
                  f"SAM={metrics['SAM']:.3f}  ERGAS={metrics['ERGAS']:.2f}  "
                  f"RMSE={metrics['RMSE']:.5f}")

        # Save per-method CSV
        csv_path = sr_dir / "metrics_wald.csv"
        header = "scene," + ",".join(METRIC_NAMES) + "\n"
        with open(csv_path, "w") as f:
            f.write(header)
            for scene, m in sorted(method_results.items()):
                vals = ",".join(f"{m[k]:.6f}" for k in METRIC_NAMES)
                f.write(f"{scene},{vals}\n")

            # Write mean row
            if method_results:
                means = {}
                for k in METRIC_NAMES:
                    vals = [m[k] for m in method_results.values()
                            if not np.isinf(m[k]) and not np.isnan(m[k])]
                    means[k] = np.mean(vals) if vals else float("nan")
                vals_str = ",".join(f"{means[k]:.6f}" for k in METRIC_NAMES)
                f.write(f"MEAN,{vals_str}\n")

        print(f"  -> Saved: {csv_path}")
        all_results[method] = method_results
        print()

    # -----------------------------------------------------------------------
    # Combined summary CSV: all methods × all scenes
    # -----------------------------------------------------------------------
    summary_path = eval_dir / f"{dataset}_{scale}_summary.csv"
    with open(summary_path, "w") as f:
        f.write("method,scene," + ",".join(METRIC_NAMES) + ",time_s\n")
        for method in methods:
            for scene in scene_names:
                if scene in all_results.get(method, {}):
                    m = all_results[method][scene]
                    vals = ",".join(f"{m[k]:.6f}" for k in METRIC_NAMES)
                    t = method_timings.get(method, {}).get(scene, "")
                    t_str = f"{t:.2f}" if isinstance(t, float) else ""
                    f.write(f"{method},{scene},{vals},{t_str}\n")

    print(f"Summary: {summary_path}")

    # -----------------------------------------------------------------------
    # Ranking table: mean metrics per method + rank
    # -----------------------------------------------------------------------
    ranking_path = eval_dir / f"{dataset}_{scale}_ranking.csv"

    method_means = {}
    for method in methods:
        results = all_results.get(method, {})
        if not results:
            continue
        means = {}
        for k in METRIC_NAMES:
            vals = [m[k] for m in results.values()
                    if not np.isinf(m[k]) and not np.isnan(m[k])]
            means[k] = np.mean(vals) if vals else float("nan")
        means["n_scenes"] = len(results)

        # Mean time per tile (from times.csv if available)
        timings = method_timings.get(method, {})
        if timings:
            means["time_s"] = np.mean(list(timings.values()))
        else:
            means["time_s"] = float("nan")

        method_means[method] = means

    # Compute ranks per metric
    method_ranks = {m: {} for m in method_means}
    for k in METRIC_NAMES:
        values = [(m, method_means[m][k]) for m in method_means
                  if not np.isnan(method_means[m][k])]
        reverse = METRIC_HIGHER_BETTER[k]
        values.sort(key=lambda x: x[1], reverse=reverse)
        for rank, (m, _) in enumerate(values, 1):
            method_ranks[m][k] = rank

    with open(ranking_path, "w") as f:
        # Header
        metric_cols = []
        for k in METRIC_NAMES:
            arrow = "↑" if METRIC_HIGHER_BETTER[k] else "↓"
            metric_cols.append(f"{k}{arrow}")
            metric_cols.append(f"{k}_rank")
        f.write("method,n_scenes,avg_rank," + ",".join(metric_cols) + ",time_s_per_tile\n")

        # Sort methods by average rank
        ranked_methods = sorted(
            method_means.keys(),
            key=lambda m: np.mean(list(method_ranks[m].values()))
        )

        for method in ranked_methods:
            means = method_means[method]
            ranks = method_ranks[method]
            avg_rank = np.mean(list(ranks.values()))

            parts = [method, str(means["n_scenes"]), f"{avg_rank:.2f}"]
            for k in METRIC_NAMES:
                parts.append(f"{means[k]:.6f}")
                parts.append(str(ranks.get(k, "-")))
            t = means["time_s"]
            parts.append(f"{t:.2f}" if not np.isnan(t) else "")
            f.write(",".join(parts) + "\n")

    print(f"Ranking: {ranking_path}")

    # -----------------------------------------------------------------------
    # Print ranking table to console
    # -----------------------------------------------------------------------
    print()
    print("=" * 90)
    print(f"  RANKING — {dataset} (scale {scale})")
    print("=" * 90)

    # Header
    hdr = f"{'Method':<12} {'Scenes':>6} {'AvgRank':>8}"
    for k in METRIC_NAMES:
        arrow = "↑" if METRIC_HIGHER_BETTER[k] else "↓"
        hdr += f" {k+arrow:>10}"
    hdr += f" {'Time/tile':>10}"
    print(hdr)
    print("-" * 102)

    for method in ranked_methods:
        means = method_means[method]
        ranks = method_ranks[method]
        avg_rank = np.mean(list(ranks.values()))

        line = f"{method:<12} {means['n_scenes']:>6.0f} {avg_rank:>8.2f}"
        for k in METRIC_NAMES:
            val = means[k]
            rank = ranks.get(k, "-")
            if k == "PSNR":
                line += f" {val:>7.2f}({rank})"
            elif k in ("SSIM", "UIQI", "SCC"):
                line += f" {val:>7.4f}({rank})"
            elif k == "SAM":
                line += f" {val:>7.3f}({rank})"
            elif k == "ERGAS":
                line += f" {val:>7.2f}({rank})"
            elif k == "RMSE":
                line += f" {val:>7.5f}({rank})"

        t = means["time_s"]
        if np.isnan(t):
            line += f" {'—':>10}"
        elif t < 1.0:
            line += f" {t*1000:>7.0f} ms"
        else:
            line += f" {t:>7.1f}  s"
        print(line)

    print("=" * 102)
    print(f"\nBest method by average rank: {ranked_methods[0]}")
    print()


if __name__ == "__main__":
    main()
