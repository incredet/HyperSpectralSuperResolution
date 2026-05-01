import rasterio
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import os, glob
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
                if all(k in d.lower() for k in keywords):
                    return i
            return None

        b_red   = find_band(["b04"]) or find_band(["red"])
        b_green = find_band(["b03"]) or find_band(["green"])
        b_blue  = find_band(["b02"]) or find_band(["blue"])

        if not (b_red and b_green and b_blue):
            raise ValueError(f"Can't find RGB bands in descriptions: {desc}")

        arr = ds.read([b_red, b_green, b_blue]).astype("float32")

    rgb = np.moveaxis(arr, 0, -1)

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


def plot_tile_examples(qc_df, n=4, out_path=None):
    categories = {
        "pass (both R² high, clean)": qc_df[
            (qc_df["r2_mean"] >= 0.75) & (qc_df["r2_reverse"] >= 0.50) &
            (qc_df["combined_frac"] <= 0.05)],
        "fail reverse R² only": qc_df[
            (qc_df["r2_mean"] >= 0.75) & (qc_df["r2_reverse"] < 0.50) &
            (qc_df["combined_frac"] <= 0.05)],
        "fail cloud only": qc_df[
            (qc_df["r2_mean"] >= 0.75) & (qc_df["combined_frac"] > 0.05)],
        "fail both": qc_df[
            (qc_df["r2_mean"] < 0.50) | (qc_df["r2_reverse"] < 0.20)],
    }

    fig, axes = plt.subplots(len(categories), n, figsize=(3.5 * n, 3.5 * len(categories)))
    if axes.ndim == 1:
        axes = axes[None, :]

    for row, (label, subset) in enumerate(categories.items()):
        sample = subset.sample(n=min(n, len(subset)), random_state=42)
        for col in range(n):
            ax = axes[row, col]
            if col >= len(sample):
                ax.axis("off")
                continue
            r = sample.iloc[col]
            s2_tif = r.get("s2_tif")
            if pd.isna(s2_tif) or not Path(s2_tif).exists():
                ax.text(0.5, 0.5, "no S2", ha="center", va="center", transform=ax.transAxes)
                ax.axis("off")
                continue
            try:
                _plot_s2_rgb_quick(s2_tif, ax)
            except Exception:
                ax.text(0.5, 0.5, "err", ha="center", va="center", transform=ax.transAxes)
            ax.set_title(f"R²={r['r2_mean']:.2f} rev={r['r2_reverse']:.2f}\ncld={r['combined_frac']:.2f}",
                         fontsize=8)
            ax.axis("off")
        axes[row, 0].set_ylabel(label, fontsize=9, rotation=0, ha="right", va="center")

    plt.tight_layout()
    if out_path:
        fig.savefig(str(out_path), dpi=150, bbox_inches="tight")
    plt.show()


def _plot_s2_rgb_quick(s2_tif, ax):
    # B4=band3, B3=band2, B2=band1 in the 0-indexed 10-band S2 stack
    with rasterio.open(s2_tif) as ds:
        rgb = ds.read([3, 2, 1]).astype(np.float32) / 10000.0
    rgb = np.moveaxis(rgb, 0, -1)
    p2, p98 = np.nanpercentile(rgb[np.isfinite(rgb)], [2, 98])
    rgb = np.clip((rgb - p2) / (p98 - p2 + 1e-6), 0, 1)
    ax.imshow(rgb)
