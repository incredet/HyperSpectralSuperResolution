#!/usr/bin/env python3
"""
select_wald_tiles.py — Select tiles for Wald's protocol evaluation.

Reads tiles_clean.csv (QC-filtered by R², reverse R², EMIT cloud fraction)
and aois.csv, then performs proportional stratified subsampling by land-cover
group to produce an evaluation set (~400 tiles).

Usage
-----
    python main/select_wald_tiles.py \
        --tiles-csv /path/to/tiles_clean.csv \
        --aois-csv /path/to/aois.csv \
        --drive-root /path/to/drive/data \
        --max-total 400 \
        --output wald_tile_list.csv

Output
------
    A CSV with columns:
        scene, aoi_slug, pair_id, tile_idx, r2_mean, land_cover,
        land_cover_group, emit_b32_path, s2_path

    This CSV can be passed to tif2mat_wald.py via --tile-list.
"""

import argparse
import sys
from pathlib import Path

import numpy as np
import pandas as pd


# ── Land cover grouping ──────────────────────────────────────────────────
# The AOI CSV has fine-grained land_cover labels. We group them into
# broader categories for stratification so we get diverse coverage
# without needing 5 tiles from every micro-category.

LAND_COVER_GROUPS = {
    "tropical_forest":          "forest",
    "temperate_forest":         "forest",
    "boreal_forest":            "forest",
    "subtropical_forest":       "forest",
    "tropical_dry_forest":      "forest",
    "tropical_montane_forest":  "forest",
    "temperate_forest/savanna": "forest",

    "desert":          "arid",
    "desert/coastal":  "arid",
    "desert/mountain": "arid",
    "desert/mineral":  "arid",
    "desert/volcanic": "arid",
    "desert/oasis":    "arid",
    "desert/salt_flat":"arid",
    "salt_flat":       "arid",
    "salt_flat/playa": "arid",
    "salt_flat/barren":"arid",
    "salt_flat/savanna":"arid",
    "semi-arid/grassland": "arid",

    "cropland":              "cropland",
    "cropland/savanna":      "cropland",
    "cropland/steppe":       "cropland",
    "cropland/arid":         "cropland",
    "cropland/wetland":      "cropland",
    "cropland/tropical":     "cropland",
    "cropland/semi-arid":    "cropland",
    "cropland/urban":        "cropland",
    "cropland/forest":       "cropland",
    "cropland/tropical_montane": "cropland",
    "agriculture/urban":     "cropland",

    "savanna":              "savanna_grass",
    "savanna/grassland":    "savanna_grass",
    "savanna/woodland":     "savanna_grass",
    "grassland":            "savanna_grass",
    "grassland/shrubland":  "savanna_grass",
    "grassland/wetland":    "savanna_grass",
    "grassland/steppe":     "savanna_grass",
    "steppe/grassland":     "savanna_grass",
    "steppe/shrubland":     "savanna_grass",

    "urban":              "urban",
    "urban/arid":         "urban",
    "urban/tropical":     "urban",
    "urban/temperate":    "urban",
    "urban/subtropical":  "urban",
    "urban/mediterranean":"urban",
    "urban/grassland":    "urban",
    "urban/cropland":     "urban",
    "urban/mountain":     "urban",
    "urban/savanna":      "urban",
    "urban/desert":       "urban",

    "wetland":              "wetland",
    "wetland/savanna":      "wetland",
    "wetland/marsh":        "wetland",
    "wetland/agriculture":  "wetland",
    "wetland/coastal":      "wetland",
    "mangrove/wetland":     "wetland",
    "coastal/wetland":      "wetland",
    "coastal/desert":       "coastal",

    "shrubland":              "shrubland",
    "shrubland/cropland":     "shrubland",
    "shrubland/semi-arid":    "shrubland",
    "shrubland/steppe":       "shrubland",
    "shrubland/woodland":     "shrubland",
    "woodland/semi-arid":     "shrubland",
    "woodland/savanna":       "shrubland",
    "woodland/tropical":      "shrubland",

    "mediterranean/shrubland":   "mediterranean",
    "mediterranean/agriculture": "mediterranean",
    "mediterranean/mountain":    "mediterranean",

    "alpine/grassland":  "mountain",
    "alpine/glacier":    "mountain",
    "alpine/mountain":   "mountain",
    "mountain/semi-arid":"mountain",
    "mountain/tropical": "mountain",
    "mountain/cropland": "mountain",
    "mountain/arid":     "mountain",
    "arid/canyon":       "mountain",

    "volcanic/tropical":        "volcanic",
    "volcanic/tropical_forest": "volcanic",

    "lake/semi-arid": "water",
    "lake/alpine":    "water",
    "lake/arid":      "water",
    "lake/salt_flat":  "water",
}


