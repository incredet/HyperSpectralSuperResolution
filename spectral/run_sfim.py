#!/usr/bin/env python3
"""
run_sfim.py — SFIM fusion GT generation for SR training.

Reads QC-filtered tiles from tiles_clean.csv, runs SFIM hypersharpening
fusion, and writes fused GeoTIFFs + per-tile R² CSV.

All algorithm parameters come from pipeline_config.yaml on Drive.
Colab/runtime parameters (paths, tile range) are CLI args.

Usage from Colab
----------------
    # All tiles
    !python spectral/run_sfim.py --drive-root /content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches --run-tag 2026-04-02

    # First 500 tiles (for parallel notebooks)
    !python spectral/run_sfim.py --drive-root ... --run-tag 2026-04-02 --start 0 --stop 500

    # Tiles 500-1000
    !python spectral/run_sfim.py --drive-root ... --run-tag 2026-04-02 --start 500 --stop 1000

    # Merge partial CSVs after all notebooks finish
    !python spectral/run_sfim.py --drive-root ... --run-tag 2026-04-02 --merge-only
"""

import argparse
import sys
import time
from pathlib import Path

_REPO_ROOT = str(Path(__file__).resolve().parent.parent)
if _REPO_ROOT not in sys.path:
    sys.path.insert(0, _REPO_ROOT)

import numpy as np
import pandas as pd
from tqdm import tqdm


def parse_args():
    ap = argparse.ArgumentParser(
        description="Run SFIM fusion on QC-clean tiles.",
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
                    help="Number of tiles to log progress for (unused, kept for CLI parity)")
    ap.add_argument("--verbose-first", type=int, default=3,
                    help="Print detailed output for first N tiles (default: 3)")
    ap.add_argument("--no-skip-existing", action="store_true",
                    help="Reprocess tiles even if output exists")

    # Merge mode
    ap.add_argument("--merge-only", action="store_true",
                    help="Only merge partial CSVs, skip processing")

    return ap.parse_args()


def merge_partial_csvs(drive_base: Path):
    parts = sorted(drive_base.glob("r2_sfim_tiles_*.csv"))
    if not parts:
        print("No partial CSVs found to merge.")
        return
    print(f"Merging {len(parts)} partial CSVs:")
    for p in parts:
        print(f"  {p.name}")
    merged = pd.concat([pd.read_csv(p) for p in parts], ignore_index=True)
    merged = merged.drop_duplicates(subset=["tile_name"], keep="last")
    out = drive_base / "r2_sfim_tiles.csv"
    merged.to_csv(out, index=False)
    ok = merged[merged["status"] == "OK"]
    print(f"Merged: {len(merged)} tiles → {out.name}")
    if len(ok):
        print(f"  OK: {len(ok)}, R²_wald mean={ok['r2_sfim_mean'].mean():.4f}, "
              f"median={ok['r2_sfim_mean'].median():.4f}")


