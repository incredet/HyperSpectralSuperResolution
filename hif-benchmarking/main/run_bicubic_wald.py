#!/usr/bin/env python3
import argparse
import os
import sys
import time
from pathlib import Path

import numpy as np

try:
    import scipy.io
    from scipy.ndimage import zoom
except ImportError:
    sys.exit("ERROR: scipy is required.  pip install scipy")


def bicubic_upsample(hsi_lr, scale):
    h, w, b = hsi_lr.shape
    out = np.empty((h * scale, w * scale, b), dtype=np.float64)
    for i in range(b):
        out[:, :, i] = zoom(hsi_lr[:, :, i], scale, order=3)
    return np.clip(out, 0.0, 1.0)


def main():
    ap = argparse.ArgumentParser(
        description="Generate bicubic interpolation baseline for Wald's protocol."
    )
    ap.add_argument("--bench-root", default=".")
    ap.add_argument("--dataset", default="EMIT32_WALD")
    ap.add_argument("--scale", type=int, default=6)
    ap.add_argument("--output-folder", default="Bicubic")
    args = ap.parse_args()

    os.chdir(args.bench_root)

    hs_dir = Path(f"data/HS/{args.dataset}/{args.scale}")
    sr_dir = Path(f"data/SR/{args.output_folder}/{args.dataset}/{args.scale}")
    sr_dir.mkdir(parents=True, exist_ok=True)

    scenes = sorted(p.stem for p in hs_dir.glob("*.mat"))
    if not scenes:
        sys.exit(f"No HS scenes found in {hs_dir}")

    pending = [s for s in scenes if not (sr_dir / f"{s}.mat").exists()]

    print(f"Bicubic Baseline (Wald's Protocol)")
    print(f"===================================")
    print(f"Dataset: {args.dataset}")
    print(f"Scale:   {args.scale}")
    print(f"Scenes:  {len(pending)} pending / {len(scenes)} total")
    print()

    if not pending:
        print("All scenes already processed.")
        return

    times_path = sr_dir / "times.csv"

    for i, scene in enumerate(pending, 1):
        hs_path = hs_dir / f"{scene}.mat"
        print(f"[{i}/{len(pending)}] {scene}", end="", flush=True)
        tic = time.time()

        hsi_lr = scipy.io.loadmat(str(hs_path))["hsi"].astype(np.float64)
        upsampled = bicubic_upsample(hsi_lr, args.scale)
        elapsed = time.time() - tic

        scipy.io.savemat(
            str(sr_dir / f"{scene}.mat"),
            {"sri": upsampled},
            do_compression=True,
        )

        with open(times_path, "a") as f:
            f.write(f"{scene},{elapsed:.4f}\n")

        print(f" — {elapsed*1000:.0f}ms  shape={upsampled.shape}")

    print(f"\nDone. Outputs in {sr_dir}/")


if __name__ == "__main__":
    main()
