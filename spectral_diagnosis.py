"""
Spectral Diagnosis for EMIT Tiles (285-band & 32-band)
=======================================================
Drop-in notebook cell for diagnosing zero-band and other spectral anomalies
in the EMIT–S2 super-resolution pipeline.

Run after tiling is complete.  Needs:
  - tile_dir : Path to directory containing *_emit.tif and *_emit_b32.tif files
  - wl_nm    : (optional) full 285-band wavelength array; auto-read from tile tags if absent

Usage in notebook:
    from spectral_diagnosis import run_spectral_diagnosis
    report = run_spectral_diagnosis("path/to/tiles", wl_nm=wl_nm)
"""

from __future__ import annotations

import warnings
from pathlib import Path
from collections import defaultdict

import numpy as np
import rasterio
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
from matplotlib.colors import LogNorm


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 1. Data ingestion helpers                                              ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def _read_tile_meta(path: Path) -> dict:
    """Read per-band metadata (wavelength, emit_band_index) from GeoTIFF tags."""
    with rasterio.open(path) as ds:
        meta = {
            "path": path,
            "count": ds.count,
            "height": ds.height,
            "width": ds.width,
            "dtype": str(ds.dtypes[0]),
            "nodata": ds.nodata,
            "crs": str(ds.crs),
        }
        wavelengths = []
        band_indices = []
        for b in range(1, ds.count + 1):
            tags = ds.tags(b)
            wl = tags.get("wavelength")
            idx = tags.get("emit_band_index")
            wavelengths.append(float(wl) if wl else None)
            band_indices.append(int(idx) if idx else None)
        meta["wavelengths_nm"] = wavelengths
        meta["band_indices_0b"] = band_indices
    return meta


def _read_tile_array(path: Path) -> np.ndarray:
    """Read full tile as float32 (B, H, W)."""
    with rasterio.open(path) as ds:
        return ds.read().astype(np.float32)


