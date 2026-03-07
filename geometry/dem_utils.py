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

def _ensure_proj_geoid_grid(verbose: bool = True) -> None:
    """Download the EGM2008 geoid grid if not already available.

    Works in Google Colab and other environments where pyproj is installed
    without the optional grid files.  Tries three strategies:

    1. Enable PROJ network access (CDN on-the-fly fetch, pyproj ≥ 3.0).
    2. Use ``pyproj.sync.download_grids`` (pyproj ≥ 3.1).
    3. Download the grid manually via HTTPS into PROJ's data directory.
    """
    import pyproj

    # --- Strategy 1: enable PROJ network so grids are fetched on demand ---
    try:
        from pyproj.network import set_network_enabled, is_network_enabled
        if not is_network_enabled():
            set_network_enabled(True)
            if verbose:
                print("  [DEM] enabled PROJ network grid access")
    except ImportError:
        pass  # pyproj < 3.0

    # Quick test: if the grid is already working, return early
    from pyproj import Transformer
    _t = Transformer.from_crs(
        "EPSG:4326+3855", "EPSG:4979", always_xy=True,
    )
    _, _, _z = _t.transform(-100.0, 40.0, 0.0)
    if abs(_z) > 0.1:
        return  # grid is available

    # --- Strategy 2: pyproj.sync download ---
    try:
        from pyproj.sync import download_grids
        if verbose:
            print("  [DEM] downloading EGM2008 geoid grid via pyproj.sync ...")
        download_grids(grids=["us_nga_egm08_25.tif"], verbose=verbose)
        return
    except (ImportError, Exception) as exc:
        if verbose:
            print(f"  [DEM] pyproj.sync download failed: {exc}")

    # --- Strategy 3: manual download ---
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

    # Make sure the geoid grid is available (downloads if needed)
    _ensure_proj_geoid_grid(verbose=verbose)

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

    # Sanity check: if still all zeros, warn loudly
    if np.all(np.abs(N) < 1e-6):
        print("  [DEM] WARNING: geoid undulation is all zeros — "
              "EGM2008 grid may not be installed. The DEM correction "
              "will have a systematic height bias (~10-50 m).")

    if verbose:
        print(f"  [DEM] geoid undulation: "
              f"min={np.nanmin(N):.2f} m  max={np.nanmax(N):.2f} m  "
              f"mean={np.nanmean(N):.2f} m")

    return N.astype(np.float32)


# ---------------------------------------------------------------------------
# Sample DEM at arbitrary lon/lat points
# ---------------------------------------------------------------------------

def sample_dem_at_points(
    dem_path: str,
    lons: np.ndarray,
    lats: np.ndarray,
    *,
    apply_geoid: bool = False,
    verbose: bool = True,
) -> np.ndarray:
    """Sample DEM elevation at arbitrary (lon, lat) coordinates.

    Uses bilinear interpolation via ``scipy.ndimage.map_coordinates``.

    Parameters
    ----------
    dem_path    : Path to DEM GeoTIFF (or VRT).
    lons, lats  : float32 arrays of WGS-84 coordinates (any shape, must match).
    apply_geoid : Add EGM2008 undulation to convert orthometric → ellipsoidal.

    Returns
    -------
    float32 array (same shape as *lons*) with elevation in metres.
    Pixels outside the DEM extent are set to NaN.
    """
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

    # Convert (lon, lat) → fractional (col, row) in the DEM grid
    col_f, row_f = inv_tf * (lon_flat, lat_flat)

    # map_coordinates expects (row, col) as coordinates arrays
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
