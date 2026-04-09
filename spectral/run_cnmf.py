#!/usr/bin/env python3
"""
run_cnmf.py — CNMF fusion GT generation for SR training.

Reads QC-filtered tiles from tiles_clean.csv, runs CNMF fusion with the
analytical R matrix, and writes fused GeoTIFFs + per-tile R² CSV.

All algorithm parameters come from pipeline_config.yaml on Drive.
Colab/runtime parameters (paths, parallelism, tile range) are CLI args.

Usage from Colab
----------------
    # All tiles
    !python spectral/run_cnmf.py --drive-root /content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches --run-tag 2026-04-02

    # First 500 tiles (for parallel notebooks)
    !python spectral/run_cnmf.py --drive-root ... --run-tag 2026-04-02 --start 0 --stop 500

    # Tiles 500-1000
    !python spectral/run_cnmf.py --drive-root ... --run-tag 2026-04-02 --start 500 --stop 1000

    # Merge partial CSVs after all notebooks finish
    !python spectral/run_cnmf.py --drive-root ... --run-tag 2026-04-02 --merge-only
"""

import argparse
import os
import sys
import time
from pathlib import Path

# Ensure repo root is on sys.path so `documentation` and `spectral` are importable
# regardless of how the script is invoked.
_REPO_ROOT = str(Path(__file__).resolve().parent.parent)
if _REPO_ROOT not in sys.path:
    sys.path.insert(0, _REPO_ROOT)

import numpy as np
import pandas as pd

# Limit BLAS threads before any numpy/scipy import via env vars
# (set early, before library init; workers will inherit these)
os.environ.setdefault("OMP_NUM_THREADS", "1")
os.environ.setdefault("OPENBLAS_NUM_THREADS", "1")
os.environ.setdefault("MKL_NUM_THREADS", "1")


def parse_args():
    ap = argparse.ArgumentParser(
        description="Run CNMF fusion on QC-clean tiles.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    ap.add_argument("--drive-root", required=True,
                    help="Path to EMIT_S-2_Matches on Drive")
    ap.add_argument("--run-tag", required=True,
                    help="Date tag subfolder (e.g. 2026-04-02)")

    # Tile slicing
    ap.add_argument("--start", type=int, default=None,
                    help="Start index in tiles_clean.csv (inclusive)")
    ap.add_argument("--stop", type=int, default=None,
                    help="Stop index in tiles_clean.csv (exclusive)")

    # Runtime
    ap.add_argument("--workers", type=int, default=4,
                    help="Number of parallel workers (default: 4)")
    ap.add_argument("--blas-threads", type=int, default=2,
                    help="BLAS threads per worker (default: 2)")
    ap.add_argument("--verbose-first", type=int, default=3,
                    help="Run first N tiles with verbose output (default: 3)")
    ap.add_argument("--no-skip-existing", action="store_true",
                    help="Reprocess tiles even if output exists")

    # Analytical R
    ap.add_argument("--srf-mat", type=str, default=None,
                    help="Path to srf_R.mat (default: hif-benchmarking/data/srf_R.mat)")

    # Merge mode
    ap.add_argument("--merge-only", action="store_true",
                    help="Only merge partial CSVs, skip processing")

    return ap.parse_args()


def merge_partial_csvs(drive_base: Path):
    parts = sorted(drive_base.glob("r2_cnmf_tiles_*.csv"))
    if not parts:
        print("No partial CSVs found to merge.")
        return
    print(f"Merging {len(parts)} partial CSVs:")
    for p in parts:
        print(f"  {p.name}")
    merged = pd.concat([pd.read_csv(p) for p in parts], ignore_index=True)
    merged = merged.drop_duplicates(subset=["tile_name"], keep="last")
    out = drive_base / "r2_cnmf_tiles.csv"
    merged.to_csv(out, index=False)
    ok = merged[merged["status"] == "OK"]
    print(f"Merged: {len(merged)} tiles → {out.name}")
    if len(ok):
        print(f"  OK: {len(ok)}, R² mean={ok['r2_cnmf_mean'].mean():.4f}, "
              f"median={ok['r2_cnmf_mean'].median():.4f}")


def build_tile_list(drive_base: Path, clean_df: pd.DataFrame):
    tiles = []
    for _, row in clean_df.iterrows():
        aoi_slug = row["aoi_slug"]
        pair_id  = row["pair_id"]
        tile_idx = int(row["tile_idx"])
        tile_name = f"{pair_id}_tile{tile_idx:03d}"
        tiles_dir = drive_base / aoi_slug / pair_id / "tiles"
        tiles.append({
            "hs_path":   tiles_dir / f"{tile_name}_emit_b32.tif",
            "ms_path":   tiles_dir / f"{tile_name}_s2.tif",
            "tile_name": tile_name,
            "pair_dir":  drive_base / aoi_slug / pair_id,
            "aoi_slug":  aoi_slug,
            "pair_id":   pair_id,
            "tile_idx":  tile_idx,
            "r2_regression": row["r2_mean"],
        })
    return tiles


