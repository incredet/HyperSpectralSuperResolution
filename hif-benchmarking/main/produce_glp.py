#!/usr/bin/env python3
"""
produce_glp.py — End-to-end production pipeline: GeoTIFF → GLP fusion → GeoTIFF.

Discovers EMIT + S2 tile pairs under the folder structure:
    {drive-root}/{AOI_dir}/{pair_dir}/tiles/{scene}_emit.tif
    {drive-root}/{AOI_dir}/{pair_dir}/tiles/{scene}_s2.tif

Output for each pair goes to:
    {pair_dir}/GLP/{scene}_GLP_fused.tif
    {pair_dir}/GLP/summary.json          (timing, stats, metadata)
    {pair_dir}/GLP/tile_stats.csv         (per-tile stats for reporting)

Usage
-----
    # 285-band EMIT:
    python main/produce_glp.py \
        --drive-root /path/to/data \
        --bench-root . \
        --dataset EMIT285 \
        --scale 6 \
        --hs-suffix _emit.tif \
        --ms-suffix _s2.tif

    # 32-band EMIT:
    python main/produce_glp.py \
        --drive-root /path/to/data \
        --bench-root . \
        --dataset EMIT32 \
        --scale 6 \
        --hs-suffix _emit_b32.tif \
        --ms-suffix _s2.tif

    # Dry run (convert to .mat only, don't run MATLAB):
    python main/produce_glp.py ... --dry-run

    # Export only (convert existing .mat results to GeoTIFF):
    python main/produce_glp.py ... --export-only
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
        self.pair_dir = pair_dir   # the pair_dir this tile belongs to


def discover_tiles(drive_root: Path, hs_suffix: str, ms_suffix: str,
                   aoi_filter: list = None, pair_filter: list = None) -> list[TileInfo]:
    """
    Find HS/MS tile pairs using the fixed structure:
        root / AOI_dir / pair_dir / tiles / {scene}{hs_suffix|ms_suffix}

    Uses glob for fast matching instead of walking every file.
    Prints each AOI/pair being scanned so the user sees what's happening.
    """
    hs_tag = Path(hs_suffix).stem   # e.g. "_emit" from "_emit.tif"
    ms_tag = Path(ms_suffix).stem   # e.g. "_s2"   from "_s2.tif"

    hs_tiles = {}   # scene -> Path
    ms_tiles = {}
    scene_pair = {}

    # Fixed-depth glob: root/AOI/pair/tiles/*{hs_suffix}  (no recursive **)
    hs_pattern = f"*/*/tiles/*{hs_suffix}"
    all_hs = sorted(drive_root.glob(hs_pattern))

    # Build AOI→pair→tiles mapping from HS hits
    for hs_path in all_hs:
        pair_dir = hs_path.parent.parent          # .../pair_dir/tiles/file → pair_dir
        aoi_dir = pair_dir.parent                  # .../AOI_dir/pair_dir → AOI_dir

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

    # Check for matching MS tiles
    for scene, hs_path in hs_tiles.items():
        ms_path = hs_path.parent / f"{scene}{ms_suffix}"
        if ms_path.exists():
            ms_tiles[scene] = ms_path

    # Print what was scanned
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
    return [TileInfo(s, hs_tiles[s], ms_tiles[s], scene_pair[s]) for s in matched]


# ---------------------------------------------------------------------------
# Step 1: tif → mat
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

        # Skip if already converted
        if (hs_dir / f"{scene}.mat").exists() and (ms_dir / f"{scene}.mat").exists():
            skipped += 1
            continue

        hsi, hs_profile = read_tif(str(tile.hs_path))
        msi, ms_profile = read_tif(str(tile.ms_path))

        hs_h, hs_w, hs_b = hsi.shape
        ms_h, ms_w, ms_b = msi.shape

        # Validate scale
        if ms_h / hs_h != scale or ms_w / hs_w != scale:
            pbar.write(f"  SKIP: {scene} — scale mismatch. HS={hs_h}×{hs_w}, MS={ms_h}×{ms_w}")
            continue

        # Normalise to [0,1]
        hsi_f = hsi.astype(np.float64)
        msi_f = msi.astype(np.float64)
        global_max = max(hsi_f.max(), msi_f.max())
        if global_max == 0:
            pbar.write(f"  SKIP: {scene} — all zeros")
            continue

        hsi_norm = hsi_f / global_max
        msi_norm = msi_f / global_max

        scipy.io.savemat(str(hs_dir / f"{scene}.mat"), {"hsi": hsi_norm}, do_compression=True)
        scipy.io.savemat(str(ms_dir / f"{scene}.mat"),  {"msi": msi_norm}, do_compression=True)

        # Sidecar with pair_dir info for export routing
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
# Step 2: run GLP via MATLAB batch
# ---------------------------------------------------------------------------

def run_glp_batch(dataset: str, scale: int, bench_root: Path, workers: int = 1,
                  output_folder: str = "GLP"):
    """Generate and run MATLAB batch script(s) for GLP."""
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

    n_workers = min(workers, len(pending))
    chunk_size = math.ceil(len(pending) / n_workers)
    chunks = [pending[i:i + chunk_size] for i in range(0, len(pending), chunk_size)]

    scripts_dir = bench_root / "data" / "_batch_scripts"
    scripts_dir.mkdir(parents=True, exist_ok=True)

    script_paths = []
    for w, chunk in enumerate(chunks):
        script_path = scripts_dir / f"batch_{output_folder}_{dataset}_{scale}_w{w}.m"

        lines = [
            f"% Auto-generated GLP batch script (worker {w})",
            f"cd('{abs_root}');",
            "warning('off');",
            f"addpath(genpath(fullfile('{abs_root}', 'auxiliary')));",
            f"addpath(genpath(fullfile('{abs_root}', 'methods', 'GLP')));",
            "",
        ]

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
            lines.append(f"    GLP_run;")
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

    def _monitor_progress(sr_dir, pending, desc="GLP fusion"):
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
    print(f"\n  GLP complete: {len(pending)} scenes in {elapsed:.0f}s ({elapsed/len(pending):.1f}s avg)")


# ---------------------------------------------------------------------------
# Step 3: mat → tif, routed to pair_dir/GLP/ with reporting
# ---------------------------------------------------------------------------

def mat_to_tif_with_reports(dataset: str, scale: int, bench_root: Path,
                            output_folder: str = "GLP"):
    """
    Convert fused .mat outputs to GeoTIFFs in each pair_dir/{output_folder}/,
    and generate per-pair reporting files.
    """
    meta_dir = bench_root / "data" / "meta" / dataset
    sr_dir = bench_root / "data" / "SR" / output_folder / dataset / str(scale)
    times_csv = sr_dir / "times.csv"

    # Load all sidecars
    sidecars = {}
    for jf in sorted(meta_dir.glob("*.json")):
        with open(jf) as f:
            meta = json.load(f)
        sidecars[meta["scene"]] = meta

    # Load timing data
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

    # Group scenes by pair_dir
    pair_scenes = defaultdict(list)
    for scene, meta in sidecars.items():
        pair_dir = meta.get("pair_dir")
        if pair_dir:
            pair_scenes[pair_dir].append(scene)

    total_exported = 0
    total_tiles = sum(len(s) for s in pair_scenes.values())

    pair_pbar = tqdm(sorted(pair_scenes.items()), desc="Exporting pairs",
                     unit="pair",
                     bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} pairs [{elapsed}<{remaining}]")
    for pair_dir_str, scenes in pair_pbar:
        pair_dir = Path(pair_dir_str)
        glp_dir = pair_dir / output_folder
        glp_dir.mkdir(parents=True, exist_ok=True)

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

            out_path = glp_dir / f"{scene}_GLP_fused.tif"

            # Load fused image (skip corrupted/empty files)
            try:
                mat = scipy.io.loadmat(str(mat_path))
            except (ValueError, OSError) as e:
                tile_pbar.write(f"    {scene}: corrupted .mat ({e}) — skipped")
                tile_stats.append({"scene": scene, "status": "CORRUPTED",
                                   "time_s": timings.get(scene, None)})
                continue
            if "sri" not in mat:
                tile_pbar.write(f"    {scene}: no 'sri' in .mat — skipped")
                continue

            sri = mat["sri"]

            # Check for failure
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

            # Write GeoTIFF
            if not out_path.exists():
                write_tif(str(out_path), sri_out, meta["ms_crs"], meta["ms_transform"])
                total_exported += 1

            # Collect stats
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
                "time_s": timings.get(scene, None),
                "crs": meta["ms_crs"],
            })

        # ----- Write per-pair tile_stats.csv -----
        if tile_stats:
            csv_path = glp_dir / "tile_stats.csv"
            fieldnames = ["scene", "status", "output_file", "shape",
                          "min", "max", "mean", "nonzero_pct", "time_s", "crs"]
            with open(csv_path, "w", newline="") as f:
                writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
                writer.writeheader()
                writer.writerows(tile_stats)

        # ----- Write per-pair summary.json -----
        ok_tiles = [t for t in tile_stats if t["status"] == "OK"]
        failed_tiles = [t for t in tile_stats if t["status"] != "OK"]
        times_ok = [t["time_s"] for t in ok_tiles if t["time_s"] is not None]

        summary = {
            "pair": pair_name,
            "pair_dir": pair_dir_str,
            "method": output_folder,
            "method_full_name": "Generalized Laplacian Pyramid (MTF-GLP via Hypersharpening)",
            "dataset": dataset,
            "scale_factor": scale,
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "tiles_total": len(scenes),
            "tiles_ok": len(ok_tiles),
            "tiles_failed": len(failed_tiles),
            "failed_scenes": [t["scene"] for t in failed_tiles],
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
        }

        summary_path = glp_dir / "summary.json"
        with open(summary_path, "w") as f:
            json.dump(summary, f, indent=2)

        pair_pbar.write(f"  {pair_name}: {len(ok_tiles)} OK, {len(failed_tiles)} failed → {glp_dir.name}/")

    print(f"\n  Total exported: {total_exported} GeoTIFFs")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(
        description="End-to-end GLP fusion pipeline: GeoTIFF → .mat → GLP → GeoTIFF"
    )
    ap.add_argument("--drive-root", required=True,
                    help="Root folder: contains AOI_dir/pair_dir/tiles/ (or pair_dir/tiles/).")
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
    ap.add_argument("--output-folder", default="GLP",
                    help="Name of output subfolder in each pair_dir (default: GLP). "
                         "Also used as SR subfolder name in data/SR/.")
    ap.add_argument("--dry-run", action="store_true",
                    help="Only convert GeoTIFFs to .mat (skip MATLAB + export).")
    ap.add_argument("--export-only", action="store_true",
                    help="Only convert existing .mat results to GeoTIFF (skip tif2mat + MATLAB).")
    args = ap.parse_args()

    bench_root = Path(args.bench_root).resolve()
    drive_root = Path(args.drive_root)

    print(f"GLP Production Pipeline")
    print(f"=======================")
    print(f"Drive root: {drive_root}")
    print(f"Dataset:    {args.dataset}")
    print(f"Scale:      {args.scale}")
    print(f"HS suffix:  {args.hs_suffix}")
    print(f"MS suffix:  {args.ms_suffix}")
    print(f"Workers:    {args.workers}")
    print()

    # --- Step 1: Discover & convert ---
    if not args.export_only:
        print(f"Step 1: Discovering tiles in {drive_root}/")
        tic_disc = time.time()
        tiles = discover_tiles(drive_root, args.hs_suffix, args.ms_suffix,
                               aoi_filter=args.aois, pair_filter=args.pairs)
        if not tiles:
            sys.exit("No matched tile pairs found.")

        n_pairs = len({t.pair_dir for t in tiles})
        print(f"  → {len(tiles)} tile pair(s) across {n_pairs} pair(s) "
              f"in {time.time() - tic_disc:.1f}s")
        print()

        print("Step 2: Converting GeoTIFFs to .mat...")
        os.chdir(str(bench_root))
        tif_to_mat(tiles, args.dataset, args.scale, bench_root)
        print()

    if args.dry_run:
        print("Dry run complete. Run without --dry-run to execute GLP.")
        return

    # --- Step 2: Run GLP ---
    if not args.export_only:
        print(f"Step 3: Running GLP fusion → data/SR/{args.output_folder}/...")
        os.chdir(str(bench_root))
        run_glp_batch(args.dataset, args.scale, bench_root, args.workers,
                      output_folder=args.output_folder)
        print()

    # --- Step 3: Export to pair_dir/GLP/ with reports ---
    print(f"Step 4: Exporting to GeoTIFF → pair_dir/{args.output_folder}/...")
    os.chdir(str(bench_root))
    mat_to_tif_with_reports(args.dataset, args.scale, bench_root,
                            output_folder=args.output_folder)
    print()
    print("Done.")


if __name__ == "__main__":
    main()
