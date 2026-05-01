#!/usr/bin/env python3
import argparse
import sys
from pathlib import Path

import numpy as np
import scipy.io


def inspect_array(name, arr):
    print(f"  {name}:")
    print(f"    shape={arr.shape}, dtype={arr.dtype}")
    arr_f = arr.astype(np.float64)
    n_nan = np.sum(np.isnan(arr_f))
    n_inf = np.sum(np.isinf(arr_f))
    n_zero = np.sum(arr == 0)
    n_neg = np.sum(arr_f < 0)
    total = arr.size
    print(f"    min={np.nanmin(arr_f):.6g}, max={np.nanmax(arr_f):.6g}, "
          f"mean={np.nanmean(arr_f):.6g}")
    print(f"    NaN={n_nan} ({100*n_nan/total:.1f}%), "
          f"Inf={n_inf} ({100*n_inf/total:.1f}%), "
          f"zeros={n_zero} ({100*n_zero/total:.1f}%), "
          f"negative={n_neg} ({100*n_neg/total:.1f}%)")
    if n_nan > 0:
        # Show where NaN appears — first few locations
        nan_mask = np.isnan(arr_f)
        # Per-band NaN count
        if arr.ndim == 3:
            nan_per_band = np.sum(nan_mask, axis=(0, 1))
            bands_with_nan = np.where(nan_per_band > 0)[0]
            if len(bands_with_nan) <= 10:
                print(f"    Bands with NaN: {bands_with_nan.tolist()} "
                      f"(counts: {nan_per_band[bands_with_nan].tolist()})")
            else:
                print(f"    {len(bands_with_nan)}/{arr.shape[2]} bands have NaN")
            # Spatial pattern
            nan_spatial = np.any(nan_mask, axis=2)
            print(f"    Pixels with any NaN: {np.sum(nan_spatial)} / {nan_spatial.size}")
    return n_nan


def inspect_mat(path, var_name):
    try:
        mat = scipy.io.loadmat(path)
    except Exception as e:
        print(f"  ERROR loading {path}: {e}")
        return -1

    if var_name not in mat:
        print(f"  Variable '{var_name}' not found. Keys: {[k for k in mat if not k.startswith('_')]}")
        return -1

    arr = mat[var_name]
    return inspect_array(var_name, arr)


def simulate_im2double(arr):
    if arr.dtype == np.uint16:
        return arr.astype(np.float64) / 65535.0
    elif arr.dtype == np.float64 or arr.dtype == np.float32:
        return arr.astype(np.float64)
    else:
        return arr.astype(np.float64) / np.iinfo(arr.dtype).max


