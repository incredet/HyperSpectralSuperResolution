"""
AOI world map and land-cover distribution — pre- and post-QC versions.

Reads  {DRIVE_ROOT}/figures/aoi_pair_counts.csv     (from ingest_aoi_counts.py)
       {DRIVE_ROOT}/figures/aoi_postqc_counts.csv   (from ingest_postqc.py)
Writes {DRIVE_ROOT}/figures/fig_aoi_map_preqc.{pdf,png}
       {DRIVE_ROOT}/figures/fig_aoi_landcover_preqc.{pdf,png}
       {DRIVE_ROOT}/figures/fig_aoi_map_postqc.{pdf,png}      (if postqc CSV exists)
       {DRIVE_ROOT}/figures/fig_aoi_landcover_postqc.{pdf,png} (if postqc CSV exists)

Usage (Colab):
    !pip -q install cartopy
    !python viz/plot_aoi_map.py
"""

from __future__ import annotations

import os
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

import cartopy.crs as ccrs
import cartopy.feature as cfeature

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"

FIG_W_CM = 16.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.5,
    "axes.labelsize": 8.5,
    "axes.titlesize": 9.5,
    "xtick.labelsize": 7.5,
    "ytick.labelsize": 7.5,
    "legend.fontsize": 7.5,
    "axes.linewidth": 0.6,
    "xtick.major.width": 0.6,
    "ytick.major.width": 0.6,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

# --- land-cover grouping ----------------------------------------------------
GROUP_RULES = [
    ("forest", {
        "tropical_forest", "temperate_forest", "boreal_forest",
        "subtropical_forest", "tropical_dry_forest", "tropical_montane_forest",
        "mangrove", "peatland", "woodland",
    }),
    ("cropland", {"cropland", "agriculture"}),
    ("desert / arid", {"desert", "arid", "semi-arid", "salt_flat"}),
    ("grassland / savanna", {"grassland", "savanna", "steppe", "shrubland"}),
    ("wetland", {"wetland", "lake", "coastal"}),
    ("mountain / alpine", {"mountain", "alpine"}),
    ("urban", {"urban"}),
    ("mediterranean", {"mediterranean"}),
    ("barren / volcanic", {
        "volcanic", "barren", "mining", "fire_scar", "deforestation",
    }),
]
GROUP_ORDER = [g for g, _ in GROUP_RULES] + ["other"]

GROUP_COLOR = {
    "forest":               "#117733",
    "cropland":             "#DDCC77",
    "desert / arid":        "#D55E00",
    "grassland / savanna":  "#88CCEE",
    "wetland":              "#332288",
    "mountain / alpine":    "#AA4499",
    "urban":                "#000000",
    "mediterranean":        "#CC6677",
    "barren / volcanic":    "#999933",
}


def assign_group(lc: str) -> str:
    head = (lc or "").split("/")[0].strip()
    for name, members in GROUP_RULES:
        if head in members:
            return name
    tail = (lc or "").split("/")[-1].strip()
    for name, members in GROUP_RULES:
        if tail in members:
            return name
    return "other"


# --- shared plot functions --------------------------------------------------

def plot_world_map(
    df: pd.DataFrame,
    out_path: Path,
    covered_col: str,
    no_pair_label: str,
    summary: str,
) -> None:
    covered   = df[df[covered_col] > 0]
    uncovered = df[df[covered_col] == 0]

    fig = plt.figure(figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.62))
    gs = fig.add_gridspec(nrows=2, ncols=1, height_ratios=[1.0, 0.14], hspace=0.02)
    ax  = fig.add_subplot(gs[0, 0], projection=ccrs.Robinson())
    lax = fig.add_subplot(gs[1, 0])
    lax.axis("off")

    ax.set_global()
    ax.add_feature(cfeature.LAND,    facecolor="#EFEFEF", edgecolor="none", zorder=0)
    ax.add_feature(cfeature.OCEAN,   facecolor="white",   edgecolor="none", zorder=0)
    ax.coastlines(linewidth=0.3, color="#666666", zorder=1)
    ax.add_feature(cfeature.BORDERS, linewidth=0.2, edgecolor="#AAAAAA", zorder=1)

    if len(uncovered):
        ax.scatter(
            uncovered["lon"], uncovered["lat"],
            transform=ccrs.PlateCarree(),
            marker="x", s=7, linewidths=0.6,
            color="#A0A0A0", alpha=0.9, zorder=2,
        )

    handles, labels = [], []
    for grp in GROUP_ORDER:
        sub = covered[covered["group"] == grp]
        if not len(sub):
            continue
        h = ax.scatter(
            sub["lon"], sub["lat"],
            transform=ccrs.PlateCarree(),
            marker="o", s=16, linewidths=0.3,
            facecolor=GROUP_COLOR[grp], edgecolor="white", zorder=3,
        )
        handles.append(h)
        labels.append(f"{grp}")

    uncov_handle = plt.Line2D(
        [], [], color="#A0A0A0", marker="x", linestyle="None",
        markersize=5, markeredgewidth=0.8,
    )
    handles.append(uncov_handle)
    labels.append(f"{no_pair_label}")

    lax.legend(
        handles, labels,
        loc="center", ncol=5, frameon=False,
        handletextpad=0.4, columnspacing=1.2,
    )

    ax.text(
        1.5, 0.98, summary,
        transform=ax.transAxes, ha="right", va="top",
        fontsize=7.5, family="monospace",
        bbox=dict(boxstyle="round,pad=0.35", facecolor="white",
                  edgecolor="#CCCCCC", linewidth=0.5),
        zorder=5,
    )

    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


