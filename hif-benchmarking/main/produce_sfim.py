#!/usr/bin/env python3
"""
produce_sfim.py — End-to-end production pipeline: GeoTIFF → SFIM fusion → GeoTIFF.

Discovers EMIT + S2 tile pairs under the folder structure:
    {drive-root}/{AOI_dir}/{pair_dir}/tiles/{scene}_emit.tif
    {drive-root}/{AOI_dir}/{pair_dir}/tiles/{scene}_s2.tif

Output for each pair goes to:
    {pair_dir}/SFIM/{scene}_SFIM_fused.tif
    {pair_dir}/SFIM/summary.json          (timing, stats, metadata)
    {pair_dir}/SFIM/tile_stats.csv         (per-tile stats for reporting)

Usage
-----
    # 32-band EMIT:
    python main/produce_sfim.py \
        --drive-root /path/to/data \
        --bench-root . \
        --dataset EMIT32 \
        --scale 6 \
        --hs-suffix _emit_b32.tif \
        --ms-suffix _s2.tif

    # Dry run (convert to .mat only, don't run MATLAB):
    python main/produce_sfim.py ... --dry-run

    # Export only (convert existing .mat results to GeoTIFF):
    python main/produce_sfim.py ... --export-only
"""

import argparse
import csv
import json
import math
import os
import subprocess
import sys
import threading
import time
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path

import numpy as np

try:
    from tqdm import tqdm
