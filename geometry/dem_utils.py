"""
DEM utilities for terrain parallax correction of EMIT orthorectification.

Downloads Copernicus GLO-30 DEM tiles, resamples to match EMIT ortho grids,
and provides array loading utilities.
"""

import math
import os
import shlex
import subprocess
from pathlib import Path

import numpy as np
import rasterio
from rasterio.transform import Affine


# ---------------------------------------------------------------------------
# Copernicus GLO-30 tile naming
# ---------------------------------------------------------------------------

_COP30_BASE = (
    "https://copernicus-dem-30m.s3.amazonaws.com"
)


def _cop30_tile_url(lat_int: int, lon_int: int) -> str:
    ns = "N" if lat_int >= 0 else "S"
    ew = "E" if lon_int >= 0 else "W"
    lat_s = f"{abs(lat_int):02d}"
    lon_s = f"{abs(lon_int):03d}"
    folder = f"Copernicus_DSM_COG_10_{ns}{lat_s}_00_{ew}{lon_s}_00_DEM"
    return f"{_COP30_BASE}/{folder}/{folder}.tif"


def _tiles_for_bounds(
    left: float, bottom: float, right: float, top: float,
) -> list[tuple[int, int]]:
    """Return list of (lat_int, lon_int) tile corners covering *bounds*."""
    lat_lo = int(math.floor(bottom))
    lat_hi = int(math.floor(top - 1e-9))      # top edge exclusive
    lon_lo = int(math.floor(left))
    lon_hi = int(math.floor(right - 1e-9))

    tiles = []
    for lat in range(lat_lo, lat_hi + 1):
        for lon in range(lon_lo, lon_hi + 1):
            tiles.append((lat, lon))
    return tiles


# ---------------------------------------------------------------------------
# Download
# ---------------------------------------------------------------------------

def _run(cmd: list[str], check: bool = True) -> subprocess.CompletedProcess:
    """Run a subprocess, capturing output."""
    return subprocess.run(
        cmd, text=True, capture_output=True, check=check,
    )


def download_copernicus_dem(
    bounds_wgs84: tuple[float, float, float, float],
    cache_dir: str | Path = "/tmp/dem_cache",
    *,
    verbose: bool = True,
) -> dict:
    """
    Download Copernicus GLO-30 DEM tiles for a geographic bounding box and
    return a path to a merged VRT (or single GeoTIFF if one tile suffices).

    Parameters
    ----------
    bounds_wgs84 : (left, bottom, right, top) in WGS-84 degrees.
    cache_dir    : Local directory for caching downloaded tiles.
    verbose      : Print progress.

    Returns
    -------
    dict with keys:
        dem_path           – str, path to merged VRT or single tile GeoTIFF
        tiles_downloaded   – int
        tiles_cached       – int
        tile_paths         – list[str]
        bounds_wgs84       – tuple
    """
    cache_dir = Path(cache_dir)
    cache_dir.mkdir(parents=True, exist_ok=True)

    left, bottom, right, top = bounds_wgs84
    needed = _tiles_for_bounds(left, bottom, right, top)

    tile_paths: list[str] = []
    downloaded = 0
    cached = 0

    for lat_int, lon_int in needed:
        url = _cop30_tile_url(lat_int, lon_int)
        ns = "N" if lat_int >= 0 else "S"
        ew = "E" if lon_int >= 0 else "W"
        fname = f"COP30_{ns}{abs(lat_int):02d}_{ew}{abs(lon_int):03d}.tif"
        local = cache_dir / fname

        if local.exists():
            if verbose:
                print(f"  [DEM] cached  {fname}")
            cached += 1
        else:
            if verbose:
                print(f"  [DEM] downloading {fname} ...")
            # Use gdal_translate with /vsicurl/ → local GeoTIFF
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

    # If multiple tiles, merge into a VRT
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


# ---------------------------------------------------------------------------
# Resample DEM to match an EMIT ortho grid
# ---------------------------------------------------------------------------

