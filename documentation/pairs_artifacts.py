from __future__ import annotations

import re
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Iterable, Optional

import json
import shutil
import subprocess

import rasterio
from rasterio.warp import transform_bounds

import pandas as pd
import numpy as np

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_search import emit_geom_wgs84_from_umm


def utc_now_iso() -> str:
    return datetime.now(timezone.utc).isoformat()


# ---------------------------------------------------------------------------
# Run lock — freeze the selected pair so re-runs are deterministic
# ---------------------------------------------------------------------------

def load_pairs_sorted(
    pairs_dir: str | Path,
    *,
    sort_by: str = "expected_clear_km2",
) -> list[dict]:
    """Load all valid pairs from JSONL batch files, sorted deterministically.

    Pairs are sorted by *sort_by* (descending), then by ``emit_dt``
    (ascending), then by ``s2_id`` (ascending) as tiebreaker.  This
    guarantees the same ordering regardless of the filesystem glob order
    or the CMR response order.

    Args:
        pairs_dir:  Directory containing ``pairs_batch_*.jsonl`` files.
        sort_by:    Primary sort key (descending).  One of:
                    ``"expected_clear_km2"`` (default — largest cloud-free
                    overlap first) or ``"overlap_km2"``.

    Returns:
        List of pair dicts, each with keys ``emit_granuleur``,
        ``emit_dt``, ``s2_id``, ``s2_cloud_frac``, ``debug``, etc.
    """
    import glob as _glob

    pairs_dir = Path(pairs_dir)
    pairs: list[dict] = []

    for fn in sorted(_glob.glob(str(pairs_dir / "pairs_batch_*.jsonl"))):
        with open(fn) as f:
            for line in f:
                rec = json.loads(line)
                if rec.get("s2_id") and rec.get("s2_cloud_frac") is not None:
                    pairs.append(rec)

    def _sort_key(p):
        dbg = p.get("debug") or {}
        picked = dbg.get("picked") or {}

        if sort_by == "overlap_km2":
            primary = -picked.get("overlap_km2", 0)
        else:
            primary = -picked.get("expected_clear_km2", 0)

        return (primary, p.get("emit_dt", ""), p.get("s2_id", ""))

    pairs.sort(key=_sort_key)
    return pairs


def save_run_lock(
    path: str | Path,
    *,
    pair: dict,
    config_fingerprint: str = "",
    config_path: Optional[str] = None,
) -> Path:
    """Persist the selected pair identity so re-runs pick the same data.

    The run-lock file records the ``emit_granuleur`` and ``s2_id`` that
    were chosen for processing.  On a subsequent run, if this file
    exists, the notebook should reload it instead of re-running the
    search/pairing pipeline.

    Args:
        path:                Where to write the lock file (JSON).
        pair:                The selected pair dict (from ``load_pairs_sorted``).
        config_fingerprint:  Hash of the config for cross-check.
        config_path:         Path to the saved config JSON (for reference).

    Returns:
        Path to the written lock file.
    """
    path = Path(path)
    ensure_dir(path.parent)

    lock = {
        "locked_utc": utc_now_iso(),
        "emit_granuleur": pair.get("emit_granuleur"),
        "emit_dt": pair.get("emit_dt"),
        "s2_id": pair.get("s2_id"),
        "s2_key": pair.get("s2_key") or (pair.get("debug", {}).get("picked", {}).get("s2_key")),
        "s2_cloud_frac": pair.get("s2_cloud_frac"),
        "config_fingerprint": config_fingerprint,
        "config_path": str(config_path) if config_path else None,
        "debug_summary": {
            k: (pair.get("debug") or {}).get("picked", {}).get(k)
            for k in ("expected_clear_km2", "overlap_km2", "sun_term", "dt_diff_h")
        },
    }

    path.write_text(json.dumps(lock, indent=2))
    return path


def load_run_lock(path: str | Path) -> Optional[dict]:
    """Read a previously-saved run lock, or return None if it doesn't exist."""
    path = Path(path)
    if not path.exists():
        return None
    return json.loads(path.read_text())


def ensure_dir(p: str | Path) -> Path:
    p = Path(p)
    p.mkdir(parents=True, exist_ok=True)
    return p


def write_json(path: str | Path, obj: Any, *, indent: int = 2) -> Path:
    path = Path(path)
    ensure_dir(path.parent)
    path.write_text(json.dumps(obj, indent=indent, default=str))
    return path


