#!/usr/bin/env python3
import argparse
import json
import sys
from pathlib import Path

import numpy as np

try:
    import rasterio
    from rasterio.crs import CRS
    from rasterio.transform import Affine
except ImportError:
    sys.exit("ERROR: rasterio is required.  pip install rasterio")

try:
    import scipy.io
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")


def write_tif(path, arr_hwb, crs_str,
              transform_list, dtype = "uint16"):
    h, w, b = arr_hwb.shape
    transform = Affine(*transform_list)
    profile = {
        "driver": "GTiff",
        "dtype": dtype,
        "width": w,
        "height": h,
        "count": b,
        "crs": CRS.from_string(crs_str),
        "transform": transform,
        "compress": "deflate",
        "predictor": 2,
        "tiled": True,
        "blockxsize": 256,
        "blockysize": 256,
    }
    with rasterio.open(path, "w", **profile) as dst:
        # rasterio expects (Bands, H, W)
        dst.write(np.transpose(arr_hwb, (2, 0, 1)))


def main():
    ap = argparse.ArgumentParser(
        description="Convert HIF-benchmark fused .mat outputs to georeferenced GeoTIFFs."
    )
    ap.add_argument("--bench-root", required=True,
                    help="Root of the hif-benchmarking repo.")
    ap.add_argument("--dataset", default="EMIT285",
                    help="Dataset name (must match what tif2mat.py used).")
    ap.add_argument("--scale", type=int, default=6,
                    help="Scale factor (default: 6).")
    ap.add_argument("--output-dir", default=None,
                    help="Write all GeoTIFFs here instead of next to the .mat. "
                         "Subdirectories per method are created automatically.")
    ap.add_argument("--methods", nargs="*", default=None,
                    help="Process only these methods (default: all found).")
    args = ap.parse_args()

    bench_root = Path(args.bench_root)
    dataset    = args.dataset
    scale      = args.scale
    meta_dir   = bench_root / "data" / "meta" / dataset
    sr_root    = bench_root / "data" / "SR"

    if not meta_dir.is_dir():
        sys.exit(f"Metadata directory not found: {meta_dir}\n"
                 f"Did you run tif2mat.py first with --dataset {dataset}?")

    # load all sidecar metadata
    sidecars = {}
    for jf in sorted(meta_dir.glob("*.json")):
        with open(jf) as f:
            meta = json.load(f)
        sidecars[meta["scene"]] = meta

    if not sidecars:
        sys.exit(f"No sidecar .json files found in {meta_dir}")

    # discover method / scale directories containing .mat outputs
    method_dirs = sorted(sr_root.iterdir()) if sr_root.is_dir() else []
    if args.methods:
        allowed = set(args.methods)
        method_dirs = [d for d in method_dirs if d.name in allowed]

    converted = 0
    for method_dir in method_dirs:
        mat_dir = method_dir / dataset / str(scale)
        if not mat_dir.is_dir():
            continue

        method_name = method_dir.name

        for mat_path in sorted(mat_dir.glob("*.mat")):
            if mat_path.stem == "times":   # skip timing CSVs saved as .mat
                continue

            scene = mat_path.stem
            meta = sidecars.get(scene)
            if meta is None:
                print(f"  SKIP {method_name}/{scene}: no sidecar metadata found")
                continue

            # load fused image
            mat = scipy.io.loadmat(str(mat_path))
            if "sri" not in mat:
                print(f"  SKIP {method_name}/{scene}: no 'sri' variable in .mat")
                continue

            sri = mat["sri"]  # (H, W, Bands)

            # Reverse the [0,1] normalization applied by tif2mat.py
            # CNMF_run.m does: sri = im2uint16(fusion_result)
            #   im2uint16 maps [0,1] float → [0,65535] uint16.
            # Our input was normalized so that 1.0 = global_max in the
            # original uint16 space.  So we need:
            #   output_uint16 = sri / 65535 * global_max   (if sri is uint16)
            #   output_uint16 = sri * global_max           (if sri is float in [0,1])
            norm_max = meta.get("norm_global_max")

            if np.issubdtype(sri.dtype, np.floating):
                # Method saved as float (forgot im2uint16, or intentional)
                sri_f = sri.astype(np.float64)
            else:
                # Method saved as uint16 via im2uint16 — undo to [0,1]
                sri_f = sri.astype(np.float64) / 65535.0

            if norm_max is not None and norm_max > 0:
                # Reverse normalization: [0,1] → [0, global_max]
                sri_f *= norm_max
                sri_out = np.clip(sri_f, 0, 65535).astype(np.uint16)
            else:
                # Legacy path (no normalization was applied)
                sri_out = np.clip(sri_f * 65535, 0, 65535).astype(np.uint16)

            # determine output path
            if args.output_dir:
                out_dir = Path(args.output_dir) / method_name
            else:
                out_dir = mat_dir

            out_dir.mkdir(parents=True, exist_ok=True)
            out_path = out_dir / f"{scene}_{method_name}_fused.tif"

            write_tif(
                str(out_path),
                sri_out,
                meta["ms_crs"],
                meta["ms_transform"],
                dtype="uint16",
            )
            converted += 1
            print(f"  {method_name} / {scene} -> {out_path.name}  "
                  f"shape={sri_out.shape}  "
                  f"range=[{sri_out.min()}, {sri_out.max()}]")

    if converted == 0:
        print("No fused .mat files found to convert. "
              "Have you run the benchmark yet?")
    else:
        print(f"\nDone. {converted} GeoTIFF(s) written.")


if __name__ == "__main__":
    main()
