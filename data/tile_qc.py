"""Per-tile cloud / brightness QC using EMIT L2A mask layer."""
from __future__ import annotations
import json, shutil, subprocess, sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

import numpy as np
import pandas as pd
import rasterio
from rasterio.transform import Affine


# ── EMIT mask I/O ──────────────────────────────────────────────────────

def read_emit_mask(nc_path, bands=(0, 2)):
    import netCDF4 as nc4
    ds = nc4.Dataset(str(nc_path), "r")
    mv = ds["mask"]
    out = np.stack([np.asarray(mv[:, :, b]) for b in bands], axis=0)
    loc = ds.groups["location"]
    lon = np.asarray(loc.variables["lon"][:], dtype=np.float32)
    lat = np.asarray(loc.variables["lat"][:], dtype=np.float32)
    ds.close()
    return out, lon, lat


# ── mask reprojection ──────────────────────────────────────────────────

def _write_lonlat_tifs(lon, lat, tmp_dir):
    id_tf = Affine(1.0, 0.0, 0.0, 0.0, 1.0, 0.0)
    paths = {}
    for name, arr in [("lon", lon), ("lat", lat)]:
        p = str(Path(tmp_dir) / f"{name}.tif")
        with rasterio.open(p, "w", driver="GTiff",
                           height=arr.shape[0], width=arr.shape[1],
                           count=1, dtype="float32", transform=id_tf) as dst:
            dst.write(arr, 1)
        paths[name] = p
    return paths["lon"], paths["lat"]


def _write_bsq(mask_bands, tmp_dir, nodata=255):
    n, h, w = mask_bands.shape
    raw_bin = str(Path(tmp_dir) / "mask_raw")
    buf = mask_bands.astype(np.float32)
    with open(raw_bin, "wb") as f:
        for b in range(n):
            buf[b].tofile(f)
    Path(raw_bin + ".hdr").write_text(
        f"ENVI\nsamples = {w}\nlines = {h}\nbands = {n}\n"
        f"header offset = 0\nfile type = ENVI Standard\n"
        f"data type = 4\ninterleave = bsq\nbyte order = 0\n"
        f"data ignore value = {nodata}\n"
    )
    return raw_bin, h, w, n


def _build_mask_vrt(raw_bin, lon_tif, lat_tif, n_bands, h, w, nodata, out_path):
    lines = [
        f'<VRTDataset rasterXSize="{w}" rasterYSize="{h}">',
        '  <Metadata domain="GEOLOCATION">',
        f'    <MDI key="X_DATASET">{lon_tif}</MDI>',
        '    <MDI key="X_BAND">1</MDI>',
        f'    <MDI key="Y_DATASET">{lat_tif}</MDI>',
        '    <MDI key="Y_BAND">1</MDI>',
        '    <MDI key="LINE_OFFSET">0</MDI>',
        '    <MDI key="LINE_STEP">1</MDI>',
        '    <MDI key="PIXEL_OFFSET">0</MDI>',
        '    <MDI key="PIXEL_STEP">1</MDI>',
        '    <MDI key="SRS">EPSG:4326</MDI>',
        '    <MDI key="GEOREFERENCING_CONVENTION">PIXEL_CENTER</MDI>',
        '  </Metadata>',
    ]
    for b in range(1, n_bands + 1):
        lines += [
            f'  <VRTRasterBand dataType="Float32" band="{b}">',
            f'    <NoDataValue>{nodata}</NoDataValue>',
            '    <SimpleSource>',
            f'      <SourceFilename relativeToVRT="0">{raw_bin}</SourceFilename>',
            f'      <SourceBand>{b}</SourceBand>',
            f'      <SourceProperties RasterXSize="{w}" '
            f'RasterYSize="{h}" DataType="Float32" '
            f'BlockXSize="{w}" BlockYSize="1" />',
            f'      <SrcRect xOff="0" yOff="0" xSize="{w}" ySize="{h}" />',
            f'      <DstRect xOff="0" yOff="0" xSize="{w}" ySize="{h}" />',
            '    </SimpleSource>',
            '  </VRTRasterBand>',
        ]
    lines.append('</VRTDataset>')
    Path(out_path).write_text('\n'.join(lines))
    return out_path