except ImportError:
    # Minimal fallback when tqdm is not installed
    class tqdm:
        def __init__(self, iterable=None, total=None, desc="", unit="it",
                     bar_format=None, leave=True, **kw):
            self.iterable = iterable
            self.total = total or (len(iterable) if iterable is not None else 0)
            self.desc = desc
            self.n = 0
            self._last_pct = -1
        def __iter__(self):
            for obj in self.iterable:
                yield obj
                self.update(1)
            self.close()
        def __enter__(self):
            return self
        def __exit__(self, *_):
            self.close()
        def update(self, n=1):
            self.n += n
            pct = int(100 * self.n / self.total) if self.total else 0
            if pct != self._last_pct and pct % 5 == 0:
                self._last_pct = pct
                bar = "#" * (pct // 5) + "-" * (20 - pct // 5)
                print(f"\r  {self.desc} [{bar}] {self.n}/{self.total} ({pct}%)", end="", flush=True)
        def set_postfix_str(self, s, refresh=True):
            pass
        def close(self):
            if self.total:
                print()

try:
    import rasterio
    from rasterio.crs import CRS
    from rasterio.transform import Affine
except ImportError:
    sys.exit("ERROR: rasterio is required.  pip install rasterio")

try:
    import scipy.io
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")


# ---------------------------------------------------------------------------
# GeoTIFF I/O
# ---------------------------------------------------------------------------

def read_tif(path: str) -> tuple:
    """Return (array_HWB, profile_dict) from a GeoTIFF."""
    with rasterio.open(path) as src:
        arr = src.read()                      # (B, H, W)
        arr = np.transpose(arr, (1, 2, 0))    # (H, W, B)
        profile = dict(src.profile)
        profile["transform"] = list(src.transform)[:6]
        profile["crs"] = str(src.crs)
    return arr, profile


def write_tif(path: str, arr_hwb: np.ndarray, crs_str: str,
              transform_list: list, dtype: str = "uint16") -> None:
    """Write a (H,W,Bands) array as a GeoTIFF."""
    h, w, b = arr_hwb.shape
    transform = Affine(*transform_list)
    profile = {
        "driver": "GTiff",
        "dtype": dtype,
        "width": w,
        "height": h,
        "count": b,
        "crs": CRS.from_string(crs_str),
        "transform": transform,
        "compress": "deflate",
        "predictor": 2,
        "tiled": True,
        "blockxsize": 256,
        "blockysize": 256,
    }
    with rasterio.open(path, "w", **profile) as dst:
        dst.write(np.transpose(arr_hwb, (2, 0, 1)))


def scene_name_from_tile(filename: str, hs_suffix: str, ms_suffix: str):
    stem = Path(filename).stem
    for suffix in (hs_suffix, ms_suffix):
        tag = Path(suffix).stem
        if stem.endswith(tag):
            return stem[: -len(tag)]
    return None


# ---------------------------------------------------------------------------
# Tile discovery — supports root/AOI/pair/tiles/ structure
# ---------------------------------------------------------------------------

class TileInfo:
    """Metadata about a discovered tile pair."""
    def __init__(self, scene: str, hs_path: Path, ms_path: Path, pair_dir: Path):
        self.scene = scene
        self.hs_path = hs_path
        self.ms_path = ms_path
        self.pair_dir = pair_dir


def load_r2_allowlist(r2_csv: str, min_r2: float) -> set[tuple[str, str, int]]:
    """
    Load r2_all_tiles.csv and return a set of (aoi_slug, pair_id, tile_idx)
    tuples that pass the R² threshold.
    """
    import csv
    allowed = set()
    with open(r2_csv) as f:
        reader = csv.DictReader(f)
        for row in reader:
            if float(row["r2_mean"]) >= min_r2:
                allowed.add((row["aoi_slug"], row["pair_id"], int(row["tile_idx"])))
    return allowed


def tiles_from_r2_csv(r2_csv: str, drive_root: Path, hs_suffix: str,
                      ms_suffix: str, min_r2: float = 0.0,
                      verify_exists: bool = True) -> list[TileInfo]:
    """
    Build tile list directly from r2_all_tiles.csv, avoiding glob on Drive.

    Constructs paths using the naming convention:
        {drive_root}/{aoi_slug}/{pair_id}/tiles/{pair_id}_tile{idx:03d}{suffix}

    Returns only tiles with R² >= min_r2 (and optionally verified to exist).
    """
    import csv

    tiles = []
    total = 0
    r2_pass = 0
    missing = 0

    with open(r2_csv) as f:
        reader = csv.DictReader(f)
        for row in reader:
            total += 1
            r2_mean = float(row["r2_mean"])
            if r2_mean < min_r2:
                continue
            r2_pass += 1

            aoi_slug = row["aoi_slug"]
            pair_id = row["pair_id"]
            tile_idx = int(row["tile_idx"])

            tile_name = f"{pair_id}_tile{tile_idx:03d}"
            tiles_dir = drive_root / aoi_slug / pair_id / "tiles"
            hs_path = tiles_dir / f"{tile_name}{hs_suffix}"
            ms_path = tiles_dir / f"{tile_name}{ms_suffix}"

            if verify_exists and (not hs_path.exists() or not ms_path.exists()):
                missing += 1
                continue

            # Scene name = tile filename stem minus the hs suffix
            scene = tile_name
            pair_dir = drive_root / aoi_slug / pair_id
            tiles.append(TileInfo(scene, hs_path, ms_path, pair_dir))

    print(f"  R² CSV: {total} total, {r2_pass} with R² >= {min_r2}")
    if missing > 0:
        print(f"  WARNING: {missing} tiles missing on disk — skipped")
    print(f"  Tile pairs ready: {len(tiles)}")

    return tiles


def _parse_tile_idx(scene: str) -> int | None:
    """Extract tile index from a scene name like '20240630T074436_T37MCS_20240701_tile026'."""
    import re
    m = re.search(r'tile(\d+)$', scene)
    return int(m.group(1)) if m else None


def discover_tiles(drive_root: Path, hs_suffix: str, ms_suffix: str,
                   aoi_filter: list = None, pair_filter: list = None,
                   r2_allowlist: set = None) -> list[TileInfo]:
    """
    Find HS/MS tile pairs using the fixed structure:
        root / AOI_dir / pair_dir / tiles / {scene}{hs_suffix|ms_suffix}
    """
    hs_tag = Path(hs_suffix).stem
    ms_tag = Path(ms_suffix).stem

    hs_tiles = {}
    ms_tiles = {}
    scene_pair = {}

    hs_pattern = f"*/*/tiles/*{hs_suffix}"
    all_hs = sorted(drive_root.glob(hs_pattern))

    for hs_path in all_hs:
        pair_dir = hs_path.parent.parent
        aoi_dir = pair_dir.parent

        if aoi_filter and aoi_dir.name not in aoi_filter:
            continue
        if pair_filter and pair_dir.name not in pair_filter:
            continue

        stem = hs_path.stem
        if not stem.endswith(hs_tag):
            continue
        scene = stem[: -len(hs_tag)]
        hs_tiles[scene] = hs_path
        scene_pair[scene] = pair_dir

    for scene, hs_path in hs_tiles.items():
        ms_path = hs_path.parent / f"{scene}{ms_suffix}"
        if ms_path.exists():
            ms_tiles[scene] = ms_path

    scanned_pairs = defaultdict(set)
    for scene in hs_tiles:
        pd = scene_pair[scene]
        scanned_pairs[pd.parent.name].add(pd.name)
    for aoi_name in sorted(scanned_pairs):
        pairs = sorted(scanned_pairs[aoi_name])
        print(f"  {aoi_name}/")
        for p in pairs:
            n_hs = sum(1 for s, pd in scene_pair.items() if pd.name == p and s in hs_tiles)
            n_matched = sum(1 for s, pd in scene_pair.items() if pd.name == p and s in ms_tiles)
            print(f"    {p}/tiles/ — {n_hs} HS, {n_matched} matched pairs")

    matched = sorted(set(hs_tiles) & set(ms_tiles))

    # Apply R² filter if provided
    if r2_allowlist is not None:
        before = len(matched)
        filtered = []
        for s in matched:
            aoi_slug = scene_pair[s].parent.name  # e.g. "aoi_lat-3.0_lon37.3"
            pair_id = scene_pair[s].name           # e.g. "20240630T074436_T37MCS_20240701"
            tile_idx = _parse_tile_idx(s)
            if tile_idx is not None and (aoi_slug, pair_id, tile_idx) in r2_allowlist:
                filtered.append(s)
        matched = filtered
        print(f"  R² filter: {len(matched)}/{before} tiles pass")

    return [TileInfo(s, hs_tiles[s], ms_tiles[s], scene_pair[s]) for s in matched]


# ---------------------------------------------------------------------------
# Step 1: tif → mat  (reuses same .mat files as GLP — no duplication)
# ---------------------------------------------------------------------------

def tif_to_mat(tiles: list[TileInfo], dataset: str, scale: int, bench_root: Path):
    """Convert GeoTIFF pairs to .mat files for the benchmark."""
    hs_dir   = bench_root / "data" / "HS" / dataset / str(scale)
    ms_dir   = bench_root / "data" / "MS" / dataset
    meta_dir = bench_root / "data" / "meta" / dataset
    for d in (hs_dir, ms_dir, meta_dir):
        d.mkdir(parents=True, exist_ok=True)

    converted = 0
    skipped = 0

    pbar = tqdm(tiles, desc="tif→mat", unit="tile",
                bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}, {rate_fmt}]")
    for tile in pbar:
        scene = tile.scene
        pbar.set_postfix_str(scene, refresh=True)

        if (hs_dir / f"{scene}.mat").exists() and (ms_dir / f"{scene}.mat").exists():
            skipped += 1
            continue

        hsi, hs_profile = read_tif(str(tile.hs_path))
        msi, ms_profile = read_tif(str(tile.ms_path))

        hs_h, hs_w, hs_b = hsi.shape
        ms_h, ms_w, ms_b = msi.shape

        if ms_h / hs_h != scale or ms_w / hs_w != scale:
            pbar.write(f"  SKIP: {scene} — scale mismatch. HS={hs_h}×{hs_w}, MS={ms_h}×{ms_w}")
            continue

        hsi_f = hsi.astype(np.float64)
        msi_f = msi.astype(np.float64)

        # ── Mask nodata before normalization ──────────────────────
        # EMIT tiles use 65535 as the nodata sentinel in uint16.
        # S2 tiles typically use 0 as nodata.
        # Treating these as real values corrupts global_max and all
        # downstream SFIM computations.
        hs_nodata_val = 65535  # uint16 nodata sentinel from save_tile_pair
        hs_valid = (hsi != hs_nodata_val) if np.issubdtype(hsi.dtype, np.integer) else np.isfinite(hsi_f)
        ms_valid = (msi != 0) if np.issubdtype(msi.dtype, np.integer) else np.isfinite(msi_f)

        # Check that every pixel is valid across all bands
        hs_all_valid = hs_valid.all(axis=2)  # (H, W) — True if ALL bands valid
        ms_all_valid = ms_valid.all(axis=2)

        hs_bad_frac = 1.0 - hs_all_valid.mean()
        ms_bad_frac = 1.0 - ms_all_valid.mean()
        if hs_bad_frac > 0.01 or ms_bad_frac > 0.01:
            pbar.write(f"  SKIP: {scene} — nodata: HS {hs_bad_frac:.1%}, MS {ms_bad_frac:.1%}")
            continue

        # Compute global_max only from valid pixels
        hs_max = float(hsi_f[hs_valid].max()) if hs_valid.any() else 0
        ms_max = float(msi_f[ms_valid].max()) if ms_valid.any() else 0
        global_max = max(hs_max, ms_max)
        if global_max == 0:
            pbar.write(f"  SKIP: {scene} — all zeros")
            continue

        # Replace nodata pixels with 0 before normalization so SFIM
        # doesn't encounter extreme values or divide-by-zero
        hsi_f[~hs_valid] = 0.0
        msi_f[~ms_valid] = 0.0

        hsi_norm = hsi_f / global_max
        msi_norm = msi_f / global_max

        scipy.io.savemat(str(hs_dir / f"{scene}.mat"), {"hsi": hsi_norm}, do_compression=True)
        scipy.io.savemat(str(ms_dir / f"{scene}.mat"),  {"msi": msi_norm}, do_compression=True)

        sidecar = {
            "scene": scene,
            "hs_file": tile.hs_path.name,
            "ms_file": tile.ms_path.name,
            "pair_dir": str(tile.pair_dir),
            "hs_shape": list(hsi.shape),
            "ms_shape": list(msi.shape),
            "hs_bands": hs_b,
            "ms_bands": ms_b,
            "scale": scale,
            "norm_global_max": float(global_max),
            "ms_crs": ms_profile["crs"],
            "ms_transform": ms_profile["transform"],
            "ms_dtype": str(msi.dtype),
        }
        with open(meta_dir / f"{scene}.json", "w") as f:
            json.dump(sidecar, f, indent=2)

        converted += 1

    print(f"  Converted: {converted}, Already existed: {skipped}")