# ---------------------------------------------------------------------------
# Pair-ID generation
# ---------------------------------------------------------------------------

_EMIT_DT_RE = re.compile(r"(\d{8}T\d{6})")


def _emit_datetime_from_nc(emit_nc: str | Path) -> str:
    """Extract the YYYYMMDDTHHMMSS timestamp from an EMIT L2A NC filename.

    Example::

        >>> _emit_datetime_from_nc("EMIT_L2A_RFL_001_20230615T123456_2312311_007.nc")
        '20230615T123456'
    """
    stem = Path(emit_nc).stem
    m = _EMIT_DT_RE.search(stem)
    if m:
        return m.group(1)
    # Fallback: return whole stem (shouldn't happen with real EMIT filenames)
    return stem


def _s2_tile_id_from_item(s2_item: dict) -> str:
    """Extract the MGRS tile ID (e.g. 'T11SQA') from an S2 STAC item dict.

    Tries ``grid:code`` in properties first, then parses the item ``id``
    (format like ``S2B_32TQM_20230615_0_L2A``).
    """
    props = s2_item.get("properties", {}) or {}
    grid_code = props.get("grid:code")
    if grid_code:
        # grid:code is like "MGRS-32TQM" → strip prefix and add "T"
        code = str(grid_code).replace("MGRS-", "")
        if not code.startswith("T"):
            code = "T" + code
        return code

    # Parse from item id: S2B_32TQM_20230615_0_L2A → "T32TQM"
    item_id = s2_item.get("id", "")
    parts = item_id.split("_")
    if len(parts) >= 2:
        tile_part = parts[1]
        if not tile_part.startswith("T"):
            tile_part = "T" + tile_part
        return tile_part

    return "TUNKNOWN"


def _s2_date_from_item(s2_item: dict) -> str:
    """Extract YYYYMMDD from an S2 STAC item dict."""
    props = s2_item.get("properties", {}) or {}
    dt_str = props.get("datetime", "")
    if dt_str:
        # ISO format: 2023-06-15T10:30:00Z → 20230615
        dt_str = str(dt_str).replace("-", "").replace(":", "")
        m = re.match(r"(\d{8})", dt_str)
        if m:
            return m.group(1)

    # Parse from item id: S2B_32TQM_20230615_0_L2A → "20230615"
    item_id = s2_item.get("id", "")
    parts = item_id.split("_")
    if len(parts) >= 3:
        m = re.match(r"(\d{8})", parts[2])
        if m:
            return m.group(1)

    return "00000000"


def make_pair_id(emit_nc: str | Path, s2_item: dict) -> str:
    """Build a unique pair identifier: ``{EMIT_datetime}_{S2_tile}_{S2_date}``.

    Examples::

        >>> make_pair_id(
        ...     "EMIT_L2A_RFL_001_20230615T123456_2312311_007.nc",
        ...     {"id": "S2B_11SQA_20230615_0_L2A",
        ...      "properties": {"datetime": "2023-06-15T10:30:00Z",
        ...                     "grid:code": "MGRS-11SQA"}},
        ... )
        '20230615T123456_T11SQA_20230615'

    Args:
        emit_nc:  Path to EMIT L2A reflectance netCDF.
        s2_item:  Sentinel-2 STAC item dictionary.

    Returns:
        A filesystem-safe string uniquely identifying this EMIT–S2 pair.
    """
    emit_dt = _emit_datetime_from_nc(emit_nc)
    s2_tile = _s2_tile_id_from_item(s2_item)
    s2_date = _s2_date_from_item(s2_item)
    return f"{emit_dt}_{s2_tile}_{s2_date}"


# ---------------------------------------------------------------------------
# RunPaths — folder layout for one pair
# ---------------------------------------------------------------------------


