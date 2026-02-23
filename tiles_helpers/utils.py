"""
tiles_helpers/utils.py
----------------------
Utilities for cutting aligned EMIT/S2 image pairs into training tiles,
visualising them, and writing per-tile outputs.

Public API
----------
find_valid_paired_tiles  – scan an aligned pair and list non-black tile windows
save_tile_pair           – write a single (EMIT, S2) tile pair as GeoTIFFs
write_emit_b32_tile      – subsample an EMIT tile to 32 evenly-spaced bands
plot_tile_pair_simple    – side-by-side RGB visualisation of one tile pair
"""

from __future__ import annotations

from pathlib import Path
from typing import Optional

import numpy as np
import rasterio
from rasterio.windows import Window
from rasterio.transform import from_bounds
import matplotlib.pyplot as plt

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_utils import closest_bands


# ---------------------------------------------------------------------------
# Tile discovery
# ---------------------------------------------------------------------------

def find_valid_paired_tiles(
    emit_path: str | Path,
    s2_path: str | Path,
    emit_tile_size: int = 100,
    scale: int = 6,
    max_black_frac: float = 0.0,
) -> list[dict]:
    """Find all non-black tile windows across an aligned EMIT/S2 pair.

    Tiles are non-overlapping patches of ``emit_tile_size × emit_tile_size``
    EMIT pixels (corresponding to ``emit_tile_size*scale × emit_tile_size*scale``
    S2 pixels at the given scale factor).

    Args:
        emit_path:      Path to orthorectified EMIT raster (ENVI or GeoTIFF).
        s2_path:        Path to co-registered S2 GeoTIFF.
        emit_tile_size: Tile edge length in EMIT pixels.
        scale:          Integer S2/EMIT resolution ratio (typically 6 for
                        60m EMIT vs 10m S2).
        max_black_frac: Maximum allowed fraction of zero/nodata pixels in
                        *either* sensor before a tile is rejected.

    Returns:
        List of dicts, each with keys:
        ``idx``, ``emit_window``, ``s2_window``,
        ``emit_black_frac``, ``s2_black_frac``.
    """
    emit_path = str(emit_path)
    s2_path   = str(s2_path)
    s2_tile   = emit_tile_size * scale

    valid: list[dict] = []
    idx = 0

    with rasterio.open(emit_path) as emit_ds, rasterio.open(s2_path) as s2_ds:
        emit_h, emit_w = emit_ds.height, emit_ds.width
        emit_nodata = emit_ds.nodata

        for row in range(0, emit_h - emit_tile_size + 1, emit_tile_size):
            for col in range(0, emit_w - emit_tile_size + 1, emit_tile_size):

                emit_win = Window(col, row, emit_tile_size, emit_tile_size)
                s2_win   = Window(col * scale, row * scale, s2_tile, s2_tile)

                # ── EMIT black fraction (read representative band) ──────
                emit_band = emit_ds.read(1, window=emit_win).astype(np.float32)
                if emit_nodata is not None:
                    emit_black = float(np.mean(emit_band == emit_nodata))
                else:
                    emit_black = float(np.mean(emit_band == 0))

                if emit_black > max_black_frac:
                    idx += 1
                    continue

                # ── S2 black fraction ───────────────────────────────────
                s2_band = s2_ds.read(1, window=s2_win).astype(np.float32)
                s2_nodata = s2_ds.nodata
                if s2_nodata is not None:
                    s2_black = float(np.mean(s2_band == s2_nodata))
                else:
                    s2_black = float(np.mean(s2_band == 0))

                if s2_black > max_black_frac:
                    idx += 1
                    continue

                valid.append({
                    "idx": idx,
                    "emit_window": emit_win,
                    "s2_window":   s2_win,
                    "emit_black_frac": emit_black,
                    "s2_black_frac":   s2_black,
                })
                idx += 1

    return valid


# ---------------------------------------------------------------------------
# Tile saving
# ---------------------------------------------------------------------------

