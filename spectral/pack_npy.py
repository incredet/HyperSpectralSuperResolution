import argparse
import sys
import time
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
import pandas as pd
import rasterio


GT_SUFFIXES = {
    "regression": "_regression_synth",
    "sfim":       "_sfim",
    "cnmf":       "_cnmf",
}
R2_CSV = {"cnmf": "r2_cnmf_tiles.csv", "sfim": "r2_sfim_tiles.csv"}
R2_COL = {"cnmf": "r2_cnmf_mean",     "sfim": "r2_sfim_mean"}

SCALE = 6
GT_FULL, LR_FULL = 576, 96


def read_tif(path):
    with rasterio.open(path) as ds:
        return ds.read()


def npy_bytes(arr):
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def parse_args():
    ap = argparse.ArgumentParser()
    ap.add_argument("--drive-root", required=True)
    ap.add_argument("--run-tag",    required=True)
    ap.add_argument("--gt-source",  required=True, choices=list(GT_SUFFIXES))
    ap.add_argument("--r2-thresh",  type=float, default=None,
                    help="R² threshold (default 0.5 for cnmf/sfim, none for regression)")
    ap.add_argument("--out-full", type=str, default=None)
    ap.add_argument("--patched", action="append", default=[], metavar="DIR:GT")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--no-skip-existing", action="store_true")
    args = ap.parse_args()

    targets = []
    for spec in args.patched:
        dir_str, _, gt_str = spec.rpartition(":")
        if not dir_str or not gt_str.isdigit():
            sys.exit(f"bad --patched spec (want DIR:GT): {spec}")
        gt_patch = int(gt_str)
        if gt_patch % SCALE or GT_FULL % gt_patch or LR_FULL % (gt_patch // SCALE):
            sys.exit(f"gt_patch={gt_patch} doesn't cleanly tile "
                     f"({GT_FULL} GT / {LR_FULL} LR, scale {SCALE})")
        targets.append((Path(dir_str), gt_patch))
    args.patched_targets = targets
    return args


def load_manifest(drive_base, gt_source, r2_thresh):
    clean = drive_base / "tiles_clean.csv"
    if not clean.exists():
        sys.exit(f"missing {clean}")
    df = pd.read_csv(clean)
    print(f"tiles_clean.csv: {len(df)} QC-passed")

    if gt_source in R2_CSV:
        r2_path = drive_base / R2_CSV[gt_source]
        if not r2_path.exists():
            print(f"WARNING: {r2_path.name} missing — skipping R² filter")
        else:
            r2 = pd.read_csv(r2_path)
            r2 = r2[r2["status"] == "OK"]
            if "tile_idx" not in r2.columns and "tile_name" in r2.columns:
                import re
                r2["tile_idx"] = r2["tile_name"].apply(
                    lambda x: int(re.search(r"tile(\d+)", x).group(1)))
            cols = ["aoi_slug", "pair_id", "tile_idx", R2_COL[gt_source]]
            if "out_path" in r2.columns:
                cols.append("out_path")
            before = len(df)
            df = df.merge(r2[cols], on=cols[:3], how="inner")
            print(f"after merge with {gt_source} R²: {len(df)} (dropped {before - len(df)})")
            thresh = r2_thresh if r2_thresh is not None else 0.5
            before = len(df)
            df = df[df[R2_COL[gt_source]] >= thresh]
            print(f"after R² ≥ {thresh}: {len(df)} (dropped {before - len(df)})")
    return df


def load_pair(row, drive_base, gt_suffix):
    aoi, pair, idx = row["aoi_slug"], row["pair_id"], int(row["tile_idx"])
    name = f"{pair}_tile{idx:03d}"
    lr_path = drive_base / aoi / pair / "tiles" / f"{name}_emit_b32.tif"
    if "out_path" in row and pd.notna(row.get("out_path")):
        gt_path = Path(row["out_path"])
    else:
        gt_path = drive_base / aoi / pair / "tiles" / f"{name}{gt_suffix}.tif"
    if not lr_path.exists() or not gt_path.exists():
        return None
    lr = read_tif(lr_path)
    gt = read_tif(gt_path)
    if lr.shape != (32, LR_FULL, LR_FULL) or gt.shape != (32, GT_FULL, GT_FULL):
        return None
    return idx, lr, gt


def write_patched(zf, idx, lr, gt, gt_suffix, gt_patch):
    lr_patch = gt_patch // SCALE
    n = LR_FULL // lr_patch
    for r in range(n):
        for c in range(n):
            pid = r * n + c
            lr_p = lr[:, r*lr_patch:(r+1)*lr_patch, c*lr_patch:(c+1)*lr_patch]
            gt_p = gt[:, r*gt_patch:(r+1)*gt_patch, c*gt_patch:(c+1)*gt_patch]
            zf.writestr(f"tile{idx:03d}_p{pid:02d}__emit_b32.npy", npy_bytes(lr_p))
            zf.writestr(f"tile{idx:03d}_p{pid:02d}{gt_suffix}.npy", npy_bytes(gt_p))


def main():
    args = parse_args()
    if not (args.out_full or args.patched_targets):
        sys.exit("supply --out-full and/or --patched DIR:GT")

    drive_base = Path(args.drive_root) / args.run_tag
    if not drive_base.exists():
        sys.exit(f"drive base not found: {drive_base}")

    gt_suffix = GT_SUFFIXES[args.gt_source]
    df = load_manifest(drive_base, args.gt_source, args.r2_thresh)
    if len(df) == 0:
        sys.exit("no tiles after filtering")

    out_full = Path(args.out_full) if args.out_full else None
    if not args.dry_run:
        if out_full:
            out_full.mkdir(parents=True, exist_ok=True)
        for d, _ in args.patched_targets:
            d.mkdir(parents=True, exist_ok=True)

    grouped = df.groupby(["aoi_slug", "pair_id"])
    print(f"\n{len(df)} tiles across {len(grouped)} pairs")
    for d, gt in args.patched_targets:
        lr_p = gt // SCALE
        n = LR_FULL // lr_p
        print(f"  patched → {d}  (GT {gt}, LR {lr_p}, {n*n} patches/tile)")

    tic = time.time()
    skipped = missing = bad_shape = 0
    n_full = 0
    n_patched = {d: 0 for d, _ in args.patched_targets}

    for (aoi, pair), group in grouped:
        zname = f"{aoi}__{pair}.zip"
        full_path = out_full / zname if out_full else None

        need_full = out_full is not None and (args.no_skip_existing or not full_path.exists())
        patched_todo = [
            (d / zname, gt_sz) for d, gt_sz in args.patched_targets
            if args.no_skip_existing or not (d / zname).exists()
        ]
        if not need_full and not patched_todo:
            skipped += 1
            continue

        loaded = []
        for _, row in group.iterrows():
            item = load_pair(row, drive_base, gt_suffix)
            if item is None:
                if (drive_base / aoi / pair / "tiles" /
                    f"{pair}_tile{int(row['tile_idx']):03d}_emit_b32.tif").exists():
                    bad_shape += 1
                else:
                    missing += 1
                continue
            loaded.append(item)

        if not loaded:
            continue
        if args.dry_run:
            print(f"  {zname}: {len(loaded)} tiles")
            continue

        if need_full:
            with zipfile.ZipFile(full_path, "w", zipfile.ZIP_STORED) as zf:
                for idx, lr, gt in loaded:
                    zf.writestr(f"tile{idx:03d}__emit_b32.npy", npy_bytes(lr))
                    zf.writestr(f"tile{idx:03d}{gt_suffix}.npy", npy_bytes(gt))
            n_full += 1
        for out_path, gt_sz in patched_todo:
            with zipfile.ZipFile(out_path, "w", zipfile.ZIP_STORED) as zf:
                for idx, lr, gt in loaded:
                    write_patched(zf, idx, lr, gt, gt_suffix, gt_sz)
            n_patched[out_path.parent] += 1

    elapsed = time.time() - tic
    print(f"\nfull zips:    {n_full}")
    for d, count in n_patched.items():
        print(f"patched zips: {count}  ({d})")
    if skipped:   print(f"skipped (existed): {skipped}")
    if missing:   print(f"missing files:  {missing}")
    if bad_shape: print(f"bad-shape tiles: {bad_shape}")
    print(f"wall: {elapsed:.1f}s")


if __name__ == "__main__":
    main()
