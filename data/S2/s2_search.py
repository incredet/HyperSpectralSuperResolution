from shapely.strtree import STRtree
from pystac_client import Client
from typing import Any, Dict, Optional, Tuple, List
from pathlib import Path

from datetime import datetime, timezone, timedelta
from dataclasses import dataclass
from shapely.geometry import shape
import rasterio
from rasterio.mask import mask as rio_mask
from shapely.geometry import mapping
import numpy as np
from shapely.ops import transform
import pyproj


from rasterio.warp import reproject
from rasterio.enums import Resampling

import requests
from tqdm import tqdm



import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from pairing.pairs_utils import (
    _parse_iso_utc, 
    _to_utc, 
    _sun_vec_from_az_el, 
    overlap_metrics_and_geom_wgs84, 
    _angle_between_unit_vecs,
    local_solar_time_hours, 
    circ_hours_diff, 
    _dt_hours
    )

from EMIT.emit_search import (
    emit_item_datetime_utc, 
    emit_geom_wgs84_from_umm,
    emit_sun_vec_from_umm
)

import time

try:
    from pystac_client.exceptions import APIError
except Exception:
    APIError = Exception

def _time_chunks(dt_min, dt_max, chunk_days=14):
    cur = dt_min
    while cur < dt_max:
        nxt = min(dt_max, cur + timedelta(days=chunk_days))
        yield cur, nxt
        cur = nxt

def _stac_time_range(dt0, dt1):
    return f"{dt0.isoformat().replace('+00:00','Z')}/{dt1.isoformat().replace('+00:00','Z')}"

def _stac_search_items_with_retries(client, *, collections, datetime_range, intersects=None, bbox=None, limit=200, retries=4):
    last_err = None
    for a in range(retries):
        try:
            search = client.search(
                collections=collections,
                datetime=datetime_range,
                intersects=intersects,
                bbox=bbox,
                limit=limit,      
            )
            return list(search.items()) 
        except APIError as e:
            last_err = e
            msg = str(e)
            sleep_s = 1.5 * (2 ** a)
            time.sleep(sleep_s)
    raise last_err


CLOUD_CLASSES = {8, 9, 10, 11}


def reproject_geom(geom_wgs84, dst_crs):
    tfm = pyproj.Transformer.from_crs(4326, dst_crs, always_xy=True).transform
    return transform(tfm, geom_wgs84)

def count_cloud_pixels(scl_href: str, roi_geom_wgs84):
    """Return (#cloud_pixels, #total_valid_pixels) within ROI from an SCL raster (URL or local)."""
    vsi_href = scl_href
    if scl_href.startswith("http://") or scl_href.startswith("https://"):
        vsi_href = f"/vsicurl/{scl_href}"

    with rasterio.Env(
        GDAL_DISABLE_READDIR_ON_OPEN="EMPTY_DIR",
        CPL_VSIL_CURL_ALLOWED_EXTENSIONS=".tif,.tiff",
        VSI_CACHE=True,
        VSI_CACHE_SIZE=50_000_000,
    ):
        with rasterio.open(vsi_href) as ds:
            roi_proj = reproject_geom(roi_geom_wgs84, ds.crs)
            data, _ = rio_mask(ds, [mapping(roi_proj)], crop=True)

            scl = data[0]
            valid = scl != 0
            total = int(valid.sum())
            clouds = int(np.isin(scl[valid], list(CLOUD_CLASSES)).sum())  # <-- only valid pixels
            return clouds, total
        

@dataclass
class S2Rec:
    item: Any               
    geom_wgs84: Any          
    dt_utc: datetime
    meta_cloud: float
    sun_vec: Optional[Tuple[float,float,float]]
    scl_href: Optional[str]
    key: str
    updated_utc: datetime

@dataclass
class S2Index:
    recs: List[S2Rec]
    tree: STRtree


def _get_s2_sun_vec(props: Dict[str, Any]) -> Optional[Tuple[float, float, float]]:
    az = props.get("view:sun_azimuth")
    el = props.get("view:sun_elevation")
    if az is not None and el is not None:
        try:
            return _sun_vec_from_az_el(float(az), float(el))
        except Exception:
            pass

    az2 = props.get("s2:mean_solar_azimuth")
    zen = props.get("s2:mean_solar_zenith")
    if az2 is not None and zen is not None:
        try:
            az2 = float(az2)
            zen = float(zen)
            el2 = 90.0 - zen
            return _sun_vec_from_az_el(az2, el2)
        except Exception:
            pass

    return None