def simulate_im2uint16(arr):
    arr = np.clip(arr, 0.0, 1.0)
    return (arr * 65535).astype(np.uint16)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dataset", default="EMIT32")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--max-tiles", type=int, default=3,
                    help="Number of tiles to inspect (default: 3)")
    args = ap.parse_args()

    hs_dir = Path(f"data/HS/{args.dataset}/{args.scale}")
    ms_dir = Path(f"data/MS/{args.dataset}")
    sr_dir = Path(f"data/SR/CNMF/{args.dataset}/{args.scale}")

    hs_files = sorted(hs_dir.glob("*.mat"))
    if not hs_files:
        sys.exit(f"No HS files found in {hs_dir}")

    tiles = [f.stem for f in hs_files[:args.max_tiles]]

    for tile in tiles:
        print(f"\n{'='*70}")
        print(f"TILE: {tile}")
        print(f"{'='*70}")

        # 1. Input HS
        hs_path = hs_dir / f"{tile}.mat"
        print(f"\n[1] HS Input: {hs_path}")
        hs_nan = inspect_mat(str(hs_path), "hsi")

        # 2. Input MS
        ms_path = ms_dir / f"{tile}.mat"
        print(f"\n[2] MS Input: {ms_path}")
        ms_nan = inspect_mat(str(ms_path), "msi")

        # 3. Simulate im2double
        print(f"\n[3] Simulated im2double conversion:")
        hs_mat = scipy.io.loadmat(str(hs_path))
        ms_mat = scipy.io.loadmat(str(ms_path))
        hsi_raw = hs_mat["hsi"]
        msi_raw = ms_mat["msi"]
        hsi_dbl = simulate_im2double(hsi_raw)
        msi_dbl = simulate_im2double(msi_raw)
        inspect_array("hsi after im2double", hsi_dbl)
        inspect_array("msi after im2double", msi_dbl)

        # Check if data range makes sense
        print(f"\n[3b] Data range analysis:")
        print(f"    HSI dynamic range (uint16): [{hsi_raw.min()}, {hsi_raw.max()}] "
              f"→ im2double: [{hsi_dbl.min():.6f}, {hsi_dbl.max():.6f}]")
        print(f"    MSI dynamic range (uint16): [{msi_raw.min()}, {msi_raw.max()}] "
              f"→ im2double: [{msi_dbl.min():.6f}, {msi_dbl.max():.6f}]")
        if hsi_dbl.max() < 0.01:
            print(f"    ⚠ WARNING: HSI values very small after im2double — "
                  f"MATLAB will treat as near-zero!")
        if msi_dbl.max() < 0.01:
            print(f"    ⚠ WARNING: MSI values very small after im2double — "
                  f"MATLAB will treat as near-zero!")

        # 4. CNMF Output
        sr_path = sr_dir / f"{tile}.mat"
        if sr_path.exists():
            print(f"\n[4] CNMF Output: {sr_path}")
            sr_nan = inspect_mat(str(sr_path), "sri")

            # Check what dtype CNMF saved
            sr_mat = scipy.io.loadmat(str(sr_path))
            sri = sr_mat["sri"]
            print(f"\n[4b] Output analysis:")
            print(f"    Saved dtype: {sri.dtype}")
            if sri.dtype == np.uint16:
                print(f"    uint16 range: [{sri.min()}, {sri.max()}]")
                # NaN can't exist in uint16! Check if all zeros instead
                zero_pixels = np.all(sri == 0, axis=2)
                print(f"    All-zero pixels: {np.sum(zero_pixels)} / {zero_pixels.size}")
            else:
                # If saved as float, NaN is possible
                print(f"    float range: [{np.nanmin(sri):.6g}, {np.nanmax(sri):.6g}]")

            # 5. Simulate mat2tif conversion
            print(f"\n[5] Simulated mat2tif.py conversion:")
            if np.issubdtype(sri.dtype, np.floating):
                sri_clipped = np.clip(sri, 0.0, 1.0)
                sri_uint16 = (sri_clipped * 65535).astype(np.uint16)
                n_nan_before = np.sum(np.isnan(sri))
                n_nan_mapped_to_zero = np.sum(np.isnan(sri)) - np.sum(np.isnan(sri_uint16.astype(float)))
                print(f"    NaN in float sri: {n_nan_before}")
                print(f"    After clip+uint16: NaN→0 (uint16 has no NaN)")
                print(f"    BUT: NaN * 65535 = NaN, np.uint16(NaN) = 0 on most platforms")
            elif sri.dtype == np.uint16:
                print(f"    Already uint16 — no NaN possible in .mat")
                print(f"    If .tif shows NaN, the issue is in mat2tif.py conversion")
        else:
            print(f"\n[4] CNMF Output: NOT FOUND (has the benchmark run for this tile?)")

    print(f"\n{'='*70}")
    print("DIAGNOSIS SUMMARY")
    print(f"{'='*70}")
    print("If [3b] shows WARNING about very small values after im2double,")
    print("that's likely the root cause — your uint16 reflectance values")
    print("are being treated as raw DN by MATLAB's im2double(), which")
    print("divides by 65535, making all values near-zero.")
    print()
    print("If [4] shows sri saved as float64 with NaN, CNMF produced NaN")
    print("internally (likely from division by near-zero in NMF updates).")
    print()
    print("If [4] shows sri as uint16 with no NaN but .tif has NaN,")
    print("the bug is in mat2tif.py's dtype handling.")


if __name__ == "__main__":
    main()
