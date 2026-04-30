import re
import datetime as dt
from datetime import datetime, timezone
from pathlib import Path

import earthaccess as ea
from shapely.geometry import Polygon
from shapely.ops import unary_union

from data.download_utils import retry as _retry_download
from data.pairing.pairs_utils import _parse_iso_utc, _sun_vec_from_az_el

EMIT_SHORT_NAME = "EMITL2ARFL"


def _umm_additional_attr(umm, name):
    want = name.strip().upper()
    for a in (umm.get("AdditionalAttributes") or []):
        if str(a.get("Name", "")).strip().upper() == want:
            vals = a.get("Values") or []
            return vals[0] if vals else None
    return None


def emit_sun_vec_from_umm(umm):
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


def emit_geom_wgs84_from_umm(umm):
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


def emit_item_datetime_utc(item):
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


def emit_item_date(item):
    d = emit_item_datetime_utc(item)
    return d.date() if d else None


def emit_cloud_pct(item):
    umm = item.get("umm") or {}
    v = umm.get("CloudCover", None) or item.get("CloudCover", None)
    try:
        return float(v) if v is not None else float("inf")
    except Exception:
        return float("inf")


def emit_latest_revision_time(item):
    umm = item.get("umm") or {}
    pds = umm.get("ProviderDates") or []

    def _pd_dt(pd):
        d = pd.get("Date")
        if not d:
            return None
        try:
            return _parse_iso_utc(d)
        except Exception:
            return None

    def _pd_type(pd):
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

    d = emit_item_datetime_utc(item)
    return d if d else datetime(1970, 1, 1, tzinfo=timezone.utc)


def emit_dedupe_latest_revision(items, key_fn=None):
    def _default_key(it):
        umm = it.get("umm") or {}
        for k in ("GranuleUR", "NativeId", "EntryTitle", "ShortName"):
            v = umm.get(k)
            if v:
                return str(v)
        for k in ("concept_id", "id"):
            if it.get(k):
                return str(it[k])
        d = emit_item_datetime_utc(it)
        return f"emit_{d.isoformat() if d else 'unknown'}_{id(it)}"

    key_fn = key_fn or _default_key

    best = {}
    for it in items:
        k = key_fn(it)
        cur = best.get(k)
        if cur is None or emit_latest_revision_time(it) > emit_latest_revision_time(cur):
            best[k] = it
    return list(best.values())


def emit_keep_top_n_per_day(items, *, n_per_day=5, max_cloud_pct=None):
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
    out.sort(key=lambda it: (emit_item_datetime_utc(it) or datetime(1970, 1, 1, tzinfo=timezone.utc), emit_cloud_pct(it)))
    return out


def search(*, bbox, start, end, short_name=EMIT_SHORT_NAME, cloud_cover=None, count=200, sort=True):
    if start is None and end is None:
        import warnings
        warnings.warn(
            "EMIT search called with start=None and end=None — returning "
            "ALL available granules. This is non-reproducible; new "
            "granules ingested into the archive will change results.",
            stacklevel=2,
        )

    kwargs = dict(short_name=short_name, temporal=(start, end), bounding_box=bbox, count=count)
    if cloud_cover is not None:
        kwargs["cloud_cover"] = cloud_cover
    result = ea.search_data(**kwargs)

    if not result:
        print("No granules found for the given search criteria.")
        return None

    if sort:
        def _sort_key(item):
            t = emit_item_datetime_utc(item)
            ur = (item.get("umm") or {}).get("GranuleUR", "")
            return (t or dt.datetime(1970, 1, 1, tzinfo=timezone), ur)
        result = sorted(result, key=_sort_key)

    print(f"Found {len(result)} granule(s).")
    return result


def find_obs_for_rfl(rfl_pick, *, short_name="EMITL1BRAD", version="001"):
    pattern = re.compile(
        r"EMIT_L2A_(?:RFL|RFLUNCERT|MASK)_\d{3}_"
        r"(\d{8}T\d{6}_\d{7}_\d{3})"
    )
    scene_key = None
    for url in rfl_pick.data_links():
        m = pattern.search(url.split("/")[-1].split("?")[0])
        if m:
            scene_key = m.group(1)
            break
    if scene_key is None:
        print("[WARN] Could not parse scene key from RFL granule links.")
        return None

    pat = f"EMIT_L1B_RAD_*_{scene_key}*"
    res = ea.search_data(
        short_name=short_name,
        version=version,
        granule_name=pat,
        count=5,
    )
    if not res:
        print(f"[WARN] No L1B granule found for scene key {scene_key}")
        return None

    return res[0]


def _obs_links_from_l1b(l1b_granule):
    links = []
    for url in l1b_granule.data_links():
        name = Path(url.split("?", 1)[0]).name
        if "EMIT_L1B_OBS_" in name and name.endswith(".nc"):
            links.append(url)
    return links


def download_reflectance(pick, dest_dir, assets=["_RFL_", "_MASK_"], *, download_obs=False, obs_dest_dir=None):
    dest = Path(dest_dir)
    dest.mkdir(parents=True, exist_ok=True)

    filtered_asset_links = []
    for url in pick.data_links():
        asset_name = url.split('/')[-1]
        if any(asset in asset_name for asset in assets):
            filtered_asset_links.append(url)
    print(f"Filtered to {len(filtered_asset_links)} reflectance-related asset link(s).")
    links = filtered_asset_links
    if not links:
        raise RuntimeError("No EMIT L2A Reflectance .nc links for the selected granule")
    downloaded = [Path(p) for p in _retry_download(ea.download, links, str(dest))]

    if download_obs:
        obs_dir = Path(obs_dest_dir) if obs_dest_dir else dest
        obs_dir.mkdir(parents=True, exist_ok=True)

        l1b = find_obs_for_rfl(pick)
        if l1b is not None:
            obs_links = _obs_links_from_l1b(l1b)
            if obs_links:
                obs_files = [Path(p) for p in _retry_download(ea.download, obs_links, str(obs_dir))]
                downloaded.extend(obs_files)
                print(f"Downloaded {len(obs_files)} OBS file(s) alongside reflectance.")
            else:
                print("[WARN] L1B granule found but no OBS links in it.")
        else:
            print("[WARN] Could not find matching L1B OBS granule. "
                  "DEM correction will not have viewing angles.")

    return downloaded


def download_obs_from_l1b_granules(l1b_granules, dest_dir):
    dest = Path(dest_dir)
    dest.mkdir(parents=True, exist_ok=True)

    obs_links = []
    for g in l1b_granules:
        obs_links.extend(_obs_links_from_l1b(g))

    if not obs_links:
        raise RuntimeError("No OBS links found in L1B search results")

    files = ea.download(obs_links, str(dest))
    return [Path(p) for p in files]


def fetch_emit_umm_by_granuleur(granuleur, *, short_name="EMITL2ARFL", version="001"):
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


def refetch_emit_pick(granuleur, *, short_name="EMITL2ARFL", version="001"):
    res = ea.search_data(
        short_name=short_name,
        version=version,
        granule_name=granuleur,
        count=1,
    )
    if not res:
        raise ValueError(f"EMIT granule not found: {granuleur}")
    return res[0]