# ---------------------------------------------------------------------------
# Step 2: run SFIM via MATLAB batch
# ---------------------------------------------------------------------------

def run_sfim_batch(dataset: str, scale: int, bench_root: Path, workers: int = 1,
                   output_folder: str = "SFIM", min_r2: float = None):
    """Generate and run MATLAB batch script(s) for SFIM."""
    abs_root = str(bench_root.resolve())
    hs_dir = bench_root / "data" / "HS" / dataset / str(scale)
    sr_dir = bench_root / "data" / "SR" / output_folder / dataset / str(scale)
    sr_dir.mkdir(parents=True, exist_ok=True)

    scenes = sorted(p.stem for p in hs_dir.glob("*.mat"))
    pending = [s for s in scenes if not (sr_dir / f"{s}.mat").exists()]

    if not pending:
        print(f"  All {len(scenes)} scenes already processed.")
        return

    print(f"  {len(pending)} pending / {len(scenes)} total")
    if min_r2 is not None:
        print(f"  R² filter: min per-band R² >= {min_r2}")

    n_workers = min(workers, len(pending))
    chunk_size = math.ceil(len(pending) / n_workers)
    chunks = [pending[i:i + chunk_size] for i in range(0, len(pending), chunk_size)]

    scripts_dir = bench_root / "data" / "_batch_scripts"
    scripts_dir.mkdir(parents=True, exist_ok=True)

    script_paths = []
    for w, chunk in enumerate(chunks):
        script_path = scripts_dir / f"batch_{output_folder}_{dataset}_{scale}_w{w}.m"

        lines = [
            f"% Auto-generated SFIM batch script (worker {w})",
            f"cd('{abs_root}');",
            "warning('off');",
            f"addpath(genpath(fullfile('{abs_root}', 'auxiliary')));",
            f"addpath(genpath(fullfile('{abs_root}', 'methods', 'SFIM')));",
        ]
        if min_r2 is not None:
            lines.append(f"min_r2_threshold = {min_r2};")
        lines.append("")

        for i, scene in enumerate(chunk):
            hsi_path = f"data/HS/{dataset}/{scale}/{scene}.mat"
            msi_path = f"data/MS/{dataset}/{scene}.mat"
            sri_path = f"data/SR/{output_folder}/{dataset}/{scale}/{scene}.mat"

            lines.append(f"if ~exist('{sri_path}', 'file')")
            lines.append(f"    fprintf('\\n[{w}] ({i+1}/{len(chunk)}) %s\\n', '{scene}');")
            lines.append(f"    tic;")
            lines.append(f"    hsi_path = '{hsi_path}';")
            lines.append(f"    msi_path = '{msi_path}';")
            lines.append(f"    sri_path = '{sri_path}';")
            lines.append(f"    SFIM_run;")
            lines.append(f"    elapsed = toc;")
            lines.append(f"    fid = fopen('data/SR/{output_folder}/{dataset}/{scale}/times.csv', 'a+');")
            lines.append(f"    fprintf(fid, '{scene},%.2f\\n', elapsed);")
            lines.append(f"    fclose(fid);")
            lines.append(f"    fprintf('  Done in %.1fs\\n', elapsed);")
            lines.append(f"else")
            lines.append(f"    fprintf('[{w}] ({i+1}/{len(chunk)}) %s — skip\\n', '{scene}');")
            lines.append(f"end")
            lines.append("")

        lines.append(f"fprintf('\\n=== Worker {w} done ({len(chunk)} scenes) ===\\n');")
        lines.append("exit;")

        with open(script_path, "w") as f:
            f.write("\n".join(lines))
        script_paths.append(script_path)
        print(f"  Worker {w}: {len(chunk)} scenes → {script_path.name}")

    # Execute
    tic = time.time()
    if sys.platform == "darwin":
        matlab_bin = "/Applications/MATLAB_R20*.app/bin/matlab"
    elif sys.platform == "win32":
        matlab_bin = "matlab.exe"
    else:
        raise RuntimeError("Set MATLAB path for your platform")

    def _monitor_progress(sr_dir, pending, desc="SFIM fusion"):
        """Poll output directory for completed .mat files and update a progress bar."""
        done_before = {s for s in pending if (sr_dir / f"{s}.mat").exists()}
        with tqdm(total=len(pending), initial=len(done_before), desc=desc,
                  unit="tile",
                  bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}]") as pbar:
            while True:
                time.sleep(2)
                done_now = {s for s in pending if (sr_dir / f"{s}.mat").exists()}
                new_done = done_now - done_before
                if new_done:
                    pbar.update(len(new_done))
                    done_before.update(new_done)
                if len(done_before) >= len(pending):
                    break

    if n_workers == 1:
        cmd = f'{matlab_bin} -nodesktop -nodisplay -nosplash -batch "run(\'{script_paths[0]}\')"'
        print(f"\n  Launching MATLAB ({len(pending)} tiles)...")
        monitor = threading.Thread(target=_monitor_progress,
                                   args=(sr_dir, pending), daemon=True)
        monitor.start()
        os.system(cmd)
        monitor.join(timeout=5)
    else:
        print(f"\n  Launching {n_workers} parallel MATLAB sessions...")
        monitor = threading.Thread(target=_monitor_progress,
                                   args=(sr_dir, pending), daemon=True)
        monitor.start()
        procs = []
        for sp in script_paths:
            cmd = f'{matlab_bin} -nodesktop -nodisplay -nosplash -batch "run(\'{sp}\')"'
            procs.append(subprocess.Popen(cmd, shell=True))
        for p in procs:
            p.wait()
        monitor.join(timeout=5)

    elapsed = time.time() - tic
    print(f"\n  SFIM complete: {len(pending)} scenes in {elapsed:.0f}s ({elapsed/len(pending):.1f}s avg)")


