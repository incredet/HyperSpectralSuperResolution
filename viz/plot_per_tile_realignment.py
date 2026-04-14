from __future__ import annotations

import os
import warnings
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import rasterio
from rasterio.plot import reshape_as_image
from rasterio.windows import from_bounds

warnings.filterwarnings("ignore", category=RuntimeWarning,
                        message="Mean of empty slice")

# ── config ──────────────────────────────────────────────────────────────────
AOI_SLUG = "aoi_lat49.0_lon34.0"
N_TILES  = 3

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR    = DRIVE_ROOT / "figures"
INTERM_DIR = DRIVE_ROOT / "viz_intermediates" / AOI_SLUG
AOI_DIR    = DRIVE_ROOT / AOI_SLUG

# 32-band EMIT ordering from pipeline_config.yaml
EMIT_B32_WL = [440, 490, 530, 560, 620, 665, 705, 720, 740, 783, 842, 865,
               880, 920, 970, 1050, 1130, 1200, 1260, 1510, 1560, 1610,
               1680, 2040, 2100, 2190, 2200, 2250, 2290, 2340, 2390, 2440]
EMIT_FULL_WL = np.linspace(381.0, 2493.0, 285)
RGB_NM = (665.0, 560.0, 490.0)

FIG_W_CM = 16.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 7.5,
    "axes.titlesize": 7.5,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})


# ── helpers ──────────────────────────────────────────────────────────────────

def find_pair_dir_drive(aoi_dir: Path) -> Path:
    for p in aoi_dir.iterdir():
        if p.is_dir() and (p / "manifest.csv").exists() or (p / "tiles").is_dir():
            if (p / "manifest.csv").exists() or (p / "tiles").is_dir():
                return p
    raise FileNotFoundError(f"no pair dir under {aoi_dir}")


def find_pair_dir_viz(interm_dir: Path) -> Path:
    for p in sorted(interm_dir.iterdir()):
        if p.is_dir() and not p.name.startswith("_"):
            return p
    raise FileNotFoundError(f"no viz pair dir under {interm_dir}")


def pct_stretch(arr: np.ndarray, plo: float = 2.0, phi: float = 98.0) -> np.ndarray:
    """Shared percentile stretch across all channels — preserves colour ratios."""
    valid = arr[np.isfinite(arr)]
    if not len(valid):
        return np.zeros_like(arr, dtype=np.float32)
    lo, hi = np.percentile(valid, [plo, phi])
    return np.clip((arr - lo) / max(hi - lo, 1e-9), 0.0, 1.0).astype(np.float32)


def read_emit_tile_rgb(tif_path: Path) -> np.ndarray:
    """Read an EMIT tile TIF — either 285-band or 32-band — as float32 RGB."""
    with rasterio.open(tif_path) as src:
        n = src.count
        if n == 32:
            bands_1b = [EMIT_B32_WL.index(int(nm)) + 1 for nm in (665, 560, 490)]
        elif n == 285:
            bands_1b = [int(np.argmin(np.abs(EMIT_FULL_WL - nm))) + 1 for nm in RGB_NM]
        else:
            bands_1b = [1, 2, 3]
        data = src.read(bands_1b).astype(np.float32)
        nodata = src.nodata or 65535.0
    data[data == nodata] = np.nan
    data /= 10000.0
    return reshape_as_image(data)


def read_s2_tile_rgb(tif_path: Path) -> tuple[np.ndarray, tuple]:
    """Read an S2 tile TIF as RGB + geographic bounds."""
    with rasterio.open(tif_path) as src:
        descs = [str(d or "") for d in (src.descriptions or [])]
        def _b(code: str) -> int:
            for i, d in enumerate(descs, 1):
                if d.startswith(code):
                    return i
            return {"B04": 3, "B03": 2, "B02": 1}.get(code, 3)
        data = src.read([_b("B04"), _b("B03"), _b("B02")]).astype(np.float32)
        bounds = src.bounds
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data), bounds


def read_s2_from_scene(scene_tif: Path, bounds) -> np.ndarray:
    """Crop RGB from a scene-level S2 post-AROSICS TIF at given bounds."""
    with rasterio.open(scene_tif) as src:
        descs = [str(d or "") for d in (src.descriptions or [])]
        def _b(code: str) -> int:
            for i, d in enumerate(descs, 1):
                if d.startswith(code):
                    return i
            return {"B04": 3, "B03": 2, "B02": 1}.get(code, 3)
        win = from_bounds(*bounds, transform=src.transform)
        data = src.read([_b("B04"), _b("B03"), _b("B02")], window=win).astype(np.float32)
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data)


