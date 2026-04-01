from __future__ import annotations

import contextlib
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

from data.S2.s2_search import SCL_CLOUD_TILE
from data.EMIT.emit_utils import closest_bands


def _pixel_offset(emit_tf, s2_tf) -> tuple[int, int]:
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


def _scl_cloud_frac(
    scl_ds: rasterio.DatasetReader,
    bounds: tuple[float, float, float, float],
    cloud_classes: np.ndarray,
) -> float:
    try:
        win = scl_ds.window(*bounds)
        # Clamp to dataset extent
        win = win.intersection(Window(0, 0, scl_ds.width, scl_ds.height))
        if win.width < 1 or win.height < 1:
            return 0.0
        scl = scl_ds.read(1, window=win)
        valid = scl != 0  # SCL 0 = nodata / outside footprint
        n_valid = int(valid.sum())
        if n_valid == 0:
            return 0.0
        n_cloud = int(np.isin(scl[valid], cloud_classes).sum())
        return n_cloud / n_valid
    except Exception:
        return 0.0


def find_valid_paired_tiles(
    emit_path: str | Path,
    s2_path: str | Path,
    emit_tile_size: int = 120,
    scale: int = 6,
    max_black_frac: float = 0.0,
    emit_check_bands: list[int] | np.ndarray | None = None,
    scl_path: str | Path | None = None,
    max_cloud_frac: float = 0.02,
) -> list[dict]:
    """Find valid tile positions with pixel correspondence and valid-data bbox."""
    emit_path = str(emit_path)
    s2_path   = str(s2_path)
    s2_tile   = emit_tile_size * scale

    _SCL_CLOUD = np.array(sorted(SCL_CLOUD_TILE), dtype=np.uint8)

    valid = []
    idx = 0

    _exit_stack = contextlib.ExitStack()
    _scl_ds = None
    if scl_path is not None and Path(scl_path).exists():
        _scl_ds = _exit_stack.enter_context(rasterio.open(scl_path))

    with _exit_stack, \
         rasterio.open(emit_path) as emit_ds, \
         rasterio.open(s2_path) as s2_ds:
        emit_h, emit_w = emit_ds.height, emit_ds.width
        s2_h,   s2_w   = s2_ds.height,  s2_ds.width
        emit_nodata = emit_ds.nodata
        s2_nodata   = s2_ds.nodata

        s2_row0, s2_col0 = _pixel_offset(emit_ds.transform, s2_ds.transform)
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

        emit_band1 = emit_ds.read(1).astype(np.float32)
        emit_data_mask = np.isfinite(emit_band1)
        if emit_nodata is not None:
            emit_data_mask &= (emit_band1 != emit_nodata)
        else:
            emit_data_mask &= (emit_band1 != 0)

        valid_ys, valid_xs = np.where(emit_data_mask)
        if len(valid_ys) == 0:
            return []

        vr_min = int(valid_ys.min())
        vr_max = int(valid_ys.max())
        vc_min = int(valid_xs.min())
        vc_max = int(valid_xs.max())

        r_start = max(r_lo, vr_min)
        r_end   = min(r_hi, vr_max - emit_tile_size + 1)
        c_start = max(c_lo, vc_min)
        c_end   = min(c_hi, vc_max - emit_tile_size + 1)

        if r_end < r_start or c_end < c_start:
            return []

        for row in range(r_start, r_end + 1, emit_tile_size):
            for col in range(c_start, c_end + 1, emit_tile_size):

                emit_win = Window(col, row, emit_tile_size, emit_tile_size)
                s2_win   = Window(
                    s2_col0 + col * scale,
                    s2_row0 + row * scale,
                    s2_tile, s2_tile,
                )

                emit_b1 = emit_ds.read(1, window=emit_win).astype(np.float32)
                emit_bad = ~np.isfinite(emit_b1)
                if emit_nodata is not None:
                    emit_bad |= (emit_b1 == emit_nodata)
                else:
                    emit_bad |= (emit_b1 == 0)
                emit_black = float(np.mean(emit_bad))

                if emit_black > max_black_frac:
                    idx += 1
                    continue

                if emit_check_bands is not None:
                    emit_block = emit_ds.read(
                        emit_check_bands, window=emit_win
                    ).astype(np.float32)
                else:
                    emit_block = emit_ds.read(window=emit_win).astype(np.float32)
                emit_nodata_mask = ~np.isfinite(emit_block)
                if emit_nodata is not None:
                    emit_nodata_mask |= (emit_block == emit_nodata)
                else:
                    emit_nodata_mask |= (emit_block == 0)
                emit_black = float(emit_nodata_mask.any(axis=0).mean())

                if emit_black > max_black_frac:
                    idx += 1
                    continue

                s2_block = s2_ds.read(window=s2_win).astype(np.float32)
                s2_nodata_mask = ~np.isfinite(s2_block)
                if s2_nodata is not None:
                    s2_nodata_mask |= (s2_block == s2_nodata)
                else:
                    s2_nodata_mask |= (s2_block == 0)
                s2_black = float(s2_nodata_mask.any(axis=0).mean())

                if s2_black > max_black_frac:
                    idx += 1
                    continue

                cloud_frac = 0.0
                if _scl_ds is not None:
                    tile_tf = window_transform(s2_win, s2_ds.transform)
                    left   = tile_tf.c
                    top    = tile_tf.f
                    right  = left + tile_tf.a * s2_win.width
                    bottom = top  + tile_tf.e * s2_win.height
                    s2_tile_bounds = (left, bottom, right, top)
                    cloud_frac = _scl_cloud_frac(
                        _scl_ds, s2_tile_bounds, _SCL_CLOUD,
                    )
                    if cloud_frac > max_cloud_frac:
                        idx += 1
                        continue

                valid.append({
                    "idx": idx,
                    "emit_window": emit_win,
                    "s2_window":   s2_win,
                    "emit_black_frac": emit_black,
                    "s2_black_frac":   s2_black,
                    "s2_cloud_frac":   cloud_frac,
                })
                idx += 1

    return valid