def build_tile_list(drive_base: Path, clean_df: pd.DataFrame):
    tiles = []
    for _, row in clean_df.iterrows():
        aoi_slug = row["aoi_slug"]
        pair_id  = row["pair_id"]
        tile_idx = int(row["tile_idx"])
        tile_name = f"{pair_id}_tile{tile_idx:03d}"
        pair_dir  = drive_base / aoi_slug / pair_id
        tiles_dir = pair_dir / "tiles"
        tiles.append({
            "hs_path":   tiles_dir / f"{tile_name}_emit_b32.tif",
            "ms_path":   tiles_dir / f"{tile_name}_s2.tif",
            "out_path":  pair_dir / "SFIM" / f"{tile_name}_sfim.tif",
            "tile_name": tile_name,
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

    scale_factor = config.reflectance_scale
    nodata_val   = config.nodata_emit

    print(f"Drive base:    {drive_base}")
    print(f"Scale factor:  {scale_factor}, nodata: {nodata_val}")

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

    # ── Output CSV path ──
    if args.start is not None or args.stop is not None:
        suffix = f"_{args.start or 0}_{args.stop or 'end'}"
    else:
        suffix = ""
    csv_path = drive_base / f"r2_sfim_tiles{suffix}.csv"

    # ── Run SFIM ──
    from spectral.sfim import sfim_fuse_tile

    skip_existing = not args.no_skip_existing
    all_rows = []
    n_ok = 0
    n_skipped = 0
    n_error = 0

    tic = time.time()

    for i, tile in enumerate(tqdm(tile_list, desc="SFIM fusion")):
        tile_name = tile["tile_name"]
        out_path  = tile["out_path"]

        row = {
            "tile_name":         tile_name,
            "aoi_slug":          tile["aoi_slug"],
            "pair_id":           tile["pair_id"],
            "tile_idx":          tile["tile_idx"],
            "r2_regression":     tile["r2_regression"],
            "status":            None,
            "r2_sfim_mean":      np.nan,  # Wald self-consistency R²
            "r2_sfim_nnls_mean": np.nan,  # NNLS fit R² (legacy, thesis reporting)
            "time_s":            np.nan,
            "out_path":          str(out_path),
        }

        # Skip existing
        if skip_existing and out_path.exists():
            row["status"] = "SKIPPED"
            n_skipped += 1
            all_rows.append(row)
            continue

        # Check inputs exist
        if not tile["hs_path"].exists() or not tile["ms_path"].exists():
            row["status"] = "MISSING_INPUT"
            n_error += 1
            all_rows.append(row)
            continue

        try:
            t0 = time.time()
            result = sfim_fuse_tile(
                tile["hs_path"],
                tile["ms_path"],
                out_path,
                scale_factor=scale_factor,
                nodata_val=nodata_val,
            )
            dt = time.time() - t0

            row["status"]            = result["status"]
            row["r2_sfim_mean"]      = result.get("r2_wald_mean", np.nan)
            row["r2_sfim_nnls_mean"] = result.get("r2_nnls_mean", np.nan)
            row["time_s"]            = round(dt, 3)
            row["out_path"]          = result.get("out_path") or str(out_path)

            # Per-band R² (both Wald and NNLS)
            for b, val in enumerate(result.get("r2_wald_per_band", [])):
                row[f"r2_sfim_wald_band_{b:02d}"] = round(val, 6)
            for b, val in enumerate(result.get("r2_nnls_per_band", [])):
                row[f"r2_sfim_nnls_band_{b:02d}"] = round(val, 6)

            if result["status"] == "OK":
                n_ok += 1

            # Verbose output for first N tiles
            if i < args.verbose_first:
                print(f"  [{i}] {tile_name}: {result['status']}, "
                      f"R²_wald={row['r2_sfim_mean']:.4f}, "
                      f"R²_nnls={row['r2_sfim_nnls_mean']:.4f}, {dt:.2f}s")

        except Exception as e:
            row["status"] = f"ERROR: {e}"
            n_error += 1
            if i < args.verbose_first:
                print(f"  [{i}] {tile_name}: ERROR — {e}")

        all_rows.append(row)

    elapsed = time.time() - tic

    # ── Write CSV once at end ──
    sfim_df = pd.DataFrame(all_rows)
    sfim_df.to_csv(csv_path, index=False)

    ok_df = sfim_df[sfim_df["status"] == "OK"]
    print(f"\n{'=' * 60}")
    print(f"SFIM R² CSV: {csv_path.name}  ({len(sfim_df)} tiles)")
    print(f"  OK: {n_ok}, skipped: {n_skipped}, errors: {n_error}")
    print(f"  Wall time: {elapsed / 60:.1f} min")

    if len(ok_df):
        times = ok_df["time_s"].dropna()
        print(f"\nR² Wald summary (OK tiles):")
        print(f"  Mean:   {ok_df['r2_sfim_mean'].mean():.4f}")
        print(f"  Median: {ok_df['r2_sfim_mean'].median():.4f}")
        print(f"  Min:    {ok_df['r2_sfim_mean'].min():.4f}")
        print(f"  Max:    {ok_df['r2_sfim_mean'].max():.4f}")
        print(f"\nR² NNLS summary (OK tiles, for thesis):")
        print(f"  Mean:   {ok_df['r2_sfim_nnls_mean'].mean():.4f}")
        print(f"  Median: {ok_df['r2_sfim_nnls_mean'].median():.4f}")
        if len(times):
            print(f"\nTiming per tile:")
            print(f"  Mean:   {times.mean():.1f}s")
            print(f"  Median: {times.median():.1f}s")

    # Status breakdown
    print(f"\nStatus counts:")
    for status, count in sfim_df["status"].value_counts().items():
        print(f"  {status}: {count}")


if __name__ == "__main__":
    main()