def group_land_cover(lc: str) -> str:
    """Map a fine-grained land_cover label to a broad group."""
    if pd.isna(lc):
        return "other"
    lc = lc.strip().lower()
    return LAND_COVER_GROUPS.get(lc, "other")


def derive_scene_name(row: pd.Series, drive_root: Path) -> tuple:
    """
    Reconstruct tile file paths and scene name from r2_all_tiles.csv row.

    The tile naming convention is:
        {aoi_slug}/{pair_id}/tiles/{pair_id}_tile{idx:03d}_emit_b32.tif
        {aoi_slug}/{pair_id}/tiles/{pair_id}_tile{idx:03d}_s2.tif

    The scene name must be globally unique across all AOIs, so we construct
    it as: {aoi_short}_{pair_short}_t{idx:03d}
    """
    aoi_slug = row["aoi_slug"]
    pair_id  = row["pair_id"]
    tile_idx = int(row["tile_idx"])

    tile_name = f"{pair_id}_tile{tile_idx:03d}"
    tiles_dir = drive_root / aoi_slug / pair_id / "tiles"

    emit_path = tiles_dir / f"{tile_name}_emit_b32.tif"
    s2_path   = tiles_dir / f"{tile_name}_s2.tif"

    # Build a unique scene name: truncate aoi_slug and pair_id for readability
    # aoi_slug format: "aoi_lat32.75_lon-114.96" → "lat32.75_lon-114.96"
    aoi_short = aoi_slug.replace("aoi_", "")
    # pair_id format: "20240501T153107_T18LTM_20240429" — keep first 8 chars + tile grid
    pair_parts = pair_id.split("_")
    pair_short = pair_parts[0][:8] if pair_parts else pair_id[:8]
    if len(pair_parts) > 1:
        pair_short += f"_{pair_parts[1]}"

    scene = f"{aoi_short}_{pair_short}_t{tile_idx:03d}"
    return scene, str(emit_path), str(s2_path)


