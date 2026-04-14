"""
Alignment diagnostic figures for thesis.

Each EMIT pipeline stage is its own single-panel file (no titles) so you can
freely arrange and caption them in Overleaf:

  fig_emit_stage1_raw.{pdf,png}         raw sensor swath
  fig_emit_stage2_wgs84.{pdf,png}       orthorectified to WGS84 geographic
  fig_emit_stage3_utm_no_dem.{pdf,png}  UTM 60 m, no DEM correction
  fig_emit_stage4_utm_dem.{pdf,png}     UTM 60 m, with DEM correction

Difference / comparison figures (minimal chrome):
  fig_emit_diff_dem.{pdf,png}           |post-DEM − pre-DEM| (UTM domain)
  fig_arosics_fullscene.{pdf,png}       S2 pre | EMIT | S2 post (full extent)
  fig_arosics_zoom.{pdf,png}            same, centre crop (or ZOOM_EXTENT_UTM)
  fig_arosics_diff_fullscene.{pdf,png}  |S2 post − S2 pre| (full)
  fig_arosics_diff_zoom.{pdf,png}       |S2 post − S2 pre| (zoom)
  fig_final_pair.{pdf,png}              final EMIT 60 m | final S2 10 m

Reads  {DRIVE_ROOT}/viz_intermediates/{AOI_SLUG}/{pair_id}/
Writes {DRIVE_ROOT}/figures/

Usage (Colab):
    !python viz/plot_alignment.py
"""

from __future__ import annotations

import os
import warnings
from pathlib import Path

warnings.filterwarnings("ignore", category=RuntimeWarning,
                        message="Mean of empty slice")
warnings.filterwarnings("ignore", category=RuntimeWarning,
                        message="All-NaN slice encountered")

import matplotlib.pyplot as plt
import numpy as np
import rasterio
from rasterio.plot import reshape_as_image

# ── config ──────────────────────────────────────────────────────────────────
AOI_SLUG = "aoi_lat49.0_lon34.0"

# Set to (left, bottom, right, top) in EPSG:32636 for a manual zoom;
# otherwise the centre 30 % of the S2 scene is used automatically.
ZOOM_EXTENT_UTM: tuple[float, float, float, float] | None = None

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR    = DRIVE_ROOT / "figures"
INTERM_DIR = DRIVE_ROOT / "viz_intermediates" / AOI_SLUG

EMIT_WL = np.linspace(381.0, 2493.0, 285)
RGB_NM  = (665.0, 560.0, 490.0)

FIG_W_CM = 16.0
PANEL_CM = 7.0     # single-panel figure size
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.0,
    "axes.titlesize": 8.0,
    "axes.labelsize": 7.5,
    "xtick.labelsize": 7.0,
    "ytick.labelsize": 7.0,
    "axes.linewidth": 0.5,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})


# ── helpers ──────────────────────────────────────────────────────────────────

def find_pair_dir(interm_dir: Path) -> Path:
    for p in sorted(interm_dir.iterdir()):
        if p.is_dir() and not p.name.startswith("_"):
            return p
    raise FileNotFoundError(f"no pair dir under {interm_dir}")


def pct_stretch(arr: np.ndarray, plo: float = 2.0, phi: float = 98.0) -> np.ndarray:
    out = np.empty_like(arr, dtype=np.float32)
    for i in range(arr.shape[2]):
        ch = arr[:, :, i]
        valid = ch[np.isfinite(ch)]
        if not len(valid):
            out[:, :, i] = 0.0
            continue
        lo, hi = np.percentile(valid, [plo, phi])
        out[:, :, i] = np.clip((ch - lo) / max(hi - lo, 1e-9), 0.0, 1.0)
    return out


def read_emit_rgb(tif_path: Path) -> tuple[np.ndarray, rasterio.transform.Affine, object]:
    """Handles both 285-band UTM TIF and 3-band WGS84 RGB TIF."""
    with rasterio.open(tif_path) as src:
        if src.count == 3:
            bands_1b = [1, 2, 3]
        else:
            bands_1b = [int(np.argmin(np.abs(EMIT_WL - nm))) + 1 for nm in RGB_NM]
        data = src.read(bands_1b).astype(np.float32)
        nodata = src.nodata or 65535.0
        t, bounds = src.transform, src.bounds
    data[data == nodata] = np.nan
    data /= 10000.0
    return reshape_as_image(data), t, bounds