def _s2_item_updated_time(item) -> datetime:
    p = item.properties or {}
    for k in ("updated", "created"):
        if p.get(k):
            try:
                return _parse_iso_utc(p[k])
            except Exception:
                pass
    if item.datetime:
        return _to_utc(item.datetime)
    return datetime(1970, 1, 1, tzinfo=timezone.utc)

def _s2_dedupe_key(item) -> str:
    p = item.properties or {}
    for k in ("s2:product_uri", "sentinel:product_id", "s2:granule_id", "s2:datatake_id"):
        if p.get(k):
            return str(p[k])
    return str(getattr(item, "id", None) or "unknown")

def _safe_float(x, default=999.0) -> float:
    try:
        return float(x)
    except Exception:
        return float(default)

def _find_scl_href(item) -> Optional[str]:
    assets = getattr(item, "assets", {}) or {}
    for k in ("scl", "SCL", "scl_20m", "SCL_20m"):
        if k in assets:
            href = assets[k].href
            if href and "jp2" in str(href).lower():
                continue
            return href
    for k, a in assets.items():
        if "scl" in str(k).lower():
            href = getattr(a, "href", None)
            if href and "jp2" in str(href).lower():
                continue
            return href
    return None

def build_s2_index(
    *,
    aoi_geom_wgs84,
    dt_min_utc,
    dt_max_utc,
    s2_api,
    s2_collection,
    limit=200,             
    chunk_days=14,   
    simplify_tol=0.0,  
    prefer_intersects=True,
):
    dt_min_utc = _to_utc(dt_min_utc)
    dt_max_utc = _to_utc(dt_max_utc)

    # Geometry to send to STAC
    geom = aoi_geom_wgs84
    if simplify_tol and simplify_tol > 0:
        try:
            geom = geom.simplify(simplify_tol, preserve_topology=True)
        except Exception:
            pass

    intersects_payload = mapping(geom) if prefer_intersects else None
    bbox_payload = list(geom.bounds)

    client = Client.open(s2_api)

    items_all = []
    for c0, c1 in _time_chunks(dt_min_utc, dt_max_utc, chunk_days=chunk_days):
        time_range = _stac_time_range(c0, c1)

        # Try intersects first (more precise)…
        if prefer_intersects:
            try:
                items = _stac_search_items_with_retries(
                    client,
                    collections=[s2_collection],
                    datetime_range=time_range,
                    intersects=intersects_payload,
                    bbox=None,
                    limit=limit,
                )
                items_all.extend(items)
                continue
            except Exception:
                # …fallback to bbox if the server chokes
                pass

        items = _stac_search_items_with_retries(
            client,
            collections=[s2_collection],
            datetime_range=time_range,
            intersects=None,
            bbox=bbox_payload,
            limit=limit,
        )
        items_all.extend(items)

    by_key = {}
    for it in items_all:
        if it.datetime is None or it.geometry is None:
            continue
        k = _s2_dedupe_key(it)
        upd = _s2_item_updated_time(it)
        cur = by_key.get(k)
        if cur is None or upd > cur[0]:
            by_key[k] = (upd, it)
    items = [v[1] for v in by_key.values()]

    recs = []
    for it in items:
        if it.datetime is None or it.geometry is None:
            continue
        geom_it = shape(it.geometry)
        dt = _to_utc(it.datetime)
        props = it.properties or {}
        meta_cc = _safe_float(props.get("eo:cloud_cover", 999.0), default=999.0)
        sun_vec = _get_s2_sun_vec(props)
        scl_href = _find_scl_href(it)
        k = _s2_dedupe_key(it)
        upd = _s2_item_updated_time(it)
        recs.append(S2Rec(it, geom_it, dt, meta_cc, sun_vec, scl_href, k, upd))

    geoms = [r.geom_wgs84 for r in recs]
    tree = STRtree(geoms)
    return S2Index(recs=recs, tree=tree)


