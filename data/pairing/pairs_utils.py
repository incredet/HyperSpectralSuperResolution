from datetime import datetime, timezone, timedelta
from dateutil.parser import isoparse
from shapely.ops import transform as shp_transform
from typing import Optional, Tuple, List
from pyproj import Transformer
from pathlib import Path


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from S2.s2_search import (
    find_best_s2_for_emit_item,
    build_s2_index
)

from EMIT.emit_search import (
    emit_cloud_pct,
    emit_dedupe_latest_revision,
    emit_keep_top_n_per_day,
    emit_item_datetime_utc

)

def _to_utc(dt: datetime) -> datetime:
    if dt.tzinfo is None:
        return dt.replace(tzinfo=timezone.utc)
    return dt.astimezone(timezone.utc)

def _parse_iso_utc(x) -> datetime:
    s = str(x).strip().replace("Z", "+00:00")
    dt = isoparse(s)
    return _to_utc(dt)

def _dt_hours(a: datetime, b: datetime) -> float:
    return abs((a - b).total_seconds()) / 3600.0

def _sun_vec_from_az_el(az_deg: float, el_deg: float) -> Tuple[float, float, float]:
    import math
    az = math.radians(az_deg % 360.0)
    el = math.radians(el_deg)
    ce = math.cos(el)
    x = ce * math.sin(az) 
    y = ce * math.cos(az) 
    z = math.sin(el)      

    n = math.sqrt(x*x + y*y + z*z) + 1e-12
    return (x/n, y/n, z/n)

def _angle_between_unit_vecs(u: Tuple[float, float, float], v: Tuple[float, float, float]) -> float:
    """Return angle in degrees between two unit vectors."""
    import math
    dot = max(-1.0, min(1.0, u[0]*v[0] + u[1]*v[1] + u[2]*v[2]))
    return math.degrees(math.acos(dot))


def local_solar_time_hours(dt_utc: datetime, lon_deg: float) -> float:
    """
    Simple LST approximation (no equation-of-time):
      LST ≈ UTC_hours + lon/15, modulo 24.
    Good enough for a fallback TOD filter.
    """
    dt_utc = _to_utc(dt_utc)
    h = dt_utc.hour + dt_utc.minute/60.0 + dt_utc.second/3600.0
    lst = (h + (lon_deg / 15.0)) % 24.0
    return lst

def circ_hours_diff(a: float, b: float) -> float:
    """Circular difference on [0,24)."""
    d = abs(a - b) % 24.0
    return min(d, 24.0 - d)


def _utm_epsg_for_lonlat(lon: float, lat: float) -> int:
    zone = int((lon + 180.0) // 6.0) + 1
    return (32600 + zone) if lat >= 0 else (32700 + zone)

def _metric_transformers_for_geom_wgs84(geom_wgs84):
    c = geom_wgs84.centroid
    lon, lat = float(c.x), float(c.y)
    epsg = _utm_epsg_for_lonlat(lon, lat)
    fwd = Transformer.from_crs("EPSG:4326", f"EPSG:{epsg}", always_xy=True)
    inv = Transformer.from_crs(f"EPSG:{epsg}", "EPSG:4326", always_xy=True)
    return fwd, inv, epsg

def overlap_metrics_and_geom_wgs84(emit_geom_wgs84, s2_geom_wgs84, *, tile_m: float = 6000.0):
    """
    Compute overlap in a metric CRS:
      - overlap_area_m2
      - overlap_bounds_width_m / height_m
      - can_fit_tile (>= tile_m in both dims)
    Also returns overlap geometry in WGS84 (for SCL counting).
    """
    fwd, inv, epsg = _metric_transformers_for_geom_wgs84(emit_geom_wgs84)

    emit_utm = shp_transform(fwd.transform, emit_geom_wgs84)
    s2_utm   = shp_transform(fwd.transform, s2_geom_wgs84)

    overlap_utm = emit_utm.intersection(s2_utm)
    if overlap_utm.is_empty:
        return {
            "overlap_geom_wgs84": None,
            "overlap_area_m2": 0.0,
            "width_m": 0.0,
            "height_m": 0.0,
            "can_fit_tile": False,
            "epsg": epsg,
        }

    minx, miny, maxx, maxy = overlap_utm.bounds
    width_m  = float(maxx - minx)
    height_m = float(maxy - miny)
    can_fit = (width_m >= tile_m) and (height_m >= tile_m)

    overlap_wgs84 = shp_transform(inv.transform, overlap_utm)

    return {
        "overlap_geom_wgs84": overlap_wgs84,
        "overlap_area_m2": float(overlap_utm.area),
        "width_m": width_m,
        "height_m": height_m,
        "can_fit_tile": can_fit,
        "epsg": epsg,
    }


def pair_emit_to_s2(
    emit_items: List[dict],
    *,
    aoi_geom_wgs84,
    s2_api: str,
    s2_collection: str,
    days: float = 3.0,
    emit_max_cloud_pct: Optional[float] = None,
    emit_top_n_per_day: Optional[int] = None,
    s2_limit: int = 5000,
    **matcher_kwargs,
):
    """
    Returns list of records:
      {emit_item, s2_item, scl_cloud, dbg}
    """
    emit_dedup = emit_dedupe_latest_revision(emit_items)

    if emit_top_n_per_day is not None:
        emit_sel = emit_keep_top_n_per_day(
            emit_dedup,
            n_per_day=int(emit_top_n_per_day),
            max_cloud_pct=emit_max_cloud_pct,
        )
    else:
        # optional cloud filter only
        if emit_max_cloud_pct is not None:
            emit_sel = [it for it in emit_dedup if emit_cloud_pct(it) <= emit_max_cloud_pct]
        else:
            emit_sel = list(emit_dedup)

    dts = [emit_item_datetime_utc(it) for it in emit_sel]
    dts = [dt for dt in dts if dt is not None]
    if not dts:
        return [], {"reason": "no_emit_after_selection"}

    dt_min = min(dts) - timedelta(days=days)
    dt_max = max(dts) + timedelta(days=days)

    s2_index = build_s2_index(
        aoi_geom_wgs84=aoi_geom_wgs84,
        dt_min_utc=dt_min,
        dt_max_utc=dt_max,
        s2_api=s2_api,
        s2_collection=s2_collection,
        limit=s2_limit,
    )

    out = []
    for e in emit_sel:
        s2_item, scl_cloud, dbg = find_best_s2_for_emit_item(
            e,
            s2_index=s2_index,
            days=days,
            **matcher_kwargs,
        )
        out.append({
            "emit_item": e,
            "s2_item": s2_item,
            "scl_cloud": scl_cloud,
            "dbg": dbg,
        })

    return out, {
        "n_emit_in": len(emit_items),
        "n_emit_dedup": len(emit_dedup),
        "n_emit_selected": len(emit_sel),
        "n_s2_indexed": len(s2_index.recs),
        "dt_min": dt_min.isoformat(),
        "dt_max": dt_max.isoformat(),
    }