# ---------------------------------------------------------------------------
# Step 3: mat → tif, routed to pair_dir/SFIM/ with reporting
# ---------------------------------------------------------------------------

def mat_to_tif_with_reports(dataset: str, scale: int, bench_root: Path,
                            output_folder: str = "SFIM"):
    """
    Convert fused .mat outputs to GeoTIFFs in each pair_dir/{output_folder}/,
    and generate per-pair reporting files.
    """
    meta_dir = bench_root / "data" / "meta" / dataset
    sr_dir = bench_root / "data" / "SR" / output_folder / dataset / str(scale)
    times_csv = sr_dir / "times.csv"

    # Only load sidecars for scenes that have actual .mat results
    available_scenes = {p.stem for p in sr_dir.glob("*.mat")}
    print(f"  Found {len(available_scenes)} .mat results in {sr_dir.name}/")

    sidecars = {}
    for scene in sorted(available_scenes):
        jf = meta_dir / f"{scene}.json"
        if not jf.exists():
            continue
        try:
            with open(jf) as f:
                meta = json.load(f)
            sidecars[meta["scene"]] = meta
        except OSError as e:
            print(f"  WARNING: could not read {jf.name} ({e}) — skipping")
            continue
    print(f"  Loaded {len(sidecars)} sidecars")

    timings = {}
    if times_csv.exists():
        with open(times_csv) as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith("scene"):
                    continue
                parts = line.split(",")
                if len(parts) >= 2:
                    timings[parts[0]] = float(parts[1])

    pair_scenes = defaultdict(list)
    for scene, meta in sidecars.items():
        pair_dir = meta.get("pair_dir")
        if pair_dir:
            pair_scenes[pair_dir].append(scene)

    total_exported = 0

    pair_pbar = tqdm(sorted(pair_scenes.items()), desc="Exporting pairs",
                     unit="pair",
                     bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} pairs [{elapsed}<{remaining}]")
    for pair_dir_str, scenes in pair_pbar:
        pair_dir = Path(pair_dir_str)
        sfim_dir = pair_dir / output_folder
        sfim_dir.mkdir(parents=True, exist_ok=True)

        pair_name = pair_dir.name
        pair_pbar.set_postfix_str(pair_name, refresh=True)

        tile_stats = []

        tile_pbar = tqdm(sorted(scenes), desc=f"  {pair_name}", unit="tile",
                         bar_format="  {l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}]",
                         leave=False)
        for scene in tile_pbar:
            tile_pbar.set_postfix_str(scene, refresh=True)
            mat_path = sr_dir / f"{scene}.mat"
            meta = sidecars[scene]

            if not mat_path.exists():
                tile_pbar.write(f"    {scene}: MISSING .mat — skipped")
                continue

            out_path = sfim_dir / f"{scene}_SFIM_fused.tif"

            try:
                mat = scipy.io.loadmat(str(mat_path))
            except (ValueError, OSError) as e:
                tile_pbar.write(f"    {scene}: corrupted .mat ({e}) — skipped")
                tile_stats.append({"scene": scene, "status": "CORRUPTED",
                                   "time_s": timings.get(scene, None)})
                continue

            # Extract R² diagnostics if available
            r2_vec = mat.get("r2")
            r2_min = float(np.min(r2_vec)) if r2_vec is not None else None
            r2_mean = float(np.mean(r2_vec)) if r2_vec is not None else None

            if "sri" not in mat:
                # Tile was filtered by R² threshold in MATLAB
                status = "R2_FILTERED"
                r2_str = f"min={r2_min:.4f}" if r2_min is not None else "unknown"
                tile_pbar.write(f"    {scene}: {status} ({r2_str})")
                tile_stats.append({
                    "scene": scene, "status": status,
                    "r2_min": r2_min, "r2_mean": r2_mean,
                    "time_s": timings.get(scene, None),
                })
                continue

            sri = mat["sri"]

            is_zero = np.all(sri == 0) if np.issubdtype(sri.dtype, np.integer) else np.all(np.abs(sri) < 1e-10)
            has_nan = np.any(np.isnan(sri)) if np.issubdtype(sri.dtype, np.floating) else False

            if is_zero or has_nan:
                status = "FAILED_ZERO" if is_zero else "FAILED_NAN"
                tile_pbar.write(f"    {scene}: {status}")
                tile_stats.append({
                    "scene": scene,
                    "status": status,
                    "time_s": timings.get(scene, None),
                })
                continue

            # Reverse normalisation
            norm_max = meta.get("norm_global_max", 1.0)
            if np.issubdtype(sri.dtype, np.floating):
                sri_f = sri.astype(np.float64)
            else:
                sri_f = sri.astype(np.float64) / 65535.0

            if norm_max > 0:
                sri_f *= norm_max

            sri_out = np.clip(sri_f, 0, 65535).astype(np.uint16)

            if not out_path.exists():
                write_tif(str(out_path), sri_out, meta["ms_crs"], meta["ms_transform"])
                total_exported += 1

            h, w, b = sri_out.shape
            tile_stats.append({
                "scene": scene,
                "status": "OK",
                "output_file": out_path.name,
                "shape": f"{h}x{w}x{b}",
                "min": int(sri_out.min()),
                "max": int(sri_out.max()),
                "mean": float(np.mean(sri_out)),
                "nonzero_pct": float(100 * np.count_nonzero(sri_out) / sri_out.size),
                "r2_min": r2_min,
                "r2_mean": r2_mean,
                "time_s": timings.get(scene, None),
                "crs": meta["ms_crs"],
            })

        if tile_stats:
            csv_path = sfim_dir / "tile_stats.csv"
            fieldnames = ["scene", "status", "output_file", "shape",
                          "min", "max", "mean", "nonzero_pct",
                          "r2_min", "r2_mean", "time_s", "crs"]
            with open(csv_path, "w", newline="") as f:
                writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
                writer.writeheader()
                writer.writerows(tile_stats)

        ok_tiles = [t for t in tile_stats if t["status"] == "OK"]
        r2_filtered = [t for t in tile_stats if t["status"] == "R2_FILTERED"]
        failed_tiles = [t for t in tile_stats if t["status"] not in ("OK", "R2_FILTERED")]
        times_ok = [t["time_s"] for t in ok_tiles if t["time_s"] is not None]

        # R² statistics for OK tiles
        r2_mins_ok = [t["r2_min"] for t in ok_tiles if t.get("r2_min") is not None]

        summary = {
            "pair": pair_name,
            "pair_dir": pair_dir_str,
            "method": output_folder,
            "method_full_name": "Smoothing Filter-based Intensity Modulation (SFIM) via Hypersharpening",
            "dataset": dataset,
            "scale_factor": scale,
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "tiles_total": len(scenes),
            "tiles_ok": len(ok_tiles),
            "tiles_r2_filtered": len(r2_filtered),
            "tiles_failed": len(failed_tiles),
            "failed_scenes": [t["scene"] for t in failed_tiles],
            "r2_filtered_scenes": [t["scene"] for t in r2_filtered],
            "timing": {
                "total_s": sum(times_ok) if times_ok else None,
                "mean_s": float(np.mean(times_ok)) if times_ok else None,
                "min_s": float(np.min(times_ok)) if times_ok else None,
                "max_s": float(np.max(times_ok)) if times_ok else None,
            },
            "output_stats": {
                "hs_bands": ok_tiles[0].get("shape", "").split("x")[-1] if ok_tiles else None,
                "spatial_size": "x".join(ok_tiles[0].get("shape", "").split("x")[:2]) if ok_tiles else None,
                "crs": ok_tiles[0].get("crs") if ok_tiles else None,
                "value_range_min": min(t["min"] for t in ok_tiles) if ok_tiles else None,
                "value_range_max": max(t["max"] for t in ok_tiles) if ok_tiles else None,
            },
            "r2_stats": {
                "min_r2_across_ok_tiles": float(np.min(r2_mins_ok)) if r2_mins_ok else None,
                "mean_min_r2_across_ok_tiles": float(np.mean(r2_mins_ok)) if r2_mins_ok else None,
                "median_min_r2_across_ok_tiles": float(np.median(r2_mins_ok)) if r2_mins_ok else None,
            },
        }

        summary_path = sfim_dir / "summary.json"
        with open(summary_path, "w") as f:
            json.dump(summary, f, indent=2)

        r2_msg = f", {len(r2_filtered)} R²-filtered" if r2_filtered else ""
        pair_pbar.write(f"  {pair_name}: {len(ok_tiles)} OK{r2_msg}, {len(failed_tiles)} failed → {sfim_dir.name}/")

    print(f"\n  Total exported: {total_exported} GeoTIFFs")