@dataclass(frozen=True)
class RunPaths:
    """Folder layout for one EMIT–S2 pair.

    The canonical folder name is ``pair_id`` (built by :func:`make_pair_id`).
    ``run_id`` (EMIT-only) is kept for backward compatibility.
    """

    run_id: str
    pair_id: str

    # ── Per-pair root ──────────────────────────────────────────────────────
    local_root: Path
    local_emit: Path
    local_s2: Path
    local_alignment: Path          # was emit_utm
    local_plots: Path
    local_tiles: Path
    local_synthetic: Path
    local_matchers: Path
    local_meta: Path
    local_tile_meta: Path
    local_report_md: Path
    local_manifest_csv: Path

    # drive (mirrors local under a shared output root)
    drive_root: Optional[Path] = None
    drive_emit: Optional[Path] = None
    drive_s2: Optional[Path] = None
    drive_alignment: Optional[Path] = None   
    drive_plots: Optional[Path] = None
    drive_tiles: Optional[Path] = None
    drive_synthetic: Optional[Path] = None
    drive_matchers: Optional[Path] = None
    drive_meta: Optional[Path] = None
    drive_tile_meta: Optional[Path] = None
    drive_report_md: Optional[Path] = None
    drive_manifest_csv: Optional[Path] = None


    # ── ID extraction ──────────────────────────────────────────────────────

    @staticmethod
    def emit_id_from_nc(emit_nc: str | Path) -> str:
        stem = Path(emit_nc).stem
        return stem.replace("EMIT_L2A_RFL_", "", 1)

    # ── Builder ────────────────────────────────────────────────────────────

    @classmethod
    def build(
        cls,
        *,
        emit_nc: str | Path,
        local_root: str | Path,
        drive_base: str | Path | None = None,
        pair_id: str | None = None,
        s2_item: dict | None = None,
    ) -> "RunPaths":
        """Create folder layout for one pair.

        Args:
            emit_nc:    Path to EMIT L2A netCDF.
            local_root: Working directory for local outputs.
            drive_base: If set, persistent output root.  A subfolder
                        named ``pair_id`` is created under this.
            pair_id:    Explicit pair identifier.  If *None* and *s2_item*
                        is given, computed via :func:`make_pair_id`.
                        Falls back to ``emit_id_from_nc`` for backward compat.
            s2_item:    S2 STAC item dict (used to compute *pair_id* when
                        not provided explicitly).
        """
        run_id = cls.emit_id_from_nc(emit_nc)

        if pair_id is None:
            if s2_item is not None:
                pair_id = make_pair_id(emit_nc, s2_item)
            else:
                pair_id = run_id  # backward compat

        # ── local dirs ─────────────────────────────────────────────────
        local_root = ensure_dir(local_root)
        local_emit = ensure_dir(local_root / "emit")
        local_s2 = ensure_dir(local_root / "s2")
        local_alignment = ensure_dir(local_root / "alignment")
        local_plots = ensure_dir(local_root / "plots")
        local_tiles = ensure_dir(local_root / "tiles")
        local_synthetic = ensure_dir(local_root / "synthetic")
        local_matchers = ensure_dir(local_root / "matchers")
        local_meta = ensure_dir(local_root / "metadata")
        local_tile_meta = ensure_dir(local_meta / "tiles")
        local_report_md = local_root / "report.md"
        local_manifest_csv = local_root / "manifest.csv"

        if drive_base is None:
            return cls(
                run_id=run_id,
                pair_id=pair_id,
                local_root=local_root,
                local_emit = local_emit,
                local_s2 = local_s2,
                local_alignment=local_alignment,
                local_plots=local_plots,
                local_tiles=local_tiles,
                local_synthetic=local_synthetic,
                local_matchers=local_matchers,
                local_meta=local_meta,
                local_tile_meta=local_tile_meta,
                local_report_md=local_report_md,
                local_manifest_csv=local_manifest_csv,
            )

        # ── drive dirs (under pair_id subfolder) ───────────────────────
        drive_root = ensure_dir(Path(drive_base) / pair_id)
        drive_emit = ensure_dir(local_root / "emit")
        drive_s2 = ensure_dir(local_root / "s2")
        drive_alignment = ensure_dir(drive_root / "alignment")
        drive_plots = ensure_dir(drive_root / "plots")
        drive_tiles = ensure_dir(drive_root / "tiles")
        drive_synthetic = ensure_dir(drive_root / "synthetic")
        drive_matchers = ensure_dir(drive_root / "matchers")
        drive_meta = ensure_dir(drive_root / "metadata")
        drive_tile_meta = ensure_dir(drive_meta / "tiles")

        return cls(
            run_id=run_id,
            pair_id=pair_id,
            local_root=local_root,
            local_emit = local_emit,
            local_s2 = local_s2,
            local_alignment=local_alignment,            
            local_plots=local_plots,
            local_tiles=local_tiles,
            local_synthetic=local_synthetic,
            local_matchers=local_matchers,
            local_meta=local_meta,
            local_tile_meta=local_tile_meta,
            local_report_md=local_report_md,
            local_manifest_csv=local_manifest_csv,
            drive_root=drive_root,
            drive_emit = drive_emit,
            drive_s2 = drive_s2,
            drive_alignment=drive_alignment,
            drive_plots=drive_plots,
            drive_tiles=drive_tiles,
            drive_synthetic=drive_synthetic,
            drive_matchers=drive_matchers,
            drive_meta=drive_meta,
            drive_tile_meta=drive_tile_meta,
            drive_report_md=drive_root / "report.md",
            drive_manifest_csv=drive_root / "manifest.csv",
        )


