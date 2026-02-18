from __future__ import annotations
import sys

import datetime as dt
from pathlib import Path
from typing import Iterable, List
import pyproj
from shapely.geometry import Point, box, Polygon

import numpy as np
import xarray as xr
import earthaccess as ea
from datetime import datetime, date, timezone
from shapely.ops import unary_union




from datetime import datetime, timezone, timedelta, date
from typing import Any, Dict, Iterable, List, Optional, Tuple

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from pairing.pairs_utils import (
    _parse_iso_utc, 
    _sun_vec_from_az_el
    )

EMIT_SHORT_NAME = "EMITL2ARFL" 

def _umm_additional_attr(umm: dict, name: str):
    """Return first value of a UMM AdditionalAttributes entry by Name (case-insensitive)."""
    want = name.strip().upper()
    for a in (umm.get("AdditionalAttributes") or []):
        if str(a.get("Name", "")).strip().upper() == want:
            vals = a.get("Values") or []
            return vals[0] if vals else None
    return None


def emit_sun_vec_from_umm(umm: dict):
    """
    EMIT provides SOLAR_ZENITH + SOLAR_AZIMUTH in AdditionalAttributes.
    Convert zenith -> elevation and return unit sun vector.
    """
    zen = _umm_additional_attr(umm, "SOLAR_ZENITH")
    az  = _umm_additional_attr(umm, "SOLAR_AZIMUTH")
    if zen is None or az is None:
        return None
    try:
        zen = float(zen)
        az  = float(az)
    except Exception:
        return None

    el = 90.0 - zen
    return _sun_vec_from_az_el(az, el)



def emit_geom_wgs84_from_umm(umm: dict):
    """Parse UMM GPolygons into a Shapely geometry (Polygon/MultiPolygon) in EPSG:4326."""
    gpolys = (
        (umm.get("SpatialExtent") or {})
        .get("HorizontalSpatialDomain", {})
        .get("Geometry", {})
        .get("GPolygons", [])
    )
    if not gpolys:
        return None

    polys = []
    for gp in gpolys:
        pts = (gp.get("Boundary") or {}).get("Points", [])
        coords = [(p.get("Longitude"), p.get("Latitude")) for p in pts]
        coords = [(x, y) for x, y in coords if x is not None and y is not None]
        if len(coords) < 3:
            continue
        if coords[0] != coords[-1]:
            coords.append(coords[0])
        poly = Polygon(coords)
        if not poly.is_valid:
            poly = poly.buffer(0)
        if not poly.is_empty:
            polys.append(poly)

    if not polys:
        return None

    geom = unary_union(polys)
    if geom.geom_type in ("Polygon", "MultiPolygon"):
        return geom
    geoms = [g for g in getattr(geom, "geoms", []) if g.geom_type in ("Polygon", "MultiPolygon")]
    return unary_union(geoms) if geoms else None

def emit_item_datetime_utc(item: dict) -> Optional[datetime]:
    umm = item.get("umm") or {}
    begin = (umm.get("TemporalExtent") or {}).get("RangeDateTime", {}).get("BeginningDateTime")
    if begin:
        try:
            return _parse_iso_utc(begin)
        except Exception:
            pass
    for k in ("datetime", "start_time"):
        if item.get(k):
            try:
                return _parse_iso_utc(item[k])
            except Exception:
                pass
    return None

def emit_item_date(item: dict) -> Optional[date]:
    dt = emit_item_datetime_utc(item)
    return dt.date() if dt else None

def emit_cloud_pct(item: dict) -> float:
    umm = item.get("umm") or {}
    v = umm.get("CloudCover", None)
    if v is None:
        v = item.get("CloudCover", None)
    try:
        return float(v) if v is not None else float("inf")
    except Exception:
        return float("inf")