# ---------------------------------------------------------------------------
# Batch helpers
# ---------------------------------------------------------------------------

def is_tile_exported(tile: TileInfo, output_folder: str) -> bool:
    """Check if SFIM GeoTIFF already exists on Drive for this tile."""
    sfim_dir = tile.pair_dir / output_folder
    out_path = sfim_dir / f"{tile.scene}_SFIM_fused.tif"
    return out_path.exists()


def cleanup_mat_files(scenes: list[str], dataset: str, scale: int,
                      bench_root: Path, output_folder: str,
                      keep_meta: bool = True):
    """
    Delete local .mat files for processed scenes to free disk space.
    Keeps meta JSONs by default (they're tiny and useful for reporting).
    """
    hs_dir   = bench_root / "data" / "HS" / dataset / str(scale)
    ms_dir   = bench_root / "data" / "MS" / dataset
    sr_dir   = bench_root / "data" / "SR" / output_folder / dataset / str(scale)

    freed = 0
    removed = 0
    for scene in scenes:
        for mat_dir in (hs_dir, ms_dir, sr_dir):
            mat_path = mat_dir / f"{scene}.mat"
            if mat_path.exists():
                freed += mat_path.stat().st_size
                mat_path.unlink()
                removed += 1

    freed_mb = freed / (1024 * 1024)
    print(f"  Cleanup: removed {removed} .mat files, freed {freed_mb:.0f} MB")


