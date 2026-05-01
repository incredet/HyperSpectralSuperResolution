
import json
import os
import shutil
import sys
from pathlib import Path

import earthaccess
import netCDF4 as nc4
import numpy as np
import rasterio

# ── config ──────────────────────────────────────────────────────────────────
AOI_SLUG = "aoi_lat49.0_lon34.0"

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
REPO_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO_ROOT))

# target wavelengths to match for the raw RGB composite (nm)
# picks the EMIT band closest to each wavelength
RGB_WL_NM = (665.0, 560.0, 490.0)

# ── helpers ──────────────────────────────────────────────────────────────────

def find_pair(aoi_dir):
    for sub in aoi_dir.iterdir():
        if sub.is_dir() and (sub / "metadata").is_dir():
            return sub
    raise FileNotFoundError(f"no completed pair found in {aoi_dir}")


def load_pair_meta(pair_dir):
    emit = json.loads((pair_dir / "metadata" / "emit_summary.json").read_text())
    s2   = json.loads((pair_dir / "metadata" / "s2_summary.json").read_text())
    return emit, s2


def download_emit_nc(granule_ur, local_dir):
    local_dir.mkdir(parents=True, exist_ok=True)
    # try netrc first (persisted from a previous login), then env vars
    try:
        earthaccess.login(strategy="netrc")
    except Exception:
        earthaccess.login(strategy="environment")

    # download reflectance
    results = earthaccess.search_data(short_name="EMITL2ARFL", granule_ur=granule_ur)
    if not results:
        raise RuntimeError(f"no EMIT granule found for UR: {granule_ur}")
    rfl_files = [Path(f) for f in earthaccess.download(results, str(local_dir))]
    rfl_nc = next(
        (f for f in rfl_files if f.suffix == ".nc" and "RFLUNCERT" not in f.name),
        None,
    )
    if rfl_nc is None:
        raise RuntimeError("reflectance .nc not found in download")

    # download observation geometry (optional — needed for DEM correction)
    obs_ur = granule_ur.replace("L2A_RFL", "L1B_OBS")
    obs_nc = None
    try:
        obs_results = earthaccess.search_data(
            short_name="EMITL1BOBS", granule_ur=obs_ur
        )
        if obs_results:
            obs_files = [Path(f) for f in earthaccess.download(obs_results, str(local_dir))]
            obs_nc = next(
                (f for f in obs_files if f.suffix == ".nc"), None
            )
    except Exception as e:
        print(f"  warning: could not download OBS file ({e}) — "
              f"DEM correction will be skipped")

    return rfl_nc, obs_nc


def read_raw_swath(rfl_nc, target_wl):
    with nc4.Dataset(rfl_nc, "r") as ds:
        wl = np.array(ds["sensor_band_parameters/wavelengths"][:])
        # reflectance shape: (downtrack, crosstrack, bands)
        refl = np.array(ds["reflectance"][:], dtype=np.float32)
        lon  = np.array(ds["location/lon"][:])
        lat  = np.array(ds["location/lat"][:])
        good_wl = np.array(ds["sensor_band_parameters/good_wavelengths"][:])

    # mask fill/bad values
    refl[refl < 0] = np.nan

    # pick closest band to each target wavelength
    band_idx = [int(np.argmin(np.abs(wl - w))) for w in target_wl]
    rgb = refl[:, :, band_idx].astype(np.float32)   # (H, W, 3)

    return {"rgb": rgb, "wl_selected": [float(wl[i]) for i in band_idx],
            "lon": lon, "lat": lat, "wl_all": wl, "good_wl": good_wl}


