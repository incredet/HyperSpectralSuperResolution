#!/usr/bin/env python3
"""
pack_zips.py — Package GeoTIFF tiles into zip archives for SR training.

Creates one zip per (aoi, pair), containing only R²-filtered LR + GT tiles.
Zip naming matches the training notebook's PairedZipDataset expectations.

Zip format
----------
  {aoi_slug}__{pair_id}.zip
    tile{idx:03d}__emit_b32.tif     (LR — 32-band EMIT)
    tile{idx:03d}_{gt_suffix}.tif   (GT — fused at 10m)

GT suffixes
-----------
  regression → _regression_synth.tif
  sfim       → _sfim.tif
  cnmf       → _cnmf.tif

Usage from Colab
----------------
    # CNMF GT, R² ≥ 0.5
    !python spectral/pack_zips.py \\
        --drive-root /content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches \\
        --run-tag 2026-04-02 --gt-source cnmf --r2-thresh 0.5

    # SFIM GT, R² ≥ 0.7
    !python spectral/pack_zips.py \\
        --drive-root ... --run-tag 2026-04-02 --gt-source sfim --r2-thresh 0.7

    # Regression GT (no GT-specific R² CSV, uses tiles_clean.csv only)
    !python spectral/pack_zips.py \\
        --drive-root ... --run-tag 2026-04-02 --gt-source regression
"""

import argparse
import sys
import time
import zipfile
from pathlib import Path

_REPO_ROOT = str(Path(__file__).resolve().parent.parent)
if _REPO_ROOT not in sys.path:
    sys.path.insert(0, _REPO_ROOT)

import pandas as pd


GT_SUFFIXES = {
    "regression": "_regression_synth.tif",
    "sfim":       "_sfim.tif",
    "cnmf":       "_cnmf.tif",
}

R2_CSV_NAMES = {
    "cnmf": "r2_cnmf_tiles.csv",
    "sfim":  "r2_sfim_tiles.csv",
}

R2_COL_NAMES = {
    "cnmf": "r2_cnmf_mean",
    "sfim":  "r2_sfim_mean",
}


def parse_args():
    ap = argparse.ArgumentParser(
        description="Package GeoTIFF tiles into zip archives for SR training.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    ap.add_argument("--drive-root", required=True,
                    help="Path to EMIT_S-2_Matches on Drive")
    ap.add_argument("--run-tag", required=True,
                    help="Date tag subfolder (e.g. 2026-04-02)")
    ap.add_argument("--gt-source", required=True, choices=list(GT_SUFFIXES),
                    help="GT fusion method: cnmf, sfim, or regression")
    ap.add_argument("--r2-thresh", type=float, default=None,
                    help="GT-specific R² threshold (default: 0.5 for cnmf/sfim, none for regression)")
    ap.add_argument("--output-dir", type=str, default=None,
                    help="Output directory for zips (default: {drive_root}/{run_tag}/zips_{gt_source})")
    ap.add_argument("--dry-run", action="store_true",
                    help="Print what would be done, don't create zips")
    ap.add_argument("--no-skip-existing", action="store_true",
                    help="Recreate zips even if they exist")
    return ap.parse_args()