def find_best_s2_for_emit_item(
    emit_item: dict,
    *,
    s2_index: S2Index,
    days: float = 3.0,
    sun_deg_max: Optional[float] = 5.0,  
    max_tod_diff_h: float = 1.5,       
    tile_m: float = 60000.0,              
    top_k_prefilter: int = 50,
    meta_cc_max: Optional[float] = None,  
    scl_cloud_max: Optional[float] = None, 
):
    """for each EMIT candidate, we find the best Sentinel-2 candidate"""
    
    umm = emit_item.get("umm") or {}
    emit_dt = emit_item_datetime_utc(emit_item)
    if emit_dt is None:
        return None, None, {"reason": "emit_missing_time"}

    emit_geom = emit_geom_wgs84_from_umm(umm) 
    if emit_geom is None:
        return None, None, {"reason": "emit_missing_polygon"}
    anchor_lon = float(emit_geom.centroid.x)

    dt0 = emit_dt - timedelta(days=days)
    dt1 = emit_dt + timedelta(days=days)

    res = s2_index.tree.query(emit_geom)
    possible_idxs = [int(i) for i in res]


    emit_lst = local_solar_time_hours(emit_dt, anchor_lon)

    candidates = []
    for idx in possible_idxs:
        r = s2_index.recs[idx]

        if r.dt_utc < dt0 or r.dt_utc > dt1:
            continue

        if meta_cc_max is not None and r.meta_cloud > meta_cc_max:
            continue

        om = overlap_metrics_and_geom_wgs84(emit_geom, r.geom_wgs84, tile_m=tile_m)
        if om["overlap_area_m2"] <= 0.0:
            continue
        if not om["can_fit_tile"]:
            continue

        # Sun similarity if possible; else TOD
        sun_delta = None
        tod_d = None

        emit_sun_vec = emit_sun_vec_from_umm(umm)

        if emit_sun_vec is not None and r.sun_vec is not None:
            sun_delta = _angle_between_unit_vecs(emit_sun_vec, r.sun_vec)
            if sun_deg_max is not None and sun_delta > sun_deg_max:
                continue
        else:
            s2_lst = local_solar_time_hours(r.dt_utc, anchor_lon)
            tod_d = circ_hours_diff(emit_lst, s2_lst)
            if tod_d > max_tod_diff_h:
                continue

        dt_diff_h = _dt_hours(r.dt_utc, emit_dt)
        overlap_area_m2 = om["overlap_area_m2"]

        candidates.append({
            "rec": r,
            "overlap_geom_wgs84": om["overlap_geom_wgs84"],
            "overlap_area_m2": overlap_area_m2,
            "overlap_w_m": om["width_m"],
            "overlap_h_m": om["height_m"],
            "dt_diff_h": dt_diff_h,
            "sun_delta_deg": sun_delta,
            "tod_diff_h": tod_d,
            "meta_cloud": r.meta_cloud,
        })

    if not candidates:
        return None, None, {
            "reason": "no_candidates_after_time_sun_overlap",
            "emit_dt": emit_dt.isoformat(),
            "n_spatial_hits": len(possible_idxs),
        }

    def _pref_key(c):
        sun_term = c["sun_delta_deg"]
        if sun_term is None:
            sun_term = c["tod_diff_h"]
        return (sun_term, c["dt_diff_h"], -c["overlap_area_m2"], c["meta_cloud"])

    candidates.sort(key=_pref_key)
    pre = candidates[:max(1, min(top_k_prefilter, len(candidates)))]

    best = None
    tested = []

    for c in pre:
        r = c["rec"]
        if r.scl_href is None:
            continue
        try:
            clouds, total = count_cloud_pixels(r.scl_href, c["overlap_geom_wgs84"])  # <-- your function
        except Exception:
            continue

        scl_cloud = (clouds / total) if total else 1.0
        if scl_cloud_max is not None and scl_cloud > scl_cloud_max:
            tested.append({**c, "scl_cloud": scl_cloud, "expected_clear_m2": 0.0, "skip": "scl_cloud_max"})
            continue

        expected_clear = c["overlap_area_m2"] * (1.0 - scl_cloud)

        sun_term = c["sun_delta_deg"] if c["sun_delta_deg"] is not None else c["tod_diff_h"]
        rank = (-expected_clear, sun_term, c["dt_diff_h"])

        tested.append({**c, "scl_cloud": scl_cloud, "expected_clear_m2": expected_clear})

        if best is None or rank < best["rank"]:
            best = {
                "rank": rank,
                "item": r.item,
                "scl_cloud": scl_cloud,
                "expected_clear_m2": expected_clear,
                "sun_term": sun_term,
                "dt_diff_h": c["dt_diff_h"],
                "overlap_area_m2": c["overlap_area_m2"],
                "meta_cloud": c["meta_cloud"],
                "overlap_w_m": c["overlap_w_m"],
                "overlap_h_m": c["overlap_h_m"],
                "s2_key": r.key,
                "s2_updated": r.updated_utc.isoformat(),
            }

    if best is None:
        return None, None, {
            "reason": "all_scl_failed_or_missing",
            "emit_dt": emit_dt.isoformat(),
            "n_candidates": len(candidates),
            "n_prefilter": len(pre),
        }

    tested.sort(key=lambda x: (-x.get("expected_clear_m2", -1.0), x.get("sun_delta_deg") or x.get("tod_diff_h") or 999.0, x.get("dt_diff_h", 999.0)))
    top_dbg = []
    for t in tested[:10]:
        it = t["rec"].item
        top_dbg.append({
            "s2_id": getattr(it, "id", None),
            "s2_dt": t["rec"].dt_utc.isoformat(),
            "dt_diff_h": round(t["dt_diff_h"], 3),
            "sun_delta_deg": None if t["sun_delta_deg"] is None else round(t["sun_delta_deg"], 3),
            "tod_diff_h": None if t["tod_diff_h"] is None else round(t["tod_diff_h"], 3),
            "meta_cloud": round(t["meta_cloud"], 3),
            "scl_cloud": round(t.get("scl_cloud", 1.0), 5),
            "overlap_km2": round(t["overlap_area_m2"] / 1e6, 4),
            "expected_clear_km2": round(t.get("expected_clear_m2", 0.0) / 1e6, 4),
            "overlap_w_m": round(t["overlap_w_m"], 2),
            "overlap_h_m": round(t["overlap_h_m"], 2),
            "s2_key": t["rec"].key,
            "s2_updated": t["rec"].updated_utc.isoformat(),
        })

    dbg = {
        "emit_dt": emit_dt.isoformat(),
        "days": days,
        "tile_m": tile_m,
        "sun_deg_max": sun_deg_max,
        "max_tod_diff_h": max_tod_diff_h,
        "top_k_prefilter": top_k_prefilter,
        "picked": {
            "s2_id": getattr(best["item"], "id", None),
            "dt_diff_h": round(best["dt_diff_h"], 3),
            "sun_term": round(best["sun_term"], 3),
            "meta_cloud": round(best["meta_cloud"], 3),
            "scl_cloud": round(best["scl_cloud"], 5),
            "overlap_km2": round(best["overlap_area_m2"] / 1e6, 4),
            "expected_clear_km2": round(best["expected_clear_m2"] / 1e6, 4),
            "overlap_w_m": round(best["overlap_w_m"], 2),
            "overlap_h_m": round(best["overlap_h_m"], 2),
            "s2_key": best["s2_key"],
            "s2_updated": best["s2_updated"],
        },
        "n_spatial_hits": len(possible_idxs),
        "n_candidates": len(candidates),
        "n_prefilter": len(pre),
        "top_candidates": top_dbg,
    }

    return best["item"], best["scl_cloud"], dbg