def find_alignment_files(pair_dir):
    aln = pair_dir / "alignment"
    if not aln.exists():
        # some pipelines archive into a subdirectory named differently
        aln = pair_dir
    out: dict[str, Path | None] = {
        "emit_utm": None, "s2_overlap": None, "s2_coreg": None
    }
    for p in aln.rglob("*.tif"):
        n = p.name
        if "_DATA_warp_utm" in n:
            out["emit_utm"] = p
        elif "_coreg" in n and "s2" not in n.lower() and out["s2_coreg"] is None:
            out["s2_coreg"] = p
        elif "_coreg" in n:
            out["s2_coreg"] = p
        elif "_overlap" in n:
            out["s2_overlap"] = p
    return out


def save_wgs84_rgb(src_utm_tif, dst_tif):
    try:
        from rasterio.crs import CRS
        from rasterio.warp import calculate_default_transform, reproject, Resampling
    except ImportError:
        print("  rasterio.warp not available — skipping WGS84 step")
        return None

    emit_wl   = np.linspace(381.0, 2493.0, 285)
    bands_1b  = [int(np.argmin(np.abs(emit_wl - nm))) + 1 for nm in RGB_WL_NM]
    dst_crs   = CRS.from_epsg(4326)
    dst_tif.parent.mkdir(parents=True, exist_ok=True)

    with rasterio.open(src_utm_tif) as src:
        transform, width, height = calculate_default_transform(
            src.crs, dst_crs, src.width, src.height, *src.bounds
        )
        profile = src.profile.copy()
        profile.update({
            "crs": dst_crs, "transform": transform,
            "width": width, "height": height, "count": 3,
        })
        with rasterio.open(dst_tif, "w", **profile) as dst:
            for dst_idx, src_band in enumerate(bands_1b, 1):
                reproject(
                    source=rasterio.band(src, src_band),
                    destination=rasterio.band(dst, dst_idx),
                    src_transform=src.transform,
                    src_crs=src.crs,
                    dst_transform=transform,
                    dst_crs=dst_crs,
                    resampling=Resampling.cubic,
                )
    return dst_tif


def run_pre_dem_ortho(
    rfl_nc,
    obs_nc,
    s2_ref,
    out_dir,
):
    try:
        from geometry.EMIT_proj import convert_emit_nc_to_envi
    except ImportError as e:
        print(f"  could not import EMIT_proj: {e}")
        return None

    out_dir.mkdir(parents=True, exist_ok=True)
    result = convert_emit_nc_to_envi(
        emit_nc_paths=[rfl_nc],
        s2_visual_path=s2_ref,
        out_dir=out_dir,
        emit_obs_nc=obs_nc,
        export_loc=False,
        save_geotiffs=True,
        apply_dem_correction=False,
        return_info=True,
    )
    if isinstance(result, tuple):
        _, info = result
        tif = info.get("outputs", {}).get("data_utm_tif")
        if tif:
            return Path(tif)
    elif isinstance(result, Path):
        # look for the tif next to the returned bin
        tif = result.parent / "geotiff" / (result.stem + "_DATA_warp_utm.tif")
        if tif.exists():
            return tif
    # fallback: glob
    hits = list(out_dir.rglob("*_DATA_warp_utm.tif"))
    return hits[0] if hits else None


# ── main ─────────────────────────────────────────────────────────────────────

