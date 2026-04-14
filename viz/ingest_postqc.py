"""
Produce per-AOI post-QC tile counts from r2_tiles_qc.csv and tiles_clean.csv.

Reads  {DRIVE_ROOT}/r2_tiles_qc.csv     — all tiles with QC flags
       {DRIVE_ROOT}/tiles_clean.csv      — tiles that passed all QC filters
       repo aois.csv                     — AOI metadata
Writes {DRIVE_ROOT}/figures/aoi_postqc_counts.csv

Output columns:
    name, lat, lon, land_cover,
    tiles_total, tiles_passed,
    failed_emit_cloud, failed_r2_reverse, failed_r2_forward

Usage (Colab):
    !python viz/ingest_postqc.py
"""

from __future__ import annotations

import os
import re
from pathlib import Path

import pandas as pd

REPO_ROOT = Path(__file__).resolve().parent.parent
AOIS_CSV  = REPO_ROOT / "aois.csv"

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"

SLUG_RE = re.compile(r"aoi_lat(?P<lat>-?\d+(?:\.\d+)?)_lon(?P<lon>-?\d+(?:\.\d+)?)")

QC_MIN_R2 = 0.75   # threshold used to produce tiles_clean


def parse_slug(slug: str) -> tuple[float, float] | None:
    m = SLUG_RE.search(slug)
    return (float(m["lat"]), float(m["lon"])) if m else None


def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)

    all_tiles  = pd.read_csv(DRIVE_ROOT / "r2_tiles_qc.csv")
    clean      = pd.read_csv(DRIVE_ROOT / "tiles_clean.csv")
    aois       = pd.read_csv(AOIS_CSV)

    # parse lat/lon from slug
    coords = all_tiles["aoi_slug"].map(parse_slug)
    all_tiles["lat"] = coords.map(lambda x: x[0] if x else None)
    all_tiles["lon"] = coords.map(lambda x: x[1] if x else None)

    # per-AOI aggregates
    grp = all_tiles.groupby("aoi_slug")
    agg = pd.DataFrame({
        "lat":                grp["lat"].first(),
        "lon":                grp["lon"].first(),
        "tiles_total":        grp.size(),
        "tiles_pass_qc":      grp["pass_qc"].sum(),
        "failed_emit_cloud":  (~grp["pass_emit_cloud"].all()).transform("sum").groupby(all_tiles["aoi_slug"]).first() if False else grp["pass_emit_cloud"].apply(lambda x: (~x).sum()),
        "failed_r2_reverse":  grp["pass_r2_reverse"].apply(lambda x: (~x).sum()),
        "failed_s2_bright":   grp["pass_s2_bright"].apply(lambda x: (~x).sum()),
    }).reset_index()

    # tiles_passed = those in clean file
    clean_counts = clean.groupby("aoi_slug").size().rename("tiles_passed")
    agg = agg.merge(clean_counts, on="aoi_slug", how="left")
    agg["tiles_passed"] = agg["tiles_passed"].fillna(0).astype(int)
    agg["failed_r2_forward"] = agg["tiles_pass_qc"] - agg["tiles_passed"]

    # join AOI metadata
    aois["lat"] = aois["lat"].astype(float)
    aois["lon"] = aois["lon"].astype(float)
    agg = agg.merge(aois[["lat", "lon", "name", "land_cover"]],
                    on=["lat", "lon"], how="left")

    out_cols = ["name", "lat", "lon", "land_cover",
                "tiles_total", "tiles_passed",
                "failed_emit_cloud", "failed_r2_reverse",
                "failed_r2_forward", "failed_s2_bright"]
    agg[out_cols].to_csv(FIG_DIR / "aoi_postqc_counts.csv", index=False)

    # summary print
    n_total   = agg["tiles_total"].sum()
    n_passed  = agg["tiles_passed"].sum()
    n_aoi_pre = (agg["tiles_total"] > 0).sum()
    n_aoi_post= (agg["tiles_passed"] > 0).sum()
    print(f"wrote {FIG_DIR / 'aoi_postqc_counts.csv'}")
    print(f"  tiles pre-QC:      {n_total:,}")
    print(f"  tiles post-QC:     {n_passed:,}  ({n_passed/n_total*100:.1f}%)")
    print(f"  rejected:          {n_total-n_passed:,}  ({(n_total-n_passed)/n_total*100:.1f}%)")
    print(f"  AOIs pre-QC:       {n_aoi_pre}")
    print(f"  AOIs post-QC:      {n_aoi_post}")
    print(f"  AOIs lost all:     {n_aoi_pre - n_aoi_post}")
    print()
    print("  per-filter failures (tiles, may overlap):")
    for col, label in [
        ("failed_emit_cloud",  "EMIT cloud mask"),
        ("failed_r2_reverse",  "reverse R² < 0.70"),
        ("failed_r2_forward",  f"forward R² < {QC_MIN_R2}"),
        ("failed_s2_bright",   "S2 brightness"),
    ]:
        n = agg[col].sum()
        print(f"    {label:25s}  {n:5,}  ({n/n_total*100:.1f}%)")


if __name__ == "__main__":
    main()