def save_tile_pair(
    emit_path: str | Path,
    s2_path: str | Path,
    tile_info: dict,
    out_dir: str | Path,
) -> tuple[Path, Path]:
    """Write one EMIT/S2 tile pair as GeoTIFFs.

    Each output file preserves the spatial reference (CRS + geotransform) of
    the corresponding window within the source raster.

    Args:
        emit_path: Source EMIT raster.
        s2_path:   Source S2 raster.
        tile_info: Dict returned by :func:`find_valid_paired_tiles`.
        out_dir:   Directory where tile files are written.

    Returns:
        ``(emit_tile_path, s2_tile_path)`` as :class:`pathlib.Path` objects.
    """
    out_dir  = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    k        = int(tile_info["idx"])
    emit_win = tile_info["emit_window"]
    s2_win   = tile_info["s2_window"]

    emit_out = out_dir / f"tile_{k:03d}_emit.tif"
    s2_out   = out_dir / f"tile_{k:03d}_s2.tif"

    for src_path, win, dst_path in (
        (emit_path, emit_win, emit_out),
        (s2_path,   s2_win,   s2_out),
    ):
        with rasterio.open(src_path) as src:
            data     = src.read(window=win)
            win_tf   = src.window_transform(win)
            profile  = src.profile.copy()
            profile.update(
                height=win.height,
                width=win.width,
                transform=win_tf,
                driver="GTiff",
                compress="DEFLATE",
                predictor=2,
                tiled=True,
                BIGTIFF="IF_SAFER",
            )
            # Remove ENVI-specific keys that GeoTIFF doesn't accept
            for key in ("interleave",):
                profile.pop(key, None)

        with rasterio.open(dst_path, "w", **profile) as dst:
            dst.write(data)
            # Preserve band descriptions if present
            with rasterio.open(src_path) as src:
                descs = src.descriptions
            if descs and any(d for d in descs):
                for i, d in enumerate(descs, start=1):
                    if d:
                        dst.set_band_description(i, d)

    return emit_out, s2_out


# ---------------------------------------------------------------------------
# 32-band EMIT subset
# ---------------------------------------------------------------------------

def write_emit_b32_tile(
    emit_tif_path: str | Path,
    *,
    num_keep: int = 32,
    idx_0based: Optional[np.ndarray] = None,
    overwrite: bool = False,
) -> tuple[Path, np.ndarray]:
    """Write a subset of *num_keep* evenly-spaced EMIT bands as a new GeoTIFF.

    The output file is written next to the input with a ``_b32`` suffix
    (or ``_b{num_keep}`` if *num_keep* ≠ 32).

    Args:
        emit_tif_path: Full-band EMIT tile GeoTIFF.
        num_keep:      Number of bands to keep (default 32).
        idx_0based:    Pre-computed 0-based band indices to reuse across tiles.
                       If *None*, indices are computed from the band count.
        overwrite:     If *False* and the output already exists, return
                       immediately without re-writing.

    Returns:
        ``(output_path, indices_array)`` where *indices_array* is a 1-D int
        array of 0-based band indices (suitable for re-use on subsequent tiles).
    """
    src_path = Path(emit_tif_path)
    suffix   = f"_b{num_keep}" if num_keep != 32 else "_b32"
    dst_path = src_path.with_name(src_path.stem + suffix + ".tif")

    with rasterio.open(src_path) as src:
        n_bands = src.count

        if idx_0based is None:
            idx_0based = np.round(
                np.linspace(0, n_bands - 1, num_keep)
            ).astype(int)

        if not overwrite and dst_path.exists():
            return dst_path, idx_0based

        # 1-based for rasterio
        band_indices_1b = [int(i) + 1 for i in idx_0based]
        data = src.read(band_indices_1b)

        profile = src.profile.copy()
        profile.update(
            count=num_keep,
            driver="GTiff",
            compress="DEFLATE",
            predictor=2,
            tiled=True,
            BIGTIFF="IF_SAFER",
        )
        for key in ("interleave",):
            profile.pop(key, None)

        descs = src.descriptions

    with rasterio.open(dst_path, "w", **profile) as dst:
        dst.write(data)
        if descs and any(d for d in descs):
            for out_i, src_i_0b in enumerate(idx_0based, start=1):
                d = descs[int(src_i_0b)]
                if d:
                    dst.set_band_description(out_i, d)

    return dst_path, idx_0based


# ---------------------------------------------------------------------------
# Visualisation
# ---------------------------------------------------------------------------