class ReportWriter:
    """
    Report
    """

    def __init__(self, path: str | Path, *, mode: str = "overwrite"):
        self.path = Path(path)
        ensure_dir(self.path.parent)
        self.mode = mode
        self._started = False

    def start(self, *, title: str = "EMIT and Sentinel-2 pairs report") -> "ReportWriter":
        if self._started:
            return self

        overwrite = self.mode.lower() in {"overwrite", "w", "write"}
        if overwrite:
            self.path.write_text(f"# {title}\n\n- Generated: {utc_now_iso()}\n")
        else:
            if not self.path.exists():
                self.path.write_text(f"# {title}\n\n- Generated: {utc_now_iso()}\n")
        self._started = True
        return self

    def section(self, heading: str, lines: Iterable[str]) -> None:
        if not self._started:
            self.start()
        with self.path.open("a", encoding="utf-8") as f:
            f.write(f"\n## {heading}\n")
            for ln in lines:
                if ln is None:
                    continue
                f.write(f"- {ln}\n")

    def raw(self, text: str) -> None:
        if not self._started:
            self.start()
        with self.path.open("a", encoding="utf-8") as f:
            f.write(text)


# -----------------------------------------------------------------------------
# EMIT helpers
# -----------------------------------------------------------------------------


def emit_file_records(umm: dict):
    """
    EMIT UMM sizes and stuff
    """
    recs = umm.get("DataGranule", {}).get("ArchiveAndDistributionInformation", [])
    out = []
    for r in recs:
        out.append(
            {
                "name": r.get("Name"),
                "size_bytes": r.get("SizeInBytes"),
                "format": r.get("Format"),
                "checksum": r.get("Checksum", {}),
            }
        )
    return out


def emit_related_urls(umm: dict):
    """
    URLs for report
    """
    urls = umm.get("RelatedUrls", []) or []
    keep = []
    for u in urls:
        url = u.get("URL", "")
        typ = u.get("Type")
        desc = u.get("Description")
        sub = u.get("Subtype")
        if typ in (
            "GET DATA",
            "GET DATA VIA DIRECT ACCESS",
            "EXTENDED METADATA",
            "USE SERVICE API",
        ):
            keep.append({"url": url, "type": typ, "subtype": sub, "description": desc})
    return keep


