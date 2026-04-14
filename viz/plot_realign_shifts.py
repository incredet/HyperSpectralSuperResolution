"""
Per-tile realignment shift distribution figures.

Reads  {DRIVE_ROOT}/figures/realign_shifts.csv  (from ingest_realign_shifts.py)
Writes {DRIVE_ROOT}/figures/fig_realign_shift_histogram.{pdf,png}
       {DRIVE_ROOT}/figures/fig_realign_shift_scatter.{pdf,png}

Usage (Colab):
    !python viz/plot_realign_shifts.py
"""

from __future__ import annotations

import os
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
CSV_PATH = FIG_DIR / "realign_shifts.csv"

PANEL_CM = 8.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.0,
    "axes.labelsize": 8.0,
    "xtick.labelsize": 7.0,
    "ytick.labelsize": 7.0,
    "axes.linewidth": 0.5,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

COLOR_BAR = "#4477AA"
COLOR_REF = "#AA4455"


def fig_histogram(df: pd.DataFrame, out_path: Path) -> None:
    mag = df["shift_s2_mag_px"].dropna().to_numpy()
    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM * 0.7))

    ax.hist(mag, bins=60, color=COLOR_BAR, edgecolor="white", linewidth=0.3)
    med, mean = float(np.median(mag)), float(np.mean(mag))
    ax.axvline(med,  color=COLOR_REF, linestyle="--", linewidth=0.8)
    ax.axvline(mean, color=COLOR_REF, linestyle=":",  linewidth=0.8)
    ax.text(0.98, 0.95,
            f"n      = {len(mag):,}\n"
            f"median = {med:.3f} px\n"
            f"mean   = {mean:.3f} px\n"
            f"max    = {mag.max():.3f} px",
            transform=ax.transAxes, ha="right", va="top",
            fontsize=7.0, family="monospace", color="#333333")
    ax.set_xlabel(r"per-tile S2 shift magnitude $|\Delta|$ (S2 pixels)")
    ax.set_ylabel("number of tiles")
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    fig.tight_layout(pad=0.4)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


def fig_scatter(df: pd.DataFrame, out_path: Path) -> None:
    dy = df["shift_s2_dy"].to_numpy()
    dx = df["shift_s2_dx"].to_numpy()
    lim = float(np.nanmax(np.abs(np.concatenate([dy, dx])))) * 1.1

    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM))
    hb = ax.hexbin(dx, dy, gridsize=50, cmap="Blues", mincnt=1,
                   linewidths=0.0, extent=(-lim, lim, -lim, lim))
    ax.axhline(0, color="#999999", linewidth=0.4, linestyle="--")
    ax.axvline(0, color="#999999", linewidth=0.4, linestyle="--")

    ax.set_xlim(-lim, lim)
    ax.set_ylim(-lim, lim)
    ax.set_aspect("equal")
    ax.set_xlabel(r"$\Delta x$ (S2 pixels)")
    ax.set_ylabel(r"$\Delta y$ (S2 pixels)")
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    cb = fig.colorbar(hb, ax=ax, fraction=0.04, pad=0.02)
    cb.ax.tick_params(labelsize=6.5, length=2)
    cb.set_label("tiles per bin", fontsize=7.0)
    cb.outline.set_linewidth(0.4)

    # mean shift annotation
    mean_dy, mean_dx = float(np.nanmean(dy)), float(np.nanmean(dx))
    ax.text(0.02, 0.98,
            f"n = {len(dy):,}\nmean ⟨Δx⟩={mean_dx:+.3f}\n     ⟨Δy⟩={mean_dy:+.3f}",
            transform=ax.transAxes, ha="left", va="top",
            fontsize=7.0, family="monospace", color="#333333",
            bbox=dict(boxstyle="round,pad=0.25", fc="white",
                      ec="#CCCCCC", linewidth=0.4))

    fig.tight_layout(pad=0.3)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


def main() -> None:
    df = pd.read_csv(CSV_PATH)
    print(f"loaded {len(df):,} tiles from {CSV_PATH.name}")

    fig_histogram(df, FIG_DIR / "fig_realign_shift_histogram")
    fig_scatter(df,   FIG_DIR / "fig_realign_shift_scatter")


if __name__ == "__main__":
    main()