# ---------------------------------------------------------------------------
# Per-tile sub-pixel realignment
# ---------------------------------------------------------------------------

# RGB target wavelengths (nm) used for cross-correlation alignment
_ALIGN_RGB_NM = (650.0, 550.0, 470.0)   # R, G, B


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
    """Sub-pixel realignment via phase cross-correlation on RGB channels."""
    from skimage.registration import phase_cross_correlation
    from scipy.ndimage import shift as ndimage_shift

    c_emit, h_emit, w_emit = emit_tile.shape
    c_s2, h_s2, w_s2 = s2_tile.shape

    if emit_wavelengths_nm is not None:
        wl = np.atleast_1d(np.asarray(emit_wavelengths_nm, dtype=np.float64))
        emit_rgb_idx, _ = closest_bands(wl, list(_ALIGN_RGB_NM), verbose=False)
    else:
        n = c_emit
        emit_rgb_idx = [max(0, n * 2 // 3), max(0, n // 2), max(0, n // 6)]

    if s2_descriptions is not None:
        mapping = {}
        for i, d in enumerate(s2_descriptions):
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
            s2_r, s2_g, s2_b = mapping["r"], mapping["g"], mapping["b"]
        else:
            s2_r, s2_g, s2_b = 2, 1, 0
    else:
        s2_r, s2_g, s2_b = 2, 1, 0
    s2_rgb_idx = [s2_r, s2_g, s2_b]

    emit_float = emit_tile.astype(np.float64)
    s2_float = s2_tile.astype(np.float64)

    emit_rgb = np.stack(
        [emit_float[i] for i in emit_rgb_idx], axis=-1
    )

    def _block_avg(arr_2d, factor):
        h, w = arr_2d.shape
        h_trim = (h // factor) * factor
        w_trim = (w // factor) * factor
        trimmed = arr_2d[:h_trim, :w_trim]
        return trimmed.reshape(h_trim // factor, factor,
                               w_trim // factor, factor).mean(axis=(1, 3))

    s2_rgb_coarse = np.stack(
        [_block_avg(s2_float[i], scale) for i in s2_rgb_idx], axis=-1
    )
    h_match = min(emit_rgb.shape[0], s2_rgb_coarse.shape[0])
    w_match = min(emit_rgb.shape[1], s2_rgb_coarse.shape[1])
    emit_rgb = emit_rgb[:h_match, :w_match]
    s2_rgb_coarse = s2_rgb_coarse[:h_match, :w_match]

    shifts_per_ch = []
    correlations = []

    for ch in range(3):
        ref = emit_rgb[:, :, ch]
        mov = s2_rgb_coarse[:, :, ch]

        if np.std(ref) < 1e-10 or np.std(mov) < 1e-10:
            shifts_per_ch.append((0.0, 0.0))
            correlations.append(0.0)
            continue

        shift_yx, error, phase_diff = phase_cross_correlation(
            ref, mov, upsample_factor=upsample_factor,
        )
        shifts_per_ch.append((float(shift_yx[0]), float(shift_yx[1])))
        corr = max(0.0, 1.0 - error)
        correlations.append(corr ** 2)

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

    if max(abs(dy_emit), abs(dx_emit)) > max_shift_emit_px:
        return s2_tile.copy(), stats

    if abs(dy_emit) < 1e-6 and abs(dx_emit) < 1e-6:
        stats["applied"] = True
        return s2_tile.copy(), stats

    dy_s2 = dy_emit * scale
    dx_s2 = dx_emit * scale

    S2_SCALE = np.float32(10000.0)
    s2_refl = s2_float.astype(np.float32) / S2_SCALE

    s2_shifted_refl = np.empty(s2_refl.shape, dtype=np.float32)
    for b in range(c_s2):
        band = s2_refl[b]
        bmax = float(band.max())
        s2_shifted_refl[b] = ndimage_shift(
            band, (dy_s2, dx_s2),
            order=3,        # cubic spline
            mode="nearest",
        )
        np.clip(s2_shifted_refl[b], 0.0, bmax, out=s2_shifted_refl[b])

    s2_shifted = np.rint(s2_shifted_refl * S2_SCALE).astype(np.uint16)

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
    """Write EMIT/S2 tile pair as GeoTIFFs with optional sub-pixel realignment."""
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
        emit_tile = emit_ds.read(window=w_emit)
        s2_tile   = s2_ds.read(window=w_s2)
        emit_desc = list(emit_ds.descriptions or [])
        s2_desc   = list(s2_ds.descriptions or [])

        if emit_tile.size == 0:
            raise ValueError(f"Empty EMIT tile idx={k}, window={w_emit}")
        if s2_tile.size == 0:
            raise ValueError(f"Empty S2 tile idx={k}, window={w_s2}")

        realign_stats = None
        if realign:
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
            for i in range(1, dst_e.count + 1):
                tags = dict(emit_band_tags[i - 1]) if emit_band_tags[i - 1] else {}
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


def write_emit_b32_tile(
    emit_tif_path: str | Path,
    *,
    num_keep: int = 32,
    idx_0based: Optional[np.ndarray] = None,
    overwrite: bool = False,
    wavelengths_nm: Optional[np.ndarray] = None,
    target_wavelengths_nm: Optional[list[float] | tuple[float, ...]] = None,
) -> tuple[Path, np.ndarray]:
    """Write a subset of EMIT bands, with smart band selection via target wavelengths."""
    src_path = Path(emit_tif_path)
    suffix   = f"_b{num_keep}" if num_keep != 32 else "_b32"
    dst_path = src_path.with_name(src_path.stem + suffix + ".tif")

    with rasterio.open(src_path) as src:
        n_bands = src.count

        if idx_0based is None:
            if target_wavelengths_nm is not None and wavelengths_nm is not None:
                idxs, _ = closest_bands(
                    wavelengths_nm, list(target_wavelengths_nm),
                )
                idx_0based = np.array(sorted(set(idxs)), dtype=int)
                if len(idx_0based) != len(target_wavelengths_nm):
                    warnings.warn(
                        f"Band deduplication reduced count from "
                        f"{len(target_wavelengths_nm)} to {len(idx_0based)}. "
                        f"Some target wavelengths mapped to the same EMIT band."
                    )
            elif wavelengths_nm is not None:
                idx_0based = np.round(
                    np.linspace(0, n_bands - 1, num_keep)
                ).astype(int)
            else:
                idx_0based = np.round(
                    np.linspace(0, n_bands - 1, num_keep)
                ).astype(int)

        if not overwrite and dst_path.exists():
            return dst_path, idx_0based

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
            tags = {"emit_band_index": str(int(src_i_0b))}
            if wl_arr is not None:
                tags["wavelength"] = f"{wl_arr[int(src_i_0b)]:.4f}"
            dst.update_tags(out_i, **tags)
            if descs and int(src_i_0b) < len(descs) and descs[int(src_i_0b)]:
                dst.set_band_description(out_i, descs[int(src_i_0b)])

    return dst_path, idx_0based


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
    """Show EMIT and S2 tiles side-by-side as true-colour RGB images."""
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
            bands = min(3, s2.count)
            s2_rgb = np.moveaxis(
                s2.read(list(range(1, bands + 1))).astype(np.float32), 0, -1
            )

    s2_rgb = _stretch(s2_rgb, *percentile) ** gamma
    ax1.imshow(np.clip(s2_rgb, 0, 1))
    ax1.set_title(f"S2  {title_suffix}")
    ax1.axis("off")

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