def export_batch_scenes(scenes: list[str], dataset: str, scale: int,
                        bench_root: Path, output_folder: str) -> list[str]:
    """
    Export a specific set of scenes from .mat → GeoTIFF.
    Returns list of successfully exported scene names.
    """
    meta_dir = bench_root / "data" / "meta" / dataset
    sr_dir = bench_root / "data" / "SR" / output_folder / dataset / str(scale)
    times_csv = sr_dir / "times.csv"

    timings = {}
    if times_csv.exists():
        with open(times_csv) as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith("scene"):
                    continue
                parts = line.split(",")
                if len(parts) >= 2:
                    timings[parts[0]] = float(parts[1])

    exported = []
    for scene in scenes:
        mat_path = sr_dir / f"{scene}.mat"
        jf = meta_dir / f"{scene}.json"

        if not mat_path.exists() or not jf.exists():
            continue

        try:
            with open(jf) as f:
                meta = json.load(f)
        except OSError:
            continue

        pair_dir = Path(meta.get("pair_dir", ""))
        if not pair_dir.exists():
            continue

        sfim_dir = pair_dir / output_folder
        sfim_dir.mkdir(parents=True, exist_ok=True)
        out_path = sfim_dir / f"{scene}_SFIM_fused.tif"

        if out_path.exists():
            exported.append(scene)
            continue

        try:
            mat = scipy.io.loadmat(str(mat_path))
        except (ValueError, OSError):
            continue

        if "sri" not in mat:
            continue

        sri = mat["sri"]
        has_nan = np.any(np.isnan(sri)) if np.issubdtype(sri.dtype, np.floating) else False
        is_zero = np.all(sri == 0) if np.issubdtype(sri.dtype, np.integer) else np.all(np.abs(sri) < 1e-10)
        if is_zero or has_nan:
            continue

        norm_max = meta.get("norm_global_max", 1.0)
        if np.issubdtype(sri.dtype, np.floating):
            sri_f = sri.astype(np.float64)
        else:
            sri_f = sri.astype(np.float64) / 65535.0
        if norm_max > 0:
            sri_f *= norm_max

        sri_out = np.clip(sri_f, 0, 65535).astype(np.uint16)
        write_tif(str(out_path), sri_out, meta["ms_crs"], meta["ms_transform"])
        exported.append(scene)

    return exported


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(
        description="End-to-end SFIM fusion pipeline: GeoTIFF → .mat → SFIM → GeoTIFF"
    )
    ap.add_argument("--drive-root", required=True,
                    help="Root folder: contains AOI_dir/pair_dir/tiles/.")
    ap.add_argument("--bench-root", default=".",
                    help="Root of hif-benchmarking repo (default: cwd).")
    ap.add_argument("--dataset", required=True,
                    help="Dataset name (e.g. EMIT285 or EMIT32).")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--hs-suffix", default="_emit.tif",
                    help="HS tile filename suffix (default: _emit.tif).")
    ap.add_argument("--ms-suffix", default="_s2.tif",
                    help="MS tile filename suffix (default: _s2.tif).")
    ap.add_argument("--workers", type=int, default=1,
                    help="Parallel MATLAB workers (default: 1).")
    ap.add_argument("--aois", nargs="*", default=None,
                    help="Process only these AOI folders (default: all).")
    ap.add_argument("--pairs", nargs="*", default=None,
                    help="Process only these pair folders (default: all).")
    ap.add_argument("--output-folder", default="SFIM",
                    help="Name of output subfolder in each pair_dir (default: SFIM). "
                         "Also used as SR subfolder name in data/SR/.")
    ap.add_argument("--min-r2", type=float, default=None,
                    help="Minimum per-band R² threshold for NNLS fit quality. "
                         "Tiles where any band's R² falls below this are skipped "
                         "before the expensive SFIM modulation. "
                         "Recommended range: 0.5–0.7. Default: disabled.")
    ap.add_argument("--r2-csv", default=None,
                    help="Path to r2_all_tiles.csv (from Color_Matching.ipynb). "
                         "Used with --r2-threshold to pre-filter tiles.")
    ap.add_argument("--r2-threshold", type=float, default=0.75,
                    help="Minimum R² mean for tile selection (default: 0.75). "
                         "Only used when --r2-csv is provided.")
    ap.add_argument("--batch-size", type=int, default=500,
                    help="Tiles per batch. After each batch, .mat files are deleted "
                         "to free local disk space. Set to 0 to disable batching "
                         "(process all at once). Default: 500 (~33 GB peak).")
    ap.add_argument("--dry-run", action="store_true",
                    help="Only convert GeoTIFFs to .mat (skip MATLAB + export).")
    ap.add_argument("--export-only", action="store_true",
                    help="Only convert existing .mat results to GeoTIFF (skip tif2mat + MATLAB).")
    args = ap.parse_args()

    bench_root = Path(args.bench_root).resolve()
    drive_root = Path(args.drive_root)

    print(f"SFIM Production Pipeline")
    print(f"========================")
    print(f"Drive root: {drive_root}")
    print(f"Dataset:    {args.dataset}")
    print(f"Scale:      {args.scale}")
    print(f"HS suffix:  {args.hs_suffix}")
    print(f"MS suffix:  {args.ms_suffix}")
    print(f"Workers:    {args.workers}")
    print(f"Min R²:     {args.min_r2 if args.min_r2 is not None else 'disabled'}")
    print(f"R² CSV:     {args.r2_csv if args.r2_csv else 'not provided'}")
    if args.r2_csv:
        print(f"R² thresh:  {args.r2_threshold}")
    print(f"Batch size: {args.batch_size if args.batch_size > 0 else 'disabled (all at once)'}")
    print()

    # --- Export-only mode: use the old non-batched export ---
    if args.export_only:
        print(f"Export-only: converting existing .mat → GeoTIFF...")
        os.chdir(str(bench_root))
        mat_to_tif_with_reports(args.dataset, args.scale, bench_root,
                                output_folder=args.output_folder)
        print("\nDone.")
        return

    # --- Step 1: Discover tiles ---
    tic_disc = time.time()
    if args.r2_csv:
        print(f"Step 1: Building tile list from R² CSV...")
        all_tiles = tiles_from_r2_csv(
            args.r2_csv, drive_root, args.hs_suffix, args.ms_suffix,
            min_r2=args.r2_threshold, verify_exists=True)
    else:
        print(f"Step 1: Discovering tiles in {drive_root}/ (glob)...")
        all_tiles = discover_tiles(drive_root, args.hs_suffix, args.ms_suffix,
                                   aoi_filter=args.aois, pair_filter=args.pairs)
    if not all_tiles:
        sys.exit("No matched tile pairs found.")

    n_pairs = len({t.pair_dir for t in all_tiles})
    print(f"  → {len(all_tiles)} tile pair(s) across {n_pairs} pair(s) "
          f"in {time.time() - tic_disc:.1f}s")

    # --- Step 2: Filter out already-exported tiles (resume support) ---
    pending = [t for t in all_tiles
               if not is_tile_exported(t, args.output_folder)]
    already_done = len(all_tiles) - len(pending)
    if already_done > 0:
        print(f"  Already exported: {already_done} tiles (skipped)")
    print(f"  Pending: {len(pending)} tiles")
    print()

    if not pending:
        print("All tiles already exported. Nothing to do.")
        return

    if args.dry_run:
        print(f"Dry run: would process {len(pending)} tiles "
              f"in {math.ceil(len(pending) / max(args.batch_size, len(pending)))} batch(es).")
        return

    # --- Step 3: Process in batches ---
    batch_size = args.batch_size if args.batch_size > 0 else len(pending)
    n_batches = math.ceil(len(pending) / batch_size)

    os.chdir(str(bench_root))
    total_exported = 0
    tic_all = time.time()

    for batch_idx in range(n_batches):
        batch_start = batch_idx * batch_size
        batch_end = min(batch_start + batch_size, len(pending))
        batch = pending[batch_start:batch_end]

        print(f"{'='*60}")
        print(f"Batch {batch_idx + 1}/{n_batches}: tiles {batch_start + 1}–{batch_end} "
              f"({len(batch)} tiles)")
        print(f"{'='*60}")

        # 3a: Convert GeoTIFFs → .mat
        print(f"\n  [a] Converting GeoTIFFs to .mat...")
        tif_to_mat(batch, args.dataset, args.scale, bench_root)

        # 3b: Run SFIM via MATLAB
        print(f"\n  [b] Running SFIM fusion...")
        batch_scenes = [t.scene for t in batch]
        run_sfim_batch(args.dataset, args.scale, bench_root, args.workers,
                       output_folder=args.output_folder, min_r2=args.min_r2)

        # 3c: Export .mat → GeoTIFF on Drive
        print(f"\n  [c] Exporting to GeoTIFF...")
        exported = export_batch_scenes(batch_scenes, args.dataset, args.scale,
                                       bench_root, args.output_folder)
        total_exported += len(exported)
        print(f"  Exported {len(exported)}/{len(batch)} tiles")

        # 3d: Cleanup .mat files to free disk space
        print(f"\n  [d] Cleaning up local .mat files...")
        cleanup_mat_files(batch_scenes, args.dataset, args.scale,
                          bench_root, args.output_folder)

        elapsed_batch = time.time() - tic_all
        tiles_done = batch_end
        tiles_left = len(pending) - tiles_done
        if tiles_done > 0 and tiles_left > 0:
            rate = elapsed_batch / tiles_done
            eta = rate * tiles_left
            eta_min = eta / 60
            print(f"\n  Progress: {tiles_done}/{len(pending)} tiles, "
                  f"ETA ~{eta_min:.0f} min")
        print()

    elapsed_total = time.time() - tic_all
    print(f"{'='*60}")
    print(f"Done. {total_exported} tiles exported in {elapsed_total/60:.1f} min "
          f"({elapsed_total/total_exported:.1f}s avg)" if total_exported > 0
          else "Done. No tiles exported.")


if __name__ == "__main__":
    main()