def main():
    aoi_dir  = DRIVE_ROOT / AOI_SLUG
    if not aoi_dir.exists():
        raise FileNotFoundError(f"AOI folder not found: {aoi_dir}")

    pair_dir = find_pair(aoi_dir)
    print(f"pair: {pair_dir.name}")

    emit_meta, s2_meta = load_pair_meta(pair_dir)
    granule_ur = emit_meta["granule_ur"]
    print(f"EMIT granule: {granule_ur}")

    out_root = DRIVE_ROOT / "viz_intermediates" / AOI_SLUG / pair_dir.name
    out_root.mkdir(parents=True, exist_ok=True)

    # 1. download EMIT .nc -------------------------------------------------------
    dl_dir = out_root / "_download"
    rfl_nc, obs_nc = download_emit_nc(granule_ur, dl_dir)
    print(f"downloaded RFL: {rfl_nc.name}")
    print(f"downloaded OBS: {obs_nc.name if obs_nc else 'not available'}")

    # 2. raw swath ---------------------------------------------------------------
    print("reading raw swath …")
    swath = read_raw_swath(rfl_nc, RGB_WL_NM)
    np.save(out_root / "emit_raw_rgb.npy", swath["rgb"])
    np.save(out_root / "emit_raw_wl.npy", np.array(swath["wl_selected"]))
    # also save lon/lat for georeferencing awareness
    np.save(out_root / "emit_raw_lon.npy", swath["lon"])
    np.save(out_root / "emit_raw_lat.npy", swath["lat"])
    print(f"  raw swath RGB saved  {swath['rgb'].shape}  "
          f"wl={[f'{w:.0f}' for w in swath['wl_selected']]} nm")

    # 3. pre-DEM orthorectification ----------------------------------------------
    aln_files = find_alignment_files(pair_dir)
    s2_ref = aln_files.get("s2_overlap") or aln_files.get("s2_coreg")
    if s2_ref is None:
        print("  warning: no S2 reference found in alignment/ — "
              "orthorectification may fail")

    print("running orthorectification (DEM off) …")
    pre_dem_tif = run_pre_dem_ortho(
        rfl_nc, obs_nc, s2_ref,
        out_dir=out_root / "_ortho_predem",
    )
    pre_dem_dest = out_root / "emit_pre_dem_utm.tif"
    if pre_dem_tif and pre_dem_tif.exists():
        if not pre_dem_dest.exists():
            shutil.copy2(pre_dem_tif, pre_dem_dest)
        print(f"  pre-DEM TIF saved → {pre_dem_dest.name}")

        # WGS84 RGB intermediate (3-band, ~15 MB)
        wgs84_dest = out_root / "emit_ortho_wgs84_rgb.tif"
        if not wgs84_dest.exists():
            print("  warping pre-DEM RGB to WGS84 …")
            result = save_wgs84_rgb(pre_dem_dest, wgs84_dest)
            if result:
                print(f"  WGS84 TIF saved → {wgs84_dest.name}")
            else:
                print("  warning: WGS84 warp failed")
        else:
            print(f"  WGS84 TIF already exists → {wgs84_dest.name}")
    else:
        print("  warning: pre-DEM orthorectification produced no output")

    # 3b. WGS84 of post-DEM (for 4-stage EMIT pipeline figure) -------------------
    post_dem_dest = out_root / "emit_post_dem_utm.tif"   # copied in step 4 below
    dem_wgs84_dest = out_root / "emit_dem_wgs84_rgb.tif"
    # post-DEM source is the archived alignment file
    post_dem_src = find_alignment_files(pair_dir).get("emit_utm")
    if post_dem_src and post_dem_src.exists() and not dem_wgs84_dest.exists():
        print("  warping post-DEM RGB to WGS84 …")
        result = save_wgs84_rgb(post_dem_src, dem_wgs84_dest)
        if result:
            print(f"  post-DEM WGS84 TIF saved → {dem_wgs84_dest.name}")

    # 4. copy existing alignment files -------------------------------------------
    links = {
        "emit_post_dem_utm.tif": aln_files.get("emit_utm"),
        "s2_pre_coreg.tif":      aln_files.get("s2_overlap"),
        "s2_post_coreg.tif":     aln_files.get("s2_coreg"),
    }
    for name, src in links.items():
        dst = out_root / name
        if src and src.exists():
            if not dst.exists():
                shutil.copy2(src, dst)
            print(f"  copied {name} ← {src.name}")
        else:
            print(f"  warning: {name} source not found ({src})")

    # 5. summary -----------------------------------------------------------------
    print(f"\ndone — intermediates saved to:\n  {out_root}")
    print("files:")
    for p in sorted(out_root.iterdir()):
        size = f"{p.stat().st_size / 1e6:.1f} MB" if p.is_file() else "→ symlink"
        print(f"  {p.name:35s}  {size}")


if __name__ == "__main__":
    main()