def read_s2_rgb(tif_path: Path) -> tuple[np.ndarray, rasterio.transform.Affine, object]:
    with rasterio.open(tif_path) as src:
        descs = [str(d or "") for d in (src.descriptions or [])]
        def _b(code: str) -> int:
            for i, d in enumerate(descs, 1):
                if d.startswith(code):
                    return i
            return {"B04": 3, "B03": 2, "B02": 1}.get(code, 3)
        data = src.read([_b("B04"), _b("B03"), _b("B02")]).astype(np.float32)
        t, bounds = src.transform, src.bounds
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data), t, bounds


def crop_arr(arr: np.ndarray, t: rasterio.transform.Affine,
             ext: tuple[float, float, float, float]) -> np.ndarray:
    left, bottom, right, top = ext
    c0 = max(0, int((left   - t.c) / t.a))
    c1 = min(arr.shape[1], int((right  - t.c) / t.a))
    r0 = max(0, int((top    - t.f) / t.e))
    r1 = min(arr.shape[0], int((bottom - t.f) / t.e))
    return arr[r0:r1, c0:c1]


def default_zoom(bounds) -> tuple[float, float, float, float]:
    cx = (bounds.left  + bounds.right)  / 2
    cy = (bounds.bottom + bounds.top)   / 2
    hw = (bounds.right  - bounds.left)  * 0.15
    hh = (bounds.top    - bounds.bottom) * 0.15
    return (cx - hw, cy - hh, cx + hw, cy + hh)


def clean_axes(axes) -> None:
    for ax in np.ravel(axes):
        ax.set_xticks([])
        ax.set_yticks([])
        for sp in ax.spines.values():
            sp.set_visible(False)


def _save(fig, out_path: Path) -> None:
    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


# ── single-panel figures (no titles) ─────────────────────────────────────────

def single_panel(img: np.ndarray, out_path: Path) -> None:
    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM))
    ax.imshow(img, interpolation="bilinear")
    clean_axes([ax])
    fig.tight_layout(pad=0.1)
    _save(fig, out_path)


# ── EMIT pipeline stages ─────────────────────────────────────────────────────

def fig_emit_stages(pair_dir: Path) -> None:
    # stage 1: raw sensor swath (from saved .npy)
    raw_rgb = np.load(pair_dir / "emit_raw_rgb.npy").astype(np.float32)
    single_panel(pct_stretch(raw_rgb), FIG_DIR / "fig_emit_stage1_raw")

    # stages 2–4: orthorectified to WGS84, then UTM without DEM, then UTM with DEM
    for src_name, out_name in [
        ("emit_ortho_wgs84_rgb.tif", "fig_emit_stage2_wgs84"),
        ("emit_pre_dem_utm.tif",     "fig_emit_stage3_utm_no_dem"),
        ("emit_post_dem_utm.tif",    "fig_emit_stage4_utm_dem"),
    ]:
        p = pair_dir / src_name
        if not p.exists():
            print(f"  skip {out_name}: missing {p.name}")
            continue
        arr, _, _ = read_emit_rgb(p)
        single_panel(pct_stretch(arr), FIG_DIR / out_name)


# ── EMIT DEM difference (minimal colorbar) ───────────────────────────────────

def fig_emit_diff_dem(pair_dir: Path, out_path: Path) -> None:
    # DEM effect in the real UTM pipeline output — both files exist on disk
    pre  = pair_dir / "emit_pre_dem_utm.tif"
    post = pair_dir / "emit_post_dem_utm.tif"
    if not (pre.exists() and post.exists()):
        print(f"  skip {out_path.name}: missing pre/post-DEM UTM tifs")
        return

    pre_arr,  _, _ = read_emit_rgb(pre)
    post_arr, _, _ = read_emit_rgb(post)
    h = min(pre_arr.shape[0], post_arr.shape[0])
    w = min(pre_arr.shape[1], post_arr.shape[1])
    diff = np.nanmean(np.abs(post_arr[:h, :w] - pre_arr[:h, :w]), axis=2)

    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM))
    vmax = float(np.nanpercentile(diff, 99))
    im = ax.imshow(diff, cmap="inferno", vmin=0, vmax=vmax, interpolation="bilinear")
    clean_axes([ax])
    cb = fig.colorbar(im, ax=ax, fraction=0.035, pad=0.02)
    cb.ax.tick_params(labelsize=6.5, length=2)
    cb.ax.yaxis.set_major_formatter(plt.FormatStrFormatter("%.3f"))
    cb.outline.set_linewidth(0.4)
    fig.tight_layout(pad=0.2)
    _save(fig, out_path)


# ── AROSICS comparison (minimal subplot labels) ──────────────────────────────

