#!/usr/bin/env python3
import argparse
import glob
import math
import os
import subprocess
import sys
import time
from pathlib import Path


def discover_scenes(dataset, scale):
    mat_paths = glob.glob(f"data/HS/{dataset}/{scale}/*.mat")
    return sorted(Path(p).stem for p in mat_paths)


def get_paths(dataset, method, scale, scene):
    hsi_path = f"data/HS/{dataset}/{scale}/{scene}.mat"
    msi_path = f"data/MS/{dataset}/{scene}.mat"
    sr_dir   = f"data/SR/{method}/{dataset}/{scale}"
    sri_path = f"{sr_dir}/{scene}.mat"
    return hsi_path, msi_path, sr_dir, sri_path


def generate_batch_script(scenes, dataset, method,
                          scale, script_path, bench_root,
                          worker_id = 0, srf_path = None):
    # All paths must be absolute so MATLAB finds everything regardless of cwd
    abs_root = os.path.abspath(bench_root)
    lines = [
        f"% Auto-generated batch script (worker {worker_id})",
        f"% Dataset: {dataset}, Method: {method}, Scale: {scale}",
        f"% Scenes: {len(scenes)}",
        "",
        f"cd('{abs_root}');",
        "warning('off');",
        f"addpath(genpath(fullfile('{abs_root}', 'auxiliary')));",
        f"addpath(genpath(fullfile('{abs_root}', 'methods', '{method}')));",
        "",
    ]

    # For CNMF/CSTF: set srf_path so {method}_run.m loads the pre-computed R
    if method in ("CNMF", "CSTF") and srf_path:
        abs_srf = os.path.abspath(srf_path)
        lines.append(f"srf_path = '{abs_srf}';")
        lines.append("")

    for i, scene in enumerate(scenes):
        hsi_path, msi_path, sr_dir, sri_path = get_paths(dataset, method, scale, scene)
        os.makedirs(sr_dir, exist_ok=True)

        lines.append(f"% --- Scene {i+1}/{len(scenes)}: {scene} ---")
        lines.append(f"if ~exist('{sri_path}', 'file')")
        lines.append(f"    fprintf('\\n[{worker_id}] ({i+1}/{len(scenes)}) %s\\n', '{scene}');")
        lines.append(f"    tic;")
        lines.append(f"    hsi_path = '{hsi_path}';")
        lines.append(f"    msi_path = '{msi_path}';")
        lines.append(f"    sri_path = '{sri_path}';")
        lines.append(f"    try")
        lines.append(f"        {method}_run;")
        lines.append(f"        elapsed = toc;")
        lines.append(f"        fid = fopen('{sr_dir}/times.csv', 'a+');")
        lines.append(f"        fprintf(fid, '{scene},%.2f\\n', elapsed);")
        lines.append(f"        fclose(fid);")
        lines.append(f"        fprintf('  Done in %.1fs\\n', elapsed);")
        lines.append(f"    catch ME")
        lines.append(f"        elapsed = toc;")
        lines.append(f"        fprintf('  ERROR after %.1fs: %s\\n', elapsed, ME.message);")
        lines.append(f"    end")
        lines.append(f"else")
        lines.append(f"    fprintf('[{worker_id}] ({i+1}/{len(scenes)}) %s — already exists, skipping\\n', '{scene}');")
        lines.append(f"end")
        lines.append("")

    lines.append(f"fprintf('\\n=== Worker {worker_id} finished all {len(scenes)} scenes ===\\n');")
    lines.append("exit;")

    with open(script_path, "w") as f:
        f.write("\n".join(lines))

    return script_path


def matlab_cmd(script_path):
    if sys.platform == "darwin":
        matlab_bin = "/Applications/MATLAB_R20*.app/bin/matlab"
        return f'{matlab_bin} -nodesktop -nodisplay -nosplash -batch "run(\'{script_path}\')"'
    elif sys.platform == "win32":
        return f'matlab.exe -nodesktop -nosplash -batch "run(\'{script_path}\')"'
    else:
        raise RuntimeError("Linux: adjust the MATLAB path in this script.")