def main():
    args = parse_args()

    drive_base = Path(args.drive_root) / args.run_tag
    if not drive_base.exists():
        sys.exit(f"Drive base not found: {drive_base}")

    gt_source = args.gt_source
    gt_suffix_on_disk = GT_SUFFIXES[gt_source]
    # Inside zip: keep the suffix but with the short tile name
    # e.g., tile129_cnmf.tif (not the full pair_id prefix)
    gt_suffix_in_zip = GT_SUFFIXES[gt_source]

    out_dir = Path(args.output_dir) if args.output_dir else drive_base / f"zips_{gt_source}"

    # ── Load tiles_clean.csv ──
    clean_csv = drive_base / "tiles_clean.csv"
    if not clean_csv.exists():
        sys.exit(f"tiles_clean.csv not found: {clean_csv}")

    df = pd.read_csv(clean_csv)
    print(f"tiles_clean.csv: {len(df)} QC-passed tiles")

    # ── Load GT-specific R² CSV and filter ──
    r2_thresh = args.r2_thresh
    if gt_source in R2_CSV_NAMES:
        r2_csv = drive_base / R2_CSV_NAMES[gt_source]
        r2_col = R2_COL_NAMES[gt_source]

        if r2_csv.exists():
            r2_df = pd.read_csv(r2_csv)
            # Keep only OK tiles
            r2_df = r2_df[r2_df["status"] == "OK"]
            print(f"{r2_csv.name}: {len(r2_df)} OK tiles")

            # Merge on (aoi_slug, pair_id, tile_idx)
            if "tile_idx" not in r2_df.columns and "tile_name" in r2_df.columns:
                import re
                r2_df["tile_idx"] = r2_df["tile_name"].apply(
                    lambda x: int(re.search(r"tile(\d+)", x).group(1))
                )

            merge_cols = ["aoi_slug", "pair_id", "tile_idx"]
            # Bring in r2 column + out_path (actual GT location on disk)
            extra_cols = [r2_col]
            if "out_path" in r2_df.columns:
                extra_cols.append("out_path")
            before = len(df)
            df = df.merge(
                r2_df[merge_cols + extra_cols],
                on=merge_cols,
                how="inner",
            )
            print(f"After merge with {gt_source} R²: {len(df)} tiles (dropped {before - len(df)} without {gt_source} output)")

            if r2_thresh is not None:
                before = len(df)
                df = df[df[r2_col] >= r2_thresh]
                print(f"After {gt_source} R² ≥ {r2_thresh}: {len(df)} tiles (dropped {before - len(df)})")
        else:
            print(f"WARNING: {r2_csv.name} not found — skipping GT-specific R² filtering")

    elif r2_thresh is not None:
        print(f"NOTE: --r2-thresh ignored for gt_source='regression' (tiles_clean.csv already filtered)")

    if len(df) == 0:
        sys.exit("No tiles left after filtering!")

    # ── Group by (aoi_slug, pair_id) ──
    grouped = df.groupby(["aoi_slug", "pair_id"])
    print(f"\n{len(df)} tiles across {len(grouped)} pairs, {df['aoi_slug'].nunique()} AOIs")

    if not args.dry_run:
        out_dir.mkdir(parents=True, exist_ok=True)

    # ── Create zips ──
    tic = time.time()
    total_tiles = 0
    total_zips = 0
    skipped_zips = 0
    missing_files = 0
    manifest_rows = []

    for (aoi_slug, pair_id), group in grouped:
        zip_name = f"{aoi_slug}__{pair_id}.zip"
        zip_path = out_dir / zip_name

        if zip_path.exists() and not args.no_skip_existing:
            skipped_zips += 1
            total_tiles += len(group)
            continue

        tiles_dir = drive_base / aoi_slug / pair_id / "tiles"
        tile_entries = []
        has_out_path = "out_path" in group.columns

        for _, row in group.iterrows():
            tile_idx = int(row["tile_idx"])
            tile_name = f"{pair_id}_tile{tile_idx:03d}"

            lr_path = tiles_dir / f"{tile_name}_emit_b32.tif"

            # GT path: use out_path from R² CSV if available (methods
            # save to different subdirs like CNMF/, SFIM/), else look
            # in tiles/ with the standard suffix.
            if has_out_path and pd.notna(row.get("out_path")):
                gt_path = Path(row["out_path"])
            else:
                gt_path = tiles_dir / f"{tile_name}{gt_suffix_on_disk}"

            if not lr_path.exists() or not gt_path.exists():
                missing_files += 1
                continue

            # Names inside zip: short form for PairedZipDataset
            lr_zip_name = f"tile{tile_idx:03d}__emit_b32.tif"
            gt_zip_name = f"tile{tile_idx:03d}{gt_suffix_in_zip}"

            tile_entries.append((lr_path, lr_zip_name, gt_path, gt_zip_name, tile_idx))

        if not tile_entries:
            continue

        if args.dry_run:
            print(f"  {zip_name}: {len(tile_entries)} tiles")
        else:
            with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_STORED) as zf:
                for lr_path, lr_zn, gt_path, gt_zn, _ in tile_entries:
                    zf.write(lr_path, lr_zn)
                    zf.write(gt_path, gt_zn)

        for _, _, _, _, tidx in tile_entries:
            manifest_rows.append({
                "aoi_slug": aoi_slug,
                "pair_id": pair_id,
                "tile_idx": tidx,
                "zip_name": zip_name,
            })

        total_tiles += len(tile_entries)
        total_zips += 1

    elapsed = time.time() - tic

    # ── Write manifest ──
    if not args.dry_run and manifest_rows:
        manifest_df = pd.DataFrame(manifest_rows)
        manifest_path = out_dir / "manifest.csv"
        manifest_df.to_csv(manifest_path, index=False)

    # ── Summary ──
    print(f"\n{'=' * 60}")
    print(f"GT source:      {gt_source}")
    if r2_thresh is not None:
        print(f"R² threshold:   {r2_thresh}")
    print(f"Output:         {out_dir}")
    print(f"Zips created:   {total_zips}")
    if skipped_zips:
        print(f"Zips skipped:   {skipped_zips} (already exist)")
    print(f"Tiles packed:   {total_tiles}")
    if missing_files:
        print(f"Missing files:  {missing_files}")
    print(f"Wall time:      {elapsed:.1f}s")

    if args.dry_run:
        print("\n(dry run — no files created)")


if __name__ == "__main__":
    main()
