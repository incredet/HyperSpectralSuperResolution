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

# taller, wider than before so each panel has room to breathe
FIG_W_CM = 20.0
FIG_H_CM = 15.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.5,
    "axes.labelsize": 9.0,
    "axes.titlesize": 9.5,
    "xtick.labelsize": 8.0,
    "ytick.labelsize": 8.0,
    "legend.fontsize": 7.5,
    "axes.linewidth": 0.6,
    "xtick.major.width": 0.6,
    "ytick.major.width": 0.6,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

WL_MIN, WL_MAX = 380, 2500


S2_BANDS = [
    ("B02",  492.4,  66.0, "#0B44A5"),   # blue
    ("B03",  559.8,  36.0, "#0F8341"),   # sea green
    ("B04",  664.6,  31.0, "#D9270B"),   # red
    ("B05",  704.1,  15.0, "#A00D0D"),   # darker red
    ("B06",  740.5,  15.0, "#820A0A"),   # deep red
    ("B07",  782.8,  20.0, "#5F1818"),   # maroon / NIR transition
    ("B08",  832.8, 106.0, "#8B4A1F"),   # NIR brown (broad band)
    ("B8A",  864.7,  21.0, "#5A2E13"),   # dark NIR brown
    ("B11", 1613.7,  91.0, "#E48E25"),   # SWIR1 amber
    ("B12", 2202.4, 175.0, "#7E3606"),   # SWIR2 saddle
]

# --- EMIT context -----------------------------------------------------------
EMIT_RANGE = (381.0, 2493.0)
EMIT_N_BANDS = 285
EMIT_FWHM = 7.4

# --- atmospheric absorbers (schematic) --------------------------------------
# (centre_nm, sigma_nm, depth)
ATMO_FEATURES = [
    (760,  3,  0.88),
    (820,  15, 0.20),
    (940,  25, 0.40),
    (1130, 25, 0.30),
    (1380, 40, 0.97),
    (1880, 60, 0.98),
    (2040, 15, 0.15),
    (2700, 50, 0.60),
]

COLOR_EMIT_ALL  = "#BABABA"
COLOR_EMIT_SEL  = "#C50505"          # indigo — distinct from every S2 hue
COLOR_ATMO_LINE = "#024383"
COLOR_ATMO_FILL = "#80BBEE"
COLOR_GUIDE     = "#EFEFEF"


def gaussian(x, mu, fwhm):
    sigma = fwhm / (2 * np.sqrt(2 * np.log(2)))
    return np.exp(-0.5 * ((x - mu) / sigma) ** 2)


def atmo_transmittance(wl):
    t = np.ones_like(wl, dtype=float)
    for mu, sig, depth in ATMO_FEATURES:
        t *= (1.0 - depth * np.exp(-0.5 * ((wl - mu) / sig) ** 2))
    return t


_ROW_RE = re.compile(r"-\s*(?P<wl>\d+(?:\.\d+)?)\s*#")


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
    return np.linspace(EMIT_RANGE[0], EMIT_RANGE[1], EMIT_N_BANDS)


def plot(selected: list[float], out_path: Path) -> None:
    fig = plt.figure(figsize=(FIG_W_CM * CM, FIG_H_CM * CM))
    gs = fig.add_gridspec(
        nrows=3, ncols=1,
        height_ratios=[1.25, 0.50, 1.05],
        hspace=0.18,
    )
    ax_s2   = fig.add_subplot(gs[0, 0])
    ax_emit = fig.add_subplot(gs[1, 0], sharex=ax_s2)
    ax_atm  = fig.add_subplot(gs[2, 0], sharex=ax_s2)

    # soft vertical shading across S2 + EMIT panels at major absorption bands
    guide_spans = [(755, 768), (1340, 1450), (1790, 1970)]
    for a in (ax_s2, ax_emit):
        for lo, hi in guide_spans:
            a.axvspan(lo, hi, color=COLOR_GUIDE, alpha=1.0, zorder=0)

    # --- top: S2 SRFs, each a distinct colour ------------------------------
    wl = np.linspace(WL_MIN, WL_MAX, 4000)
    for code, mu, fwhm, col in S2_BANDS:
        y = gaussian(wl, mu, fwhm)
        ax_s2.fill_between(
            wl, 0, y,
            color=col, alpha=0.55,
            edgecolor=col, linewidth=0.7,
            zorder=2,
        )
        # labels rotated 90° above the peak — no horizontal overlap
        ax_s2.text(
            mu, 1.05, code,
            rotation=90, rotation_mode="anchor",
            ha="left", va="bottom",
            fontsize=7.5, color=col, weight="bold",
            zorder=3, 
        )

    ax_s2.set_ylim(0, 1.55)           # headroom for rotated labels
    ax_s2.set_yticks([0, 0.5, 1.0])
    ax_s2.set_ylabel("S2 response")
    ax_s2.tick_params(axis="x", labelbottom=False)
    for spine in ("top", "right"):
        ax_s2.spines[spine].set_visible(False)

    # --- middle: EMIT 285 with 32 highlighted ------------------------------
    emit_all = emit_band_centres()
    ax_emit.vlines(
        emit_all, 0.05, 0.95,
        colors=COLOR_EMIT_ALL, linewidths=0.55, zorder=1,
    )
    ax_emit.vlines(
        selected, 0.05, 0.95,
        colors=COLOR_EMIT_SEL, linewidths=1.5, zorder=3,
    )
    ax_emit.set_ylim(0, 1.0)
    ax_emit.set_yticks([])
    ax_emit.set_ylabel("EMIT", labelpad=6)
    ax_emit.tick_params(axis="x", labelbottom=False)
    for spine in ("top", "right", "left", "bottom"):
        ax_emit.spines[spine].set_visible(False)

    # --- bottom: atmospheric transmittance ---------------------------------
    t = atmo_transmittance(wl)
    ax_atm.fill_between(wl, 0, t, color=COLOR_ATMO_FILL, alpha=0.45, zorder=1)
    ax_atm.plot(wl, t, color=COLOR_ATMO_LINE, linewidth=1.2, zorder=2)

    # labels sit inside each dip at a fixed low y — visually anchored to the feature
    abs_labels = [
        (760,  "O$_2$"),
        (820,  "H$_2$O"),
        (940,  "H$_2$O"),
        (1130, "H$_2$O"),
        (1380, "H$_2$O"),
        (1880, "H$_2$O"),
        (2040, "CO$_2$"),
    ]
    for x, lbl in abs_labels:
        ax_atm.text(
            x, 0.1, lbl,
            ha="center", va="bottom",
            fontsize=7.0, color="#333333", weight="semibold"
        )

    ax_atm.set_ylim(0, 1.08)
    ax_atm.set_yticks([0, 0.5, 1.0])
    ax_atm.set_ylabel("Transmittance")
    ax_atm.set_xlabel("Wavelength (nm)")
    for spine in ("top", "right"):
        ax_atm.spines[spine].set_visible(False)

    ax_s2.set_xlim(WL_MIN, WL_MAX)
    ax_s2.set_xticks([400, 600, 800, 1000, 1200, 1400, 1600, 1800, 2000, 2200, 2400])

    fig.align_ylabels([ax_s2, ax_emit, ax_atm])

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