def clean_axes(ax) -> None:
    ax.set_xticks([])
    ax.set_yticks([])
    for sp in ax.spines.values():
        sp.set_visible(False)


# ── main ─────────────────────────────────────────────────────────────────────

def main() -> None:
    viz_pair = find_pair_dir_viz(INTERM_DIR)
    s2_scene = viz_pair / "s2_post_coreg.tif"
    drv_pair = find_pair_dir_drive(AOI_DIR)
    manifest = pd.read_csv(drv_pair / "manifest.csv")

    # restrict to tiles that passed QC (cloud, r² forward + reverse, brightness)
    clean = pd.read_csv(DRIVE_ROOT / "tiles_clean.csv")
    clean = clean[clean["aoi_slug"] == AOI_SLUG]
    kept = set(zip(clean["pair_id"], clean["tile_idx"]))
    before_n = len(manifest)
    manifest = manifest[manifest.apply(
        lambda r: (r["pair_id"], int(r["idx"])) in kept, axis=1
    )].reset_index(drop=True)
    print(f"QC filter: {before_n} → {len(manifest)} tiles")

    # S2 shift magnitude in S2 pixels
    manifest["shift_mag_s2_px"] = np.sqrt(
        manifest["realign_shift_s2_dy"].fillna(0) ** 2
        + manifest["realign_shift_s2_dx"].fillna(0) ** 2
    )
    top = manifest.nlargest(N_TILES, "shift_mag_s2_px").reset_index(drop=True)
    print(f"top {N_TILES} tiles by S2 realignment magnitude (QC-passed only):")
    for _, r in top.iterrows():
        print(f"  tile {int(r['idx']):3d}  |shift| = {r['shift_mag_s2_px']:.3f} S2 px"
              f"  (dy={r['realign_shift_s2_dy']:+.3f} dx={r['realign_shift_s2_dx']:+.3f})")

    FIG_DIR.mkdir(parents=True, exist_ok=True)

    for _, row in top.iterrows():
        tile_idx  = int(row["idx"])
        emit_path = Path(row.get("emit_b32_tif") or row["emit_tif"])
        s2_path   = Path(row["s2_tif"])

        try:
            emit_rgb            = read_emit_tile_rgb(emit_path)
            s2_after, s2_bounds = read_s2_tile_rgb(s2_path)
            s2_before           = read_s2_from_scene(s2_scene, s2_bounds)
        except Exception as e:
            print(f"  skip tile {tile_idx}: {e}")
            continue

        # align shapes (crop from scene may differ by 1 px due to bounds snap)
        h = min(s2_before.shape[0], s2_after.shape[0])
        w = min(s2_before.shape[1], s2_after.shape[1])
        s2_before = s2_before[:h, :w]
        s2_after  = s2_after[:h, :w]
        diff = np.nanmean(np.abs(s2_after - s2_before), axis=2)
        vmax = float(np.nanpercentile(diff, 99)) if np.isfinite(diff).any() else 0.01

        panels = [
            (pct_stretch(emit_rgb),  None,      None, "nearest"),
            (pct_stretch(s2_before), None,      None, "bilinear"),
            (pct_stretch(s2_after),  None,      None, "bilinear"),
            (diff,                   "inferno", vmax, "bilinear"),
        ]

        fig, axes = plt.subplots(1, 4, figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.28))
        for ax, (img, cmap, vmx, interp) in zip(axes, panels):
            if cmap:
                ax.imshow(img, cmap=cmap, vmin=0, vmax=vmx, interpolation=interp)
            else:
                ax.imshow(img, interpolation=interp)
            clean_axes(ax)

        fig.tight_layout(pad=0.2, w_pad=0.4)
        out = FIG_DIR / f"fig_per_tile_realignment_tile{tile_idx:03d}"
        fig.savefig(out.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
        fig.savefig(out.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
        plt.close(fig)
        print(f"  saved {out.name}.pdf  (|Δ|={row['shift_mag_s2_px']:.2f} S2 px)")


if __name__ == "__main__":
    main()
