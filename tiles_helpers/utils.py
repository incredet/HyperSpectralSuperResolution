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
realign_s2_to_emit       - per-tile sub-pixel alignment via phase cross-correlation
"""

from __future__ import annotations

import math
from pathlib import Path
from typing import Optional
import warnings

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

def _pixel_offset(emit_tf, s2_tf) -> tuple[int, int]:
    """Compute the S2 pixel index of EMIT pixel (0, 0)'s upper-left corner.

    With ``align_grids=True`` in AROSICS the offsets should be exact
    integers.  A warning is emitted if the fractional part exceeds 0.1 px.

    Returns:
        ``(s2_row0, s2_col0)`` — S2 pixel indices for EMIT origin.
    """
    s2_dx = abs(float(s2_tf.a))
    s2_dy = abs(float(s2_tf.e))

    col_exact = (float(emit_tf.c) - float(s2_tf.c)) / s2_dx
    row_exact = (float(s2_tf.f) - float(emit_tf.f)) / s2_dy

    s2_col0 = round(col_exact)
    s2_row0 = round(row_exact)

    col_err = abs(col_exact - s2_col0)
    row_err = abs(row_exact - s2_row0)
    if col_err > 0.1 or row_err > 0.1:
        warnings.warn(
            f"EMIT/S2 pixel grids are misaligned by "
            f"({row_err:.3f}, {col_err:.3f}) S2 pixels. "
            f"Check align_grids in AROSICS."
        )

    return s2_row0, s2_col0


def find_valid_paired_tiles(
    emit_path: str | Path,
    s2_path: str | Path,
    emit_tile_size: int = 100,
    scale: int = 6,
    max_black_frac: float = 0.0,
    emit_check_bands: list[int] | np.ndarray | None = None,
) -> list[dict]:
    """Find valid tile positions across an EMIT / S2 pair.

    Unlike a simple grid starting at pixel (0, 0), this function:

    1. **Pixel correspondence via geotransforms** — computes the exact
       S2 pixel offset for each EMIT pixel using the raster transforms,
       so the two rasters need not share the same origin or extent.
    2. **Valid-data bbox** — reads one band from EMIT to find where data
       actually exists and restricts the search range accordingly.
    3. **Smart grid origin** — starts the tiling grid at the first valid
       row/col instead of (0, 0), maximising the number of fully-valid
       tiles and avoiding waste at nodata edges.

    The resulting ``s2_window`` in each tile dict uses the transform-
    derived offset, so downstream code (``save_tile_pair``) reads the
    correct S2 pixels regardless of whether the rasters were trimmed.

    Args:
        emit_path:      Path to orthorectified EMIT raster (ENVI or GeoTIFF).
        s2_path:        Path to co-registered S2 GeoTIFF.
        emit_tile_size: Tile edge length in EMIT pixels.
        scale:          Integer S2/EMIT resolution ratio (typically 6).
        max_black_frac: Maximum allowed nodata fraction per tile in
                        *either* sensor (default 0 = zero tolerance).
        emit_check_bands: Optional list of 1-based EMIT band indices to
                        check for nodata (e.g. the 32 bands used for SR).
                        If *None*, all bands are checked.  Checking only
                        the bands actually used avoids false rejections
                        from NaN in atmospheric absorption bands.

    Returns:
        List of dicts, each with keys ``idx``, ``emit_window``,
        ``s2_window``, ``emit_black_frac``, ``s2_black_frac``.
    """
    emit_path = str(emit_path)
    s2_path   = str(s2_path)
    s2_tile   = emit_tile_size * scale

    valid: list[dict] = []
    idx = 0

    with rasterio.open(emit_path) as emit_ds, rasterio.open(s2_path) as s2_ds:
        emit_h, emit_w = emit_ds.height, emit_ds.width
        s2_h,   s2_w   = s2_ds.height,  s2_ds.width
        emit_nodata = emit_ds.nodata
        s2_nodata   = s2_ds.nodata

        # ── Pixel correspondence ─────────────────────────────────────
        # For EMIT pixel (r, c), the S2 tile starts at:
        #   s2_row = s2_row0 + r * scale
        #   s2_col = s2_col0 + c * scale
        s2_row0, s2_col0 = _pixel_offset(emit_ds.transform, s2_ds.transform)

        # ── Geometric search bounds (where both tiles fit in-bounds) ─
        # EMIT tile at (row, col) needs:
        #   row + tile_size <= emit_h
        #   s2_row0 + row*scale >= 0
        #   s2_row0 + row*scale + s2_tile <= s2_h
        # (same logic for columns)
        r_lo = max(0, math.ceil(-s2_row0 / scale)) if s2_row0 < 0 else 0
        r_hi = min(
            emit_h - emit_tile_size,
            math.floor((s2_h - s2_tile - s2_row0) / scale),
        )
        c_lo = max(0, math.ceil(-s2_col0 / scale)) if s2_col0 < 0 else 0
        c_hi = min(
            emit_w - emit_tile_size,
            math.floor((s2_w - s2_tile - s2_col0) / scale),
        )

        if r_hi < r_lo or c_hi < c_lo:
            return []

        # ── Valid-data bbox in EMIT pixel coords ─────────────────────
        # Read one EMIT band to find where data exists, then restrict
        # the grid search to start at that region's corner.
        emit_band1 = emit_ds.read(1)
        if emit_nodata is not None:
            emit_data_mask = (emit_band1 != emit_nodata)
        else:
            emit_data_mask = (emit_band1 != 0)

        valid_ys, valid_xs = np.where(emit_data_mask)
        if len(valid_ys) == 0:
            return []

        vr_min = int(valid_ys.min())
        vr_max = int(valid_ys.max())
        vc_min = int(valid_xs.min())
        vc_max = int(valid_xs.max())

        # Tiling search range: start at the valid bbox, clamped to
        # geometric bounds.  The grid walks by emit_tile_size steps.
        r_start = max(r_lo, vr_min)
        r_end   = min(r_hi, vr_max - emit_tile_size + 1)
        c_start = max(c_lo, vc_min)
        c_end   = min(c_hi, vc_max - emit_tile_size + 1)

        if r_end < r_start or c_end < c_start:
            return []

        # ── Scan candidate tiles ─────────────────────────────────────
        for row in range(r_start, r_end + 1, emit_tile_size):
            for col in range(c_start, c_end + 1, emit_tile_size):

                emit_win = Window(col, row, emit_tile_size, emit_tile_size)
                s2_win   = Window(
                    s2_col0 + col * scale,
                    s2_row0 + row * scale,
                    s2_tile, s2_tile,
                )

                # ── EMIT nodata check ─────────────────────────────────
                # Stage 1: cheap band-1 pre-filter
                emit_b1 = emit_ds.read(1, window=emit_win).astype(np.float32)
                if emit_nodata is not None:
                    emit_black = float(np.mean(emit_b1 == emit_nodata))
                else:
                    emit_black = float(np.mean(emit_b1 == 0))

                if emit_black > max_black_frac:
                    idx += 1
                    continue

                # Stage 2: check target bands for band-specific nodata
                # (e.g. NaN in individual EMIT spectral bands that
                # becomes 65535 in the saved uint16 tile).  Only run
                # on tiles that passed the cheap band-1 check.
                # When emit_check_bands is set, only those bands are
                # read — avoids false rejections from NaN in unused
                # atmospheric absorption bands.
                if emit_check_bands is not None:
                    emit_block = emit_ds.read(
                        emit_check_bands, window=emit_win
                    ).astype(np.float32)
                else:
                    emit_block = emit_ds.read(window=emit_win).astype(np.float32)
                if emit_nodata is not None:
                    emit_nodata_mask = (emit_block == emit_nodata)
                else:
                    emit_nodata_mask = (emit_block == 0)
                # Any pixel with nodata in ANY band is bad
                emit_black = float(emit_nodata_mask.any(axis=0).mean())

                if emit_black > max_black_frac:
                    idx += 1
                    continue

                # ── S2 nodata check ──────────────────────────────────
                # S2 has fewer bands (10), so all-band check is cheap
                s2_block = s2_ds.read(window=s2_win).astype(np.float32)
                if s2_nodata is not None:
                    s2_nodata_mask = (s2_block == s2_nodata)
                else:
                    s2_nodata_mask = (s2_block == 0)
                s2_black = float(s2_nodata_mask.any(axis=0).mean())

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
# Per-tile sub-pixel realignment
# ---------------------------------------------------------------------------

# RGB target wavelengths (nm) used for cross-correlation alignment
_ALIGN_RGB_NM = (650.0, 550.0, 470.0)   # R, G, B


def _find_s2_rgb_indices(descriptions: list[str | None]) -> tuple[int, int, int]:
    """Return 0-based (R, G, B) band indices from S2 band descriptions.

    Looks for B04 (red), B03 (green), B02 (blue) in the description
    strings.  Falls back to bands 0, 1, 2 if descriptions are absent.

    Returns:
        ``(r_idx, g_idx, b_idx)`` — 0-based indices into the S2 band array.
    """
    mapping: dict[str, int] = {}
    for i, d in enumerate(descriptions):
        if d is None:
            continue
        dl = d.lower()
        if "b04" in dl or (("red" in dl) and "edge" not in dl):
            mapping.setdefault("r", i)
        elif "b03" in dl or "green" in dl:
            mapping.setdefault("g", i)
        elif "b02" in dl or "blue" in dl:
            mapping.setdefault("b", i)
    if len(mapping) == 3:
        return mapping["r"], mapping["g"], mapping["b"]
    # fallback: assume first three bands are B02, B03, B04 (common S2 order)
    return 2, 1, 0


def _block_average(arr_2d: np.ndarray, factor: int) -> np.ndarray:
    """Downsample a 2-D array by *factor* using block averaging.

    Trims the array to an exact multiple of *factor* before reshaping.
    """
    h, w = arr_2d.shape
    h_trim = (h // factor) * factor
    w_trim = (w // factor) * factor
    trimmed = arr_2d[:h_trim, :w_trim]
    return trimmed.reshape(h_trim // factor, factor,
                           w_trim // factor, factor).mean(axis=(1, 3))


def realign_s2_to_emit(
    emit_tile: np.ndarray,
    s2_tile: np.ndarray,
    *,
    scale: int = 6,
    emit_wavelengths_nm: np.ndarray | None = None,
    s2_descriptions: list[str | None] | None = None,
    upsample_factor: int = 100,
    max_shift_emit_px: float = 1.0,
) -> tuple[np.ndarray, dict]:
    """Sub-pixel realignment of an S2 tile to match its EMIT counterpart.

    Uses phase cross-correlation on 3 RGB channels (R²-weighted average)
    to estimate the shift in EMIT-pixel units, then applies
    ``scipy.ndimage.shift`` to every S2 band at full (10 m) resolution.

    The tile dimensions are preserved — no border crop is applied (Option A).

    Parameters
    ----------
    emit_tile : ndarray, shape (C_emit, H_emit, W_emit)
        EMIT tile in band-first layout.  Can be uint16 or float.
    s2_tile : ndarray, shape (C_s2, H_s2, W_s2)
        S2 tile in band-first layout.
    scale : int
        S2-pixel / EMIT-pixel ratio (default 6 for 10m / 60m).
    emit_wavelengths_nm : ndarray or None
        Full wavelength array for the EMIT tile's bands (same length as
        ``C_emit``).  Used to pick the 3 RGB bands closest to 650 / 550 /
        470 nm.  If None, bands at ⅔, ½, ⅙ of the total count are used.
    s2_descriptions : list of str or None
        Rasterio band descriptions for the S2 tile, used to identify
        B04 / B03 / B02.  Falls back to indices 2 / 1 / 0 if absent.
    upsample_factor : int
        Sub-pixel precision for ``phase_cross_correlation`` (default 100
        → 0.01 EMIT-pixel precision).
    max_shift_emit_px : float
        Maximum acceptable shift magnitude in EMIT pixels.  If the
        estimated shift exceeds this, the S2 tile is returned unchanged
        and ``stats["applied"]`` is False.

    Returns
    -------
    s2_shifted : ndarray
        Realigned S2 tile (same shape and dtype as input).
    stats : dict
        ``shift_emit_px``  – (dy, dx) shift in EMIT pixels
        ``shift_s2_px``    – (dy, dx) shift in S2 pixels
        ``r2_per_channel`` – per-RGB-channel correlation from phase_cross_correlation
        ``applied``        – whether the shift was actually applied
    """
    from skimage.registration import phase_cross_correlation
    from scipy.ndimage import shift as ndimage_shift

    c_emit, h_emit, w_emit = emit_tile.shape
    c_s2, h_s2, w_s2 = s2_tile.shape

    # ── Identify RGB bands ────────────────────────────────────────────────
    if emit_wavelengths_nm is not None:
        wl = np.atleast_1d(np.asarray(emit_wavelengths_nm, dtype=np.float64))
        emit_rgb_idx, _ = closest_bands(wl, list(_ALIGN_RGB_NM), verbose=False)
    else:
        n = c_emit
        emit_rgb_idx = [max(0, n * 2 // 3), max(0, n // 2), max(0, n // 6)]

    if s2_descriptions is not None:
        s2_r, s2_g, s2_b = _find_s2_rgb_indices(s2_descriptions)
    else:
        s2_r, s2_g, s2_b = 2, 1, 0
    s2_rgb_idx = [s2_r, s2_g, s2_b]

    # ── Prepare coarse-resolution images for correlation ──────────────────
    emit_float = emit_tile.astype(np.float64)
    s2_float = s2_tile.astype(np.float64)

    # Build EMIT RGB at native resolution (H_emit × W_emit)
    emit_rgb = np.stack(
        [emit_float[i] for i in emit_rgb_idx], axis=-1
    )  # (H_emit, W_emit, 3)

    # Block-average S2 RGB to EMIT resolution
    s2_rgb_coarse = np.stack(
        [_block_average(s2_float[i], scale) for i in s2_rgb_idx], axis=-1
    )  # (H_emit, W_emit, 3)  — after trimming

    # Trim EMIT to match (in case S2 wasn't exact multiple)
    h_match = min(emit_rgb.shape[0], s2_rgb_coarse.shape[0])
    w_match = min(emit_rgb.shape[1], s2_rgb_coarse.shape[1])
    emit_rgb = emit_rgb[:h_match, :w_match]
    s2_rgb_coarse = s2_rgb_coarse[:h_match, :w_match]

    # ── Phase cross-correlation per channel ───────────────────────────────
    shifts_per_ch = []     # [(dy, dx), ...]
    correlations = []      # per-channel correlation (used as weight)

    for ch in range(3):
        ref = emit_rgb[:, :, ch]
        mov = s2_rgb_coarse[:, :, ch]

        # Skip channel if it's all-constant (zero variance)
        if np.std(ref) < 1e-10 or np.std(mov) < 1e-10:
            shifts_per_ch.append((0.0, 0.0))
            correlations.append(0.0)
            continue

        shift_yx, error, phase_diff = phase_cross_correlation(
            ref, mov, upsample_factor=upsample_factor,
        )
        shifts_per_ch.append((float(shift_yx[0]), float(shift_yx[1])))
        # phase_cross_correlation returns error = 1 - correlation;
        # convert to correlation²  (R² weight like supervisor's code)
        corr = max(0.0, 1.0 - error)
        correlations.append(corr ** 2)

    # ── R²-weighted average shift ─────────────────────────────────────────
    dy_arr = np.array([s[0] for s in shifts_per_ch])
    dx_arr = np.array([s[1] for s in shifts_per_ch])
    rr = np.array(correlations)

    if rr.sum() > 0:
        dy_emit = float(np.sum(dy_arr * rr) / np.sum(rr))
        dx_emit = float(np.sum(dx_arr * rr) / np.sum(rr))
    else:
        dy_emit, dx_emit = 0.0, 0.0

    stats = {
        "shift_emit_px": (dy_emit, dx_emit),
        "shift_s2_px": (dy_emit * scale, dx_emit * scale),
        "r2_per_channel": correlations,
        "applied": False,
    }

    # ── Apply shift if within tolerance ───────────────────────────────────
    if max(abs(dy_emit), abs(dx_emit)) > max_shift_emit_px:
        return s2_tile.copy(), stats

    if abs(dy_emit) < 1e-6 and abs(dx_emit) < 1e-6:
        # Negligible shift — skip to avoid unnecessary interpolation
        stats["applied"] = True
        return s2_tile.copy(), stats

    dy_s2 = dy_emit * scale
    dx_s2 = dx_emit * scale

    # Shift every S2 band at full resolution using spline interpolation
    s2_shifted = np.empty_like(s2_tile)
    for b in range(c_s2):
        s2_shifted[b] = ndimage_shift(
            s2_float[b], (dy_s2, dx_s2),
            order=3,        # cubic spline
            mode="nearest",  # fill edges by replicating boundary values
        )

    # Preserve original dtype
    if np.issubdtype(s2_tile.dtype, np.integer):
        s2_shifted = np.clip(s2_shifted, 0, np.iinfo(s2_tile.dtype).max)
        s2_shifted = np.rint(s2_shifted).astype(s2_tile.dtype)
    else:
        s2_shifted = s2_shifted.astype(s2_tile.dtype)

    stats["applied"] = True
    return s2_shifted, stats


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
    realign: bool = False,
    realign_max_shift: float = 1.0,
) -> tuple[Path, Path, dict | None]:
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

    When *realign* is True, per-tile sub-pixel alignment is performed via
    phase cross-correlation before writing the S2 tile.  The shift is
    estimated at EMIT resolution and applied to the full-resolution S2
    tile using cubic spline interpolation.  Tiles stay their original size
    (no border crop).  Realignment statistics are stored in the S2
    GeoTIFF tags and returned as the third element of the tuple.

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
        realign:             Enable per-tile sub-pixel alignment (default False).
        realign_max_shift:   Max acceptable shift in EMIT pixels (default 1.0).

    Returns:
        ``(emit_tile_path, s2_tile_path, realign_stats)`` where
        *realign_stats* is a dict when ``realign=True`` or ``None`` otherwise.
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

        # ── Per-tile sub-pixel realignment ────────────────────────────
        realign_stats: dict | None = None
        if realign:
            # Use the raw float EMIT reflectance for correlation, not
            # the uint16-scaled version — avoids quantisation noise.
            emit_raw_float = emit_tile.astype(np.float32)
            s2_tile, realign_stats = realign_s2_to_emit(
                emit_raw_float,
                s2_tile,
                scale=int(round(s2_tile.shape[1] / emit_tile.shape[1])),
                emit_wavelengths_nm=wl_arr,
                s2_descriptions=s2_desc,
                max_shift_emit_px=realign_max_shift,
            )

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
            # Embed realignment metadata in S2 GeoTIFF tags
            if realign_stats is not None:
                dy_e, dx_e = realign_stats["shift_emit_px"]
                dy_s, dx_s = realign_stats["shift_s2_px"]
                dst_s.update_tags(
                    realign_applied=str(realign_stats["applied"]),
                    realign_shift_emit_dy=f"{dy_e:.6f}",
                    realign_shift_emit_dx=f"{dx_e:.6f}",
                    realign_shift_s2_dy=f"{dy_s:.6f}",
                    realign_shift_s2_dx=f"{dx_s:.6f}",
                )

    return emit_out, s2_out, realign_stats


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
