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


def search(
    *,
    bbox,
    start: dt.datetime,
    end: dt.datetime,
    short_name: str = EMIT_SHORT_NAME,
    cloud_cover=None,
    count: int = 200,
):
    kwargs = dict(short_name=short_name, temporal=(start, end), bounding_box=bbox, count=count)
    if cloud_cover is not None:
        kwargs["cloud_cover"] = cloud_cover
    result = ea.search_data(**kwargs)

    if not result:
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


from pathlib import Path
from typing import List
import re

import earthaccess as ea


def _rfl_scene_key(pick) -> Optional[str]:
    """Extract the scene key (timestamp_orbit_scene) from an L2A RFL granule.

    EMIT filenames follow the pattern::

        EMIT_L2A_RFL_001_20220828T205930_2224013_009.nc

    The scene key is ``20220828T205930_2224013_009`` — shared with the
    corresponding L1B OBS file ``EMIT_L1B_OBS_001_20220828T205930_2224013_009.nc``.
    """
    pattern = re.compile(
        r"EMIT_L2A_(?:RFL|RFLUNCERT|MASK)_\d{3}_"
        r"(\d{8}T\d{6}_\d{7}_\d{3})"
    )
    for url in pick.data_links():
        m = pattern.search(url.split("/")[-1].split("?")[0])
        if m:
            return m.group(1)
    return None


def find_obs_for_rfl(
    rfl_pick,
    *,
    short_name: str = "EMITL1BRAD",
    version: str = "001",
):
    """Find the L1B granule whose OBS file corresponds to an L2A RFL granule.

    Strategy: derive the scene key from the RFL filename, then search CMR
    for the matching L1B RAD granule by ``granule_name`` wildcard.  This is
    a single CMR query — no need to search by bbox/temporal and filter.

    Returns the earthaccess granule object (has ``.data_links()``), or
    ``None`` if no matching L1B granule is found.
    """
    scene_key = _rfl_scene_key(rfl_pick)
    if scene_key is None:
        print("[WARN] Could not parse scene key from RFL granule links.")
        return None

    # CMR supports wildcards in granule_name
    pattern = f"EMIT_L1B_RAD_*_{scene_key}*"
    res = ea.search_data(
        short_name=short_name,
        version=version,
        granule_name=pattern,
        count=5,
    )
    if not res:
        print(f"[WARN] No L1B granule found for scene key {scene_key}")
        return None

    return res[0]


def _obs_links_from_l1b(l1b_granule) -> List[str]:
    """Extract OBS .nc URLs from an L1B RAD granule's data links."""
    links = []
    for url in l1b_granule.data_links():
        name = Path(url.split("?", 1)[0]).name
        if "EMIT_L1B_OBS_" in name and name.endswith(".nc"):
            links.append(url)
    return links


def download_reflectance(
    pick,
    dest_dir: Path | str,
    assets: List[str] = ["_RFL_", "_MASK_"],
    *,
    download_obs: bool = False,
    obs_dest_dir: Optional[Path | str] = None,
) -> List[Path]:
    """Download EMIT L2A Reflectance assets and, optionally, the matching L1B OBS.

    Args:
        pick:          earthaccess granule object for the L2A RFL product.
        dest_dir:      Directory for reflectance / mask downloads.
        assets:        Substrings to filter asset links (default: RFL + MASK).
        download_obs:  If *True*, also find and download the corresponding
                       L1B OBS .nc file (viewing/solar angles, path length,
                       slope, etc.).  Requires the scene key to be parseable
                       from the RFL filename.
        obs_dest_dir:  Where to save the OBS file.  Defaults to *dest_dir*.

    Returns:
        List of downloaded file paths.  If *download_obs* is True and the
        OBS file was found, it is appended at the end of the list.
    """
    dest = Path(dest_dir)
    dest.mkdir(parents=True, exist_ok=True)

    links = _filter_rfl_links(pick.data_links(), desired_assets=assets)
    if not links:
        raise RuntimeError("No EMIT L2A Reflectance .nc links for the selected granule")
    downloaded = [Path(p) for p in ea.download(links, str(dest))]

    if download_obs:
        obs_dir = Path(obs_dest_dir) if obs_dest_dir else dest
        obs_dir.mkdir(parents=True, exist_ok=True)

        l1b = find_obs_for_rfl(pick)
        if l1b is not None:
            obs_links = _obs_links_from_l1b(l1b)
            if obs_links:
                obs_files = [Path(p) for p in ea.download(obs_links, str(obs_dir))]
                downloaded.extend(obs_files)
                print(f"Downloaded {len(obs_files)} OBS file(s) alongside reflectance.")
            else:
                print("[WARN] L1B granule found but no OBS links in it.")
        else:
            print("[WARN] Could not find matching L1B OBS granule. "
                  "DEM correction will not have viewing angles.")

    return downloaded


def download_obs_from_l1b_granules(l1b_granules, dest_dir: Path | str):
    """Download OBS files from pre-fetched L1B granule objects (legacy helper)."""
    dest = Path(dest_dir)
    dest.mkdir(parents=True, exist_ok=True)

    obs_links = []
    for g in l1b_granules:
        obs_links.extend(_obs_links_from_l1b(g))

    if not obs_links:
        raise RuntimeError("No OBS links found in L1B search results")

    files = ea.download(obs_links, str(dest))
    return [Path(p) for p in files]


# ---------------------------------------------------------------------------
# Fetch helpers (reconstruct item objects from stored IDs)
# ---------------------------------------------------------------------------

def fetch_emit_umm_by_granuleur(
    granuleur: str,
    *,
    short_name: str = "EMITL2ARFL",
    version: str = "001",
) -> dict:
    """Fetch the UMM metadata dict for a single EMIT granule from NASA CMR."""
    import requests

    CMR_GRANULES_UMM = "https://cmr.earthdata.nasa.gov/search/granules.umm_json"
    params = {
        "granule_ur": granuleur,
        "short_name": short_name,
        "version": version,
        "page_size": 1,
    }
    headers = {"Accept": "application/vnd.nasa.cmr.umm+json;version=1.6.6"}
    r = requests.get(CMR_GRANULES_UMM, params=params, headers=headers, timeout=60)
    r.raise_for_status()
    items = r.json().get("items", [])
    if not items:
        raise ValueError(f"EMIT granule not found in CMR: {granuleur}")
    return items[0]["umm"]


def refetch_emit_pick(
    granuleur: str,
    *,
    short_name: str = "EMITL2ARFL",
    version: str = "001",
):
    """Re-fetch a single EMIT earthaccess granule object by its granule UR.

    Returns the earthaccess granule (has ``.data_links()``).
    """
    res = ea.search_data(
        short_name=short_name,
        version=version,
        granule_name=granuleur,
        count=1,
    )
    if not res:
        raise ValueError(f"EMIT granule not found: {granuleur}")
    return res[0]