def write_emit_metadata(
    emit_item: dict,
    out_dir: str | Path,
    *,
    report: ReportWriter | None = None,
) -> dict:
    """
    Metadata and summary for EMIT
    """
    out_dir = ensure_dir(out_dir)

    meta_raw_path = out_dir / "emit_meta_raw.json"
    umm_raw_path = out_dir / "emit_umm_raw.json"
    summary_path = out_dir / "emit_summary.json"

    write_json(meta_raw_path, emit_item.get("meta", {}) or {})
    write_json(umm_raw_path, emit_item.get("umm", {}) or {})

    umm = emit_item.get("umm", {}) or {}
    begin = (umm.get("TemporalExtent") or {}).get("RangeDateTime", {}).get("BeginningDateTime")
    end = (umm.get("TemporalExtent") or {}).get("RangeDateTime", {}).get("EndingDateTime")

    geom = emit_geom_wgs84_from_umm(umm)
    if geom is None or geom.is_empty:
        bounds_wgs84 = None
        centroid_wgs84 = None
    else:
        minx, miny, maxx, maxy = geom.bounds
        bounds_wgs84 = [minx, miny, maxx, maxy]
        centroid_wgs84 = {"lon": float(geom.centroid.x), "lat": float(geom.centroid.y)}


    add_attrs = {
        a["Name"]: a.get("Values")
        for a in (umm.get("AdditionalAttributes") or [])
        if isinstance(a, dict) and "Name" in a
    }

    summary = {
        "granule_ur": umm.get("GranuleUR"),
        "native_id": (emit_item.get("meta", {}) or {}).get("native-id"),
        "concept_id": (emit_item.get("meta", {}) or {}).get("concept-id"),
        "collection": umm.get("CollectionReference"),
        "time": {"begin": begin, "end": end},
        "cloud_cover_umm": umm.get("CloudCover"),
        "spatial": {
            "bounds_wgs84": bounds_wgs84,
            "centroid_wgs84": centroid_wgs84,
        },
        "orbit_scene": {
            "ORBIT": add_attrs.get("ORBIT"),
            "ORBIT_SEGMENT": add_attrs.get("ORBIT_SEGMENT"),
            "SCENE": add_attrs.get("SCENE"),
        },
        "pge": umm.get("PGEVersionClass"),
        "software": {
            "SOFTWARE_BUILD_VERSION": add_attrs.get("SOFTWARE_BUILD_VERSION"),
            "SOFTWARE_DELIVERY_VERSION": add_attrs.get("SOFTWARE_DELIVERY_VERSION"),
        },
        "files": emit_file_records(umm),
        "related_urls": emit_related_urls(umm),
        "size_mb_from_item": emit_item.get("size"),
    }

    write_json(summary_path, summary)

    if report is not None:
        report.section(
            "EMIT (from CMR UMM)",
            [
                f"GranuleUR: {summary['granule_ur']}",
                f"Native ID: {summary['native_id']}",
                f"Time begin/end: {begin} → {end}",
                f"CloudCover (UMM): {summary['cloud_cover_umm']}",
                f"Bounds WGS84 (UMM polygon): {bounds_wgs84}",
                f"Centroid WGS84: {centroid_wgs84}",
                f"Orbit/Scene: ORBIT={summary['orbit_scene']['ORBIT']} SCENE={summary['orbit_scene']['SCENE']}",
                f"Raw metadata: {umm_raw_path.name}, {meta_raw_path.name}",
            ],
        )

    return summary


# -----------------------------------------------------------------------------
# S2 helpers
# -----------------------------------------------------------------------------


def bounds_from_bbox(bbox: Any) -> Optional[list[float]]:
    if not bbox or len(bbox) != 4:
        return None
    xmin, ymin, xmax, ymax = map(float, bbox)
    return [xmin, ymin, xmax, ymax]


def centroid_from_bounds(bounds: Optional[list[float]]) -> Optional[dict[str, float]]:
    if not bounds:
        return None
    xmin, ymin, xmax, ymax = bounds
    return {"lon": (xmin + xmax) / 2.0, "lat": (ymin + ymax) / 2.0}


def pick_s2_assets_minimal(s2_dict: dict) -> dict:
    assets = s2_dict.get("assets", {}) or {}
    keep_keys = ["visual", "B02", "B03", "B04", "B08", "B11", "B12", "SCL"]
    out = {}
    for k in keep_keys:
        a = assets.get(k)
        if isinstance(a, dict):
            out[k] = {"href": a.get("href"), "type": a.get("type")}
    return out