def plot_tile_pair_simple(
    emit_tile_path: str | Path,
    s2_tile_path: str | Path,
    *,
    title_suffix: str = "",
    save_path: Optional[str | Path] = None,
    show: bool = True,
    emit_wavelengths_nm: Optional[np.ndarray] = None,
    targets_nm: tuple[float, float, float] = (630.0, 532.0, 465.0),
    percentile: tuple[float, float] = (2.0, 98.0),
    gamma: float = 1 / 2.2,
) -> None:
    """Show EMIT and S2 tiles side-by-side as true-colour RGB images.

    Args:
        emit_tile_path:     EMIT tile GeoTIFF (all bands).
        s2_tile_path:       S2 tile GeoTIFF.
        title_suffix:       Appended to subplot titles (e.g. tile index).
        save_path:          If given, save the figure to this path.
        show:               Call ``plt.show()`` after plotting.
        emit_wavelengths_nm: EMIT wavelength array.  Used to pick the three
                             closest bands to *targets_nm*.
        targets_nm:         Target RGB wavelengths for EMIT (R, G, B).
        percentile:         Low/high percentile for contrast stretching.
        gamma:              Display gamma correction.
    """
    def _stretch(arr: np.ndarray, p_lo: float, p_hi: float) -> np.ndarray:
        arr = arr.astype(np.float32, copy=False)
        out = np.zeros_like(arr)
        if arr.ndim == 3:
            for c in range(arr.shape[2]):
                ch = arr[..., c]
                fin = np.isfinite(ch)
                if not fin.any():
                    continue
                lo, hi = np.percentile(ch[fin], (p_lo, p_hi))
                if hi > lo:
                    out[..., c] = np.clip((ch - lo) / (hi - lo), 0, 1)
        else:
            fin = np.isfinite(arr)
            if fin.any():
                lo, hi = np.percentile(arr[fin], (p_lo, p_hi))
                if hi > lo:
                    out = np.clip((arr - lo) / (hi - lo), 0, 1)
        return out

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

    # ── Sentinel-2 ────────────────────────────────────────────────────────
    with rasterio.open(s2_tile_path) as s2:
        desc = list(s2.descriptions or [])

        def _find_band(keywords):
            for bi, d in enumerate(desc, start=1):
                if d and all(k in d.lower() for k in keywords):
                    return bi
            return None

        b_r = _find_band(["b04"]) or _find_band(["red"])
        b_g = _find_band(["b03"]) or _find_band(["green"])
        b_b = _find_band(["b02"]) or _find_band(["blue"])

        if b_r and b_g and b_b:
            s2_rgb = np.moveaxis(
                s2.read([b_r, b_g, b_b]).astype(np.float32), 0, -1
            )
            if np.nanmax(s2_rgb) > 1.5:
                s2_rgb /= 10000.0
        else:
            # fallback: use first three bands
            bands = min(3, s2.count)
            s2_rgb = np.moveaxis(
                s2.read(list(range(1, bands + 1))).astype(np.float32), 0, -1
            )

    s2_rgb = _stretch(s2_rgb, *percentile) ** gamma
    ax1.imshow(np.clip(s2_rgb, 0, 1))
    ax1.set_title(f"S2  {title_suffix}")
    ax1.axis("off")

    # ── EMIT ──────────────────────────────────────────────────────────────
    with rasterio.open(emit_tile_path) as emit:
        if emit_wavelengths_nm is not None:
            wl = np.atleast_1d(np.asarray(emit_wavelengths_nm, dtype=np.float64))
            idxs, picked = closest_bands(wl, list(targets_nm), verbose=False)
            R = emit.read(idxs[0] + 1).astype(np.float32)
            G = emit.read(idxs[1] + 1).astype(np.float32)
            B = emit.read(idxs[2] + 1).astype(np.float32)
            title_wl = (
                f"EMIT ~{picked[0]:.0f}/{picked[1]:.0f}/{picked[2]:.0f} nm"
            )
        else:
            n = emit.count
            ri = max(0, n // 3 * 2)
            gi = max(0, n // 2)
            bi = max(0, n // 6)
            R = emit.read(ri + 1).astype(np.float32)
            G = emit.read(gi + 1).astype(np.float32)
            B = emit.read(bi + 1).astype(np.float32)
            title_wl = "EMIT (approx RGB)"

        nodata = emit.nodata
        for arr in (R, G, B):
            if nodata is not None:
                arr[arr == nodata] = np.nan

    emit_rgb = np.dstack([R, G, B])
    emit_rgb = _stretch(emit_rgb, *percentile) ** gamma
    ax2.imshow(np.clip(emit_rgb, 0, 1))
    ax2.set_title(f"{title_wl}  {title_suffix}")
    ax2.axis("off")

    plt.tight_layout()
    if save_path is not None:
        Path(save_path).parent.mkdir(parents=True, exist_ok=True)
        plt.savefig(str(save_path), dpi=150, bbox_inches="tight")
    if show:
        plt.show()
    else:
        plt.close(fig)