def emit_latest_revision_time(item: dict) -> datetime:
    umm = item.get("umm") or {}
    pds = umm.get("ProviderDates") or []

    def _pd_dt(pd: dict) -> Optional[datetime]:
        d = pd.get("Date")
        if not d:
            return None
        try:
            return _parse_iso_utc(d)
        except Exception:
            return None

    def _pd_type(pd: dict) -> str:
        return str(pd.get("Type") or pd.get("DateType") or "").strip()

    updates = [_pd_dt(pd) for pd in pds if _pd_type(pd) == "Update"]
    updates = [d for d in updates if d is not None]
    if updates:
        return max(updates)

    anyd = [_pd_dt(pd) for pd in pds]
    anyd = [d for d in anyd if d is not None]
    if anyd:
        return max(anyd)

    prod = (umm.get("DataGranule") or {}).get("ProductionDateTime")
    if prod:
        try:
            return _parse_iso_utc(prod)
        except Exception:
            pass

    dt = emit_item_datetime_utc(item)
    return dt if dt else datetime(1970, 1, 1, tzinfo=timezone.utc)


def emit_dedupe_latest_revision(items: Iterable[dict], key_fn=None) -> List[dict]:
    """
    Keep only latest-revision item per stable key.
    """
    def _default_key(it: dict) -> str:
        umm = it.get("umm") or {}
        for k in ("GranuleUR", "NativeId", "EntryTitle", "ShortName"):
            v = umm.get(k)
            if v:
                return str(v)
        for k in ("concept_id", "id"):
            if it.get(k):
                return str(it[k])
        dt = emit_item_datetime_utc(it)
        return f"emit_{dt.isoformat() if dt else 'unknown'}_{id(it)}"

    key_fn = key_fn or _default_key

    best: Dict[str, dict] = {}
    for it in items:
        k = key_fn(it)
        cur = best.get(k)
        if cur is None or emit_latest_revision_time(it) > emit_latest_revision_time(cur):
            best[k] = it
    return list(best.values())

def emit_keep_top_n_per_day(items: Iterable[dict], *, n_per_day: int = 5, max_cloud_pct: Optional[float] = None) -> List[dict]:
    """
    Optional: keep top-N least-cloudy per UTC day (after dedupe).
    If max_cloud_pct is set, drop cloudier than threshold.
    """
    buckets = {}
    for it in items:
        d = emit_item_date(it)
        if d is None:
            continue
        c = emit_cloud_pct(it)
        if max_cloud_pct is not None and c > max_cloud_pct:
            continue
        buckets.setdefault(d, []).append(it)

    out = []
    for d, arr in buckets.items():
        arr.sort(key=lambda it: emit_cloud_pct(it))
        out.extend(arr[:max(1, n_per_day)])
    out.sort(key=lambda it: (emit_item_datetime_utc(it) or datetime(1970,1,1,tzinfo=timezone.utc), emit_cloud_pct(it)))
    return out


def search(*, 
           bbox, 
           start: dt.datetime, 
           end: dt.datetime,
           short_name: str = EMIT_SHORT_NAME, 
           cloud_cover = [0,100]
           ) -> List:
    result = ea.search_data(short_name=short_name, temporal=(start, end), bounding_box=bbox, cloud_cover=cloud_cover)
    if len(result) == 0:
        print("No granules found for the given search criteria.")
        return None
    print(f"Found {len(result)} granule(s).")
    return result


def _filter_rfl_links(links: Iterable[str], desired_assets: List[str] = ['_RFL_', '_MASK_']) -> List[str]:
    filtered_asset_links = []
    for url in links:
        asset_name = url.split('/')[-1]
        if any(asset in asset_name for asset in desired_assets):
            filtered_asset_links.append(url)
    print(f"Filtered to {len(filtered_asset_links)} reflectance-related asset link(s).")
    return filtered_asset_links


def download_reflectance(pick , dest_dir: Path | str, assets: List[str] = ['_RFL_', '_MASK_']) -> List[Path]:
    dest = Path(dest_dir)
    dest.mkdir(parents=True, exist_ok=True)
    links = _filter_rfl_links(pick.data_links(), desired_assets=assets)
    if not links:
        raise RuntimeError("No EMIT L2A Reflectance .nc links for the selected granule")
    files = ea.download(links, str(dest))
    return [Path(p) for p in files]