def write_s2_metadata(
    s2_item: Any,
    out_dir: str | Path,
    *,
    report: ReportWriter | None = None,
) -> dict:
    """
    Metadata and summary
    """
    out_dir = ensure_dir(out_dir)

    s2_dict = s2_item if isinstance(s2_item, dict) else (s2_item.to_dict() if hasattr(s2_item, "to_dict") else {})

    raw_path = out_dir / "s2_item_raw.json"
    summary_path = out_dir / "s2_summary.json"

    write_json(raw_path, s2_dict)

    props = s2_dict.get("properties", {}) or {}
    bbox = s2_dict.get("bbox")
    bounds = bounds_from_bbox(bbox)

    summary = {
        "id": s2_dict.get("id"),
        "datetime": props.get("datetime"),
        "created": props.get("created"),
        "updated": props.get("updated"),
        "platform": props.get("platform"),
        "product_uri": props.get("s2:product_uri"),
        "mgrs": {
            "grid_code": props.get("grid:code"),
            "utm_zone": props.get("mgrs:utm_zone"),
            "latitude_band": props.get("mgrs:latitude_band"),
            "grid_square": props.get("mgrs:grid_square"),
        },
        "projection": {"proj:code": props.get("proj:code")},
        "spatial": {
            "bbox_wgs84": bounds,
            "centroid_wgs84": centroid_from_bounds(bounds),
            "geometry_type": (s2_dict.get("geometry") or {}).get("type"),
        },
        "clouds": {
            "eo:cloud_cover": props.get("eo:cloud_cover"),
            "s2:cloud_shadow_percentage": props.get("s2:cloud_shadow_percentage"),
            "s2:medium_proba_clouds_percentage": props.get("s2:medium_proba_clouds_percentage"),
            "s2:high_proba_clouds_percentage": props.get("s2:high_proba_clouds_percentage"),
            "s2:thin_cirrus_percentage": props.get("s2:thin_cirrus_percentage"),
        },
        "scene_percentages": {
            "s2:nodata_pixel_percentage": props.get("s2:nodata_pixel_percentage"),
            "s2:dark_features_percentage": props.get("s2:dark_features_percentage"),
            "s2:vegetation_percentage": props.get("s2:vegetation_percentage"),
            "s2:not_vegetated_percentage": props.get("s2:not_vegetated_percentage"),
            "s2:water_percentage": props.get("s2:water_percentage"),
            "s2:unclassified_percentage": props.get("s2:unclassified_percentage"),
            "s2:snow_ice_percentage": props.get("s2:snow_ice_percentage"),
        },
        "sun": {"view:sun_azimuth": props.get("view:sun_azimuth"), "view:sun_elevation": props.get("view:sun_elevation")},
        "processing": {
            "s2:processing_baseline": props.get("s2:processing_baseline"),
            "s2:generation_time": props.get("s2:generation_time"),
            "processing:software": props.get("processing:software"),
            "earthsearch:s3_path": props.get("earthsearch:s3_path"),
            "earthsearch:boa_offset_applied": props.get("earthsearch:boa_offset_applied"),
        },
        "assets_minimal": pick_s2_assets_minimal(s2_dict),
    }

    write_json(summary_path, summary)

    if report is not None:
        report.section(
            "Sentinel-2 (from STAC)",
            [
                f"ID: {summary['id']}",
                f"Datetime: {summary['datetime']}",
                f"Platform: {summary['platform']}",
                f"Product URI: {summary['product_uri']}",
                f"proj:code: {summary['projection']['proj:code']}",
                f"MGRS: {summary['mgrs']}",
                f"BBox WGS84: {summary['spatial']['bbox_wgs84']}",
                f"Centroid WGS84: {summary['spatial']['centroid_wgs84']}",
                f"eo:cloud_cover (%): {summary['clouds']['eo:cloud_cover']}",
                f"Raw metadata: {raw_path.name}",
            ],
        )

    return summary


# -----------------------------------------------------------------------------
# this one is for tiles
# -----------------------------------------------------------------------------


def tif_geo_summary(path: str | Path) -> dict:
    """
    get geoTIFF spatial summary
    """

    p = Path(path)
    if not p.exists():
        return {"path": str(p), "error": "not found"}

    with rasterio.open(p) as ds:
        b = ds.bounds
        crs = ds.crs
        out = {
            "path": str(p),
            "crs": crs.to_string() if crs else None,
            "bounds_crs": [float(b.left), float(b.bottom), float(b.right), float(b.top)],
            "shape": [int(ds.height), int(ds.width)],
            "res": [float(ds.res[0]), float(ds.res[1])] if ds.res else None,
            "nodata": ds.nodata,
        }

        if crs:
            wb = transform_bounds(crs, "EPSG:4326", b.left, b.bottom, b.right, b.top, densify_pts=21)
            out["bounds_wgs84"] = [float(wb[0]), float(wb[1]), float(wb[2]), float(wb[3])]
            xmin, ymin, xmax, ymax = out["bounds_wgs84"]
            out["centroid_wgs84"] = {"lon": (xmin + xmax) / 2.0, "lat": (ymin + ymax) / 2.0}

        return out


