"""
Alignment diagnostic figures for thesis.

Produces:
  fig_emit_pipeline.{pdf,png}     — raw swath → pre-DEM UTM → post-DEM UTM
  fig_arosics_fullscene.{pdf,png} — S2 before | EMIT | S2 after AROSICS
  fig_arosics_zoom.{pdf,png}      — same, zoomed (set ZOOM_EXTENT_UTM below)

Reads from {DRIVE_ROOT}/viz_intermediates/{AOI_SLUG}/{pair_id}/.
Writes to  {DRIVE_ROOT}/figures/.

Usage (Colab):
    !python viz/plot_alignment.py
"""

from __future__ import annotations

import os
from pathlib import Path

import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np
import rasterio
from rasterio.plot import reshape_as_image

# ── config ──────────────────────────────────────────────────────────────────
AOI_SLUG = "aoi_lat49.0_lon34.0"

# After running the full-scene figure, pick a region that shows the AROSICS
# shift clearly (field edges / roads). Set in UTM coords (EPSG:32636).
# Leave as None to skip the zoom figure.
ZOOM_EXTENT_UTM: tuple[float, float, float, float] | None = None
# Example: ZOOM_EXTENT_UTM = (537000, 5440000, 552000, 5455000)

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR    = DRIVE_ROOT / "figures"
INTERM_DIR = DRIVE_ROOT / "viz_intermediates" / AOI_SLUG

# EMIT approximate wavelengths (sensor bands 0..284 mapped to 381-2493 nm)
EMIT_WL = np.linspace(381.0, 2493.0, 285)
RGB_NM  = (665.0, 560.0, 490.0)   # red, green, blue target wavelengths

FIG_W_CM = 16.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.5,
    "axes.labelsize": 8.5,
    "axes.titlesize": 9.0,
    "xtick.labelsize": 7.5,
    "ytick.labelsize": 7.5,
    "axes.linewidth": 0.6,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})


# ── helpers ──────────────────────────────────────────────────────────────────

def find_pair_dir(interm_dir: Path) -> Path:
    for p in interm_dir.iterdir():
        if p.is_dir() and not p.name.startswith("_"):
            return p
    raise FileNotFoundError(f"no pair dir found under {interm_dir}")


def pct_stretch(arr: np.ndarray, plo: float = 2.0, phi: float = 98.0) -> np.ndarray:
    """Per-channel percentile stretch → [0, 1]."""
    out = np.empty_like(arr, dtype=np.float32)
    for i in range(arr.shape[2]):
        ch = arr[:, :, i]
        valid = ch[np.isfinite(ch)]
        if not len(valid):
            out[:, :, i] = 0.0
            continue
        lo, hi = np.percentile(valid, [plo, phi])
        out[:, :, i] = np.clip((ch - lo) / max(hi - lo, 1e-9), 0, 1)
    return out


def read_emit_rgb(tif_path: Path) -> np.ndarray:
    """Read EMIT UTM TIF (uint16, nodata=65535) as float32 RGB."""
    bands_1b = [int(np.argmin(np.abs(EMIT_WL - nm))) + 1 for nm in RGB_NM]
    with rasterio.open(tif_path) as src:
        data = src.read(bands_1b).astype(np.float32)
        nodata = src.nodata or 65535.0
    data[data == nodata] = np.nan
    data /= 10000.0
    return reshape_as_image(data)          # (H, W, 3)


def read_s2_rgb(tif_path: Path) -> tuple[np.ndarray, rasterio.transform.Affine, dict]:
    """Read S2 10-band TIF → RGB (bands 3,2,1 = B4,B3,B2) + transform + meta."""
    with rasterio.open(tif_path) as src:
        descs = [str(d or "") for d in (src.descriptions or [])]
        # try to find B04/B03/B02 by band description; fall back to 3,2,1
        def _b(code: str) -> int:
            for i, d in enumerate(descs, 1):
                if d.startswith(code) or d == code:
                    return i
            return {"B04": 3, "B03": 2, "B02": 1}.get(code, 3)
        rgb_bands = [_b("B04"), _b("B03"), _b("B02")]
        data = src.read(rgb_bands).astype(np.float32)
        transform = src.transform
        meta = {"crs": src.crs, "bounds": src.bounds, "res": src.res}
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data), transform, meta


def crop_to_extent(
    arr: np.ndarray,
    transform: rasterio.transform.Affine,
    extent_utm: tuple[float, float, float, float],
) -> np.ndarray:
    """Crop (H, W, C) array to UTM extent using affine transform."""
    left, bottom, right, top = extent_utm
    px_left  = max(0, int((left   - transform.c) / transform.a))
    px_right = min(arr.shape[1], int((right  - transform.c) / transform.a))
    px_top   = max(0, int((top    - transform.f) / transform.e))
    px_bot   = min(arr.shape[0], int((bottom - transform.f) / transform.e))
    return arr[px_top:px_bot, px_left:px_right]