def plot_landcover_distribution(
    df: pd.DataFrame,
    out_path: Path,
    covered_col: str,
    annotation: str,
) -> None:
    covered = (df[df[covered_col] > 0]
               .groupby("group").size().reindex(GROUP_ORDER).fillna(0).astype(int))
    uncov   = (df[df[covered_col] == 0]
               .groupby("group").size().reindex(GROUP_ORDER).fillna(0).astype(int))
    totals  = covered + uncov
    order   = totals.sort_values(ascending=True).index.tolist()

    fig, ax = plt.subplots(figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.55))
    y      = np.arange(len(order))
    cov    = covered.loc[order].values
    unc    = uncov.loc[order].values
    colors = [GROUP_COLOR[g] for g in order]

    ax.barh(y, cov, color=colors, edgecolor="white", linewidth=0.4)
    ax.barh(y, unc, left=cov, color="#D6D6D6", edgecolor="white", linewidth=0.4)

    for i, (c, u) in enumerate(zip(cov, unc)):
        if c + u == 0:
            continue
        ax.text(c + u + 2, i, f"{c}/{c + u}", va="center",
                fontsize=7.0, color="#333333")

    ax.set_yticks(y)
    ax.set_yticklabels(order)
    ax.set_xlabel("number of AOIs")
    ax.set_xlim(0, totals.max() * 1.18 if totals.max() else 1)
    ax.tick_params(axis="y", length=0)
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    ax.text(0.99, 0.02, annotation, transform=ax.transAxes,
            ha="right", va="bottom", fontsize=7.5, color="#555555")

    fig.tight_layout()
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


# --- main -------------------------------------------------------------------

def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)

    # --- pre-QC -------------------------------------------------------------
    pre_csv = FIG_DIR / "aoi_pair_counts.csv"
    df_pre = pd.read_csv(pre_csv)
    df_pre["group"] = df_pre["land_cover"].map(assign_group)

    n_total  = len(df_pre)
    n_folder = int(df_pre["folder_exists"].sum())
    n_pairs  = int((df_pre["pairs_completed"] > 0).sum())
    n_tiles  = int(df_pre["tiles_produced"].sum())

    plot_world_map(
        df_pre,
        FIG_DIR / "fig_aoi_map_preqc",
        covered_col="pairs_completed",
        no_pair_label="no pair",
        summary=(
            f"AOIs defined:      {n_total}\n"
            f"folders on drive:  {n_folder}\n"
            f"AOIs with ≥1 pair: {n_pairs}\n"
            f"tiles produced:    {n_tiles:,}"
        ),
    )
    plot_landcover_distribution(
        df_pre,
        FIG_DIR / "fig_aoi_landcover_preqc",
        covered_col="pairs_completed",
        annotation="coloured: AOIs with ≥1 pair     grey: no pair",
    )

    # --- post-QC ------------------------------------------------------------
    post_csv = FIG_DIR / "aoi_postqc_counts.csv"
    if not post_csv.exists():
        print(f"  post-QC CSV not found ({post_csv.name}), skipping post-QC figures")
        return

    # merge postqc counts into the full 500-AOI frame so grey × still shows
    # for AOIs that never had a pair
    df_post = pd.read_csv(post_csv)[["lat", "lon", "tiles_passed"]]
    df_all  = df_pre.merge(df_post, on=["lat", "lon"], how="left")
    df_all["tiles_passed"] = df_all["tiles_passed"].fillna(0).astype(int)
    df_all["group"] = df_all["land_cover"].map(assign_group)

    n_aoi_post  = int((df_all["tiles_passed"] > 0).sum())
    n_tiles_post = int(df_all["tiles_passed"].sum())

    plot_world_map(
        df_all,
        FIG_DIR / "fig_aoi_map_postqc",
        covered_col="tiles_passed",
        no_pair_label="no tiles",
        summary=(
            f"AOIs defined: {n_total}\n"
            f"AOIs with ≥1 tile: {n_aoi_post}\n"
            f"tiles post-QC: {n_tiles_post:,}"
        ),
    )
    plot_landcover_distribution(
        df_all,
        FIG_DIR / "fig_aoi_landcover_postqc",
        covered_col="tiles_passed",
        annotation="coloured: AOIs with ≥1 tile post-QC     grey: no tiles",
    )


if __name__ == "__main__":
    main()
