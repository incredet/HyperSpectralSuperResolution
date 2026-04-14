"""
Band-selection figure — three stacked panels on a shared wavelength axis.

Top    — Sentinel-2 spectral response functions (10 bands, B02-B12)
Middle — EMIT: all 285 bands as faint ticks, 32 selected highlighted
Bottom — schematic atmospheric transmittance (synthetic, band centres and
         widths from standard H$_2$O / O$_2$ / CO$_2$ features)

Writes {DRIVE_ROOT}/figures/fig_band_selection.{pdf,png}
Usage (Colab):
    !python viz/plot_band_selection.py
"""

from __future__ import annotations

import os
import re
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

REPO_ROOT = Path(__file__).resolve().parent.parent
CONFIG_PATH = REPO_ROOT / "pipeline_config.yaml"

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

WL_MIN, WL_MAX = 380, 2500

# --- Sentinel-2A band specs (centre nm, FWHM nm) ----------------------------
S2_BANDS = [
    ("B02", 492.4,  66.0),
    ("B03", 559.8,  36.0),
    ("B04", 664.6,  31.0),
    ("B05", 704.1,  15.0),
    ("B06", 740.5,  15.0),
    ("B07", 782.8,  20.0),
    ("B08", 832.8, 106.0),
    ("B8A", 864.7,  21.0),
    ("B11", 1613.7, 91.0),
    ("B12", 2202.4, 175.0),
]

# --- EMIT context -----------------------------------------------------------
EMIT_RANGE = (381.0, 2493.0)
EMIT_N_BANDS = 285
EMIT_FWHM = 7.4

# --- atmospheric absorber features (schematic) -----------------------------
# (centre_nm, sigma_nm, depth) — depth is max absorption (1 = fully opaque)
ATMO_FEATURES = [
    (760,  3,  0.88),   # O2 A-band
    (820,  15, 0.20),   # H2O
    (940,  25, 0.40),   # H2O
    (1130, 25, 0.30),   # H2O
    (1380, 40, 0.97),   # H2O (strong)
    (1880, 60, 0.98),   # H2O (strong)
    (2040, 15, 0.15),   # CO2
    (2700, 50, 0.60),   # H2O (edge of range)
]

COLOR_S2         = "#4477AA"
COLOR_S2_EDGE    = "#1F4E79"
COLOR_EMIT_ALL   = "#CFCFCF"
COLOR_EMIT_SEL   = "#CC3311"
COLOR_ATMO_LINE  = "#2F5A84"
COLOR_ATMO_FILL  = "#A6C5E2"
COLOR_GUIDE      = "#E6E6E6"    # shared vertical shading for absorption


def gaussian(x, mu, fwhm):
    sigma = fwhm / (2 * np.sqrt(2 * np.log(2)))
    return np.exp(-0.5 * ((x - mu) / sigma) ** 2)


def atmo_transmittance(wl):
    t = np.ones_like(wl, dtype=float)
    for mu, sig, depth in ATMO_FEATURES:
        t *= (1.0 - depth * np.exp(-0.5 * ((wl - mu) / sig) ** 2))
    return t


# --- parse config -----------------------------------------------------------
_ROW_RE = re.compile(
    r"-\s*(?P<wl>\d+(?:\.\d+)?)\s*#\s*(?P<role>S2|DX|FL)?"
)


def parse_selected_bands(config: Path) -> list[float]:
    wls: list[float] = []
    inside = False
    for line in config.read_text().splitlines():
        if "emit_target_wavelengths_nm:" in line:
            inside = True
            continue
        if not inside:
            continue
        if line.strip() and not line.lstrip().startswith("-"):
            if wls:
                break
            continue
        m = _ROW_RE.search(line)
        if m:
            wls.append(float(m["wl"]))
    return wls


def emit_band_centres():
    # EMIT covers ~381-2493 nm over 285 bands at ~7.4 nm spacing
    return np.linspace(EMIT_RANGE[0], EMIT_RANGE[1], EMIT_N_BANDS)