def main():
    args = parse_args()

    drive_base = Path(args.drive_root) / args.run_tag
    if not drive_base.exists():
        sys.exit(f"Drive base not found: {drive_base}")

    # ── Merge-only mode ──
    if args.merge_only:
        merge_partial_csvs(drive_base)
        return

    # ── Load config from Drive ──
    from documentation.config import PipelineConfig
    from documentation.pairs_artifacts import load_pipeline_config

    config_dict = load_pipeline_config(drive_base)
    config = PipelineConfig.from_dict({
        **config_dict,
        "aoi_lat": 0.0, "aoi_lon": 0.0,
        "drive_root": str(drive_base),
    })

    cnmf_params   = config.cnmf_params
    scale_factor  = config.scale_factor_dn
    nodata_val    = config.nodata_emit

    print(f"Drive base:   {drive_base}")
    print(f"CNMF params:  {cnmf_params}")
    print(f"Scale factor: {scale_factor}, nodata: {nodata_val}")

    # ── Load QC-clean tiles ──
    clean_csv = drive_base / "tiles_clean.csv"
    if not clean_csv.exists():
        sys.exit(f"tiles_clean.csv not found at {clean_csv}")

    clean_df = pd.read_csv(clean_csv)
    print(f"\ntiles_clean.csv: {len(clean_df)} QC-passed tiles  "
          f"({clean_df['aoi_slug'].nunique()} AOIs, "
          f"{clean_df['pair_id'].nunique()} pairs)")

    # ── Apply slice ──
    tile_df = clean_df.iloc[args.start:args.stop].copy().reset_index(drop=True)
    slice_tag = f"[{args.start or 0}:{args.stop or len(clean_df)}]"
    print(f"Slice {slice_tag}: {len(tile_df)} tiles")

    tile_list = build_tile_list(drive_base, tile_df)

    # ── Load analytical R ──
    import scipy.io

    repo_root = Path(__file__).resolve().parent.parent
    srf_path = Path(args.srf_mat) if args.srf_mat else (
        repo_root / "hif-benchmarking" / "data" / "srf_R.mat")
    if not srf_path.exists():
        sys.exit(f"srf_R.mat not found: {srf_path}")

    srf_data = scipy.io.loadmat(str(srf_path))
    pre_R = srf_data["R"]
    print(f"\nAnalytical R: {pre_R.shape}, "
          f"row sums: {pre_R.sum(axis=1).round(4).tolist()}")

    # ── Run CNMF ──
    from spectral.cnmf import cnmf_fuse_tiles

    tic = time.time()
    all_rows = cnmf_fuse_tiles(
        tile_list,
        n_workers=args.workers,
        blas_threads=args.blas_threads,
        scale_factor=scale_factor,
        nodata_val=nodata_val,
        pre_R=pre_R,
        verbose_first=args.verbose_first,
        skip_existing=not args.no_skip_existing,
        **cnmf_params,
    )
    elapsed = time.time() - tic

    # ── Save CSV ──
    cnmf_df = pd.DataFrame(all_rows)
    if args.start is not None or args.stop is not None:
        suffix = f"_{args.start or 0}_{args.stop or 'end'}"
    else:
        suffix = ""
    csv_path = drive_base / f"r2_cnmf_tiles{suffix}.csv"
    cnmf_df.to_csv(csv_path, index=False)

    ok_df = cnmf_df[cnmf_df["status"] == "OK"]
    print(f"\n{'=' * 60}")
    print(f"CNMF R² CSV: {csv_path.name}  ({len(cnmf_df)} tiles)")
    print(f"  OK: {len(ok_df)}, other: {len(cnmf_df) - len(ok_df)}")
    print(f"  Wall time: {elapsed / 60:.1f} min")

    if len(ok_df):
        times = ok_df["time_s"].dropna()
        print(f"\nR² summary (OK tiles):")
        print(f"  Mean:   {ok_df['r2_cnmf_mean'].mean():.4f}")
        print(f"  Median: {ok_df['r2_cnmf_mean'].median():.4f}")
        print(f"  Min:    {ok_df['r2_cnmf_mean'].min():.4f}")
        print(f"  Max:    {ok_df['r2_cnmf_mean'].max():.4f}")
        if len(times):
            print(f"\nTiming per tile:")
            print(f"  Mean:   {times.mean():.1f}s")
            print(f"  Median: {times.median():.1f}s")

    # Status breakdown
    print(f"\nStatus counts:")
    for status, count in cnmf_df["status"].value_counts().items():
        print(f"  {status}: {count}")


if __name__ == "__main__":
    main()