def resample_dem_to_emit_grid(
    dem_path: str,
    reference_envi_path: str,
    out_path: str | Path,
    *,
    resampling: str = "bilinear",
    overwrite: bool = True,
    verbose: bool = True,
) -> str:
    """
    Resample *dem_path* so it has exactly the same grid (bounds, pixel size,
    CRS) as the EMIT ortho ENVI file at *reference_envi_path*.

    Uses ``gdalwarp`` with ``-te`` + ``-tr`` derived from the reference raster.

    Returns
    -------
    str – path to the resampled DEM GeoTIFF.
    """
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


# ---------------------------------------------------------------------------
# Geoid undulation (EGM2008)
# ---------------------------------------------------------------------------

def geoid_undulation_grid(
    transform: Affine,
    height: int,
    width: int,
    *,
    verbose: bool = True,
) -> np.ndarray:
    """Compute EGM2008 geoid undulation *N* for each pixel centre.

    Uses pyproj to transform from orthometric (EGM2008) to ellipsoidal
    (WGS-84) heights.  The undulation is defined as  h_ellip = H_ortho + N,
    so adding N to a Copernicus orthometric DEM converts it to the
    ellipsoidal vertical datum used by EMIT ``location/elev``.

    Parameters
    ----------
    transform : rasterio Affine for the grid (WGS-84 geographic).
    height, width : grid dimensions.

    Returns
    -------
    (height, width) float32 array of geoid undulation values in metres.
    """
    from pyproj import Transformer

    # WGS-84 + EGM2008 orthometric height → WGS-84 3-D ellipsoidal
    t = Transformer.from_crs(
        "EPSG:4326+3855",   # compound: WGS-84 horizontal + EGM2008 vertical
        "EPSG:4979",         # WGS-84 3-D (ellipsoidal height)
        always_xy=True,
    )

    # Pixel-centre coordinates
    cols = np.arange(width, dtype=np.float64)
    rows = np.arange(height, dtype=np.float64)
    cc, rr = np.meshgrid(cols, rows)

    lons = transform.c + (cc + 0.5) * transform.a
    lats = transform.f + (rr + 0.5) * transform.e

    # Transform with H_ortho = 0 → output z ≈ geoid undulation N
    _, _, N = t.transform(lons, lats, np.zeros_like(lons))

    if verbose:
        print(f"  [DEM] geoid undulation: "
              f"min={np.nanmin(N):.2f} m  max={np.nanmax(N):.2f} m  "
              f"mean={np.nanmean(N):.2f} m")

    return N.astype(np.float32)


# ---------------------------------------------------------------------------
# Load DEM array
# ---------------------------------------------------------------------------

def load_dem_array(
    dem_path: str,
    *,
    apply_geoid: bool = False,
    verbose: bool = True,
) -> tuple[np.ndarray, dict]:
    """
    Read a (resampled) DEM into memory as a float32 (H, W) array.

    Parameters
    ----------
    dem_path     : Path to the DEM GeoTIFF.
    apply_geoid  : If True, add EGM2008 geoid undulation to convert
                   Copernicus orthometric heights to WGS-84 ellipsoidal
                   heights (matching EMIT ``location/elev``).

    Returns
    -------
    (dem_array, metadata)
        dem_array  – float32, nodata pixels set to NaN
        metadata   – dict with shape, transform, bounds, nodata, crs
    """
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

    # Mark rasterio-declared nodata as NaN
    if nd is not None:
        arr[arr == nd] = np.nan
    # NOTE: we intentionally do NOT treat 0.0 as nodata — sea-level
    # terrain has genuine elevation ≈ 0 m (e.g. coastal areas, Dead Sea
    # shore).  Copernicus GLO-30 uses its declared nodata tag for ocean,
    # not the value 0.

    if apply_geoid:
        N = geoid_undulation_grid(
            tf, meta["shape"][0], meta["shape"][1], verbose=verbose,
        )
        arr += N  # orthometric → ellipsoidal
        meta["geoid_applied"] = True

    return arr, meta
