#!/usr/bin/env python3
"""
tif2mat_wald.py — Prepare data for Wald's protocol evaluation.

Takes EMIT tiles (120×120×32 at 60m) and Sentinel-2 tiles (720×720×10 at
10m), degrades both by the scale factor (6), and saves everything in the
HIF benchmark .mat format.

After running this, the benchmark data tree looks like:

    data/GT/EMIT32_WALD/{scene}.mat       — 120×120×B  (GT, key 'hsi')
    data/HS/EMIT32_WALD/6/{scene}.mat     — 20×20×B    (degraded HSI, key 'hsi')
    data/MS/EMIT32_WALD/{scene}.mat       — 120×120×Bm (degraded MSI, key 'msi')
    data/meta/EMIT32_WALD/{scene}.json    — sidecar metadata

Then:
    python main/run_batch.py --dataset EMIT32_WALD --scale 6 --methods FUSE CNMF GLP HySure CSTF MAPSMM
    python main/metrics_wald.py --dataset EMIT32_WALD --scale 6

Usage
-----
    # From pre-selected tile list (recommended):
    python main/tif2mat_wald.py \
        --tile-list wald_tile_list.csv \
        --bench-root /path/to/hif-benchmarking \
        --dataset EMIT32_WALD --scale 6

    # From Drive root (processes all tiles):
    python main/tif2mat_wald.py \
        --drive-root /path/to/drive/wald_data \
        --bench-root /path/to/hif-benchmarking \
        --dataset EMIT32_WALD \
        --scale 6 \
        --hs-suffix _emit_b32.tif \
        --ms-suffix _s2.tif \
        --ms-suffix _s2.tif

Degradation model
-----------------
HSI: band-wise Gaussian blur (sigma = scale / 2.35482, i.e. FWHM = scale
pixels) + decimation.  This matches the GLP and FUSE fusion method
conventions so Wald evaluation is internally consistent.
MSI: block-averaging (box filter) + decimation.
"""

import argparse
import json
import os
import sys
from pathlib import Path

import numpy as np

try:
    import rasterio
except ImportError:
    sys.exit("ERROR: rasterio is required.  pip install rasterio")

try:
    import scipy.io
    from scipy.ndimage import gaussian_filter
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")


# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

def read_tif(path: str) -> tuple:
    """Return (array_HWB, profile_dict) from a GeoTIFF."""
    with rasterio.open(path) as src:
        arr = src.read()                      # (B, H, W)
        arr = np.transpose(arr, (1, 2, 0))    # (H, W, B)
        profile = dict(src.profile)
        profile["transform"] = list(src.transform)[:6]
        profile["crs"] = str(src.crs)
    return arr, profile


def scene_name_from_tile(filename: str, hs_suffix: str, ms_suffix: str):
    """Extract common scene name from tile filename."""
    stem = Path(filename).stem
    for suffix in (hs_suffix, ms_suffix):
        tag = Path(suffix).stem
        if stem.endswith(tag):
            return stem[: -len(tag)]
    return None


def degrade_hsi(hsi: np.ndarray, scale: int, sigma: float) -> np.ndarray:
    """
    Degrade a hyperspectral image by Gaussian blur + decimation.

    This is the standard spatial degradation model used in Wald's protocol:
        H_LR = D · B · H_HR
    where B is band-wise Gaussian blur and D is spatial decimation.

    Parameters
    ----------
    hsi : (H, W, B) array, float64
        High-resolution HSI (the ground truth).
    scale : int
        Decimation factor.
    sigma : float
        Standard deviation of Gaussian blur kernel (in HR pixels).

    Returns
    -------
    hsi_lr : (H//scale, W//scale, B) array, float64
        Degraded low-resolution HSI.
    """
    h, w, bands = hsi.shape
    assert h % scale == 0 and w % scale == 0, \
        f"HSI dimensions ({h}×{w}) must be divisible by scale ({scale})"

    # Band-wise Gaussian blur
    blurred = np.empty_like(hsi)
    for b in range(bands):
        blurred[:, :, b] = gaussian_filter(hsi[:, :, b], sigma=sigma)

    # Decimate: take every `scale`-th pixel, starting at center of each block
    offset = scale // 2
    hsi_lr = blurred[offset::scale, offset::scale, :]

    return hsi_lr