def label_ax(ax, text: str, loc: str = "tl") -> None:
    kw = dict(transform=ax.transAxes, fontsize=8.5,
              weight="bold", color="white",
              bbox=dict(boxstyle="round,pad=0.2", fc="#000000AA", lw=0))
    pos = {"tl": (0.02, 0.97, "left", "top"),
           "tr": (0.98, 0.97, "right", "top")}[loc]
    ax.text(pos[0], pos[1], text, ha=pos[2], va=pos[3], **kw)


# ── figure 1: EMIT pipeline ──────────────────────────────────────────────────

def fig_emit_pipeline(pair_dir: Path, out_path: Path) -> None:
    raw_rgb = np.load(pair_dir / "emit_raw_rgb.npy")          # (H, W, 3)
    pre_dem = read_emit_rgb(pair_dir / "emit_pre_dem_utm.tif")
    post_dem = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")

    raw_rgb  = pct_stretch(raw_rgb.astype(np.float32))
    pre_dem  = pct_stretch(pre_dem)
    post_dem = pct_stretch(post_dem)

    titles = [
        "(a) Raw swath\n(sensor domain, unorthorectified)",
        "(b) Post-orthorectification\n(no DEM correction)",
        "(c) Post-orthorectification\n(with DEM correction)",
    ]
    images = [raw_rgb, pre_dem, post_dem]

    fig, axes = plt.subplots(1, 3, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.42))
    for ax, img, title in zip(axes, images, titles):
        ax.imshow(img, interpolation="bilinear")
        ax.set_title(title, fontsize=7.5, pad=4)
        ax.set_xticks([])
        ax.set_yticks([])
        for spine in ax.spines.values():
            spine.set_visible(False)

    # note on (a): no geographic projection
    axes[0].set_xlabel("along-track →", fontsize=7.0, color="#555555")
    axes[0].set_ylabel("↑ cross-track", fontsize=7.0, color="#555555")

    fig.tight_layout(pad=0.5, w_pad=1.0)
    _save(fig, out_path)


# ── figure 2 & 3: AROSICS comparison ─────────────────────────────────────────

def fig_arosics(
    pair_dir: Path,
    out_path: Path,
    zoom_extent: tuple[float, float, float, float] | None = None,
) -> None:
    emit_rgb, emit_transform, emit_meta = read_s2_rgb(pair_dir / "emit_post_dem_utm.tif")
    # use EMIT true-colour instead of S2 for the EMIT reference panel;
    # it's at 60m so shows same geography without 10m detail confusion
    emit_panel = pct_stretch(emit_rgb)

    s2_pre,  t_pre,  _  = read_s2_rgb(pair_dir / "s2_pre_coreg.tif")
    s2_post, t_post, m_post = read_s2_rgb(pair_dir / "s2_post_coreg.tif")
    s2_pre  = pct_stretch(s2_pre)
    s2_post = pct_stretch(s2_post)

    if zoom_extent is not None:
        emit_panel = crop_to_extent(emit_panel, emit_transform, zoom_extent)
        s2_pre   = crop_to_extent(s2_pre,   t_pre,   zoom_extent)
        s2_post  = crop_to_extent(s2_post,  t_post,  zoom_extent)

    labels = [
        "(a) S2 before AROSICS",
        "(b) EMIT reference (60 m)",
        "(c) S2 after AROSICS",
    ]
    images = [s2_pre, emit_panel, s2_post]

    fig, axes = plt.subplots(1, 3, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.42))
    for ax, img, lbl in zip(axes, images, labels):
        ax.imshow(img, interpolation="bilinear")
        label_ax(ax, lbl)
        ax.set_xticks([])
        ax.set_yticks([])
        for spine in ax.spines.values():
            spine.set_visible(False)

    if zoom_extent:
        w_km = (zoom_extent[2] - zoom_extent[0]) / 1000
        h_km = (zoom_extent[3] - zoom_extent[1]) / 1000
        fig.suptitle(f"zoom region  {w_km:.0f} × {h_km:.0f} km",
                     fontsize=7.5, color="#555555", y=0.02, va="bottom")

    fig.tight_layout(pad=0.5, w_pad=1.0)
    _save(fig, out_path)


def _save(fig: plt.Figure, out_path: Path) -> None:
    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


# ── main ─────────────────────────────────────────────────────────────────────

def main() -> None:
    pair_dir = find_pair_dir(INTERM_DIR)
    print(f"pair: {pair_dir.name}")

    fig_emit_pipeline(pair_dir, FIG_DIR / "fig_emit_pipeline")

    fig_arosics(
        pair_dir,
        FIG_DIR / "fig_arosics_fullscene",
        zoom_extent=None,
    )
    if ZOOM_EXTENT_UTM is not None:
        fig_arosics(
            pair_dir,
            FIG_DIR / "fig_arosics_zoom",
            zoom_extent=ZOOM_EXTENT_UTM,
        )
    else:
        print("  ZOOM_EXTENT_UTM not set — skipping zoom figure")
        print("  → after viewing fig_arosics_fullscene.png, set ZOOM_EXTENT_UTM")
        print("    to a UTM extent (left, bottom, right, top) in EPSG:32636")
        print("    that shows a visible shift at a field edge or road")


if __name__ == "__main__":
    main()
