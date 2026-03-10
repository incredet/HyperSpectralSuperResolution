"""
tiles_helpers/utils.py
----------------------
Utilities for cutting aligned EMIT/S2 image pairs into training tiles,
visualising them, and writing per-tile outputs.

Public API
----------
find_valid_paired_tiles  - scan an aligned pair and list non-black tile windows
save_tile_pair           - write a single (EMIT, S2) tile pair as GeoTIFFs
write_emit_b32_tile      - subsample an EMIT tile to 32 evenly-spaced bands
plot_tile_pair_simple    - side-by-side RGB visualisation of one tile pair
"""

from __future__ import annotations

from pathlib import Path
from typing import Optional

import numpy as np
import rasterio
from rasterio.windows import Window
from rasterio.windows import transform as window_transform
from rasterio.transform import from_bounds
import matplotlib.pyplot as plt

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_utils import closest_bands, select_emit_bands


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
    emit_path,
    s2_path,
    tile_info,
    out_dir,
    *,
    pair_id: str = "",
    tiled=True,
    overwrite=True,
    emit_wavelengths_nm: Optional[np.ndarray] = None,
    emit_scale=10000.0,
    emit_nodata_u16=65535,
    compress="DEFLATE",
    zlevel=1,
    num_threads="ALL_CPUS",
) -> tuple[Path, Path]:
    """Write one EMIT/S2 tile pair as GeoTIFFs.

    The EMIT tile is saved as uint16 (scaled by *emit_scale*, nodata =
    *emit_nodata_u16*).  The S2 tile preserves its original dtype.

    When *pair_id* is provided, tile filenames include it as a prefix
    for multi-scene provenance (e.g. ``20230615T123456_T11SQA_20230615_tile003_emit.tif``).
    When empty, falls back to the original ``tile_003_emit.tif`` pattern.

    When *emit_wavelengths_nm* is provided (full 285-band array from the
    cached JSON), per-band ``wavelength`` and ``emit_band_index`` tags are
    merged with any existing source tags and written to the EMIT tile, making
    it self-describing for all downstream consumers (``write_emit_b32_tile``,
    ``fit_tile``, ``plot_spectral_match``).

    Args:
        emit_path:           Source EMIT raster.
        s2_path:             Source S2 raster.
        tile_info:           Dict returned by :func:`find_valid_paired_tiles`.
        out_dir:             Directory where tile files are written.
        pair_id:             Pair identifier prefix for filenames (default "").
        tiled:               Write tiled GeoTIFFs.
        overwrite:           Remove existing output files before writing.
        emit_wavelengths_nm: Full-spectrum wavelength array (all 285 EMIT
                             bands, nm).
        emit_scale:          Reflectance -> uint16 scale factor (default 10000).
        emit_nodata_u16:     uint16 nodata sentinel (default 65535).
        compress:            GDAL compression codec (default DEFLATE).
        zlevel:              Compression level (default 1 = fast).
        num_threads:         GDAL write threads (default ALL_CPUS).

    Returns:
        ``(emit_tile_path, s2_tile_path)`` as :class:`pathlib.Path` objects.
    """
    def _auto_block_size(width: int, height: int) -> int:
        m = min(width, height)
        if m >= 256:
            return 256
        if m >= 64:
            return 64
        return 16

    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    k = int(tile_info["idx"])

    prefix = f"{pair_id}_" if pair_id else ""
    emit_out = out_dir / f"{prefix}tile{k:03d}_emit.tif"
    s2_out   = out_dir / f"{prefix}tile{k:03d}_s2.tif"

    if overwrite:
        emit_out.unlink(missing_ok=True)
        s2_out.unlink(missing_ok=True)

    w_emit = tile_info["emit_window"]
    w_s2   = tile_info["s2_window"]

    wl_arr = np.asarray(emit_wavelengths_nm) if emit_wavelengths_nm is not None else None

    with rasterio.open(emit_path) as emit_ds, rasterio.open(s2_path) as s2_ds:
        emit_tile = emit_ds.read(window=w_emit)   # (bands, H, W)
        s2_tile   = s2_ds.read(window=w_s2)
        emit_desc = list(emit_ds.descriptions or [])
        s2_desc   = list(s2_ds.descriptions or [])

        if emit_tile.size == 0:
            raise ValueError(f"Empty EMIT tile idx={k}, window={w_emit}")
        if s2_tile.size == 0:
            raise ValueError(f"Empty S2 tile idx={k}, window={w_s2}")

        emit_transform = window_transform(w_emit, emit_ds.transform)
        s2_transform   = window_transform(w_s2,   s2_ds.transform)

        emit_ds_tags   = emit_ds.tags()
        emit_band_tags = [emit_ds.tags(i) for i in range(1, emit_ds.count + 1)]

        # Scale reflectance -> uint16
        emit  = emit_tile.astype(np.float32, copy=False)
        valid = np.isfinite(emit)
        if emit_ds.nodata is not None:
            valid &= (emit != emit_ds.nodata)
        scaled_i32 = np.rint(emit * float(emit_scale)).astype(np.int32, copy=False)
        scaled_i32 = np.clip(scaled_i32, 0, int(emit_nodata_u16) - 1)
        emit_u16   = np.full(emit.shape, int(emit_nodata_u16), dtype=np.uint16)
        emit_u16[valid] = scaled_i32[valid].astype(np.uint16, copy=False)

        eh, ew = emit_u16.shape[1], emit_u16.shape[2]
        sh, sw = s2_tile.shape[1],  s2_tile.shape[2]
        e_blk  = _auto_block_size(ew, eh)
        s_blk  = _auto_block_size(sw, sh)

        emit_profile = dict(
            driver="GTiff",
            height=eh, width=ew,
            count=emit_u16.shape[0],
            dtype="uint16",
            crs=emit_ds.crs,
            transform=emit_transform,
            nodata=int(emit_nodata_u16),
            compress=compress,
            predictor=2,
            ZLEVEL=int(zlevel),
            BIGTIFF="IF_SAFER",
            NUM_THREADS=str(num_threads),
            tiled=bool(tiled),
        )
        s2_is_int = np.issubdtype(s2_tile.dtype, np.integer)
        s2_profile = dict(
            driver="GTiff",
            height=sh, width=sw,
            count=s2_tile.shape[0],
            dtype=str(s2_tile.dtype),
            crs=s2_ds.crs,
            transform=s2_transform,
            nodata=s2_ds.nodata,
            compress=compress,
            predictor=2 if s2_is_int else 3,
            ZLEVEL=int(zlevel),
            BIGTIFF="IF_SAFER",
            NUM_THREADS=str(num_threads),
            tiled=bool(tiled),
        )
        if tiled:
            emit_profile.update(blockxsize=min(e_blk, ew), blockysize=min(e_blk, eh))
            s2_profile.update(blockxsize=min(s_blk, sw), blockysize=min(s_blk, sh))

        with rasterio.open(emit_out, "w", **emit_profile) as dst_e:
            dst_e.write(emit_u16)
            if emit_ds_tags:
                dst_e.update_tags(**emit_ds_tags)
            # Merge existing per-band source tags with wavelength/index tags
            for i in range(1, dst_e.count + 1):
                tags: dict[str, str] = dict(emit_band_tags[i - 1]) if emit_band_tags[i - 1] else {}
                tags["emit_band_index"] = str(i - 1)
                if wl_arr is not None:
                    tags["wavelength"] = f"{wl_arr[i - 1]:.4f}"
                dst_e.update_tags(i, **tags)
                d = emit_desc[i - 1] if (i - 1) < len(emit_desc) else None
                if d:
                    dst_e.set_band_description(i, d)

        with rasterio.open(s2_out, "w", **s2_profile) as dst_s:
            dst_s.write(s2_tile)
            for i in range(1, dst_s.count + 1):
                d = s2_desc[i - 1] if (i - 1) < len(s2_desc) else None
                if d:
                    dst_s.set_band_description(i, d)

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
    wavelengths_nm: Optional[np.ndarray] = None,
) -> tuple[Path, np.ndarray]:
    """Write a subset of *num_keep* EMIT bands as a new GeoTIFF.

    When *wavelengths_nm* is provided and *idx_0based* is ``None``, bands
    are selected using :func:`select_emit_bands` which guarantees that all
    10 Sentinel-2-corresponding bands are included and atmospheric
    absorption windows (1350–1450 nm, 1800–1950 nm) are avoided.  The
    remaining bands are distributed evenly across the valid spectral range.

    If *wavelengths_nm* is not available, falls back to evenly-spaced
    index selection via ``np.linspace``.

    The output file is written next to the input with a ``_b32`` suffix
    (or ``_b{num_keep}`` if *num_keep* ≠ 32).

    Per-band GeoTIFF tags ``wavelength`` and ``emit_band_index`` are written
    when *wavelengths_nm* is provided (pass the full 285-band array from the
    cached JSON; the correct values are selected automatically using
    *idx_0based*).  These tags are then read back by
    ``_read_emit_band_meta`` / ``fit_tile`` / ``plot_spectral_match`` with no
    extra arguments — the file is self-describing.

    Args:
        emit_tif_path:  Full-band EMIT tile GeoTIFF.
        num_keep:       Number of bands to keep (default 32).
        idx_0based:     Pre-computed 0-based band indices to reuse across
                        tiles.  If *None*, indices are computed automatically.
        overwrite:      If *False* and the output already exists, return
                        immediately without re-writing.
        wavelengths_nm: Full-spectrum wavelength array (all 285 EMIT bands,
                        nm).  Used both for smart band selection and for
                        embedding per-band ``wavelength`` GeoTIFF tags.

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
            if wavelengths_nm is not None:
                idx_0based = select_emit_bands(
                    wavelengths_nm, num_keep=num_keep,
                )
            else:
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

    wl_arr = np.asarray(wavelengths_nm) if wavelengths_nm is not None else None

    with rasterio.open(dst_path, "w", **profile) as dst:
        dst.write(data)
        for out_i, src_i_0b in enumerate(idx_0based, start=1):
            # Always write the source band index so the file is self-describing
            tags: dict[str, str] = {"emit_band_index": str(int(src_i_0b))}
            if wl_arr is not None:
                tags["wavelength"] = f"{wl_arr[int(src_i_0b)]:.4f}"
            dst.update_tags(out_i, **tags)
            # Preserve band description if present
            if descs and int(src_i_0b) < len(descs) and descs[int(src_i_0b)]:
                dst.set_band_description(out_i, descs[int(src_i_0b)])

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