def main():
    ap = argparse.ArgumentParser(
        description="Select tiles for Wald's protocol evaluation from QC-filtered "
                    "tiles_clean.csv with proportional stratified land-cover subsampling."
    )
    ap.add_argument("--tiles-csv", required=True,
                    help="Path to tiles_clean.csv (QC-filtered)")
    ap.add_argument("--aois-csv", required=True,
                    help="Path to aois.csv with land_cover column")
    ap.add_argument("--drive-root", required=True,
                    help="Drive root containing AOI/pair/tiles/ structure")
    ap.add_argument("--min-per-group", type=int, default=10,
                    help="Minimum tiles per land-cover group (default: 10)")
    ap.add_argument("--max-total", type=int, default=400,
                    help="Target total tiles (default: 400)")
    ap.add_argument("--seed", type=int, default=42,
                    help="Random seed for reproducibility (default: 42)")
    ap.add_argument("--output", default="wald_tile_list.csv",
                    help="Output CSV path (default: wald_tile_list.csv)")
    args = ap.parse_args()

    df = pd.read_csv(args.tiles_csv)
    print(f"Tiles CSV: {len(df)} tiles (already QC-filtered)")

    # Load AOI metadata for land-cover labels
    aois_df = pd.read_csv(args.aois_csv)
    aoi_lookup = {}
    for _, aoi in aois_df.iterrows():
        slug = f"aoi_lat{aoi['lat']}_lon{aoi['lon']}"
        aoi_lookup[slug] = {
            "name": aoi["name"],
            "land_cover": aoi.get("land_cover", "unknown"),
            "description": aoi.get("description", ""),
        }

    df["land_cover"] = df["aoi_slug"].map(
        lambda s: aoi_lookup.get(s, {}).get("land_cover", "unknown")
    )
    df["land_cover_group"] = df["land_cover"].apply(group_land_cover)

    if df.empty:
        sys.exit("No tiles in input CSV.")

    # ── Step 1: Derive file paths & verify existence ─────────────────────
    drive_root = Path(args.drive_root)
    scenes, emit_paths, s2_paths = [], [], []
    valid_mask = []

    for _, row in df.iterrows():
        scene, ep, sp = derive_scene_name(row, drive_root)
        scenes.append(scene)
        emit_paths.append(ep)
        s2_paths.append(sp)
        valid_mask.append(Path(ep).exists() and Path(sp).exists())

    df["scene"] = scenes
    df["emit_b32_path"] = emit_paths
    df["s2_path"] = s2_paths
    df["files_exist"] = valid_mask

    n_missing = (~df["files_exist"]).sum()
    if n_missing > 0:
        print(f"  WARNING: {n_missing} tiles have missing files — excluded")
        df = df[df["files_exist"]].copy()

    # ── Step 2: Proportional stratified subsample ────────────────────────
    rng = np.random.RandomState(args.seed)

    groups = df.groupby("land_cover_group")
    group_sizes = groups.size()
    n_groups = len(group_sizes)
    total_available = len(df)

    print(f"\nLand-cover distribution ({total_available} tiles):")
    for grp, n in group_sizes.sort_values(ascending=False).items():
        print(f"  {grp:<20s}: {n:>4d} tiles ({100*n/total_available:.1f}%)")

    # Allocate proportionally, with a minimum floor per group
    target = min(args.max_total, total_available)
    floor = args.min_per_group
    budget_after_floors = target - floor * n_groups

    if budget_after_floors < 0:
        # not enough budget for floors — just give each group its fair share
        alloc = {g: max(1, round(target * n / total_available))
                 for g, n in group_sizes.items()}
    else:
        alloc = {}
        for g, n in group_sizes.items():
            proportional = budget_after_floors * n / total_available
            alloc[g] = floor + int(round(proportional))

    # Clamp to available and re-distribute surplus
    for g in alloc:
        alloc[g] = min(alloc[g], group_sizes[g])

    selected = []
    for grp, sub in groups:
        n_pick = alloc[grp]
        if len(sub) <= n_pick:
            selected.append(sub)
        else:
            selected.append(sub.sample(n=n_pick, random_state=rng))

    selected_df = pd.concat(selected, ignore_index=True)

    # ── Step 3: Summary ──────────────────────────────────────────────────
    print(f"\nSelected {len(selected_df)} tiles for Wald evaluation:")
    for grp, sub in selected_df.groupby("land_cover_group"):
        aois = sub["aoi_slug"].nunique()
        print(f"  {grp:<20s}: {len(sub):>3d} tiles from {aois} AOI(s), "
              f"R² mean={sub['r2_mean'].mean():.3f}")

    print(f"\nOverall R² — mean: {selected_df['r2_mean'].mean():.4f}, "
          f"min: {selected_df['r2_mean'].min():.4f}, "
          f"max: {selected_df['r2_mean'].max():.4f}")

    # ── Step 4: Save ─────────────────────────────────────────────────────
    out_cols = [
        "scene", "aoi_slug", "pair_id", "tile_idx", "r2_mean",
        "land_cover", "land_cover_group", "emit_b32_path", "s2_path",
    ]
    selected_df[out_cols].to_csv(args.output, index=False)
    print(f"\nSaved: {args.output}")

    print(f"\nNext steps:")
    print(f"  python main/tif2mat_wald.py \\")
    print(f"      --tile-list {args.output} \\")
    print(f"      --bench-root . --dataset EMIT32_WALD --scale 6")


if __name__ == "__main__":
    main()
