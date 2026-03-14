"""
geometry/alignment.py
---------------------
Consolidated EMIT–S2 spatial alignment pipeline.

Replaces the multi-cell notebook flow (orthorectify → crop → co-register →
trim) with a single function call that produces pixel-locked, trimmed
EMIT and S2 rasters ready for tiling.

Public API
----------
align_emit_s2_pair  — full alignment from raw inputs to trimmed outputs
AlignmentResult     — result container
"""

from __future__ import annotations

import logging
from dataclasses import dataclass, field
from pathlib import Path
from typing import TYPE_CHECKING

import numpy as np

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from geometry.EMIT_proj import convert_emit_nc_to_envi, crop_s2_stack_to_te
from geometry.crop_utils import (
    valid_bbox_in_map_coords,
    intersect_bounds,
    snap_bounds_to_grid,
    gdal_crop_projwin,
)
from geometry.arosics_coreg import (
    coregister_s2_granule_to_emit_granule,
    s2_bandmap_from_template,
)

if TYPE_CHECKING:
    from documentation.config import PipelineConfig
    from documentation.pairs_artifacts import ReportWriter

log = logging.getLogger(__name__)


# ---------------------------------------------------------------------------
# Result container
# ---------------------------------------------------------------------------


@dataclass
class AlignmentResult:
    """Output of :func:`align_emit_s2_pair`."""

    emit_envi_trimmed: Path
    """Final trimmed ENVI datacube (.bin)."""

    s2_tif_trimmed: Path
    """Final co-registered, trimmed S2 GeoTIFF."""

    emit_utm_tif: Path
    """uint16 UTM GeoTIFF (for inspection / AROSICS reference)."""

    emit_envi_full: Path
    """Full (untrimmed) ENVI datacube."""

    bounds_trimmed: tuple[float, float, float, float]
    """(left, bottom, right, top) in map CRS after trimming."""

    anchor_x0: float
    """Grid anchor X (for consistent 60 m snapping)."""

    anchor_y0: float
    """Grid anchor Y."""

    emit_conv_info: dict
    """Metadata dict from ``convert_emit_nc_to_envi``."""

    coreg_info: dict
    """Result dict from ``coregister_s2_granule_to_emit_granule``."""

    success: bool
    """True if co-registration succeeded and outputs are valid."""

    s2_overlap_path: Path | None = None
    """Intermediate cropped S2 (kept if ``keep_intermediate=True``)."""


# ---------------------------------------------------------------------------
# Main pipeline
# ---------------------------------------------------------------------------