@dataclass
class TileRecord:
    idx: int
    emit_tif: str
    s2_tif: str
    pair_id: str = ""
    plot_png: Optional[str] = None

    emit_black_frac: Optional[float] = None
    s2_black_frac: Optional[float] = None

    emit_geo: Optional[dict] = None
    s2_geo: Optional[dict] = None

    emit_window: Optional[dict] = None
    s2_window: Optional[dict] = None

    emit_b32_tif: str | None = None
    emit_b32_indices_0based: list[int] | None = None

    # Per-tile realignment stats (populated by save_tile_pair when realign=True)
    realign_stats: dict | None = None

    def to_manifest_row(self) -> dict:
        row = {
            "pair_id": self.pair_id,
            "idx": int(self.idx),
            "emit_tif": self.emit_tif,
            "s2_tif": self.s2_tif,
            "plot_png": self.plot_png,
            "emit_black_frac": self.emit_black_frac,
            "s2_black_frac": self.s2_black_frac,
            "emit_b32_tif": self.emit_b32_tif,
        }
        # Flatten realignment stats into manifest columns
        if self.realign_stats is not None:
            rs = self.realign_stats
            row["realign_applied"] = rs.get("applied", False)
            dy_e, dx_e = rs.get("shift_emit_px", (0.0, 0.0))
            dy_s, dx_s = rs.get("shift_s2_px", (0.0, 0.0))
            row["realign_shift_emit_dy"] = dy_e
            row["realign_shift_emit_dx"] = dx_e
            row["realign_shift_s2_dy"] = dy_s
            row["realign_shift_s2_dx"] = dx_s

        def _pull(prefix: str, g: Optional[dict]):
            if not isinstance(g, dict):
                return
            row[f"{prefix}_crs"] = g.get("crs")
            row[f"{prefix}_bounds_crs"] = g.get("bounds_crs")
            row[f"{prefix}_bounds_wgs84"] = g.get("bounds_wgs84")
            row[f"{prefix}_centroid_wgs84"] = g.get("centroid_wgs84")

        _pull("emit", self.emit_geo)
        _pull("s2", self.s2_geo)
        return row


def write_tile_metadata(
    record: TileRecord,
    tile_info: dict,
    out_dir: str | Path,
    *,
    emit_granule: str | None = None,
    emit_time: Any = None,
    s2_id: str | None = None,
    s2_datetime: str | None = None,
    params: dict | None = None,
) -> tuple[Path, dict]:
    """Write per-tile metadata JSON.

    Filename includes ``pair_id`` when available for multi-scene
    provenance (e.g. ``20230615T123456_T11SQA_20230615_tile003.json``).
    Falls back to ``tile_003.json`` when ``pair_id`` is empty.
    """
    out_dir = ensure_dir(out_dir)

    doc = {
        "pair_id": record.pair_id,
        "tile_id": int(record.idx),
        "created_utc": utc_now_iso(),
        "pair": {
            "emit_granule": emit_granule,
            "emit_time": emit_time,
            "s2_id": s2_id,
            "s2_datetime": s2_datetime,
        },
        "geometry": {
            "emit_tile": record.emit_geo,
            "s2_tile": record.s2_geo,
        },
        "windows": {
            "emit_window": record.emit_window,
            "s2_window": record.s2_window,
        },
        "params": params or {},
        "quality": {
            "emit_black_frac": record.emit_black_frac,
            "s2_black_frac": record.s2_black_frac,
        },
        "files": {
            "emit_tif": record.emit_tif,
            "s2_tif": record.s2_tif,
            "plot_png": record.plot_png,
            "emit_b32_tif": record.emit_b32_tif
        },
        "realignment": record.realign_stats,
        "tile_info": tile_info or {},
    }

    prefix = f"{record.pair_id}_" if record.pair_id else ""
    path = out_dir / f"{prefix}tile{record.idx:03d}.json"
    write_json(path, doc)
    return path, record.to_manifest_row()


def write_manifest_csv(path: str | Path, rows: list[dict] | list[TileRecord]) -> Path:
    """Write per-pair manifest.csv."""

    path = Path(path)
    ensure_dir(path.parent)

    if not rows:
        pd.DataFrame([]).to_csv(path, index=False)
        return path

    if isinstance(rows[0], TileRecord):
        data = [r.to_manifest_row() for r in rows]
    else:
        data = rows

    pd.DataFrame(data).to_csv(path, index=False)
    return path


def write_global_manifest(
    output_root: str | Path,
    pair_manifests: list[str | Path] | None = None,
    *,
    filename: str = "global_manifest.csv",
) -> Path:
    """Concatenate per-pair manifests into a single global manifest.

    If *pair_manifests* is ``None``, all ``manifest.csv`` files found
    one level below *output_root* are collected automatically::

        output_root/
        ├── pair_a/manifest.csv
        ├── pair_b/manifest.csv
        └── global_manifest.csv   ← written here

    Args:
        output_root:     Root output directory containing per-pair folders.
        pair_manifests:  Explicit list of per-pair manifest CSV paths.
                         If *None*, discovered by globbing.
        filename:        Name of the global manifest file.

    Returns:
        Path to the written global manifest CSV.
    """
    output_root = Path(output_root)
    ensure_dir(output_root)
    out_path = output_root / filename

    if pair_manifests is None:
        pair_manifests = sorted(output_root.glob("*/manifest.csv"))

    frames: list[pd.DataFrame] = []
    for csv_path in pair_manifests:
        csv_path = Path(csv_path)
        if csv_path.exists() and csv_path.stat().st_size > 0:
            try:
                df = pd.read_csv(csv_path)
                if not df.empty:
                    frames.append(df)
            except Exception:
                pass

    if frames:
        combined = pd.concat(frames, ignore_index=True)
    else:
        combined = pd.DataFrame()

    combined.to_csv(out_path, index=False)
    return out_path


