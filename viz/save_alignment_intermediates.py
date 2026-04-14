"""
Save alignment intermediate TIFs for a single AOI pair for thesis visualization.

Produces in {DRIVE_ROOT}/viz_intermediates/{aoi_slug}/{pair_id}/:
  emit_raw_rgb.npy          raw swath true-colour (bands ~665/560/490 nm), float32
  emit_raw_full.npy         raw swath all selected 32 bands, float32
  emit_pre_dem_utm.tif      post-orthorectification, DEM correction OFF
  emit_post_dem_utm.tif     post-orthorectification, DEM correction ON  (symlink)
  s2_pre_coreg.tif          S2 before AROSICS                           (symlink)
  s2_post_coreg.tif         S2 after AROSICS                            (symlink)

The last three files already exist in the pair's alignment/ folder;
we symlink them so the viz script has a single clean directory to work from.

Usage (Colab — run after mounting Drive and cloning repo):
    import sys; sys.path.insert(0, '/content/HyperSpectralSuperResolution')
    !python viz/save_alignment_intermediates.py

To process a different AOI, set AOI_SLUG below.

NOTE: Ukraine steppe (49.0, 34.0) is flat — DEM correction
      effect will be minimal. Use a mountainous AOI (e.g. grand_canyon,
      sierra_nevada_spain) for a visually dramatic DEM comparison.
"""

from __future__ import annotations

import json
import os
import re
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

def find_pair(aoi_dir: Path) -> Path:
    for sub in aoi_dir.iterdir():
        if sub.is_dir() and (sub / "metadata").is_dir():
            return sub
    raise FileNotFoundError(f"no completed pair found in {aoi_dir}")


def load_pair_meta(pair_dir: Path) -> tuple[dict, dict]:
    emit = json.loads((pair_dir / "metadata" / "emit_summary.json").read_text())
    s2   = json.loads((pair_dir / "metadata" / "s2_summary.json").read_text())
    return emit, s2


def download_emit_nc(granule_ur: str, local_dir: Path) -> tuple[Path, Path | None]:
    """Download EMIT L2A RFL + L1B OBS .nc files, return (rfl_path, obs_path).

    Authentication (non-interactive) — set before running:
        import os
        from google.colab import userdata
        os.environ["EARTHDATA_USERNAME"] = userdata.get("EARTHDATA_USERNAME")
        os.environ["EARTHDATA_PASSWORD"] = userdata.get("EARTHDATA_PASSWORD")
    Or export them in the shell:
        export EARTHDATA_USERNAME=...
        export EARTHDATA_PASSWORD=...
    """
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


def read_raw_swath(rfl_nc: Path, target_wl: tuple[float, ...]) -> dict:
    """Read selected bands from EMIT .nc raw swath. Returns dict with arrays."""
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


def find_alignment_files(pair_dir: Path) -> dict[str, Path | None]:
    """Locate existing alignment outputs for this pair."""
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


def run_pre_dem_ortho(
    rfl_nc: Path,
    obs_nc: Path | None,
    s2_ref: Path,
    out_dir: Path,
) -> Path | None:
    """Run EMIT orthorectification with DEM correction disabled."""
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

def main() -> None:
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
    if pre_dem_tif and pre_dem_tif.exists():
        dest = out_root / "emit_pre_dem_utm.tif"
        shutil.copy2(pre_dem_tif, dest)
        print(f"  pre-DEM TIF saved → {dest.name}")
    else:
        print("  warning: pre-DEM orthorectification produced no output")

    # 4. symlink existing alignment files ----------------------------------------
    links = {
        "emit_post_dem_utm.tif": aln_files.get("emit_utm"),
        "s2_pre_coreg.tif":      aln_files.get("s2_overlap"),
        "s2_post_coreg.tif":     aln_files.get("s2_coreg"),
    }
    for name, src in links.items():
        dst = out_root / name
        if dst.exists() or dst.is_symlink():
            dst.unlink()
        if src and src.exists():
            dst.symlink_to(src)
            print(f"  linked {name} → {src.name}")
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
