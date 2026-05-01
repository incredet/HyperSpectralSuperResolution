#!/usr/bin/env python3
import argparse
import json
import sys
from pathlib import Path

import numpy as np

try:
    import rasterio
except ImportError:
    sys.exit("ERROR: rasterio is required.  pip install rasterio")

try:
    import scipy.io
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")


# helpers

def read_tif(path):
    with rasterio.open(path) as src:
        # rasterio reads as (Bands, H, W) — transpose to (H, W, Bands)
        arr = src.read()                      # shape: (B, H, W)
        arr = np.transpose(arr, (1, 2, 0))    # shape: (H, W, B)
        profile = dict(src.profile)
        # Serialise the Affine transform to a list of 6 floats
        profile["transform"] = list(src.transform)[:6]
        # CRS as a string (e.g. "EPSG:32611")
        profile["crs"] = str(src.crs)
    return arr, profile


def scene_name_from_tile(filename, hs_suffix, ms_suffix):
    stem = Path(filename).stem                 # drop .tif
    for suffix in (hs_suffix, ms_suffix):
        tag = Path(suffix).stem                # e.g. _emit, _s2
        if stem.endswith(tag):
            return stem[: -len(tag)]
    return None


# main

def main():
    ap = argparse.ArgumentParser(
        description="Convert EMIT/Sentinel-2 GeoTIFF tile pairs to HIF-benchmark .mat files."
    )
    ap.add_argument("--drive-root", required=True,
                    help="Root of the Google Drive data tree (contains pair_id folders).")
    ap.add_argument("--bench-root", required=True,
                    help="Root of the hif-benchmarking repo (contains data/ and main/).")
    ap.add_argument("--dataset", default="EMIT285",
                    help="Dataset name used inside the benchmark (default: EMIT285).")
    ap.add_argument("--scale", type=int, default=6,
                    help="Spatial scale factor between MS and HS (default: 6).")
    ap.add_argument("--hs-suffix", default="_emit.tif",
                    help="Filename suffix that identifies an HS tile (default: _emit.tif).")
    ap.add_argument("--ms-suffix", default="_s2.tif",
                    help="Filename suffix that identifies an MS tile (default: _s2.tif).")
    ap.add_argument("--pair-ids", nargs="*", default=None,
                    help="Process only these pair_id folders (default: all).")
    args = ap.parse_args()

    drive_root = Path(args.drive_root)
    bench_root = Path(args.bench_root)
    dataset    = args.dataset
    scale      = args.scale
    hs_suffix  = args.hs_suffix
    ms_suffix  = args.ms_suffix

    # output dirs inside the benchmark
    hs_dir   = bench_root / "data" / "HS" / dataset / str(scale)
    ms_dir   = bench_root / "data" / "MS" / dataset
    meta_dir = bench_root / "data" / "meta" / dataset
    for d in (hs_dir, ms_dir, meta_dir):
        d.mkdir(parents=True, exist_ok=True)

    # discover pair_id folders
    pair_dirs = sorted([
        p for p in drive_root.iterdir()
        if p.is_dir() and (p / "tiles").is_dir()
    ])
    if args.pair_ids:
        allowed = set(args.pair_ids)
        pair_dirs = [p for p in pair_dirs if p.name in allowed]

    if not pair_dirs:
        sys.exit(f"No pair_id folders with a tiles/ subdirectory found under {drive_root}")

    # collect HS and MS tile paths by scene_name
    hs_tiles = {}
    ms_tiles = {}

    for pair_dir in pair_dirs:
        tiles_dir = pair_dir / "tiles"
        for f in sorted(tiles_dir.iterdir()):
            if not f.is_file():
                continue
            name = f.name
            scene = scene_name_from_tile(name, hs_suffix, ms_suffix)
            if scene is None:
                continue
            if name.endswith(hs_suffix):
                hs_tiles[scene] = f
            elif name.endswith(ms_suffix):
                ms_tiles[scene] = f

    # find matched pairs
    matched = sorted(set(hs_tiles) & set(ms_tiles))
    if not matched:
        sys.exit("No matched HS/MS tile pairs found. Check --hs-suffix / --ms-suffix.")

    print(f"Found {len(matched)} matched tile pair(s) for dataset '{dataset}', scale {scale}.")
    print(f"  HS dir → {hs_dir}")
    print(f"  MS dir → {ms_dir}")
    print()

    for i, scene in enumerate(matched, 1):
        hs_path = hs_tiles[scene]
        ms_path = ms_tiles[scene]

        print(f"[{i}/{len(matched)}] {scene}")
        print(f"    HS: {hs_path.name}")
        print(f"    MS: {ms_path.name}")

        # read GeoTIFFs
        hsi, hs_profile = read_tif(str(hs_path))
        msi, ms_profile = read_tif(str(ms_path))

        # validate dimensions
        hs_h, hs_w, hs_b = hsi.shape
        ms_h, ms_w, ms_b = msi.shape

        actual_scale_h = ms_h / hs_h
        actual_scale_w = ms_w / hs_w
        if actual_scale_h != scale or actual_scale_w != scale:
            print(f"    WARNING: Expected scale {scale}, got {actual_scale_h:.2f}×{actual_scale_w:.2f}. "
                  f"HS ({hs_h}×{hs_w}), MS ({ms_h}×{ms_w}). Skipping.")
            continue

        print(f"    HSI shape: {hsi.shape} ({hsi.dtype}), MSI shape: {msi.shape} ({msi.dtype})")

        # Normalize to [0, 1] float64 and save .mat files
        # The benchmark's MATLAB code calls im2double() on load.
        #   - On uint16: im2double divides by 65535 → [0, 1] only if data
        #     uses the full uint16 range.  EMIT/S2 reflectance typically
        #     sits in [0, ~6000], which maps to [0, ~0.09] — far too small
        #     for the NMF algorithms, causing division-by-zero and NaN.
        #   - On float64: im2double is a no-op.
        # So we convert to float64 in [0, 1] here.  MATLAB sees doubles
        # and passes them through unchanged.
        #
        # We compute a single global scale factor from the combined
        # max of HS and MS (so both are scaled consistently), and store
        # it in the sidecar so mat2tif.py can reverse the mapping.

        hsi_f = hsi.astype(np.float64)
        msi_f = msi.astype(np.float64)

        global_max = max(hsi_f.max(), msi_f.max())
        if global_max == 0:
            print(f"    WARNING: both HS and MS are all zeros. Skipping.")
            continue

        hsi_norm = hsi_f / global_max       # now in [0, 1]
        msi_norm = msi_f / global_max       # now in [0, 1]

        print(f"    Normalization: global_max={global_max:.1f}, "
              f"HSI→[{hsi_norm.min():.4f}, {hsi_norm.max():.4f}], "
              f"MSI→[{msi_norm.min():.4f}, {msi_norm.max():.4f}]")

        scipy.io.savemat(str(hs_dir / f"{scene}.mat"), {"hsi": hsi_norm}, do_compression=True)
        scipy.io.savemat(str(ms_dir / f"{scene}.mat"),  {"msi": msi_norm}, do_compression=True)

        # sidecar metadata (for mat2tif.py)
        sidecar = {
            "scene": scene,
            "hs_file": hs_path.name,
            "ms_file": ms_path.name,
            "hs_shape": list(hsi.shape),
            "ms_shape": list(msi.shape),
            "hs_bands": hs_b,
            "ms_bands": ms_b,
            "scale": scale,
            "norm_global_max": float(global_max),
            "ms_crs": ms_profile["crs"],
            "ms_transform": ms_profile["transform"],
            "ms_dtype": str(msi.dtype),
        }
        with open(meta_dir / f"{scene}.json", "w") as f:
            json.dump(sidecar, f, indent=2)

        print(f"    saved {scene}")

    print(f"\nDone. {len(matched)} scenes written to benchmark data/ tree.")
    print(f"\nNext steps:")
    print(f"  1. In run.py, add \"{dataset}\" to DATASETS and {scale} to SCALES.")
    print(f"  2. Run:  cd {bench_root} && python main/run.py")
    print(f"  3. Then: python main/mat2tif.py --bench-root {bench_root} --dataset {dataset} --scale {scale}")


if __name__ == "__main__":
    main()
