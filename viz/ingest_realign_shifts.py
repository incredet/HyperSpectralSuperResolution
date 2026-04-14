"""
Aggregate per-tile realignment shifts across every AOI's manifest.

Walks DRIVE_ROOT/aoi_lat*_lon*/<pair>/manifest.csv, joins with
tiles_clean.csv to keep only QC-passed tiles, writes:
    {DRIVE_ROOT}/figures/realign_shifts.csv

Output columns:
    aoi_slug, pair_id, tile_idx,
    shift_emit_dy, shift_emit_dx, shift_emit_mag_px,
    shift_s2_dy,   shift_s2_dx,   shift_s2_mag_px

Usage (Colab):
    !python viz/ingest_realign_shifts.py
"""

from __future__ import annotations

import os
import re
from pathlib import Path

import numpy as np
import pandas as pd

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
OUT_CSV = FIG_DIR / "realign_shifts.csv"

AOI_RE = re.compile(r"^aoi_lat-?\d+(?:\.\d+)?_lon-?\d+(?:\.\d+)?$")


def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)

    rows = []
    aoi_dirs = [p for p in DRIVE_ROOT.iterdir() if p.is_dir() and AOI_RE.match(p.name)]
    print(f"scanning {len(aoi_dirs)} AOI folders …")

    for aoi_dir in sorted(aoi_dirs):
        for pair_dir in aoi_dir.iterdir():
            if not pair_dir.is_dir():
                continue
            mp = pair_dir / "manifest.csv"
            if not mp.exists():
                mp = pair_dir / "global_manifest.csv"
            if not mp.exists():
                continue
            try:
                df = pd.read_csv(mp)
            except Exception:
                continue
            if "realign_shift_s2_dy" not in df.columns:
                continue
            df = df.copy()
            df["aoi_slug"] = aoi_dir.name
            rows.append(df[[
                "aoi_slug", "pair_id", "idx",
                "realign_shift_emit_dy", "realign_shift_emit_dx",
                "realign_shift_s2_dy",   "realign_shift_s2_dx",
            ]])

    if not rows:
        print("!! no manifests with realign columns found")
        return

    all_tiles = pd.concat(rows, ignore_index=True)
    all_tiles = all_tiles.rename(columns={"idx": "tile_idx"})
    print(f"  raw tiles aggregated: {len(all_tiles):,}")

    # filter to QC-passing tiles
    clean_csv = DRIVE_ROOT / "tiles_clean.csv"
    if clean_csv.exists():
        clean = pd.read_csv(clean_csv)[["aoi_slug", "pair_id", "tile_idx"]]
        clean["tile_idx"] = clean["tile_idx"].astype(int)
        all_tiles["tile_idx"] = all_tiles["tile_idx"].astype(int)
        before = len(all_tiles)
        all_tiles = all_tiles.merge(clean, on=["aoi_slug", "pair_id", "tile_idx"],
                                    how="inner")
        print(f"  after QC filter:      {len(all_tiles):,}  (dropped {before - len(all_tiles):,})")
    else:
        print(f"  warning: {clean_csv.name} not found — keeping all tiles")

    all_tiles["shift_emit_mag_px"] = np.sqrt(
        all_tiles["realign_shift_emit_dy"] ** 2
        + all_tiles["realign_shift_emit_dx"] ** 2
    )
    all_tiles["shift_s2_mag_px"] = np.sqrt(
        all_tiles["realign_shift_s2_dy"] ** 2
        + all_tiles["realign_shift_s2_dx"] ** 2
    )

    out = all_tiles.rename(columns={
        "realign_shift_emit_dy": "shift_emit_dy",
        "realign_shift_emit_dx": "shift_emit_dx",
        "realign_shift_s2_dy":   "shift_s2_dy",
        "realign_shift_s2_dx":   "shift_s2_dx",
    })[[
        "aoi_slug", "pair_id", "tile_idx",
        "shift_emit_dy", "shift_emit_dx", "shift_emit_mag_px",
        "shift_s2_dy",   "shift_s2_dx",   "shift_s2_mag_px",
    ]]
    out.to_csv(OUT_CSV, index=False)

    print(f"wrote {OUT_CSV}")
    print(f"  S2 |shift| (px): mean={out['shift_s2_mag_px'].mean():.3f}  "
          f"median={out['shift_s2_mag_px'].median():.3f}  "
          f"max={out['shift_s2_mag_px'].max():.3f}")
    print(f"  EMIT |shift| (px): mean={out['shift_emit_mag_px'].mean():.4f}  "
          f"median={out['shift_emit_mag_px'].median():.4f}  "
          f"max={out['shift_emit_mag_px'].max():.4f}")


if __name__ == "__main__":
    main()
