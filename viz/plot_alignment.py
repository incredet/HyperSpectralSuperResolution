"""
Alignment diagnostic figures for thesis.

Produces:
  fig_emit_pipeline.{pdf,png}      3-panel: raw | pre-DEM UTM | post-DEM UTM
  fig_emit_diff.{pdf,png}          difference: post-DEM minus pre-DEM
  fig_arosics_fullscene.{pdf,png}  3-panel full scene: S2 before | EMIT | S2 after
  fig_arosics_zoom.{pdf,png}       same, cropped (set ZOOM_EXTENT_UTM below)
  fig_arosics_diff.{pdf,png}       S2 after minus S2 before AROSICS

Reads from {DRIVE_ROOT}/viz_intermediates/{AOI_SLUG}/{pair_id}/.
Writes to  {DRIVE_ROOT}/figures/.

Usage (Colab):
    !python viz/plot_alignment.py
"""

from __future__ import annotations

import os
from pathlib import Path

import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import numpy as np
import rasterio
from rasterio.plot import reshape_as_image

# ── config ──────────────────────────────────────────────────────────────────
AOI_SLUG = "aoi_lat49.0_lon34.0"

# Set to (left, bottom, right, top) in EPSG:32636 for a tight zoom figure.
# Example based on this scene's bounds (499980–588780 E, 5390220–5493780 N):
#   ZOOM_EXTENT_UTM = (530000, 5430000, 560000, 5460000)
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
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.5,
    "axes.titlesize": 8.5,
    "axes.labelsize": 8.0,
    "xtick.labelsize": 7.5,
    "ytick.labelsize": 7.5,
    "axes.linewidth": 0.6,
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
    """Read EMIT TIF → float32 RGB.
    Handles both 285-band UTM TIF and 3-band WGS84 RGB TIF."""
    with rasterio.open(tif_path) as src:
        n = src.count
        if n == 3:
            bands_1b = [1, 2, 3]          # already RGB (WGS84 intermediate)
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


# ── figure 1: EMIT pipeline steps ────────────────────────────────────────────

def fig_emit_pipeline(pair_dir: Path, out_path: Path) -> None:
    # Stage 1: raw sensor domain
    raw_rgb = np.load(pair_dir / "emit_raw_rgb.npy").astype(np.float32)

    # Stage 2: orthorectified in WGS84, no DEM correction
    wgs84_pre = pair_dir / "emit_ortho_wgs84_rgb.tif"
    # Stage 3: orthorectified in WGS84, with DEM correction
    wgs84_dem = pair_dir / "emit_dem_wgs84_rgb.tif"
    # Stage 4: final UTM 60m grid (same data as stage 3, projected to UTM)
    post_dem, _, _ = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")

    def _load_or_warn(tif: Path, fallback: np.ndarray) -> np.ndarray:
        if tif.exists():
            arr, _, _ = read_emit_rgb(tif)
            return arr
        print(f"  {tif.name} not found — re-run save_alignment_intermediates.py")
        return fallback

    s2 = _load_or_warn(wgs84_pre, post_dem)
    s3 = _load_or_warn(wgs84_dem, post_dem)

    panels = [
        (pct_stretch(raw_rgb),  "Raw swath\n(sensor domain)"),
        (pct_stretch(s2),       "After orthorectification\n(WGS84, no DEM)"),
        (pct_stretch(s3),       "After DEM correction\n(WGS84)"),
        (pct_stretch(post_dem), "After UTM reprojection\n(EPSG:32636, 60 m)"),
    ]

    fig, axes = plt.subplots(1, 4, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.35))
    for ax, (img, title) in zip(axes, panels):
        ax.imshow(img, interpolation="bilinear")
        ax.set_title(title, fontsize=7.5)
    clean_axes(axes)
    axes[0].set_xlabel("along-track →", fontsize=6.5, color="#888888")
    axes[0].set_ylabel("↑ cross-track", fontsize=6.5, color="#888888")

    fig.tight_layout(pad=0.5, w_pad=0.8)
    _save(fig, out_path)


# ── figure 2: EMIT step differences ─────────────────────────────────────────

def fig_emit_diff(pair_dir: Path, out_path: Path) -> None:
    pre_dem,  _, _  = read_emit_rgb(pair_dir / "emit_pre_dem_utm.tif")
    post_dem, _, _  = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")

    # Mean-absolute difference across RGB channels
    diff = np.nanmean(np.abs(post_dem - pre_dem), axis=2)

    fig, ax = plt.subplots(1, 1, figsize=(FIG_W_CM * CM * 0.45, FIG_W_CM * CM * 0.42))
    im = ax.imshow(diff, cmap="inferno", interpolation="bilinear",
                   vmin=0, vmax=np.nanpercentile(diff, 99))
    ax.set_title("DEM correction effect\n|post-DEM − pre-DEM| (reflectance)")
    clean_axes([ax])
    fig.colorbar(im, ax=ax, fraction=0.046, pad=0.04,
                 label="mean |Δreflectance|")
    fig.tight_layout(pad=0.5)
    _save(fig, out_path)


# ── figure 3: AROSICS full scene ─────────────────────────────────────────────