def _collect_tiles(tile_dir: Path, suffix: str) -> list[Path]:
    """Glob for tiles matching a suffix pattern, sorted."""
    tiles = sorted(tile_dir.glob(f"*{suffix}"))
    return tiles


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 2. Per-tile band statistics                                            ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def compute_band_stats(tile_path: Path, nodata_val: float | None = None) -> dict:
    """Compute per-band statistics for one tile.

    Returns dict with arrays of shape (n_bands,):
        mean, std, min_val, max_val, zero_frac, nodata_frac,
        all_zero (bool), all_constant (bool), negative_frac
    """
    arr = _read_tile_array(tile_path)  # (B, H, W)
    n_bands, h, w = arr.shape
    n_px = h * w

    stats = {
        "n_bands": n_bands,
        "shape": (n_bands, h, w),
        "mean": np.zeros(n_bands),
        "std": np.zeros(n_bands),
        "min_val": np.zeros(n_bands),
        "max_val": np.zeros(n_bands),
        "median": np.zeros(n_bands),
        "p01": np.zeros(n_bands),
        "p99": np.zeros(n_bands),
        "zero_frac": np.zeros(n_bands),
        "nodata_frac": np.zeros(n_bands),
        "negative_frac": np.zeros(n_bands),
        "all_zero": np.zeros(n_bands, dtype=bool),
        "all_constant": np.zeros(n_bands, dtype=bool),
        "near_zero_frac": np.zeros(n_bands),  # |val| < 1e-6
    }

    for b in range(n_bands):
        band = arr[b].ravel()

        # Nodata mask
        if nodata_val is not None:
            nd_mask = (band == nodata_val)
            valid = band[~nd_mask]
            stats["nodata_frac"][b] = nd_mask.sum() / n_px
        else:
            valid = band
            stats["nodata_frac"][b] = 0.0

        if len(valid) == 0:
            stats["all_zero"][b] = True
            stats["all_constant"][b] = True
            continue

        stats["mean"][b] = valid.mean()
        stats["std"][b] = valid.std()
        stats["min_val"][b] = valid.min()
        stats["max_val"][b] = valid.max()
        stats["median"][b] = np.median(valid)
        stats["p01"][b] = np.percentile(valid, 1)
        stats["p99"][b] = np.percentile(valid, 99)
        stats["zero_frac"][b] = (valid == 0).sum() / len(valid)
        stats["negative_frac"][b] = (valid < 0).sum() / len(valid)
        stats["near_zero_frac"][b] = (np.abs(valid) < 1e-6).sum() / len(valid)
        stats["all_zero"][b] = (valid.max() == 0 and valid.min() == 0)
        stats["all_constant"][b] = (valid.std() < 1e-10)

    return stats


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 3. Aggregate analysis across all tiles                                 ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def aggregate_tile_stats(
    tile_paths: list[Path],
    nodata_val: float | None = None,
    max_tiles: int | None = None,
) -> dict:
    """Compute and aggregate band stats across many tiles.

    Returns:
        Dictionary with per-band aggregated metrics and per-tile records.
    """
    if max_tiles is not None:
        tile_paths = tile_paths[:max_tiles]

    n_tiles = len(tile_paths)
    if n_tiles == 0:
        return {"error": "No tiles found"}

    # Peek at first tile for band count
    first_meta = _read_tile_meta(tile_paths[0])
    n_bands = first_meta["count"]

    # Accumulators
    all_means = np.zeros((n_tiles, n_bands))
    all_stds = np.zeros((n_tiles, n_bands))
    all_mins = np.full((n_tiles, n_bands), np.inf)
    all_maxs = np.full((n_tiles, n_bands), -np.inf)
    all_zero_frac = np.zeros((n_tiles, n_bands))
    all_nodata_frac = np.zeros((n_tiles, n_bands))
    all_zero_flags = np.zeros((n_tiles, n_bands), dtype=bool)
    all_constant_flags = np.zeros((n_tiles, n_bands), dtype=bool)
    all_negative_frac = np.zeros((n_tiles, n_bands))
    per_tile = []

    for i, tp in enumerate(tile_paths):
        st = compute_band_stats(tp, nodata_val)
        if st["n_bands"] != n_bands:
            warnings.warn(f"Tile {tp.name}: expected {n_bands} bands, got {st['n_bands']}. Skipping.")
            continue
        all_means[i] = st["mean"]
        all_stds[i] = st["std"]
        all_mins[i] = st["min_val"]
        all_maxs[i] = st["max_val"]
        all_zero_frac[i] = st["zero_frac"]
        all_nodata_frac[i] = st["nodata_frac"]
        all_zero_flags[i] = st["all_zero"]
        all_constant_flags[i] = st["all_constant"]
        all_negative_frac[i] = st["negative_frac"]
        per_tile.append({"path": tp, "stats": st})

    return {
        "n_tiles": n_tiles,
        "n_bands": n_bands,
        "wavelengths_nm": first_meta["wavelengths_nm"],
        "band_indices_0b": first_meta["band_indices_0b"],
        "meta_first": first_meta,
        # Per-band aggregates (across tiles)
        "mean_of_means": all_means.mean(axis=0),
        "std_of_means": all_means.std(axis=0),
        "global_min": all_mins.min(axis=0),
        "global_max": all_maxs.max(axis=0),
        "mean_zero_frac": all_zero_frac.mean(axis=0),
        "mean_nodata_frac": all_nodata_frac.mean(axis=0),
        "mean_negative_frac": all_negative_frac.mean(axis=0),
        "tiles_all_zero": all_zero_flags.sum(axis=0),       # how many tiles have band=all-zero
        "tiles_all_constant": all_constant_flags.sum(axis=0),
        "frac_tiles_all_zero": all_zero_flags.mean(axis=0),  # fraction of tiles
        # Raw matrices
        "all_means": all_means,
        "all_stds": all_stds,
        "all_zero_flags": all_zero_flags,
        # Per-tile records
        "per_tile": per_tile,
    }


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 4. Cross-check: 285 ↔ 32 band correspondence                         ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def cross_check_285_vs_32(
    emit285_path: Path,
    emit32_path: Path,
    nodata_u16: int = 65535,
) -> dict:
    """Compare a 285-band tile with its 32-band subset.

    Checks:
    - Do the 32-band indices from tags actually correspond to non-zero
      bands in the 285-band source?
    - Is the data identical after subsetting?
    - Which bands in the 285 are all-zero (potential source contamination)?
    """
    meta32 = _read_tile_meta(emit32_path)
    arr285 = _read_tile_array(emit285_path)
    arr32 = _read_tile_array(emit32_path)

    idx_0b = meta32["band_indices_0b"]
    wl_nm = meta32["wavelengths_nm"]

    results = {
        "emit285_shape": arr285.shape,
        "emit32_shape": arr32.shape,
        "band_indices_0b": idx_0b,
        "wavelengths_nm": wl_nm,
        "bands_285_all_zero": [],
        "bands_32_all_zero": [],
        "mismatch_bands": [],
        "zero_source_in_285": [],
    }

    # Which of the 285 bands are all-zero?
    for b in range(arr285.shape[0]):
        band = arr285[b]
        valid = band[band != nodata_u16] if nodata_u16 else band
        if len(valid) == 0 or (valid.max() == 0 and valid.min() == 0):
            results["bands_285_all_zero"].append(b)

    # Which of the 32 bands are all-zero?
    for b in range(arr32.shape[0]):
        band = arr32[b]
        valid = band[band != nodata_u16] if nodata_u16 else band
        if len(valid) == 0 or (valid.max() == 0 and valid.min() == 0):
            results["bands_32_all_zero"].append(b)
            # Was the source band in 285 also zero?
            src_idx = idx_0b[b]
            if src_idx is not None and src_idx in results["bands_285_all_zero"]:
                results["zero_source_in_285"].append({
                    "b32_index": b,
                    "b285_index": src_idx,
                    "wavelength_nm": wl_nm[b] if wl_nm[b] else None,
                    "cause": "SOURCE_ZERO",
                })
            elif src_idx is not None:
                results["zero_source_in_285"].append({
                    "b32_index": b,
                    "b285_index": src_idx,
                    "wavelength_nm": wl_nm[b] if wl_nm[b] else None,
                    "cause": "PIPELINE_BUG",
                })

    # Value comparison for the 32 selected bands
    for b32, src_idx in enumerate(idx_0b):
        if src_idx is None:
            results["mismatch_bands"].append({"b32": b32, "reason": "missing_index_tag"})
            continue
        if src_idx >= arr285.shape[0]:
            results["mismatch_bands"].append({"b32": b32, "src_idx": src_idx, "reason": "out_of_range"})
            continue
        src_band = arr285[src_idx]
        dst_band = arr32[b32]
        if not np.allclose(src_band, dst_band, rtol=0, atol=0.5):
            # Allow ±0.5 for uint16 rounding
            max_diff = np.abs(src_band - dst_band).max()
            results["mismatch_bands"].append({
                "b32": b32,
                "src_idx": src_idx,
                "max_diff": float(max_diff),
                "reason": "value_mismatch",
            })

    return results


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 5. Source-level diagnosis: check the raw 285-band ENVI/GeoTIFF         ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def diagnose_source_raster(
    emit_full_path: Path | str,
    nodata_val: float = -9999.0,
    sample_rows: int = 100,
) -> dict:
    """Quick diagnosis of the full-scene EMIT raster (ENVI or GeoTIFF).

    Reads a central strip of *sample_rows* rows to check per-band stats
    without loading the entire file into memory.

    Returns dict with per-band: mean, std, zero_frac, all_zero flags,
    and the indices/wavelengths of problematic bands.
    """
    with rasterio.open(str(emit_full_path)) as ds:
        n_bands = ds.count
        h, w = ds.height, ds.width

        # Read a central strip
        r0 = max(0, h // 2 - sample_rows // 2)
        win = rasterio.windows.Window(0, r0, w, min(sample_rows, h - r0))

        results = {
            "path": str(emit_full_path),
            "shape": (n_bands, h, w),
            "nodata": ds.nodata,
            "window_used": (r0, r0 + win.height, 0, w),
            "per_band": [],
            "all_zero_bands": [],
            "all_nodata_bands": [],
            "suspicious_bands": [],
        }

        for b in range(1, n_bands + 1):
            band = ds.read(b, window=win).astype(np.float64).ravel()

            nd_mask = ~np.isfinite(band)
            if nodata_val is not None:
                nd_mask |= (band == nodata_val)

            valid = band[~nd_mask]
            n_valid = len(valid)
            n_total = len(band)

            rec = {
                "band_1based": b,
                "n_valid": n_valid,
                "nodata_frac": (n_total - n_valid) / n_total if n_total > 0 else 1.0,
            }

            if n_valid == 0:
                rec.update(mean=0, std=0, min_val=0, max_val=0, zero_frac=1.0, all_zero=True)
                results["all_nodata_bands"].append(b - 1)
            else:
                rec["mean"] = float(valid.mean())
                rec["std"] = float(valid.std())
                rec["min_val"] = float(valid.min())
                rec["max_val"] = float(valid.max())
                rec["zero_frac"] = float((valid == 0).sum() / n_valid)
                rec["all_zero"] = bool(valid.max() == 0 and valid.min() == 0)

                if rec["all_zero"]:
                    results["all_zero_bands"].append(b - 1)
                elif rec["zero_frac"] > 0.5 or rec["std"] < 1e-10:
                    results["suspicious_bands"].append(b - 1)

            results["per_band"].append(rec)

    return results


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 6. Plotting                                                            ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def _wavelength_axis(wl_list: list[float | None], n_bands: int) -> tuple[np.ndarray, str]:
    """Build x-axis: wavelength if available, else band index."""
    if all(w is not None for w in wl_list):
        return np.array(wl_list), "Wavelength (nm)"
    return np.arange(n_bands), "Band index"


def plot_spectral_profiles(agg: dict, title_prefix: str = "", save_path: str | None = None):
    """Plot 1: Mean spectral profile ± std across all tiles, with zero-band flags."""
    n_bands = agg["n_bands"]
    x, xlabel = _wavelength_axis(agg["wavelengths_nm"], n_bands)
    mean = agg["mean_of_means"]
    std = agg["std_of_means"]
    gmin = agg["global_min"]
    gmax = agg["global_max"]

    fig, axes = plt.subplots(3, 1, figsize=(14, 12), sharex=True)

    # Panel 1: Mean ± std
    ax = axes[0]
    ax.fill_between(x, mean - std, mean + std, alpha=0.3, color="steelblue", label="±1 std across tiles")
    ax.plot(x, mean, "o-", ms=3, color="steelblue", label="Mean reflectance")
    # Highlight zero bands
    zero_mask = agg["frac_tiles_all_zero"] > 0
    if zero_mask.any():
        ax.scatter(x[zero_mask], mean[zero_mask], c="red", s=80, zorder=5,
                   marker="x", linewidths=2, label=f"All-zero in ≥1 tile ({zero_mask.sum()} bands)")
    ax.set_ylabel("Reflectance (uint16 scaled)")
    ax.set_title(f"{title_prefix}Mean Spectral Profile Across {agg['n_tiles']} Tiles")
    ax.legend(fontsize=9)
    ax.grid(True, alpha=0.3)

    # Panel 2: Min/Max envelope
    ax = axes[1]
    ax.fill_between(x, gmin, gmax, alpha=0.3, color="orange", label="Global min–max range")
    ax.plot(x, gmin, "-", ms=2, color="darkorange", alpha=0.7, label="Global min")
    ax.plot(x, gmax, "-", ms=2, color="red", alpha=0.7, label="Global max")
    if zero_mask.any():
        ax.scatter(x[zero_mask], gmax[zero_mask], c="red", s=80, zorder=5,
                   marker="x", linewidths=2)
    ax.set_ylabel("Reflectance (uint16 scaled)")
    ax.set_title(f"{title_prefix}Global Min/Max Envelope")
    ax.legend(fontsize=9)
    ax.grid(True, alpha=0.3)

    # Panel 3: Fraction of tiles where band is all-zero
    ax = axes[2]
    colors = ["red" if f > 0 else "steelblue" for f in agg["frac_tiles_all_zero"]]
    ax.bar(x, agg["frac_tiles_all_zero"] * 100, color=colors, width=np.diff(x).min() * 0.8 if len(x) > 1 else 1)
    ax.set_ylabel("% tiles all-zero")
    ax.set_xlabel(xlabel)
    ax.set_title(f"{title_prefix}Fraction of Tiles with All-Zero Band")
    ax.set_ylim(0, max(105, agg["frac_tiles_all_zero"].max() * 110))
    ax.grid(True, alpha=0.3)

    plt.tight_layout()
    if save_path:
        plt.savefig(save_path, dpi=150, bbox_inches="tight")
    plt.show()


def plot_band_heatmap(agg: dict, title_prefix: str = "", save_path: str | None = None):
    """Plot 2: Heatmap of band means across tiles (tiles × bands)."""
    all_means = agg["all_means"]  # (n_tiles, n_bands)
    n_tiles, n_bands = all_means.shape
    wl = agg["wavelengths_nm"]

    fig, axes = plt.subplots(2, 1, figsize=(14, 8), gridspec_kw={"height_ratios": [3, 1]})

    # Heatmap
    ax = axes[0]
    vmin = np.percentile(all_means[all_means > 0], 1) if (all_means > 0).any() else 0.1
    vmax = np.percentile(all_means, 99) if all_means.max() > 0 else 1
    im = ax.imshow(
        all_means,
        aspect="auto",
        interpolation="nearest",
        cmap="viridis",
        vmin=max(vmin, 0.1),
        vmax=vmax,
    )
    ax.set_ylabel("Tile index")
    ax.set_xlabel("Band index")
    ax.set_title(f"{title_prefix}Band Mean Reflectance Heatmap (tiles × bands)")
    cbar = fig.colorbar(im, ax=ax, shrink=0.8)
    cbar.set_label("Mean reflectance (uint16)")

    # Mark zero columns
    zero_cols = np.where(agg["frac_tiles_all_zero"] == 1.0)[0]
    for c in zero_cols:
        ax.axvline(c, color="red", linewidth=1, linestyle="--", alpha=0.7)

    # Band labels
    if all(w is not None for w in wl):
        tick_step = max(1, n_bands // 15)
        ticks = np.arange(0, n_bands, tick_step)
        ax.set_xticks(ticks)
        ax.set_xticklabels([f"{wl[i]:.0f}" for i in ticks], rotation=45, fontsize=8)
        ax.set_xlabel("Wavelength (nm)")

    # All-zero flag per band (binary strip)
    ax2 = axes[1]
    zero_matrix = agg["all_zero_flags"].astype(float)  # (n_tiles, n_bands)
    ax2.imshow(zero_matrix, aspect="auto", cmap="Reds", interpolation="nearest", vmin=0, vmax=1)
    ax2.set_ylabel("Tile")
    ax2.set_xlabel("Band index")
    ax2.set_title(f"{title_prefix}All-Zero Flag per Tile × Band (red = all zero)")

    plt.tight_layout()
    if save_path:
        plt.savefig(save_path, dpi=150, bbox_inches="tight")
    plt.show()


def plot_zero_band_deep_dive(
    agg: dict,
    tile_paths: list[Path],
    nodata_val: float | None = 65535.0,
    title_prefix: str = "",
    save_path: str | None = None,
):
    """Plot 3: Deep-dive into the zero bands — spatial patterns & neighboring bands."""
    zero_band_indices = np.where(agg["frac_tiles_all_zero"] > 0)[0]

    if len(zero_band_indices) == 0:
        print(f"{title_prefix}No all-zero bands detected. Skipping deep-dive.")
        return

    # Pick one representative tile (first one)
    tp = tile_paths[0]
    arr = _read_tile_array(tp)
    wl = agg["wavelengths_nm"]
    n_bands = arr.shape[0]

    n_zero = len(zero_band_indices)
    n_cols = min(4, n_zero + 2)  # show zero bands + 1 neighbor on each side
    fig, axes = plt.subplots(2, n_cols, figsize=(3.5 * n_cols, 7))
    if n_cols == 1:
        axes = axes.reshape(2, 1)

    fig.suptitle(f"{title_prefix}Zero-Band Deep Dive (tile: {tp.name})", fontsize=13, y=1.02)

    # Row 1: spatial maps of zero bands and neighbors
    bands_to_show = set()
    for zi in zero_band_indices[:n_cols]:
        bands_to_show.add(zi)
        if zi > 0:
            bands_to_show.add(zi - 1)
        if zi < n_bands - 1:
            bands_to_show.add(zi + 1)

    bands_to_show = sorted(bands_to_show)[:n_cols]

    for col, bi in enumerate(bands_to_show):
        band_data = arr[bi]
        if nodata_val is not None:
            band_data = np.where(band_data == nodata_val, np.nan, band_data)

        is_zero = bi in zero_band_indices
        wl_str = f"{wl[bi]:.1f} nm" if wl[bi] is not None else f"idx {bi}"
        color = "red" if is_zero else "green"

        ax = axes[0, col]
        im = ax.imshow(band_data, cmap="viridis")
        ax.set_title(f"Band {bi}\n{wl_str}", fontsize=9, color=color, fontweight="bold")
        ax.axis("off")
        fig.colorbar(im, ax=ax, shrink=0.7)

        # Row 2: histogram
        ax2 = axes[1, col]
        valid = band_data[np.isfinite(band_data)].ravel()
        if len(valid) > 0 and valid.max() > valid.min():
            ax2.hist(valid, bins=50, color=color, alpha=0.7, edgecolor="black", linewidth=0.5)
            ax2.set_title(f"μ={valid.mean():.1f} σ={valid.std():.1f}", fontsize=8)
        else:
            ax2.text(0.5, 0.5, "ALL ZERO\nor constant", ha="center", va="center",
                     transform=ax2.transAxes, fontsize=10, color="red")
        ax2.set_xlabel("Value", fontsize=8)
        ax2.set_ylabel("Count", fontsize=8)

    # Hide unused axes
    for col in range(len(bands_to_show), n_cols):
        axes[0, col].axis("off")
        axes[1, col].axis("off")

    plt.tight_layout()
    if save_path:
        plt.savefig(save_path, dpi=150, bbox_inches="tight")
    plt.show()


def plot_cross_check_summary(cc: dict, title_prefix: str = "", save_path: str | None = None):
    """Plot 4: Cross-check summary — 285 vs 32 band correspondence."""
    z285 = cc["bands_285_all_zero"]
    z32 = cc["bands_32_all_zero"]
    idx_0b = cc["band_indices_0b"]
    wl = cc["wavelengths_nm"]

    fig, ax = plt.subplots(figsize=(14, 4))

    # Plot all 285 bands as small dots
    x_all = np.arange(285)
    colors_all = ["red" if i in z285 else "lightgrey" for i in range(285)]
    ax.scatter(x_all, np.zeros(285), c=colors_all, s=8, zorder=2, label="285 bands (red=zero)")

    # Overlay selected 32 bands
    for b32, src in enumerate(idx_0b):
        if src is None:
            continue
        is_zero_32 = b32 in z32
        is_zero_285 = src in z285
        color = "red" if is_zero_32 else ("orange" if is_zero_285 else "steelblue")
        marker = "X" if is_zero_32 else "o"
        wl_str = f"{wl[b32]:.0f}" if wl[b32] is not None else "?"
        ax.scatter(src, 0.5, c=color, s=60, marker=marker, zorder=5, edgecolors="black", linewidths=0.5)
        ax.annotate(f"b{b32}", (src, 0.5), fontsize=6, ha="center", va="bottom",
                    xytext=(0, 5), textcoords="offset points")

    # Mark atmospheric exclusion windows
    ax.axvspan(0, 285, ymin=0, ymax=1, alpha=0.02, color="grey")
    # Approximate atmospheric windows at typical EMIT wavelengths (~381-2493 nm, 285 bands)
    # 1350-1450nm ≈ bands 130-143, 1800-1950nm ≈ bands 190-210
    ax.axvspan(130, 143, alpha=0.15, color="salmon", label="Atmos. exclusion (~1350-1450nm)")
    ax.axvspan(190, 210, alpha=0.15, color="salmon", label="Atmos. exclusion (~1800-1950nm)")

    ax.set_xlabel("EMIT 285-band index")
    ax.set_yticks([0, 0.5])
    ax.set_yticklabels(["All 285", "Selected 32"])
    ax.set_title(f"{title_prefix}Band Selection Map: 285 → 32  "
                 f"(zero in 285: {len(z285)}, zero in 32: {len(z32)})")
    ax.legend(fontsize=8, loc="upper right")
    ax.grid(True, alpha=0.2, axis="x")

    # Diagnosis annotations
    for entry in cc.get("zero_source_in_285", []):
        cause = entry["cause"]
        b285 = entry["b285_index"]
        b32 = entry["b32_index"]
        wl_val = entry.get("wavelength_nm")
        label = f"b32={b32} ← b285={b285}"
        if wl_val:
            label += f" ({wl_val:.0f}nm)"
        label += f"\n→ {cause}"
        ax.annotate(label, (b285, 0.5), fontsize=7, ha="center", va="top",
                    xytext=(0, -15), textcoords="offset points",
                    color="red" if cause == "PIPELINE_BUG" else "darkorange",
                    fontweight="bold",
                    arrowprops=dict(arrowstyle="->", color="red", lw=0.8))

    plt.tight_layout()
    if save_path:
        plt.savefig(save_path, dpi=150, bbox_inches="tight")
    plt.show()


def plot_atmospheric_context(
    wl_full_285: np.ndarray | None = None,
    selected_indices: np.ndarray | None = None,
    agg_32: dict | None = None,
    title_prefix: str = "",
    save_path: str | None = None,
):
    """Plot 5: Band selection in wavelength context, showing atmospheric windows."""
    if wl_full_285 is None and agg_32 is None:
        print("Need either wl_full_285 or agg_32 to plot atmospheric context.")
        return

    fig, ax = plt.subplots(figsize=(16, 5))

    # Atmospheric exclusion zones
    atmos_zones = [(1350, 1450, "H₂O"), (1800, 1950, "H₂O")]
    for lo, hi, label in atmos_zones:
        ax.axvspan(lo, hi, alpha=0.2, color="salmon", zorder=1)
        ax.text((lo + hi) / 2, 0.95, label, ha="center", va="top",
                transform=ax.get_xaxis_transform(), fontsize=9, color="red")

    if wl_full_285 is not None:
        # Show all 285 wavelengths
        ax.scatter(wl_full_285, np.ones(len(wl_full_285)) * 0.2, c="lightgrey",
                   s=10, zorder=2, label="All 285 EMIT bands")

        if selected_indices is not None:
            sel_wl = wl_full_285[selected_indices]
            ax.scatter(sel_wl, np.ones(len(sel_wl)) * 0.5, c="steelblue",
                       s=40, zorder=3, edgecolors="navy", linewidths=0.5,
                       label=f"Selected {len(selected_indices)} bands")

    # If we have 32-band stats, show which are zero
    if agg_32 is not None:
        wl_32 = agg_32["wavelengths_nm"]
        zero_mask = agg_32["frac_tiles_all_zero"] > 0
        if all(w is not None for w in wl_32):
            wl_arr = np.array(wl_32)
            ax.scatter(wl_arr[~zero_mask], np.ones((~zero_mask).sum()) * 0.8,
                       c="green", s=50, zorder=4, marker="^", label="32-band: OK")
            if zero_mask.any():
                ax.scatter(wl_arr[zero_mask], np.ones(zero_mask.sum()) * 0.8,
                           c="red", s=100, zorder=5, marker="X", linewidths=2,
                           label=f"32-band: ALL ZERO ({zero_mask.sum()} bands)")

    # S2 band positions
    s2_bands = {
        "B02": 490, "B03": 560, "B04": 665, "B05": 705,
        "B06": 740, "B07": 783, "B08": 842, "B8A": 865,
        "B11": 1610, "B12": 2190,
    }
    for name, wl_val in s2_bands.items():
        ax.axvline(wl_val, color="grey", linestyle=":", alpha=0.4, zorder=1)
        ax.text(wl_val, 1.02, name, ha="center", fontsize=7, rotation=45,
                transform=ax.get_xaxis_transform(), color="grey")

    ax.set_xlim(350, 2550)
    ax.set_xlabel("Wavelength (nm)")
    ax.set_yticks([0.2, 0.5, 0.8])
    ax.set_yticklabels(["All 285", "Selected", "32-band check"])
    ax.set_title(f"{title_prefix}Spectral Band Selection & Zero-Band Map")
    ax.legend(fontsize=8, loc="lower right")
    ax.grid(True, alpha=0.2, axis="x")

    plt.tight_layout()
    if save_path:
        plt.savefig(save_path, dpi=150, bbox_inches="tight")
    plt.show()


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 7. Text report                                                        ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def print_diagnosis_report(
    agg_285: dict | None,
    agg_32: dict | None,
    cc: dict | None = None,
    source_diag: dict | None = None,
):
    """Print a structured text report summarizing all findings."""
    sep = "=" * 72

    print(f"\n{sep}")
    print("  SPECTRAL DIAGNOSIS REPORT")
    print(sep)

    # ── Source raster ──
    if source_diag:
        print(f"\n▸ SOURCE RASTER: {source_diag['path']}")
        print(f"  Shape: {source_diag['shape']}")
        print(f"  Nodata: {source_diag['nodata']}")
        z = source_diag["all_zero_bands"]
        nd = source_diag["all_nodata_bands"]
        sus = source_diag["suspicious_bands"]
        print(f"  All-zero bands (0-based):   {z if z else 'None'}")
        print(f"  All-nodata bands (0-based):  {nd if nd else 'None'}")
        print(f"  Suspicious bands (0-based): {sus if sus else 'None'}")

        if z:
            print(f"\n  ⚠  {len(z)} bands are ALL ZERO in the source raster!")
            print(f"     Indices: {z}")
            print("     → This is a DATA issue, not a pipeline bug.")

    # ── 285-band tiles ──
    if agg_285:
        print(f"\n{'─' * 72}")
        print(f"▸ 285-BAND TILES ({agg_285['n_tiles']} tiles, {agg_285['n_bands']} bands)")
        n_zero_bands = (agg_285["frac_tiles_all_zero"] > 0).sum()
        n_always_zero = (agg_285["frac_tiles_all_zero"] == 1.0).sum()
        print(f"  Bands with ≥1 all-zero tile:  {n_zero_bands}")
        print(f"  Bands ALWAYS zero (all tiles): {n_always_zero}")
        if n_always_zero > 0:
            always_zero_idx = np.where(agg_285["frac_tiles_all_zero"] == 1.0)[0]
            wl = agg_285["wavelengths_nm"]
            for idx in always_zero_idx:
                wl_str = f"{wl[idx]:.1f} nm" if wl[idx] else "unknown"
                print(f"    Band {idx:3d} — {wl_str}")

    # ── 32-band tiles ──
    if agg_32:
        print(f"\n{'─' * 72}")
        print(f"▸ 32-BAND TILES ({agg_32['n_tiles']} tiles, {agg_32['n_bands']} bands)")
        n_zero_bands = (agg_32["frac_tiles_all_zero"] > 0).sum()
        n_always_zero = (agg_32["frac_tiles_all_zero"] == 1.0).sum()
        print(f"  Bands with ≥1 all-zero tile:  {n_zero_bands}")
        print(f"  Bands ALWAYS zero (all tiles): {n_always_zero}")
        if n_always_zero > 0:
            always_zero_idx = np.where(agg_32["frac_tiles_all_zero"] == 1.0)[0]
            wl = agg_32["wavelengths_nm"]
            idx_0b = agg_32["band_indices_0b"]
            for idx in always_zero_idx:
                wl_str = f"{wl[idx]:.1f} nm" if wl[idx] else "unknown"
                src_str = f"(src band {idx_0b[idx]})" if idx_0b[idx] is not None else ""
                print(f"    Band {idx:3d} — {wl_str} {src_str}")

    # ── Cross-check ──
    if cc:
        print(f"\n{'─' * 72}")
        print("▸ CROSS-CHECK: 285 → 32 BAND CORRESPONDENCE")
        print(f"  Zero bands in 285-source: {len(cc['bands_285_all_zero'])}")
        print(f"  Zero bands in 32-subset:  {len(cc['bands_32_all_zero'])}")
        print(f"  Value mismatches:         {len(cc['mismatch_bands'])}")

        for entry in cc.get("zero_source_in_285", []):
            cause = entry["cause"]
            b32 = entry["b32_index"]
            b285 = entry["b285_index"]
            wl_val = entry.get("wavelength_nm", "?")
            if cause == "SOURCE_ZERO":
                print(f"  ✓ b32[{b32}] ← b285[{b285}] ({wl_val} nm): "
                      f"zero because SOURCE band is zero (DATA issue)")
            else:
                print(f"  ✗ b32[{b32}] ← b285[{b285}] ({wl_val} nm): "
                      f"PIPELINE BUG — source is NOT zero but tile IS!")

        if cc["mismatch_bands"]:
            print("\n  Value mismatches:")
            for m in cc["mismatch_bands"]:
                print(f"    b32[{m['b32']}]: {m.get('reason', '?')} "
                      f"(max_diff={m.get('max_diff', '?')})")

    # ── Verdict ──
    print(f"\n{sep}")
    print("  VERDICT")
    print(sep)

    has_pipeline_bug = False
    if cc:
        for entry in cc.get("zero_source_in_285", []):
            if entry["cause"] == "PIPELINE_BUG":
                has_pipeline_bug = True
                break

    if has_pipeline_bug:
        print("  🔴 PIPELINE BUG DETECTED")
        print("     Some 32-band tiles have zero bands whose 285-band source is NOT zero.")
        print("     Check write_emit_b32_tile() band indexing and rasterio read calls.")
    elif cc and cc["bands_32_all_zero"]:
        all_from_source = all(
            entry["cause"] == "SOURCE_ZERO"
            for entry in cc.get("zero_source_in_285", [])
        )
        if all_from_source:
            print("  🟡 DATA ISSUE (not a pipeline bug)")
            print("     The zero bands in the 32-band tiles trace back to zero bands in the")
            print("     original 285-band source. These bands likely have no valid data in the")
            print("     EMIT L2A product (e.g., noisy/uncalibrated detector rows).")
            print("     Consider excluding them in select_emit_bands() via exclude_ranges_nm.")
        else:
            print("  🟠 MIXED — some zero bands from source, some unexplained.")
    else:
        print("  🟢 No zero-band issues detected.")

    print(f"{sep}\n")


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║ 8. Main entry point                                                    ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def run_spectral_diagnosis(
    tile_dir: str | Path,
    *,
    wl_nm: np.ndarray | None = None,
    emit_source_path: str | Path | None = None,
    max_tiles: int | None = None,
    nodata_u16: float = 65535.0,
    save_dir: str | Path | None = None,
) -> dict:
    """Run the full spectral diagnosis pipeline.

    Parameters
    ----------
    tile_dir : path
        Directory containing *_emit.tif and *_emit_b32.tif tiles.
    wl_nm : ndarray, optional
        Full 285-band wavelength array. If None, reads from tile tags.
    emit_source_path : path, optional
        Path to the full-scene EMIT ENVI/GeoTIFF for source-level checks.
    max_tiles : int, optional
        Limit number of tiles to analyze (for speed).
    nodata_u16 : float
        Nodata value for uint16 tiles (default 65535).
    save_dir : path, optional
        Directory to save plot PNGs. If None, plots are only shown.

    Returns
    -------
    dict with keys: agg_285, agg_32, cross_check, source_diag, verdict
    """
    tile_dir = Path(tile_dir)
    if save_dir:
        save_dir = Path(save_dir)
        save_dir.mkdir(parents=True, exist_ok=True)

    # ── Collect tiles ──
    tiles_285 = _collect_tiles(tile_dir, "_emit.tif")
    # Exclude _b32 files from the 285 list
    tiles_285 = [t for t in tiles_285 if "_b32" not in t.stem and "_b" not in t.stem.split("emit")[-1]]
    tiles_32 = _collect_tiles(tile_dir, "_emit_b32.tif")

    print(f"Found {len(tiles_285)} full-band tiles, {len(tiles_32)} 32-band tiles in {tile_dir}")

    results = {
        "agg_285": None,
        "agg_32": None,
        "cross_check": None,
        "source_diag": None,
    }

    # ── Source-level diagnosis ──
    if emit_source_path:
        print("\n━━━ Source Raster Diagnosis ━━━")
        results["source_diag"] = diagnose_source_raster(emit_source_path)

    # ── 285-band analysis ──
    if tiles_285:
        print(f"\n━━━ 285-Band Tile Analysis ({len(tiles_285)} tiles) ━━━")
        agg_285 = aggregate_tile_stats(tiles_285, nodata_val=nodata_u16, max_tiles=max_tiles)
        results["agg_285"] = agg_285

        sp = str(save_dir / "spectral_profiles_285.png") if save_dir else None
        plot_spectral_profiles(agg_285, title_prefix="[285-band] ", save_path=sp)

        sp = str(save_dir / "band_heatmap_285.png") if save_dir else None
        plot_band_heatmap(agg_285, title_prefix="[285-band] ", save_path=sp)

        sp = str(save_dir / "zero_deepdive_285.png") if save_dir else None
        plot_zero_band_deep_dive(agg_285, tiles_285, nodata_val=nodata_u16,
                                 title_prefix="[285-band] ", save_path=sp)

    # ── 32-band analysis ──
    if tiles_32:
        print(f"\n━━━ 32-Band Tile Analysis ({len(tiles_32)} tiles) ━━━")
        agg_32 = aggregate_tile_stats(tiles_32, nodata_val=nodata_u16, max_tiles=max_tiles)
        results["agg_32"] = agg_32

        sp = str(save_dir / "spectral_profiles_32.png") if save_dir else None
        plot_spectral_profiles(agg_32, title_prefix="[32-band] ", save_path=sp)

        sp = str(save_dir / "band_heatmap_32.png") if save_dir else None
        plot_band_heatmap(agg_32, title_prefix="[32-band] ", save_path=sp)

        sp = str(save_dir / "zero_deepdive_32.png") if save_dir else None
        plot_zero_band_deep_dive(agg_32, tiles_32, nodata_val=nodata_u16,
                                 title_prefix="[32-band] ", save_path=sp)

    # ── Cross-check 285 vs 32 ──
    if tiles_285 and tiles_32:
        # Find matching pairs
        for t32 in tiles_32[:1]:  # check first pair
            stem_32 = t32.stem.replace("_b32", "")
            matching_285 = [t for t in tiles_285 if t.stem == stem_32]
            if matching_285:
                print(f"\n━━━ Cross-Check: {matching_285[0].name} ↔ {t32.name} ━━━")
                cc = cross_check_285_vs_32(matching_285[0], t32, nodata_u16=int(nodata_u16))
                results["cross_check"] = cc

                sp = str(save_dir / "cross_check_285_vs_32.png") if save_dir else None
                plot_cross_check_summary(cc, save_path=sp)

    # ── Atmospheric context plot ──
    agg_for_atmos = results.get("agg_32") or results.get("agg_285")
    if agg_for_atmos:
        sp = str(save_dir / "atmospheric_context.png") if save_dir else None
        plot_atmospheric_context(
            wl_full_285=wl_nm,
            agg_32=results.get("agg_32"),
            title_prefix="",
            save_path=sp,
        )

    # ── Text report ──
    print_diagnosis_report(
        results.get("agg_285"),
        results.get("agg_32"),
        results.get("cross_check"),
        results.get("source_diag"),
    )

    return results
