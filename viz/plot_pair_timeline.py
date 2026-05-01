
import os
from pathlib import Path

import matplotlib.dates as mdates
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
CSV_PATH = FIG_DIR / "pair_dates.csv"

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
    "axes.linewidth": 0.6,
    "xtick.major.width": 0.6,
    "ytick.major.width": 0.6,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

COLOR_BAR = "#4477AA"
COLOR_EDGE = "white"


def plot_date_histogram(ax, df):
    # midpoint of EMIT and S2 represents the pair
    emit = pd.to_datetime(df["emit_dt"], utc=True)
    s2 = pd.to_datetime(df["s2_dt"], utc=True)
    mid = emit + (s2 - emit) / 2
    mid = mid.dt.tz_convert(None)

    # month bins spanning the full observed range
    start = pd.Timestamp(mid.min().to_period("M").to_timestamp())
    end = pd.Timestamp((mid.max() + pd.Timedelta(days=31)).to_period("M").to_timestamp())
    bins = pd.date_range(start, end, freq="MS")

    ax.hist(
        mid, bins=bins,
        color=COLOR_BAR, edgecolor=COLOR_EDGE, linewidth=0.4,
    )
    ax.set_xlabel("pair date (month)")
    ax.set_ylabel("number of pairs")
    ax.xaxis.set_major_locator(mdates.YearLocator())
    ax.xaxis.set_major_formatter(mdates.DateFormatter("%Y"))
    ax.xaxis.set_minor_locator(mdates.MonthLocator())
    ax.tick_params(axis="x", which="minor", length=2)
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    ax.text(
        0.98, 0.95,
        f"n = {len(mid)}\nspan: {start.strftime('%Y-%m')} → {end.strftime('%Y-%m')}",
        transform=ax.transAxes, ha="right", va="top",
        fontsize=7.5, family="monospace", color="#444444",
    )


def plot_delta_histogram(ax, df):
    delta = df["delta_hours"].to_numpy()
    rng = max(abs(delta.min()), abs(delta.max()))
    lim = np.ceil(rng / 6) * 6  # pad to nearest 6h

    bins = np.linspace(-lim, lim, 41)
    ax.hist(
        delta, bins=bins,
        color=COLOR_BAR, edgecolor=COLOR_EDGE, linewidth=0.4,
    )
    ax.axvline(0, color="#AA4455", linewidth=0.8, linestyle="--", alpha=0.8)
    ax.set_xlabel(r"$\Delta t$ = S2 $-$ EMIT (hours)")
    ax.set_ylabel("number of pairs")
    ax.set_xlim(-lim, lim)
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    stats = (
        f"n     = {len(delta)}\n"
        f"mean  = {delta.mean():+.2f} h\n"
        f"med.  = {np.median(delta):+.2f} h\n"
        f"|Δt|̄  = {np.abs(delta).mean():.2f} h\n"
        f"max|Δ| = {np.abs(delta).max():.2f} h"
    )
    ax.text(
        0.98, 0.95, stats,
        transform=ax.transAxes, ha="right", va="top",
        fontsize=7.5, family="monospace", color="#444444",
    )


def main():
    df = pd.read_csv(CSV_PATH)

    fig, axes = plt.subplots(
        1, 2,
        figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.35),
        gridspec_kw={"wspace": 0.28},
    )
    plot_date_histogram(axes[0], df)
    plot_delta_histogram(axes[1], df)

    out = FIG_DIR / "fig_pair_timeline"
    fig.savefig(out.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"saved {out.with_suffix('.pdf').name}")


if __name__ == "__main__":
    main()