def fig_arosics_fullscene(pair_dir: Path, out_path: Path) -> None:
    emit_rgb, emit_t, _   = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")
    s2_pre,  t_pre,  _    = read_s2_rgb(pair_dir  / "s2_pre_coreg.tif")
    s2_post, t_post, _    = read_s2_rgb(pair_dir  / "s2_post_coreg.tif")

    panels = [
        (pct_stretch(s2_pre),   "S2 before AROSICS"),
        (pct_stretch(emit_rgb), "EMIT reference (60 m)"),
        (pct_stretch(s2_post),  "S2 after AROSICS"),
    ]

    fig, axes = plt.subplots(1, 3, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.42))
    for ax, (img, title) in zip(axes, panels):
        ax.imshow(img, interpolation="bilinear")
        ax.set_title(title)
    clean_axes(axes)
    fig.tight_layout(pad=0.5, w_pad=1.2)
    _save(fig, out_path)


# ── figure 4: AROSICS zoom ───────────────────────────────────────────────────

def fig_arosics_zoom(pair_dir: Path, out_path: Path,
                     zoom_ext: tuple[float, float, float, float]) -> None:
    emit_rgb, emit_t, _   = read_emit_rgb(pair_dir / "emit_post_dem_utm.tif")
    s2_pre,  t_pre,  _    = read_s2_rgb(pair_dir  / "s2_pre_coreg.tif")
    s2_post, t_post, _    = read_s2_rgb(pair_dir  / "s2_post_coreg.tif")

    panels = [
        (pct_stretch(crop_arr(s2_pre,  t_pre,  zoom_ext)), "S2 before AROSICS"),
        (pct_stretch(crop_arr(emit_rgb, emit_t, zoom_ext)), "EMIT reference (60 m)"),
        (pct_stretch(crop_arr(s2_post, t_post, zoom_ext)), "S2 after AROSICS"),
    ]
    w_km = (zoom_ext[2] - zoom_ext[0]) / 1000
    h_km = (zoom_ext[3] - zoom_ext[1]) / 1000

    fig, axes = plt.subplots(1, 3, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.42))
    for ax, (img, title) in zip(axes, panels):
        ax.imshow(img, interpolation="bilinear")
        ax.set_title(title)
    clean_axes(axes)
    fig.text(0.5, -0.01, f"{w_km:.0f} × {h_km:.0f} km",
             ha="center", fontsize=7.5, color="#777777")
    fig.tight_layout(pad=0.5, w_pad=1.2)
    _save(fig, out_path)


# ── figure 5: AROSICS difference ─────────────────────────────────────────────

def fig_arosics_diff(pair_dir: Path, out_path: Path,
                     zoom_ext: tuple[float, float, float, float] | None = None) -> None:
    s2_pre,  t_pre,  _  = read_s2_rgb(pair_dir / "s2_pre_coreg.tif")
    s2_post, t_post, b  = read_s2_rgb(pair_dir / "s2_post_coreg.tif")

    if zoom_ext is not None:
        s2_pre  = crop_arr(s2_pre,  t_pre,  zoom_ext)
        s2_post = crop_arr(s2_post, t_post, zoom_ext)

    # align sizes (post-AROSICS may differ by a pixel due to resampling)
    h = min(s2_pre.shape[0], s2_post.shape[0])
    w = min(s2_pre.shape[1], s2_post.shape[1])
    diff = np.nanmean(np.abs(s2_post[:h, :w] - s2_pre[:h, :w]), axis=2)

    fig, ax = plt.subplots(1, 1, figsize=(FIG_W_CM * CM * 0.45, FIG_W_CM * CM * 0.42))
    im = ax.imshow(diff, cmap="inferno", interpolation="bilinear",
                   vmin=0, vmax=np.nanpercentile(diff, 99))
    ax.set_title("AROSICS correction effect\n|S2 after − S2 before| (reflectance)")
    clean_axes([ax])
    fig.colorbar(im, ax=ax, fraction=0.046, pad=0.04,
                 label="mean |Δreflectance|")
    fig.tight_layout(pad=0.5)
    _save(fig, out_path)


# ── main ─────────────────────────────────────────────────────────────────────

def main() -> None:
    pair_dir = find_pair_dir(INTERM_DIR)
    print(f"pair: {pair_dir.name}")

    fig_emit_pipeline(pair_dir, FIG_DIR / "fig_emit_pipeline")
    fig_emit_diff(pair_dir,     FIG_DIR / "fig_emit_diff")

    fig_arosics_fullscene(pair_dir, FIG_DIR / "fig_arosics_fullscene")
    fig_arosics_diff(pair_dir,      FIG_DIR / "fig_arosics_diff_fullscene")

    if ZOOM_EXTENT_UTM is not None:
        fig_arosics_zoom(pair_dir, FIG_DIR / "fig_arosics_zoom", ZOOM_EXTENT_UTM)
        fig_arosics_diff(pair_dir, FIG_DIR / "fig_arosics_diff_zoom", ZOOM_EXTENT_UTM)
    else:
        print("  ZOOM_EXTENT_UTM not set — zoom figures skipped")
        print("  set ZOOM_EXTENT_UTM = (left, bottom, right, top) in EPSG:32636")


if __name__ == "__main__":
    main()