def _extract_crs(conv_info):
    crs = conv_info.get("out", {}).get("out_crs")
    if crs:
        return crs
    cmd_args = conv_info.get("commands", {}).get("gdalwarp_data", {}).get("cmd", [])
    for i, a in enumerate(cmd_args):
        if a == "-t_srs" and i + 1 < len(cmd_args):
            return cmd_args[i + 1]
    return None


def reproject_mask(mask_bands, lon, lat, conv_info, tmp_dir):
    """Reproject EMIT mask bands to the same UTM grid as the reflectance data."""
    tmp = Path(tmp_dir)
    nodata = 255

    lon_tif, lat_tif = _write_lonlat_tifs(lon, lat, tmp)
    raw_bin, h, w, n = _write_bsq(mask_bands, tmp, nodata)
    vrt = _build_mask_vrt(raw_bin, lon_tif, lat_tif, n, h, w, nodata,
                          str(tmp / "mask.vrt"))

    t_srs = _extract_crs(conv_info)
    if not t_srs:
        raise ValueError("Cannot determine target CRS from emit_conversion.json")

    ext = conv_info["commands"]["gdalwarp_data"]["aligned_extent"]
    dst_tif = str(tmp / "mask_utm.tif")
    cmd = [
        "gdalwarp", "-overwrite",
        "-s_srs", "EPSG:4326", "-t_srs", t_srs,
        "-te", str(ext["left"]), str(ext["bottom"]),
               str(ext["right"]), str(ext["top"]),
        "-tr", str(ext["xres"]), str(ext["yres"]),
        "-srcnodata", str(nodata), "-dstnodata", str(nodata),
        "-r", "near", "-of", "GTiff",
        vrt, dst_tif,
    ]
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0:
        raise RuntimeError(f"gdalwarp failed:\n{res.stderr}")

    with rasterio.open(dst_tif) as ds:
        return ds.read(), ds.profile.copy()


# ── per-tile metrics ──────────────────────────────────────────────────

def tile_cloud_frac(mask_utm, mask_profile, tile_tif):
    nodata = mask_profile.get("nodata", 255)
    mt = mask_profile["transform"]
    mh, mw = mask_profile["height"], mask_profile["width"]

    with rasterio.open(tile_tif) as ds:
        tt = ds.transform
        th, tw = ds.height, ds.width

    tl = tt.c
    t_top = tt.f
    tr = tl + tw * abs(tt.a)
    tb = t_top - th * abs(tt.e)

    c0 = int(round((tl - mt.c) / mt.a))
    c1 = int(round((tr - mt.c) / mt.a))
    r0 = int(round((t_top - mt.f) / mt.e))
    r1 = int(round((tb - mt.f) / mt.e))

    r0, r1 = max(0, min(r0, mh)), max(0, min(r1, mh))
    c0, c1 = max(0, min(c0, mw)), max(0, min(c1, mw))

    if r0 >= r1 or c0 >= c1:
        return {"cloud_frac": np.nan, "cirrus_frac": np.nan, "combined_frac": np.nan}

    cloud = mask_utm[0, r0:r1, c0:c1]
    cirrus = mask_utm[1, r0:r1, c0:c1]
    valid = (cloud != nodata) & np.isfinite(cloud)
    n = valid.sum()
    if n == 0:
        return {"cloud_frac": np.nan, "cirrus_frac": np.nan, "combined_frac": np.nan}

    cf = float((cloud[valid] > 0.5).sum() / n)
    ci = float((cirrus[valid] > 0.5).sum() / n)
    co = float(((cloud[valid] > 0.5) | (cirrus[valid] > 0.5)).sum() / n)
    return {"cloud_frac": cf, "cirrus_frac": ci, "combined_frac": co}