# -----------------------------------------------------------------------------
# Drive stuff
# -----------------------------------------------------------------------------


def copy_any(
    src: str | Path,
    dst: str | Path,
    *,
    overwrite: bool = False,
    use_rsync: bool = True,
    exclude: list[str] | None = None,
) -> None:
    """
    copy file/dir
    """
    src = Path(src)
    dst = Path(dst)
    if not src.exists():
        raise FileNotFoundError(f"Source does not exist: {src}")

    exclude = exclude or []

    if src.is_file():
        ensure_dir(dst.parent)
    else:
        ensure_dir(dst)

    if use_rsync:
        try:
            cmd = ["rsync", "-a"]
            if not overwrite:
                cmd += ["--ignore-existing"]
            for pat in exclude:
                cmd += ["--exclude", pat]
            if src.is_dir():
                cmd += [str(src) + "/", str(dst) + "/"]
            else:
                cmd += [str(src), str(dst)]
            subprocess.run(cmd, check=True)
            return
        except Exception:
            pass

    if src.is_dir():
        for item in src.iterdir():
            target = dst / item.name
            if item.is_dir():
                if target.exists() and overwrite:
                    shutil.rmtree(target)
                if not target.exists():
                    shutil.copytree(item, target)
            else:
                if target.exists() and not overwrite:
                    continue
                shutil.copy2(item, target)
    else:
        target = (dst / src.name) if dst.is_dir() else dst
        if target.exists() and not overwrite:
            return
        ensure_dir(target.parent)
        shutil.copy2(src, target)


def write_archive_map(path: str | Path, mapping: dict[str, Any], *, report: ReportWriter | None = None) -> Path:
    path = Path(path)
    write_json(path, mapping)

    if report is not None:
        report.section(
            "Drive archival",
            [
                f"Raw EMIT copied to: {mapping.get('drive_raw_emit')}",
                f"Raw S2 copied to: {mapping.get('drive_raw_s2')}",
                f"EMIT products copied to: {mapping.get('drive_emit_reprojections')}",
            ],
        )

    return path


def describe_tif(path):
    path = Path(path)
    if not path.exists():
        print(f"[ERROR] Not found: {path}")
        return

    with rasterio.open(path) as ds:
        print("=" * 80)
        print("FILE:", str(path))
        print("Driver:", ds.driver)
        print("Size (W x H):", ds.width, "x", ds.height)
        print("Bands:", ds.count)
        print("CRS:", ds.crs)
        print("Res:", ds.res)
        print("Nodata:", ds.nodata)

        # Dtypes / bits
        dtypes = ds.dtypes  # list per band
        uniq = sorted(set(dtypes))
        print("\nDtype(s):", uniq)

        # bit depth per dtype
        bits = {dt: int(np.dtype(dt).itemsize * 8) for dt in uniq}
        print("Bit depth(s):", {dt: bits[dt] for dt in uniq})

        if len(uniq) == 1:
            print("Bit depth (all bands):", bits[uniq[0]])
        else:
            print("Bit depth per band:", [bits[dt] for dt in dtypes])

        # Compression / tiling
        comp = ds.profile.get("compress", None) or ds.profile.get("compression", None)
        print("\nCompression:", comp if comp else "NONE/UNSPECIFIED")

        tiled = ds.profile.get("tiled", None)
        blockx = ds.profile.get("blockxsize", None)
        blocky = ds.profile.get("blockysize", None)
        print("Tiled:", tiled)
        if blockx and blocky:
            print("Block size:", blockx, "x", blocky)

        # Pixel interleave / layout (sometimes helpful)
        print("Profile keys:", {k: ds.profile.get(k) for k in ["dtype", "count", "interleave", "bigtiff", "driver"]})
