import math
import subprocess
from pathlib import Path

import numpy as np
import rasterio


_COP30_BASE = (
    "https://copernicus-dem-30m.s3.amazonaws.com"
)


def _run(cmd, check=True):
    return subprocess.run(
        cmd, text=True, capture_output=True, check=check,
    )


def download_copernicus_dem(
    bounds_wgs84,
    cache_dir = "/tmp/dem_cache",
    *,
    verbose = True,
):
    cache_dir = Path(cache_dir)
    cache_dir.mkdir(parents=True, exist_ok=True)

    left, bottom, right, top = bounds_wgs84
    lat_lo = int(math.floor(bottom))
    lat_hi = int(math.floor(top - 1e-9))
    lon_lo = int(math.floor(left))
    lon_hi = int(math.floor(right - 1e-9))
    needed = [(lat, lon) for lat in range(lat_lo, lat_hi + 1) for lon in range(lon_lo, lon_hi + 1)]

    tile_paths = []
    downloaded = 0
    cached = 0

    for lat_int, lon_int in needed:
        ns = "N" if lat_int >= 0 else "S"
        ew = "E" if lon_int >= 0 else "W"
        lat_s = f"{abs(lat_int):02d}"
        lon_s = f"{abs(lon_int):03d}"
        folder = f"Copernicus_DSM_COG_10_{ns}{lat_s}_00_{ew}{lon_s}_00_DEM"
        url = f"{_COP30_BASE}/{folder}/{folder}.tif"
        fname = f"COP30_{ns}{abs(lat_int):02d}_{ew}{abs(lon_int):03d}.tif"
        local = cache_dir / fname

        if local.exists():
            if verbose:
                print(f"  [DEM] cached  {fname}")
            cached += 1
        else:
            if verbose:
                print(f"  [DEM] downloading {fname} ...")
            try:
                _run([
                    "gdal_translate", "-q",
                    "-of", "GTiff",
                    "-co", "COMPRESS=DEFLATE",
                    "-co", "TILED=YES",
                    f"/vsicurl/{url}",
                    str(local),
                ], check=True)
                downloaded += 1
            except subprocess.CalledProcessError as exc:
                print(f"  [DEM] WARNING: failed to download {fname}: {exc.stderr}")
                continue

        tile_paths.append(str(local))

    if not tile_paths:
        raise RuntimeError(
            f"No Copernicus GLO-30 tiles could be obtained for bounds {bounds_wgs84}"
        )

    if len(tile_paths) == 1:
        dem_path = tile_paths[0]
    else:
        vrt_path = str(cache_dir / "cop30_mosaic.vrt")
        _run(["gdalbuildvrt", "-overwrite", vrt_path, *tile_paths], check=True)
        dem_path = vrt_path

    if verbose:
        print(f"  [DEM] {downloaded} downloaded, {cached} cached, "
              f"{len(tile_paths)} tiles total → {dem_path}")

    return {
        "dem_path": dem_path,
        "tiles_downloaded": downloaded,
        "tiles_cached": cached,
        "tile_paths": tile_paths,
        "bounds_wgs84": bounds_wgs84,
    }


def resample_dem_to_emit_grid(
    dem_path,
    reference_envi_path,
    out_path,
    *,
    resampling = "bilinear",
    overwrite = True,
    verbose = True,
):
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    with rasterio.open(reference_envi_path) as ref:
        b = ref.bounds
        crs = ref.crs
        res_x = abs(float(ref.transform.a))
        res_y = abs(float(ref.transform.e))

    cmd = ["gdalwarp"]
    if overwrite:
        cmd.append("-overwrite")
    cmd += [
        "-t_srs", crs.to_string(),
        "-te", str(b.left), str(b.bottom), str(b.right), str(b.top),
        "-tr", str(res_x), str(res_y),
        "-r", resampling,
        "-dstnodata", "nan",
        "-of", "GTiff",
        "-co", "COMPRESS=DEFLATE",
        "-co", "TILED=YES",
        dem_path,
        str(out_path),
    ]

    if verbose:
        print(f"  [DEM] resampling to EMIT grid: {out_path}")
    _run(cmd, check=True)
    return str(out_path)