def s2_bright_frac(s2_tif, threshold=0.25):
    with rasterio.open(s2_tif) as ds:
        cube = ds.read().astype(np.float32) / 10000.0
    mean_r = np.mean(cube, axis=0)
    valid = np.isfinite(mean_r) & (mean_r > 0)
    if valid.sum() == 0:
        return np.nan
    return float((mean_r[valid] > threshold).sum() / valid.sum())


# ── pair-level orchestration ──────────────────────────────────────────

def download_emit_mask(granule_ur, dest_dir):
    """Fetch the EMIT L2A MASK NC for a given granule UR. Returns Path."""
    from data.EMIT.emit_search import refetch_emit_pick, download_reflectance

    pick = refetch_emit_pick(granule_ur)
    files = download_reflectance(pick, str(dest_dir), assets=["_MASK_"])
    masks = [f for f in files if "_MASK_" in f.name]
    if not masks:
        raise FileNotFoundError(f"No mask file downloaded for {granule_ur}")
    return masks[0]


def qc_pair(pair_dir, tile_rows_df, manifest_df, *,
            mask_dl_dir, tmp_dir, cloud_band=0, cirrus_band=2):
    """Run cloud + brightness QC for all tiles in one pair.

    Returns list of dicts (one per tile) with cloud fractions + s2 brightness.
    Raises on metadata / download / reprojection failures.
    """
    pair_dir = Path(pair_dir)
    summary_path = pair_dir / "metadata" / "emit_summary.json"
    conv_path = pair_dir / "alignment" / "emit_conversion.json"

    with open(summary_path) as f:
        emit_summary = json.load(f)
    with open(conv_path) as f:
        conv_info = json.load(f)

    granule_ur = emit_summary["granule_ur"]
    mask_nc = download_emit_mask(granule_ur, mask_dl_dir)

    try:
        tmp = Path(tmp_dir)
        if tmp.exists():
            shutil.rmtree(tmp)
        tmp.mkdir(parents=True)

        mask_bands, lon, lat = read_emit_mask(
            mask_nc, bands=(cloud_band, cirrus_band)
        )
        mask_utm, mask_profile = reproject_mask(
            mask_bands, lon, lat, conv_info, str(tmp)
        )
    finally:
        mask_nc.unlink(missing_ok=True)

    rows = []
    for _, trow in tile_rows_df.iterrows():
        tile_idx = int(trow["tile_idx"])
        mf_row = manifest_df[manifest_df["idx"] == tile_idx]
        if mf_row.empty:
            continue
        mf_row = mf_row.iloc[0]

        b32_tif = mf_row.get("emit_b32_tif")
        s2_tif = mf_row.get("s2_tif")

        cloud_info = {"cloud_frac": np.nan, "cirrus_frac": np.nan, "combined_frac": np.nan}
        if pd.notna(b32_tif) and Path(b32_tif).exists():
            try:
                cloud_info = tile_cloud_frac(mask_utm, mask_profile, b32_tif)
            except Exception:
                pass

        s2_bright = np.nan
        if pd.notna(s2_tif) and Path(s2_tif).exists():
            try:
                s2_bright = s2_bright_frac(s2_tif)
            except Exception:
                pass

        rows.append({
            "tile_idx": tile_idx,
            "r2_mean": float(trow["r2_mean"]),
            **cloud_info,
            "s2_bright_frac": s2_bright,
        })

    shutil.rmtree(tmp, ignore_errors=True)
    return rows


# ── CLI ───────────────────────────────────────────────────────────────