def download_asset(href, out_path):
    r = requests.get(href, stream=True)
    r.raise_for_status()
    total = int(r.headers.get("content-length", 0))
    with open(out_path, "wb") as f, \
        tqdm(total=total, unit="B", unit_scale=True, desc=out_path.name) as pbar:
        for chunk in r.iter_content(chunk_size=2**20):
            if chunk:
                f.write(chunk)
                pbar.update(len(chunk))
    return str(out_path)


def _href_suffix(href: str) -> str:
    base = href.split("?", 1)[0]
    suf = Path(base).suffix.lower()
    return suf if suf else ".tif"

def _download_band(item, key: str, out_dir: Path, stem: str) -> Path:
    href = item.assets[key].href
    ext = _href_suffix(href)
    out = out_dir / f"{stem}{ext}"
    if not out.exists():
        download_asset(href, out)
    return out

def download_s2_spectral_stack(item, s2_dir: Path) -> Path:
    """
    For STAC items with assets named like:
      blue, green, red, nir, rededge1/2/3, swir16, swir22, nir08 (optional)
    Create a single 10-band GeoTIFF on the 10m grid.
    """
    s2_dir = Path(s2_dir)
    s2_dir.mkdir(parents=True, exist_ok=True)

    assets = item.assets
    required = ["blue", "green", "red", "nir", "rededge1", "rededge2", "rededge3", "swir16", "swir22"]
    missing = [k for k in required if k not in assets]
    if missing:
        raise ValueError(f"Missing required assets: {missing}. Available: {list(assets.keys())}")

    paths = {}
    paths["blue"]     = _download_band(item, "blue",     s2_dir, f"{item.id}_blue")
    paths["green"]    = _download_band(item, "green",    s2_dir, f"{item.id}_green")
    paths["red"]      = _download_band(item, "red",      s2_dir, f"{item.id}_red")
    paths["nir"]      = _download_band(item, "nir",      s2_dir, f"{item.id}_nir")
    paths["rededge1"] = _download_band(item, "rededge1", s2_dir, f"{item.id}_rededge1")
    paths["rededge2"] = _download_band(item, "rededge2", s2_dir, f"{item.id}_rededge2")
    paths["rededge3"] = _download_band(item, "rededge3", s2_dir, f"{item.id}_rededge3")
    paths["swir16"]   = _download_band(item, "swir16",   s2_dir, f"{item.id}_swir16")
    paths["swir22"]   = _download_band(item, "swir22",   s2_dir, f"{item.id}_swir22")

    nir08_path = None
    if "nir08" in assets:
        nir08_path = _download_band(item, "nir08", s2_dir, f"{item.id}_nir08")

    out_stack = s2_dir / f"{item.id}_S2_10band_10m.tif"
    if out_stack.exists():
        return out_stack

    with rasterio.open(paths["blue"]) as ref:
        H, W = ref.height, ref.width
        ref_transform = ref.transform
        ref_crs = ref.crs
        out_dtype = ref.dtypes[0]

    def warp_to_ref(src_path: Path, resampling):
        with rasterio.open(src_path) as src:
            dst = np.zeros((H, W), dtype=out_dtype)
            reproject(
                source=rasterio.band(src, 1),
                destination=dst,
                src_transform=src.transform,
                src_crs=src.crs,
                dst_transform=ref_transform,
                dst_crs=ref_crs,
                resampling=resampling,
            )
            return dst

    include_nir08 = False
    if nir08_path is not None:
        with rasterio.open(paths["nir"]) as ds_nir, rasterio.open(nir08_path) as ds_nir08:
            nir_res = abs(ds_nir.transform.a)
            nir08_res = abs(ds_nir08.transform.a)
        include_nir08 = (nir08_res != nir_res)

    band_order = [
        ("B02_blue",     paths["blue"],     Resampling.nearest),
        ("B03_green",    paths["green"],    Resampling.nearest),
        ("B04_red",      paths["red"],      Resampling.nearest),
        ("B08_nir",      paths["nir"],      Resampling.nearest),
        ("B05_rededge1", paths["rededge1"], Resampling.bilinear),
        ("B06_rededge2", paths["rededge2"], Resampling.bilinear),
        ("B07_rededge3", paths["rededge3"], Resampling.bilinear),
    ]
    if include_nir08:
        band_order.append(("B8A_nir08", nir08_path, Resampling.bilinear))
    else:
        pass

    band_order += [
        ("B11_swir16", paths["swir16"], Resampling.bilinear),
        ("B12_swir22", paths["swir22"], Resampling.bilinear),
    ]

    if not include_nir08:
        print("WARNING: 'nir08' not included (missing or same resolution as 'nir'). Output will have 9 bands.")

    stack = np.stack([warp_to_ref(p, rs) for (_, p, rs) in band_order], axis=0)

    with rasterio.open(paths["blue"]) as ref:
        profile = ref.profile.copy()
    profile.update(
        driver="GTiff",
        height=H,
        width=W,
        count=stack.shape[0],
        dtype=stack.dtype,
        compress="DEFLATE",
        predictor=2,
        tiled=True,
        BIGTIFF="IF_SAFER",
    )

    with rasterio.open(out_stack, "w", **profile) as dst:
        dst.write(stack)
        for i, (name, _, _) in enumerate(band_order, start=1):
            dst.set_band_description(i, name)

    return out_stack