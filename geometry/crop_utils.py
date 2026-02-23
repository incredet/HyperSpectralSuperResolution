"""
geometry/crop_utils.py
----------------------
Utilities for raster trimming and GDAL-based cropping used in the
EMIT–Sentinel-2 alignment pipeline.

Functions
---------
valid_bbox_in_map_coords   – bbox of valid (non-nodata) pixels in map coords
intersect_bounds           – intersection of two (L,B,R,T) extent tuples
snap_bounds_to_grid        – snap extent to an anchored regular grid
gdal_crop_projwin          – thin subprocess wrapper around gdal_translate -projwin
"""

from __future__ import annotations

import math
import subprocess
from pathlib import Path

import numpy as np
import rasterio
from rasterio.transform import xy


# ---------------------------------------------------------------------------
# Valid-pixel bbox
# ---------------------------------------------------------------------------

def valid_bbox_in_map_coords(
    raster_path: str | Path,
    margin_px: int = 0,
) -> tuple[float, float, float, float]:
    """Return ``(left, bottom, right, top)`` of valid pixels in map coordinates.

    Uses ``rasterio``'s dataset mask (0 = invalid, >0 = valid).  An optional
    ``margin_px`` shrinks the bbox inward by that many pixels on each side,
    which removes thin stripe artefacts introduced by warping at the edges.

    Raises ``RuntimeError`` if no valid pixels are found or the margin is too
    large.
    """
    with rasterio.open(raster_path) as ds:
        m = ds.dataset_mask()          # shape (H, W): 0 invalid, 255 valid
        ys, xs = np.where(m > 0)
        if len(xs) == 0:
            raise RuntimeError(
                f"No valid pixels found in {raster_path}. "
                "Check nodata / mask settings."
            )

        r0, r1 = int(ys.min()), int(ys.max())
        c0, c1 = int(xs.min()), int(xs.max())

        # shrink inward
        r0 += margin_px; c0 += margin_px
        r1 -= margin_px; c1 -= margin_px
        if r1 <= r0 or c1 <= c0:
            raise RuntimeError(
                f"margin_px={margin_px} is too large; bbox collapsed."
            )

        # pixel corners → map coordinates
        left,  top    = xy(ds.transform, r0,     c0,     offset="ul")
        right, bottom = xy(ds.transform, r1 + 1, c1 + 1, offset="ul")

        # guarantee canonical order
        left,  right  = (left,  right)  if left  < right  else (right, left)
        bottom, top   = (bottom, top)   if bottom < top   else (top,  bottom)

    return float(left), float(bottom), float(right), float(top)


# ---------------------------------------------------------------------------
# Geometric helpers
# ---------------------------------------------------------------------------

def intersect_bounds(
    a: tuple[float, float, float, float],
    b: tuple[float, float, float, float],
) -> tuple[float, float, float, float]:
    """Return the intersection of two ``(L, B, R, T)`` extents.

    Raises ``RuntimeError`` if the intersection is empty.
    """
    L = max(a[0], b[0])
    B = max(a[1], b[1])
    R = min(a[2], b[2])
    T = min(a[3], b[3])
    if R <= L or T <= B:
        raise RuntimeError(
            f"Empty intersection between {a} and {b}."
        )
    return (L, B, R, T)


def snap_bounds_to_grid(
    bounds: tuple[float, float, float, float],
    *,
    x0: float,
    y0: float,
    grid_m: float = 60.0,
) -> tuple[float, float, float, float]:
    """Snap ``(L, B, R, T)`` to an anchored regular grid.

    The grid is defined by its anchor point ``(x0, y0)`` (typically the
    origin of the UTM tile) and step ``grid_m``.  The result is the largest
    sub-extent aligned to that grid that fits inside *bounds*.

    Raises ``RuntimeError`` if the snapped box collapses.
    """
    L, B, R, T = map(float, bounds)
    g = float(grid_m)

    # inward snap: expand left/bottom to next grid line, shrink right/top
    L2 = x0 + math.ceil( (L - x0) / g) * g
    R2 = x0 + math.floor((R - x0) / g) * g

    T2 = y0 - math.ceil( (y0 - T) / g) * g
    B2 = y0 - math.floor((y0 - B) / g) * g

    if R2 <= L2 or T2 <= B2:
        raise RuntimeError(
            "Bounds collapsed after snapping to grid. "
            f"Input: {bounds}, anchor: ({x0}, {y0}), grid: {grid_m}m"
        )
    return (L2, B2, R2, T2)


# ---------------------------------------------------------------------------
# GDAL wrapper
# ---------------------------------------------------------------------------

def gdal_crop_projwin(
    src: str | Path,
    dst: str | Path,
    te: tuple[float, float, float, float],
    out_format: str | None = None,
    extra: list[str] | None = None,
) -> None:
    """Crop *src* to extent *te* = ``(L, B, R, T)`` using ``gdal_translate``.

    Args:
        src:        Input raster path.
        dst:        Output raster path.
        te:         Extent as ``(left, bottom, right, top)`` in map CRS units.
        out_format: GDAL format string (e.g. ``"GTiff"`` or ``"ENVI"``).
                    If *None*, GDAL infers from the file extension.
        extra:      Additional arguments inserted before the source path
                    (e.g. ``["-co", "INTERLEAVE=BIL"]``).
    """
    L, B, R, T = te
    cmd: list[str] = ["gdal_translate"]
    if out_format:
        cmd += ["-of", out_format]
    cmd += ["-projwin", str(L), str(T), str(R), str(B)]
    if extra:
        cmd += extra
    cmd += [str(src), str(dst)]
    print(" ".join(cmd))
    subprocess.run(cmd, check=True)