def main():
    ap = argparse.ArgumentParser(description="Optimised batch runner for HIF benchmark.")
    ap.add_argument("--bench-root", default=".",
                    help="Root of the hif-benchmarking repo (default: current directory)")
    ap.add_argument("--dataset", required=True, help="Dataset name (e.g. EMIT285)")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--methods", nargs="+", required=True,
                    help="Methods to run (e.g. MAPSMM CNMF SFIM)")
    ap.add_argument("--workers", type=int, default=1,
                    help="Number of parallel MATLAB processes (default: 1)")
    ap.add_argument("--srf-mat", default=None,
                    help="Path to pre-computed spectral response matrix .mat (for CNMF). "
                         "Auto-detected from data/srf_R.mat if not specified.")
    ap.add_argument("--dry-run", action="store_true",
                    help="Generate .m scripts but don't execute them")
    args = ap.parse_args()

    # Change to bench root so relative data/ paths resolve correctly
    os.chdir(args.bench_root)

    scenes = discover_scenes(args.dataset, args.scale)
    if not scenes:
        sys.exit(f"No scenes found in data/HS/{args.dataset}/{args.scale}/")

    # Auto-detect SRF matrix for CNMF
    srf_path = args.srf_mat
    if srf_path is None and os.path.exists("data/srf_R.mat"):
        srf_path = "data/srf_R.mat"
    srf_methods = [m for m in args.methods if m in ("CNMF", "CSTF")]
    if srf_methods and srf_path:
        print(f"{', '.join(srf_methods)} will use pre-computed R from: {srf_path}")

    print(f"Found {len(scenes)} scene(s) for {args.dataset}, scale {args.scale}")
    print(f"Methods: {', '.join(args.methods)}")
    print(f"Workers: {args.workers}")
    print()

    scripts_dir = Path("data/_batch_scripts")
    scripts_dir.mkdir(parents=True, exist_ok=True)

    for method in args.methods:
        print(f"=== {method} ===")

        # Filter to scenes that still need processing
        pending = []
        for scene in scenes:
            _, _, _, sri_path = get_paths(args.dataset, method, args.scale, scene)
            if not os.path.exists(sri_path):
                pending.append(scene)

        if not pending:
            print(f"  All {len(scenes)} scenes already processed, skipping.")
            continue

        print(f"  {len(pending)} pending / {len(scenes)} total")

        # Split scenes across workers
        n_workers = min(args.workers, len(pending))
        chunk_size = math.ceil(len(pending) / n_workers)
        chunks = [pending[i:i + chunk_size] for i in range(0, len(pending), chunk_size)]

        # Generate batch scripts
        script_paths = []
        for w, chunk in enumerate(chunks):
            script_path = str(scripts_dir / f"batch_{method}_{args.dataset}_{args.scale}_w{w}.m")
            generate_batch_script(chunk, args.dataset, method, args.scale, script_path,
                                  bench_root=args.bench_root, worker_id=w,
                                  srf_path=srf_path if method in ("CNMF", "CSTF") else None)
            script_paths.append(script_path)
            print(f"  Worker {w}: {len(chunk)} scenes → {script_path}")

        if args.dry_run:
            print(f"  [dry-run] Scripts generated. Inspect them, then run manually with:")
            for sp in script_paths:
                print(f"    {matlab_cmd(sp)}")
            continue

        # Execute
        tic = time.time()
        if n_workers == 1:
            # Single process — run directly so output streams to terminal
            cmd = matlab_cmd(script_paths[0])
            print(f"\n  Launching MATLAB (single session for {len(pending)} tiles)...")
            os.system(cmd)
        else:
            # Parallel — launch subprocesses
            print(f"\n  Launching {n_workers} parallel MATLAB sessions...")
            procs = []
            for sp in script_paths:
                cmd = matlab_cmd(sp)
                p = subprocess.Popen(cmd, shell=True)
                procs.append(p)

            # Wait for all to finish
            for p in procs:
                p.wait()

        elapsed = time.time() - tic
        print(f"\n  {method} complete: {len(pending)} scenes in {elapsed:.0f}s "
              f"({elapsed/len(pending):.1f}s avg/tile)")
        print()

    print("All done.")


if __name__ == "__main__":
    main()