def align_emit_s2_pair(
    *,
    emit_nc: str | Path,
    s2_stack: str | Path,
    out_dir: str | Path,
    config: "PipelineConfig",
    wl_nm: np.ndarray,
    emit_obs_nc: str | Path | None = None,
    report: "ReportWriter | None" = None,
    keep_intermediate: bool = False,
    emit_info_save_path: str | Path | None = None,
    trim: bool = False,
) -> AlignmentResult:
    """Run the full EMIT–S2 spatial alignment pipeline.

    Orchestrates three (or four) steps:

    1. **EMIT orthorectification** — ``convert_emit_nc_to_envi()`` with
       optional DEM parallax correction, producing a UTM ENVI cube and
       uint16 GeoTIFF.
    2. **S2 crop** — ``crop_s2_stack_to_te()`` limits the S2 stack to the
       EMIT footprint, reducing AROSICS computation and preventing
       spurious tie-points in nodata regions.
    3. **AROSICS co-registration** — local tie-point matching and warping
       of S2 to the EMIT reference grid.
    4. **(Optional) Trim** — remove edge artefacts, intersect valid
       extents, snap to the 60 m grid, and crop both rasters.
       Controlled by the ``trim`` parameter (default False).

    When ``trim=False`` (default), the rasters are returned as-is after
    co-registration.  Nodata at edges is handled downstream by
    ``find_valid_paired_tiles``, which uses geotransforms to compute
    the pixel correspondence and places the tiling grid on the valid
    data region.  This avoids the sub-pixel offset that ``gdal_translate
    -projwin`` can introduce when trimming.

    Args:
        emit_nc:       Path to EMIT L2A reflectance netCDF.
        s2_stack:      Path to S2 10-band spectral stack GeoTIFF.
        out_dir:       Directory for intermediate and final outputs.
        config:        ``PipelineConfig`` with all parameters.
        wl_nm:         EMIT wavelength array (285 values, nm).
        emit_obs_nc:   Path to EMIT observation geometry netCDF (required
                       if ``config.apply_dem_correction`` is True).
        report:        Optional ``ReportWriter`` to log alignment details.
        keep_intermediate: If True, retain intermediate files (cropped S2,
                       untrimmed co-registered S2).
        emit_info_save_path: If set, save EMIT conversion info JSON here.
        trim:          If True, run step 4 (gdal_translate trim to common
                       extent).  Default False — tiling handles nodata.

    Returns:
        :class:`AlignmentResult` with paths to final outputs and metadata.

    Raises:
        RuntimeError: If co-registration fails (``success=False``).
    """
    emit_nc = Path(emit_nc)
    s2_stack = Path(s2_stack)
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    emit_utm_dir = out_dir / "emit_utm"
    s2_dir = out_dir / "s2"
    emit_utm_dir.mkdir(parents=True, exist_ok=True)
    s2_dir.mkdir(parents=True, exist_ok=True)

    # ── Step 1: EMIT orthorectification ──────────────────────────────────

    log.info("Step 1/4: EMIT orthorectification")
    envi_bin, emit_conv_info = convert_emit_nc_to_envi(
        emit_nc_paths=[emit_nc],
        s2_visual_path=s2_stack,
        out_dir=emit_utm_dir,
        emit_obs_nc=str(emit_obs_nc) if emit_obs_nc else None,
        export_loc=True,
        overwrite=True,
        return_info=True,
        save_info_path=str(emit_info_save_path) if emit_info_save_path else None,
        save_geotiffs=True,
        apply_dem_correction=config.apply_dem_correction,
        correction_diagnostics=config.apply_dem_correction,
    )
    envi_bin = Path(envi_bin)
    emit_utm_tif = Path(emit_conv_info["outputs"]["data_utm_tif"])

    te = emit_conv_info["commands"]["gdalwarp_data"]["aligned_extent"]
    TE_overlap = (te["left"], te["bottom"], te["right"], te["top"])
    x0, y0 = te["anchor_x0"], te["anchor_y0"]

    if report:
        report.section("EMIT Orthorectification", [
            f"ENVI cube: {envi_bin.name}",
            f"UTM GeoTIFF: {emit_utm_tif.name}",
            f"Extent: L={te['left']:.1f} B={te['bottom']:.1f} "
            f"R={te['right']:.1f} T={te['top']:.1f}",
            f"DEM correction: {config.apply_dem_correction}",
        ])

    # ── Step 2: S2 crop to EMIT extent ───────────────────────────────────

    log.info("Step 2/4: Crop S2 to EMIT extent")
    s2_overlap_name = s2_stack.name.replace("S2_10band_10m", "overlap", 1)
    s2_overlap_path = s2_dir / s2_overlap_name

    s2_overlap, s2_overlap_info = crop_s2_stack_to_te(
        s2_stack_path=s2_stack,
        out_path=s2_overlap_path,
        left=te["left"],
        bottom=te["bottom"],
        right=te["right"],
        top=te["top"],
        overwrite=True,
        return_info=True,
    )
    s2_overlap = Path(s2_overlap)

    if report:
        report.section("S2 Crop to EMIT Extent", [
            f"Input: {s2_stack.name}",
            f"Output: {s2_overlap.name}",
            f"Window: {s2_overlap_info.get('window')}",
        ])

    # ── Step 3: AROSICS co-registration ──────────────────────────────────

    log.info("Step 3/4: AROSICS co-registration")
    out_s2_coreg = s2_dir / s2_overlap.stem.replace("overlap", "coreg") \
        if "overlap" in s2_overlap.stem \
        else s2_dir / (s2_overlap.stem + "_coreg.tif")
    if not str(out_s2_coreg).endswith(".tif"):
        out_s2_coreg = out_s2_coreg.with_suffix(".tif")

    s2_bandmap = s2_bandmap_from_template(str(s2_overlap))

    coreg_result = coregister_s2_granule_to_emit_granule(
        emit_ref_tif=str(emit_utm_tif),
        s2_tgt_tif=str(s2_overlap),
        out_s2_tif=str(out_s2_coreg),
        s2_map=s2_bandmap,
        emit_wl_nm=wl_nm,
        prefer=config.coreg_prefer_bands,
        window_size=config.coreg_window_size,
        grid_res=config.coreg_grid_res,
        max_points=config.coreg_max_points,
        min_reliability=config.coreg_min_reliability,
        tieP_filter_level=config.coreg_tieP_filter_level,
        max_shift=config.coreg_max_shift,
        nodata_emit=config.coreg_nodata_emit,
        nodata_s2=config.coreg_nodata_s2,
        out_gsd=list(config.coreg_out_gsd),
        resamp_calc=config.coreg_resamp_calc,
        resamp_deshift=config.coreg_resamp_deshift,
        cliptoextent=config.coreg_cliptoextent,
    )

    coreg_ok = coreg_result["final"]["success"]

    if report:
        status = "SUCCESS" if coreg_ok else "FAILED"
        report.section("AROSICS Co-registration", [
            f"Status: {status}",
            f"Attempts: {len(coreg_result.get('attempts', []))}",
            f"Output: {out_s2_coreg.name}" if coreg_ok else None,
            f"Parameters: grid_res={config.coreg_grid_res}, "
            f"max_points={config.coreg_max_points}, "
            f"window_size={config.coreg_window_size}",
        ])

    if not coreg_ok:
        log.error("Co-registration failed: %s", coreg_result["final"])
        return AlignmentResult(
            emit_envi_trimmed=envi_bin,
            s2_tif_trimmed=s2_overlap,
            emit_utm_tif=emit_utm_tif,
            emit_envi_full=envi_bin,
            bounds_trimmed=TE_overlap,
            anchor_x0=x0,
            anchor_y0=y0,
            emit_conv_info=emit_conv_info,
            coreg_info=coreg_result,
            success=False,
            s2_overlap_path=s2_overlap,
        )

    # ── Step 4 (optional): Trim to valid-pixel intersection ─────────────

    if trim:
        log.info("Step 4/4: Trim to common valid extent")
        valid_te = valid_bbox_in_map_coords(str(out_s2_coreg), margin_px=2)
        te_trim = intersect_bounds(TE_overlap, valid_te)
        te_trim = snap_bounds_to_grid(te_trim, x0=x0, y0=y0, grid_m=60.0)

        s2_trimmed = s2_dir / (out_s2_coreg.stem + "_trimmed.tif")
        envi_trimmed = emit_utm_dir / (envi_bin.stem + "_trimmed.bin")

        gdal_crop_projwin(str(out_s2_coreg), str(s2_trimmed), te_trim,
                          out_format="GTiff")
        gdal_crop_projwin(str(envi_bin), str(envi_trimmed), te_trim,
                          out_format="ENVI",
                          extra=["-co", "INTERLEAVE=BIL"])

        if report:
            report.section("Spatial Trimming", [
                f"Trimmed EMIT: {envi_trimmed.name}",
                f"Trimmed S2: {s2_trimmed.name}",
                f"Bounds (L,B,R,T): {te_trim}",
                f"Grid anchor: ({x0}, {y0}), step 60 m",
            ])

        # Clean up un-trimmed co-registered S2
        if not keep_intermediate:
            if out_s2_coreg.exists():
                out_s2_coreg.unlink()
                log.debug("Removed intermediate: %s", out_s2_coreg)

        log.info("Alignment complete (trimmed).  EMIT: %s  S2: %s",
                 envi_trimmed.name, s2_trimmed.name)

        return AlignmentResult(
            emit_envi_trimmed=envi_trimmed,
            s2_tif_trimmed=s2_trimmed,
            emit_utm_tif=emit_utm_tif,
            emit_envi_full=envi_bin,
            bounds_trimmed=te_trim,
            anchor_x0=x0,
            anchor_y0=y0,
            emit_conv_info=emit_conv_info,
            coreg_info=coreg_result,
            success=True,
            s2_overlap_path=s2_overlap if keep_intermediate else None,
        )

    # ── No trim: return co-registered rasters as-is ──────────────────────
    # Nodata at edges is handled downstream by find_valid_paired_tiles.

    if report:
        report.section("Spatial Trimming", [
            "Trim disabled — tiling will handle nodata edges.",
            f"EMIT (full): {envi_bin.name}",
            f"S2 (co-registered): {out_s2_coreg.name}",
        ])

    log.info("Alignment complete (no trim).  EMIT: %s  S2: %s",
             envi_bin.name, out_s2_coreg.name)

    return AlignmentResult(
        emit_envi_trimmed=envi_bin,          # not trimmed, but field name kept
        s2_tif_trimmed=out_s2_coreg,         # not trimmed, but field name kept
        emit_utm_tif=emit_utm_tif,
        emit_envi_full=envi_bin,
        bounds_trimmed=TE_overlap,           # full overlap extent
        anchor_x0=x0,
        anchor_y0=y0,
        emit_conv_info=emit_conv_info,
        coreg_info=coreg_result,
        success=True,
        s2_overlap_path=s2_overlap if keep_intermediate else None,
    )
