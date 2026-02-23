import rasterio
import numpy as np
import matplotlib.pyplot as plt
import re, os, glob, ast
from pathlib import Path

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_utils import closest_bands

def plot_s2_truecolor_from_stack(stack_path, ax=None):
    with rasterio.open(stack_path) as ds:
        desc = list(ds.descriptions)

        def find_band(keywords):
            for i, d in enumerate(desc, start=1):
                if d is None:
                    continue
                d_low = d.lower()
                if all(k in d_low for k in keywords):
                    return i
            return None

        b_red   = find_band(["b04"]) or find_band(["red"])
        b_green = find_band(["b03"]) or find_band(["green"])
        b_blue  = find_band(["b02"]) or find_band(["blue"])

        if not (b_red and b_green and b_blue):
            raise ValueError(f"Can't find RGB bands in descriptions: {desc}")

        arr = ds.read([b_red, b_green, b_blue]).astype("float32")

    rgb = np.moveaxis(arr, 0, -1)

    # reflectance scaling heuristic (keep yours)
    if np.nanmax(rgb) > 1.5:
        rgb = rgb / 10000.0

    valid = np.isfinite(rgb)
    p2, p98 = np.nanpercentile(rgb[valid], [2, 98])
    rgb = np.clip((rgb - p2) / (p98 - p2 + 1e-6), 0, 1)

    if ax is None:
        _, ax = plt.subplots(figsize=(7, 7))

    ax.imshow(rgb)
    ax.set_title("Sentinel-2 true color (B04, B03, B02)")
    ax.axis("off")
    return rgb


def _percentile_stretch(img, p_low=2, p_high=98):
    """
    Percentile-stretch to [0,1].
    - If img is HxWxC: stretch each channel independently (works for any C>=1)
    - If img is HxW: stretch as a single band
    Ignores non-finite values.
    """
    img = img.astype(np.float32, copy=False)
    out = np.zeros_like(img, dtype=np.float32)

    if img.ndim == 3:
        for c in range(img.shape[2]):
            ch = img[..., c]
            finite = np.isfinite(ch)
            if not np.any(finite):
                continue
            lo, hi = np.percentile(ch[finite], (p_low, p_high))
            if hi > lo:
                out[..., c] = np.clip((ch - lo) / (hi - lo), 0, 1)
    else:
        finite = np.isfinite(img)
        if np.any(finite):
            lo, hi = np.percentile(img[finite], (p_low, p_high))
            if hi > lo:
                out = np.clip((img - lo) / (hi - lo), 0, 1)

    return out

def show_emit_rgb_from_envi(
        out_dir,
        pattern="SISTER_EMIT_L2A_RFL_*_000.bin",
        *,
        wavelengths_nm=None, 
        targets_nm=(630.0, 532.0, 465.0),
        percentile=(2, 98),
        gamma=1/2.2,
        white_balance=True,
        ax=None,
    ):
    bins = sorted(glob.glob(os.path.join(out_dir, pattern)))
    if not bins:
        raise FileNotFoundError(f"No files matching {pattern} in {out_dir}")
    data_bin = bins[-1]
    print(f"Reading: {os.path.basename(data_bin)}")

    with rasterio.open(data_bin) as ds:
        if wavelengths_nm is None:
            wavelengths_nm = []
            for b in range(1, ds.count + 1):
                bt = ds.tags(b)
                w = bt.get('wavelength') or bt.get('WAVELENGTH')
                wavelengths_nm.append(float(w) if w else np.nan)
            wavelengths_nm = np.array(wavelengths_nm, dtype=np.float64)
            if not np.isfinite(wavelengths_nm).any():
                raise ValueError("No wavelengths found in ENVI header tags.")
        wavelengths = np.atleast_1d(np.asarray(wavelengths_nm, dtype=np.float64))

        idxs, picked = closest_bands(wavelengths, targets_nm, verbose=True)
        R = ds.read(idxs[0] + 1).astype(np.float32)
        G = ds.read(idxs[1] + 1).astype(np.float32)
        B = ds.read(idxs[2] + 1).astype(np.float32)

        nodata = ds.nodata
        if nodata is not None:
            for arr in (R, G, B):
                arr[arr == nodata] = np.nan

        rgb = np.dstack([np.clip(R, 0, 1),
                         np.clip(G, 0, 1),
                         np.clip(B, 0, 1)])

        rgb = _percentile_stretch(rgb, *percentile)

        if white_balance:
            means = np.nanmean(rgb.reshape(-1, 3), axis=0)
            scale = np.nanmean(means) / np.maximum(means, 1e-6)
            rgb = np.clip(rgb * scale, 0, 1)

        rgb_disp = np.clip(rgb, 0, 1) ** gamma

        created_fig = False
        if ax is None:
            fig, ax = plt.subplots(figsize=(8, 8))
            created_fig = True

        ax.imshow(rgb_disp, origin="upper")
        epsg = ds.crs.to_string() if ds.crs else "unknown CRS"
        ax.set_title(f"EMIT True Color ~ {picked[0]:.0f}/{picked[1]:.0f}/{picked[2]:.0f} nm\n{epsg}")
        ax.axis("off")

        if created_fig:
            plt.show()