def _ensure_proj_geoid_grid(verbose=True):
    import pyproj

    try:
        from pyproj.network import set_network_enabled, is_network_enabled
        if not is_network_enabled():
            set_network_enabled(True)
            if verbose:
                print("  [DEM] enabled PROJ network grid access")
    except ImportError:
        pass
    from pyproj import Transformer
    _t = Transformer.from_crs(
        "EPSG:4326+3855", "EPSG:4979", always_xy=True,
    )
    _, _, _z = _t.transform(-100.0, 40.0, 0.0)
    if abs(_z) > 0.1:
        return

    try:
        from pyproj.sync import download_grids
        if verbose:
            print("  [DEM] downloading EGM2008 geoid grid via pyproj.sync ...")
        download_grids(grids=["us_nga_egm08_25.tif"], verbose=verbose)
        return
    except (ImportError, Exception) as exc:
        if verbose:
            print(f"  [DEM] pyproj.sync download failed: {exc}")

    import urllib.request
    data_dir = Path(pyproj.datadir.get_data_dir())
    grid_file = data_dir / "us_nga_egm08_25.tif"
    if not grid_file.exists():
        url = (
            "https://cdn.proj.org/us_nga_egm08_25.tif"
        )
        if verbose:
            print(f"  [DEM] downloading {url} → {grid_file} ...")
        urllib.request.urlretrieve(url, str(grid_file))
        if verbose:
            print(f"  [DEM] downloaded ({grid_file.stat().st_size / 1e6:.1f} MB)")


def geoid_undulation_grid(
    transform,
    height,
    width,
    *,
    verbose = True,
):
    from pyproj import Transformer

    _ensure_proj_geoid_grid(verbose=verbose)

    t = Transformer.from_crs(
        "EPSG:4326+3855",
        "EPSG:4979",
        always_xy=True,
    )

    cols = np.arange(width, dtype=np.float64)
    rows = np.arange(height, dtype=np.float64)
    cc, rr = np.meshgrid(cols, rows)

    lons = transform.c + (cc + 0.5) * transform.a
    lats = transform.f + (rr + 0.5) * transform.e

    _, _, N = t.transform(lons, lats, np.zeros_like(lons))
    if np.all(np.abs(N) < 1e-6):
        print("  [DEM] WARNING: geoid undulation is all zeros — "
              "EGM2008 grid may not be installed. The DEM correction "
              "will have a systematic height bias (~10-50 m).")

    if verbose:
        print(f"  [DEM] geoid undulation: "
              f"min={np.nanmin(N):.2f} m  max={np.nanmax(N):.2f} m  "
              f"mean={np.nanmean(N):.2f} m")

    return N.astype(np.float32)


def sample_dem_at_points(
    dem_path,
    lons,
    lats,
    *,
    apply_geoid = False,
    verbose = True,
):
    from scipy.ndimage import map_coordinates

    shape = lons.shape
    lon_flat = lons.ravel().astype(np.float64)
    lat_flat = lats.ravel().astype(np.float64)

    with rasterio.open(dem_path) as ds:
        arr = ds.read(1).astype(np.float32)
        nd = ds.nodata
        tf = ds.transform
        inv_tf = ~tf  # inverse: (lon, lat) → (col, row)

    if nd is not None:
        arr[arr == nd] = np.nan

    col_f, row_f = inv_tf * (lon_flat, lat_flat)

    sampled = map_coordinates(
        arr,
        [row_f, col_f],
        order=1,        # bilinear
        mode="constant",
        cval=np.nan,
    )

    out = sampled.reshape(shape).astype(np.float32)

    if apply_geoid:
        from pyproj import Transformer
        _ensure_proj_geoid_grid(verbose=verbose)
        t = Transformer.from_crs(
            "EPSG:4326+3855", "EPSG:4979", always_xy=True,
        )
        _, _, N = t.transform(
            lons.astype(np.float64),
            lats.astype(np.float64),
            np.zeros_like(lons, dtype=np.float64),
        )
        out += N.astype(np.float32)
        if verbose:
            print(f"  [DEM] geoid undulation applied to sampled points: "
                  f"mean N={np.nanmean(N):.2f} m")

    if verbose:
        valid = np.isfinite(out)
        n_valid = int(np.count_nonzero(valid))
        print(f"  [DEM] sampled {n_valid}/{out.size} points from {dem_path}")
        if n_valid > 0:
            print(f"  [DEM] elev range: {np.nanmin(out):.1f} – {np.nanmax(out):.1f} m")

    return out


def load_dem_array(
    dem_path,
    *,
    apply_geoid = False,
    verbose = True,
):
    with rasterio.open(dem_path) as ds:
        arr = ds.read(1).astype(np.float32)
        nd = ds.nodata
        tf = ds.transform
        meta = {
            "shape": (ds.height, ds.width),
            "transform": tf,
            "bounds": ds.bounds,
            "nodata": nd,
            "crs": ds.crs.to_string() if ds.crs else None,
        }

    if nd is not None:
        arr[arr == nd] = np.nan

    if apply_geoid:
        N = geoid_undulation_grid(
            tf, meta["shape"][0], meta["shape"][1], verbose=verbose,
        )
        arr += N  # orthometric → ellipsoidal
        meta["geoid_applied"] = True

    return arr, meta