# --- plot -------------------------------------------------------------------
def plot(selected: list[float], out_path: Path) -> None:
    fig = plt.figure(figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.65))
    gs = fig.add_gridspec(
        nrows=3, ncols=1,
        height_ratios=[1.0, 0.38, 0.95],
        hspace=0.08,
    )
    ax_s2   = fig.add_subplot(gs[0, 0])
    ax_emit = fig.add_subplot(gs[1, 0], sharex=ax_s2)
    ax_atm  = fig.add_subplot(gs[2, 0], sharex=ax_s2)

    # shared vertical absorption shading (on S2 + EMIT panels)
    guide_spans = [(755, 765), (1340, 1450), (1790, 1970)]
    for a in (ax_s2, ax_emit):
        for lo, hi in guide_spans:
            a.axvspan(lo, hi, color=COLOR_GUIDE, alpha=1.0, zorder=0)

    # --- top: S2 SRFs -------------------------------------------------------
    wl = np.linspace(WL_MIN, WL_MAX, 4000)
    for code, mu, fwhm in S2_BANDS:
        y = gaussian(wl, mu, fwhm)
        ax_s2.fill_between(
            wl, 0, y,
            color=COLOR_S2, alpha=0.28,
            edgecolor=COLOR_S2_EDGE, linewidth=0.5,
            zorder=2,
        )
        ax_s2.text(
            mu, 1.04, code,
            ha="center", va="bottom",
            fontsize=6.5, color=COLOR_S2_EDGE,
            zorder=3,
        )

    ax_s2.set_ylim(0, 1.18)
    ax_s2.set_yticks([0, 0.5, 1.0])
    ax_s2.set_ylabel("S2 response")
    ax_s2.tick_params(axis="x", labelbottom=False)
    for spine in ("top", "right"):
        ax_s2.spines[spine].set_visible(False)

    # --- middle: EMIT 285 with 32 highlighted ------------------------------
    emit_all = emit_band_centres()
    # all 285 as thin grey lines
    ax_emit.vlines(
        emit_all, 0.30, 0.70,
        colors=COLOR_EMIT_ALL, linewidths=0.5, zorder=1,
    )
    # 32 highlighted — full height, accent colour
    ax_emit.vlines(
        selected, 0.05, 0.95,
        colors=COLOR_EMIT_SEL, linewidths=1.4, zorder=3,
    )

    ax_emit.set_ylim(0, 1.0)
    ax_emit.set_yticks([])
    ax_emit.set_ylabel("EMIT")
    ax_emit.tick_params(axis="x", labelbottom=False)
    for spine in ("top", "right", "left"):
        ax_emit.spines[spine].set_visible(False)

    # annotate selected count inside the panel
    ax_emit.text(
        0.995, 0.92,
        f"{EMIT_N_BANDS} bands total  ·  {len(selected)} selected",
        transform=ax_emit.transAxes,
        ha="right", va="top",
        fontsize=7.0, color="#444444", style="italic",
    )

    # --- bottom: atmospheric transmittance ---------------------------------
    t = atmo_transmittance(wl)
    ax_atm.fill_between(wl, 0, t, color=COLOR_ATMO_FILL, alpha=0.55, zorder=1)
    ax_atm.plot(wl, t, color=COLOR_ATMO_LINE, linewidth=0.9, zorder=2)

    # label the dominant absorbers
    abs_labels = [(760, "O$_2$"), (940, "H$_2$O"), (1380, "H$_2$O"),
                  (1880, "H$_2$O"), (2040, "CO$_2$")]
    for x, lbl in abs_labels:
        ty = atmo_transmittance(np.array([x]))[0]
        ax_atm.text(
            x, ty - 0.05, lbl,
            ha="center", va="top",
            fontsize=7.0, color="#333333",
        )

    ax_atm.set_ylim(0, 1.1)
    ax_atm.set_yticks([0, 0.5, 1.0])
    ax_atm.set_ylabel("transmittance")
    ax_atm.set_xlabel("wavelength (nm)")
    for spine in ("top", "right"):
        ax_atm.spines[spine].set_visible(False)

    ax_atm.text(
        0.995, 0.05,
        "schematic — see caption",
        transform=ax_atm.transAxes,
        ha="right", va="bottom",
        fontsize=6.5, color="#777777", style="italic",
    )

    ax_s2.set_xlim(WL_MIN, WL_MAX)

    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"saved {out_path.with_suffix('.pdf').name}")


def main() -> None:
    selected = parse_selected_bands(CONFIG_PATH)
    print(f"parsed {len(selected)} selected bands from {CONFIG_PATH.name}")
    if len(selected) != 32:
        print(f"!! expected 32, got {len(selected)}")
    plot(selected, FIG_DIR / "fig_band_selection")


if __name__ == "__main__":
    main()