def fig_arosics_compare(pair_dir: Path, out_path: Path,
                        zoom_ext: tuple[float, float, float, float] | None) -> None:
    emit, emit_t, _    = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")
    s2_pre,  t_pre,  _ = read_s2_rgb(pair_dir / "s2_pre_coreg.tif")
    s2_post, t_post, _ = read_s2_rgb(pair_dir / "s2_post_coreg.tif")

    if zoom_ext is not None:
        emit    = crop_arr(emit,    emit_t, zoom_ext)
        s2_pre  = crop_arr(s2_pre,  t_pre,  zoom_ext)
        s2_post = crop_arr(s2_post, t_post, zoom_ext)

    panels = [pct_stretch(s2_pre), pct_stretch(emit), pct_stretch(s2_post)]
    fig, axes = plt.subplots(1, 3, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.35))
    for ax, img in zip(axes, panels):
        ax.imshow(img, interpolation="bilinear")
    clean_axes(axes)
    fig.tight_layout(pad=0.3, w_pad=0.8)
    _save(fig, out_path)


def fig_arosics_diff(pair_dir: Path, out_path: Path,
                     zoom_ext: tuple[float, float, float, float] | None) -> None:
    s2_pre,  t_pre,  _ = read_s2_rgb(pair_dir / "s2_pre_coreg.tif")
    s2_post, t_post, _ = read_s2_rgb(pair_dir / "s2_post_coreg.tif")
    if zoom_ext is not None:
        s2_pre  = crop_arr(s2_pre,  t_pre,  zoom_ext)
        s2_post = crop_arr(s2_post, t_post, zoom_ext)

    h = min(s2_pre.shape[0], s2_post.shape[0])
    w = min(s2_pre.shape[1], s2_post.shape[1])
    diff = np.nanmean(np.abs(s2_post[:h, :w] - s2_pre[:h, :w]), axis=2)

    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM))
    vmax = float(np.nanpercentile(diff, 99))
    im = ax.imshow(diff, cmap="inferno", vmin=0, vmax=vmax, interpolation="bilinear")
    clean_axes([ax])
    cb = fig.colorbar(im, ax=ax, fraction=0.035, pad=0.02)
    cb.ax.tick_params(labelsize=6.5, length=2)
    cb.ax.yaxis.set_major_formatter(plt.FormatStrFormatter("%.3f"))
    cb.outline.set_linewidth(0.4)
    fig.tight_layout(pad=0.2)
    _save(fig, out_path)


# ── final EMIT + S2 pair ─────────────────────────────────────────────────────

def fig_final_pair(pair_dir: Path, out_path: Path) -> None:
    emit,    _, _ = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")
    s2_post, _, _ = read_s2_rgb(pair_dir / "s2_post_coreg.tif")

    panels = [pct_stretch(emit), pct_stretch(s2_post)]
    fig, axes = plt.subplots(1, 2, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.5))
    for ax, img in zip(axes, panels):
        ax.imshow(img, interpolation="bilinear")
    clean_axes(axes)
    fig.tight_layout(pad=0.3, w_pad=0.8)
    _save(fig, out_path)


# ── main ─────────────────────────────────────────────────────────────────────

def main() -> None:
    pair_dir = find_pair_dir(INTERM_DIR)
    print(f"pair: {pair_dir.name}")

    # EMIT pipeline stages (separate single-panel plots)
    fig_emit_stages(pair_dir)
    fig_emit_diff_dem(pair_dir, FIG_DIR / "fig_emit_diff_dem")

    # AROSICS — always generate full scene + zoom
    fig_arosics_compare(pair_dir, FIG_DIR / "fig_arosics_fullscene", zoom_ext=None)
    fig_arosics_diff(pair_dir,    FIG_DIR / "fig_arosics_diff_fullscene", zoom_ext=None)

    # auto-compute zoom extent from S2 bounds if not overridden
    with rasterio.open(pair_dir / "s2_post_coreg.tif") as src:
        zoom = ZOOM_EXTENT_UTM if ZOOM_EXTENT_UTM else default_zoom(src.bounds)
    print(f"  zoom extent (EPSG:32636): {tuple(round(v) for v in zoom)}")

    fig_arosics_compare(pair_dir, FIG_DIR / "fig_arosics_zoom", zoom_ext=zoom)
    fig_arosics_diff(pair_dir,    FIG_DIR / "fig_arosics_diff_zoom", zoom_ext=zoom)

    # final pair side-by-side
    fig_final_pair(pair_dir, FIG_DIR / "fig_final_pair")


if __name__ == "__main__":
    main()