def run_qc(drive_base, *, min_r2, max_emit_cloud_frac, max_s2_bright_frac,
           cloud_band=0, cirrus_band=2):
    import earthaccess as ea
    ea.login()

    drive_base = Path(drive_base)
    mask_dl_dir = Path("/content/_qc_masks")
    tmp_dir = Path("/content/_qc_tmp")
    mask_dl_dir.mkdir(exist_ok=True)

    r2_df = pd.read_csv(drive_base / "r2_all_tiles.csv")
    print(f"Loaded {len(r2_df)} tiles, "
          f"{(r2_df['r2_mean'] >= min_r2).sum()} pass R² >= {min_r2}")

    r2_pass = r2_df[r2_df["r2_mean"] >= min_r2].copy()
    pairs = r2_pass.groupby(["aoi_slug", "pair_id"]).size().reset_index(name="n_tiles")
    print(f"{len(pairs)} pairs to process")

    qc_rows = []
    failed = []

    from tqdm import tqdm
    for _, pr in tqdm(pairs.iterrows(), total=len(pairs), desc="QC"):
        aoi_slug, pair_id = pr["aoi_slug"], pr["pair_id"]
        pair_dir = drive_base / aoi_slug / pair_id

        if not (pair_dir / "metadata" / "emit_summary.json").exists():
            failed.append((aoi_slug, pair_id, "missing metadata"))
            continue
        if not (pair_dir / "alignment" / "emit_conversion.json").exists():
            failed.append((aoi_slug, pair_id, "missing emit_conversion.json"))
            continue

        mf = pd.read_csv(pair_dir / "manifest.csv")
        tile_rows = r2_pass[
            (r2_pass["aoi_slug"] == aoi_slug) & (r2_pass["pair_id"] == pair_id)
        ]

        try:
            rows = qc_pair(
                pair_dir, tile_rows, mf,
                mask_dl_dir=mask_dl_dir, tmp_dir=tmp_dir,
                cloud_band=cloud_band, cirrus_band=cirrus_band,
            )
        except Exception as e:
            print(f"  {aoi_slug}/{pair_id}: FAILED — {e}")
            failed.append((aoi_slug, pair_id, str(e)))
            continue

        n_flagged = 0
        for r in rows:
            pc = r["combined_frac"] <= max_emit_cloud_frac if np.isfinite(r["combined_frac"]) else False
            ps = r["s2_bright_frac"] <= max_s2_bright_frac if np.isfinite(r["s2_bright_frac"]) else False
            if not pc:
                n_flagged += 1
            qc_rows.append({
                "aoi_slug": aoi_slug, "pair_id": pair_id, **r,
                "pass_emit_cloud": pc, "pass_s2_bright": ps,
                "pass_qc": pc and ps,
            })

        if n_flagged:
            print(f"  {aoi_slug}/{pair_id}: {n_flagged}/{len(rows)} flagged")

    shutil.rmtree(mask_dl_dir, ignore_errors=True)
    shutil.rmtree(tmp_dir, ignore_errors=True)

    qc_df = pd.DataFrame(qc_rows)
    out_csv = drive_base / "r2_tiles_qc.csv"
    qc_df.to_csv(out_csv, index=False)

    n_pass = qc_df["pass_qc"].sum()
    n_total = len(qc_df)
    print(f"\nSaved {out_csv}")
    print(f"Pass QC: {n_pass}/{n_total} ({100*n_pass/n_total:.1f}%)")
    print(f"EMIT cloud fail: {(~qc_df['pass_emit_cloud']).sum()}")
    print(f"S2 bright fail:  {(~qc_df['pass_s2_bright']).sum()}")

    if failed:
        print(f"\n{len(failed)} pairs failed:")
        for a, p, reason in failed:
            print(f"  {a}/{p}: {reason}")

    return qc_df


if __name__ == "__main__":
    import argparse
    from documentation.pairs_artifacts import load_pipeline_config
    from documentation.config import PipelineConfig

    parser = argparse.ArgumentParser(description="Tile QC via EMIT cloud mask")
    parser.add_argument("--drive-base", required=True)
    args = parser.parse_args()

    drive_base = Path(args.drive_base)
    cfg_dict = load_pipeline_config(drive_base)
    cfg = PipelineConfig.from_dict({
        **cfg_dict,
        "aoi_lat": 0.0, "aoi_lon": 0.0,
        "drive_root": str(drive_base),
    })

    run_qc(drive_base, **cfg.qc_params)