def degrade_msi(msi: np.ndarray, scale: int) -> np.ndarray:
    """
    Degrade a multispectral image by spatial averaging (box filter + decimation).

    For the MSI, we use block-averaging (simulating a lower-resolution sensor)
    rather than Gaussian blur, since S2 bands are already well-sampled.

    Parameters
    ----------
    msi : (H, W, B) array, float64
        High-resolution MSI.
    scale : int
        Decimation factor.

    Returns
    -------
    msi_lr : (H//scale, W//scale, B) array, float64
        Degraded low-resolution MSI.
    """
    h, w, bands = msi.shape
    assert h % scale == 0 and w % scale == 0, \
        f"MSI dimensions ({h}×{w}) must be divisible by scale ({scale})"

    # Block average: reshape into blocks and take mean
    msi_lr = msi.reshape(h // scale, scale, w // scale, scale, bands)
    msi_lr = msi_lr.mean(axis=(1, 3))

    return msi_lr


# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(
        description="Prepare Wald's protocol evaluation data from EMIT/S2 GeoTIFF tiles."
    )
    ap.add_argument("--drive-root", default=None,
                    help="Root folder containing AOI/pair_id/tiles/ subfolders. "
                         "Not needed if --tile-list is provided.")
    ap.add_argument("--bench-root", required=True,
                    help="Root of the hif-benchmarking repo.")
    ap.add_argument("--dataset", default="EMIT32_WALD",
                    help="Dataset name for the evaluation set (default: EMIT32_WALD).")
    ap.add_argument("--scale", type=int, default=6,
                    help="Spatial scale factor (default: 6).")
    ap.add_argument("--hs-suffix", default="_emit_b32.tif",
                    help="Filename suffix for HS tiles (default: _emit_b32.tif).")
    ap.add_argument("--ms-suffix", default="_s2.tif",
                    help="Filename suffix for MS tiles (default: _s2.tif).")
    ap.add_argument("--blur-sigma", type=float, default=None,
                    help="Gaussian blur sigma for HSI degradation in HR pixels. "
                         "Default: scale/2.35482 (FWHM = scale), matching the "
                         "GLP and FUSE fusion method conventions.")
    ap.add_argument("--pair-ids", nargs="*", default=None,
                    help="Process only these pair_id folders (default: all).")
    ap.add_argument("--tile-list", default=None,
                    help="CSV from select_wald_tiles.py with pre-selected tiles. "
                         "Columns: scene, emit_b32_path, s2_path. "
                         "If provided, --drive-root and --pair-ids are ignored.")
    ap.add_argument("--crop-to-divisible", action="store_true",
                    help="Center-crop HS tiles to the largest size divisible by scale. "
                         "E.g. 100×100 with scale=6 → 96×96 (and MS 600→576). "
                         "Use when tiles were generated with a non-divisible size.")
    args = ap.parse_args()

    bench_root = Path(args.bench_root)
    dataset    = args.dataset
    scale      = args.scale
    hs_suffix  = args.hs_suffix
    ms_suffix  = args.ms_suffix
    FWHM_TO_SIGMA = 2.35482  # Gaussian FWHM = 2*sqrt(2*ln2) * sigma
    sigma      = args.blur_sigma if args.blur_sigma is not None else scale / FWHM_TO_SIGMA

    # Output directories
    gt_dir   = bench_root / "data" / "GT"   / dataset
    hs_dir   = bench_root / "data" / "HS"   / dataset / str(scale)
    ms_dir   = bench_root / "data" / "MS"   / dataset
    meta_dir = bench_root / "data" / "meta" / dataset
    for d in (gt_dir, hs_dir, ms_dir, meta_dir):
        d.mkdir(parents=True, exist_ok=True)

    # ── Tile discovery: either from --tile-list or from --drive-root ──────
    hs_tiles = {}  # scene -> Path
    ms_tiles = {}

    if args.tile_list:
        # Read pre-selected tile list (from select_wald_tiles.py)
        import csv
        with open(args.tile_list) as f:
            reader = csv.DictReader(f)
            for row in reader:
                scene = row["scene"]
                hs_tiles[scene] = Path(row["emit_b32_path"])
                ms_tiles[scene] = Path(row["s2_path"])
        matched = sorted(set(hs_tiles) & set(ms_tiles))
        print(f"Tile list: {args.tile_list} ({len(matched)} tiles)")
    else:
        if args.drive_root is None:
            sys.exit("Either --drive-root or --tile-list must be provided.")
        drive_root = Path(args.drive_root)

        pair_dirs = sorted([
            sub
            for p in drive_root.iterdir() if p.is_dir()
            for sub in p.iterdir() if sub.is_dir() and (sub / "tiles").is_dir()
        ])
        if args.pair_ids:
            allowed = set(args.pair_ids)
            pair_dirs = [p for p in pair_dirs if p.name in allowed]

        if not pair_dirs:
            sys.exit(f"No pair_id folders with tiles/ subdirectory found under {drive_root}")

        for pair_dir in pair_dirs:
            tiles_dir = pair_dir / "tiles"
            for f in sorted(tiles_dir.iterdir()):
                if not f.is_file():
                    continue
                scene = scene_name_from_tile(f.name, hs_suffix, ms_suffix)
                if scene is None:
                    continue
                if f.name.endswith(hs_suffix):
                    hs_tiles[scene] = f
                elif f.name.endswith(ms_suffix):
                    ms_tiles[scene] = f

        matched = sorted(set(hs_tiles) & set(ms_tiles))

    if not matched:
        sys.exit("No matched HS/MS tile pairs found.")

    print(f"Wald's Protocol Data Preparation")
    print(f"================================")
    print(f"Dataset:    {dataset}")
    print(f"Scale:      {scale}")
    print(f"Blur sigma: {sigma}")
    print(f"Tiles:      {len(matched)}")
    print(f"GT dir:     {gt_dir}")
    print(f"HS dir:     {hs_dir}")
    print(f"MS dir:     {ms_dir}")
    print()

    saved = 0
    skipped = 0
    for i, scene in enumerate(matched, 1):
        hs_path = hs_tiles[scene]
        ms_path = ms_tiles[scene]

        print(f"[{i}/{len(matched)}] {scene}")

        # Read GeoTIFFs
        hsi_raw, hs_profile = read_tif(str(hs_path))
        msi_raw, ms_profile = read_tif(str(ms_path))

        hs_h, hs_w, hs_b = hsi_raw.shape
        ms_h, ms_w, ms_b = msi_raw.shape

        # Validate: EMIT should be 450×450, S2 should be 2700×2700
        expected_ms_h = hs_h * scale
        expected_ms_w = hs_w * scale
        if ms_h != expected_ms_h or ms_w != expected_ms_w:
            print(f"    WARNING: Expected MS {expected_ms_h}×{expected_ms_w} for HS {hs_h}×{hs_w} "
                  f"at scale {scale}, got {ms_h}×{ms_w}. Skipping.")
            skipped += 1
            continue

        if hs_h % scale != 0 or hs_w % scale != 0:
            if args.crop_to_divisible:
                # Center-crop to largest dimensions divisible by scale
                new_hs_h = (hs_h // scale) * scale
                new_hs_w = (hs_w // scale) * scale
                top  = (hs_h - new_hs_h) // 2
                left = (hs_w - new_hs_w) // 2
                hsi_raw = hsi_raw[top:top+new_hs_h, left:left+new_hs_w, :]
                # Corresponding center-crop on MSI
                ms_top  = top * scale
                ms_left = left * scale
                new_ms_h = new_hs_h * scale
                new_ms_w = new_hs_w * scale
                msi_raw = msi_raw[ms_top:ms_top+new_ms_h, ms_left:ms_left+new_ms_w, :]
                print(f"    Cropped: HS {hs_h}×{hs_w} → {new_hs_h}×{new_hs_w}, "
                      f"MS {ms_h}×{ms_w} → {new_ms_h}×{new_ms_w}")
                hs_h, hs_w = new_hs_h, new_hs_w
                ms_h, ms_w = new_ms_h, new_ms_w
            else:
                print(f"    WARNING: HS dimensions {hs_h}×{hs_w} not divisible by {scale}. "
                      f"Skipping. (Use --crop-to-divisible to center-crop instead.)")
                skipped += 1
                continue

        # Convert to float64 and normalize to [0,1]
        hsi_f = hsi_raw.astype(np.float64)
        msi_f = msi_raw.astype(np.float64)

        global_max = max(hsi_f.max(), msi_f.max())
        if global_max == 0:
            print(f"    WARNING: All-zero data. Skipping.")
            skipped += 1
            continue

        hsi_norm = hsi_f / global_max
        msi_norm = msi_f / global_max

        # GT = the full-resolution EMIT tile (450×450×B)
        gt = hsi_norm

        # Degraded HSI = blur + decimate EMIT by scale → 75×75×B
        hsi_degraded = degrade_hsi(hsi_norm, scale, sigma)

        # Degraded MSI = decimate S2 by scale → 450×450×Bm
        msi_degraded = degrade_msi(msi_norm, scale)

        lr_h, lr_w, _ = hsi_degraded.shape
        ms_d_h, ms_d_w, _ = msi_degraded.shape

        print(f"    GT:           {gt.shape}  [{gt.min():.4f}, {gt.max():.4f}]")
        print(f"    Degraded HSI: {hsi_degraded.shape}  [{hsi_degraded.min():.4f}, {hsi_degraded.max():.4f}]")
        print(f"    Degraded MSI: {msi_degraded.shape}  [{msi_degraded.min():.4f}, {msi_degraded.max():.4f}]")

        # Verify dimensions
        assert ms_d_h == hs_h and ms_d_w == hs_w, \
            f"Degraded MSI {ms_d_h}×{ms_d_w} should match GT {hs_h}×{hs_w}"
        assert lr_h * scale == hs_h and lr_w * scale == hs_w, \
            f"Degraded HSI {lr_h}×{lr_w} * {scale} should give {hs_h}×{hs_w}"

        # Save .mat files
        scipy.io.savemat(str(gt_dir / f"{scene}.mat"),
                         {"hsi": gt}, do_compression=True)
        scipy.io.savemat(str(hs_dir / f"{scene}.mat"),
                         {"hsi": hsi_degraded}, do_compression=True)
        scipy.io.savemat(str(ms_dir / f"{scene}.mat"),
                         {"msi": msi_degraded}, do_compression=True)

        # Sidecar metadata
        sidecar = {
            "scene": scene,
            "hs_file": hs_path.name,
            "ms_file": ms_path.name,
            "gt_shape": list(gt.shape),
            "hs_shape": list(hsi_degraded.shape),
            "ms_shape": list(msi_degraded.shape),
            "hs_bands": hs_b,
            "ms_bands": ms_b,
            "scale": scale,
            "blur_sigma": sigma,
            "norm_global_max": float(global_max),
            "ms_crs": ms_profile["crs"],
            "ms_transform": ms_profile["transform"],
            "ms_dtype": str(msi_raw.dtype),
            "wald_protocol": True,
        }
        with open(meta_dir / f"{scene}.json", "w") as f:
            json.dump(sidecar, f, indent=2)

        print(f"    Saved.")
        saved += 1

    print(f"\nDone. {saved} scenes saved, {skipped} skipped.")
    print(f"\nNext steps:")
    print(f"  1. Run fusion:")
    print(f"     python main/run_batch.py --dataset {dataset} --scale {scale} \\")
    print(f"         --methods FUSE CNMF GLP HySure CSTF MAPSMM")
    print(f"  2. Evaluate:")
    print(f"     python main/metrics_wald.py --dataset {dataset} --scale {scale}")


if __name__ == "__main__":
    main()
