"""
Band-selection figure.

Shows on a single wavelength axis:
  - the 32 selected EMIT bands as vertical ticks, coloured by role
      S2  — matches an S2 band centre
      DX  — spectral diagnostic feature
      FL  — filler for spectral span
  - 10 Sentinel-2 bands as filled Gaussian SRFs
  - major atmospheric absorption windows shaded
  - a top strip reminding the reader EMIT is 285 bands @ 7.4 nm FWHM

Role tags come from the comments in pipeline_config.yaml (S2 / DX / FL).

Writes {DRIVE_ROOT}/figures/fig_band_selection.{pdf,png}
Usage (Colab):
    !python viz/plot_band_selection.py
"""

from __future__ import annotations

import os
import re
from pathlib import Path

import matplotlib.patches as mpatches
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

# --- Sentinel-2A band specs (centre nm, FWHM nm) ----------------------------
# Public ESA specs; B10 (cirrus) and B9 (water vapour) excluded — not used.
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

# --- atmospheric absorption windows (hard-coded, major features) ------------
ATMO = [
    (755, 770,  "O$_2$"),       # O2 A-band
    (1340, 1460, "H$_2$O"),     # strong water vapour
    (1790, 1970, "H$_2$O"),     # strong water vapour
]

# --- EMIT sensor context ----------------------------------------------------
EMIT_RANGE = (381.0, 2493.0)   # nm
EMIT_N_BANDS = 285
EMIT_FWHM = 7.4                # nm

# --- role palette -----------------------------------------------------------
ROLE_COLOR = {"S2": "#1F77B4", "DX": "#D55E00", "FL": "#888888"}
ROLE_LABEL = {
    "S2": "S2-aligned",
    "DX": "diagnostic feature",
    "FL": "spectral filler",
}


# --- parse config -----------------------------------------------------------
_ROW_RE = re.compile(
    r"-\s*(?P<wl>\d+(?:\.\d+)?)\s*#\s*(?P<role>S2|DX|FL)\b\s*(?P<desc>.*)"
)


def parse_selected_bands(config: Path):
    """Returns list of (wavelength_nm, role, description) from the YAML."""
    out: list[tuple[float, str, str]] = []
    inside = False
    for line in config.read_text().splitlines():
        if "emit_target_wavelengths_nm:" in line:
            inside = True
            continue
        if not inside:
            continue
        if line.strip() == "" or (line.strip() and not line.lstrip().startswith("-")):
            # end of list reached
            if out:
                break
            continue
        m = _ROW_RE.search(line)
        if m:
            out.append((float(m["wl"]), m["role"], m["desc"].strip()))
    return out


# --- plot -------------------------------------------------------------------
def gaussian(x: np.ndarray, mu: float, fwhm: float) -> np.ndarray:
    sigma = fwhm / (2 * np.sqrt(2 * np.log(2)))
    return np.exp(-0.5 * ((x - mu) / sigma) ** 2)


def plot(bands: list[tuple[float, str, str]], out_path: Path) -> None:
    fig, ax = plt.subplots(figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.45))
    wl = np.linspace(380, 2500, 4000)

    # atmospheric shading (full vertical)
    for lo, hi, lbl in ATMO:
        ax.axvspan(lo, hi, color="#B0B0B0", alpha=0.22, zorder=0)
        ax.text(
            (lo + hi) / 2, 1.03, lbl,
            ha="center", va="bottom",
            fontsize=7.0, color="#555555",
            transform=ax.get_xaxis_transform(),
        )

    # S2 SRFs (bottom half of y range)
    for code, mu, fwhm in S2_BANDS:
        y = gaussian(wl, mu, fwhm) * 0.55  # peak ~0.55 so ticks stay visible
        ax.fill_between(
            wl, 0, y,
            color="#4477AA", alpha=0.22,
            edgecolor="#2F5A84", linewidth=0.4,
            zorder=2,
        )
        # label above each S2 peak
        ax.text(
            mu, gaussian(mu, mu, fwhm) * 0.55 + 0.02,
            code, ha="center", va="bottom",
            fontsize=6.5, color="#2F5A84",
            zorder=3,
        )

    # EMIT 32 selected bands — ticks at top
    tick_top = 1.0
    tick_bot = 0.82
    for w, role, _desc in bands:
        ax.plot(
            [w, w], [tick_bot, tick_top],
            color=ROLE_COLOR[role], linewidth=1.2,
            solid_capstyle="butt", zorder=4,
        )

    # top strip (above the ticks) describing EMIT context
    ax.text(
        0.5, 1.10,
        f"EMIT: {EMIT_N_BANDS} contiguous bands, "
        f"{EMIT_RANGE[0]:.0f}–{EMIT_RANGE[1]:.0f}\u2009nm, "
        f"{EMIT_FWHM:.1f}\u2009nm FWHM",
        ha="center", va="bottom",
        fontsize=7.5, color="#333333", style="italic",
        transform=ax.transAxes,
    )

    # axis cosmetics
    ax.set_xlim(380, 2500)
    ax.set_ylim(0, 1.08)
    ax.set_xlabel("wavelength (nm)")
    ax.set_ylabel("S2 spectral response", color="#2F5A84")
    ax.tick_params(axis="y", colors="#2F5A84")
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)

    # hide y ticks above 0.8 so they don't clash with the EMIT tick strip
    ax.set_yticks([0, 0.2, 0.4, 0.55])
    ax.set_yticklabels(["0", "0.36", "0.73", "1.0"])

    # legend — roles + atmospheric + S2
    legend_handles = [
        mpatches.Patch(color=ROLE_COLOR["S2"], label=f"32-band: {ROLE_LABEL['S2']} "
                        f"(n={sum(1 for _,r,_ in bands if r=='S2')})"),
        mpatches.Patch(color=ROLE_COLOR["DX"], label=f"32-band: {ROLE_LABEL['DX']} "
                        f"(n={sum(1 for _,r,_ in bands if r=='DX')})"),
        mpatches.Patch(color=ROLE_COLOR["FL"], label=f"32-band: {ROLE_LABEL['FL']} "
                        f"(n={sum(1 for _,r,_ in bands if r=='FL')})"),
        mpatches.Patch(facecolor="#4477AA", alpha=0.22, edgecolor="#2F5A84",
                       label="S2 SRF (B02–B12)"),
        mpatches.Patch(color="#B0B0B0", alpha=0.35, label="atmospheric absorption"),
    ]
    ax.legend(
        handles=legend_handles,
        loc="upper center", bbox_to_anchor=(0.5, -0.22),
        ncol=3, frameon=False,
        handletextpad=0.5, columnspacing=1.2,
    )

    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"saved {out_path.with_suffix('.pdf').name}")


def main() -> None:
    bands = parse_selected_bands(CONFIG_PATH)
    print(f"parsed {len(bands)} bands from {CONFIG_PATH.name}")
    counts = {r: sum(1 for _, rr, _ in bands if rr == r) for r in ("S2", "DX", "FL")}
    print(f"  S2={counts['S2']} DX={counts['DX']} FL={counts['FL']}")

    if len(bands) != 32:
        print(f"!! expected 32 bands, got {len(bands)} — parse may be off")

    plot(bands, FIG_DIR / "fig_band_selection")


if __name__ == "__main__":
    main()
