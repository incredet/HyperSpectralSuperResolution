"""
Per-tile realignment figure.

Picks the N tiles with the largest per-tile S2 realignment shift from this
AOI's global_manifest.csv, then plots each as a 4-column row:

  EMIT (60 m)  |  S2 before fine-alignment  |  S2 after fine-alignment  |  |after − before|

"S2 before" is the scene-level AROSICS output cropped to the tile extent;
"S2 after" is the stored per-tile TIF (includes the sub-pixel fine shift).

Reads from the AOI's pair folder on Drive + viz_intermediates s2_post_coreg.tif.
Writes {DRIVE_ROOT}/figures/fig_per_tile_realignment.{pdf,png}

Usage (Colab):
    !python viz/plot_per_tile_realignment.py
"""

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
        if p.is_dir() and (p / "global_manifest.csv").exists() or (p / "tiles").is_dir():
            if (p / "global_manifest.csv").exists() or (p / "tiles").is_dir():
                return p
    raise FileNotFoundError(f"no pair dir under {aoi_dir}")


def find_pair_dir_viz(interm_dir: Path) -> Path:
    for p in sorted(interm_dir.iterdir()):
        if p.is_dir() and not p.name.startswith("_"):
            return p
    raise FileNotFoundError(f"no viz pair dir under {interm_dir}")


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
    manifest = pd.read_csv(drv_pair / "global_manifest.csv")

    # S2 shift magnitude in S2 pixels
    manifest["shift_mag_s2_px"] = np.sqrt(
        manifest["realign_shift_s2_dy"].fillna(0) ** 2
        + manifest["realign_shift_s2_dx"].fillna(0) ** 2
    )
    top = manifest.nlargest(N_TILES, "shift_mag_s2_px").reset_index(drop=True)
    print(f"top {N_TILES} tiles by S2 realignment magnitude:")
    for _, r in top.iterrows():
        print(f"  tile {int(r['idx']):3d}  |shift| = {r['shift_mag_s2_px']:.3f} S2 px"
              f"  (dy={r['realign_shift_s2_dy']:+.3f} dx={r['realign_shift_s2_dx']:+.3f})")

    fig, axes = plt.subplots(
        N_TILES, 4,
        figsize=(FIG_W_CM * CM, FIG_W_CM * CM * 0.28 * N_TILES),
    )
    if N_TILES == 1:
        axes = axes[np.newaxis, :]

    for i, (_, row) in enumerate(top.iterrows()):
        emit_path = Path(row.get("emit_b32_tif") or row["emit_tif"])
        s2_path   = Path(row["s2_tif"])
        try:
            emit_rgb              = read_emit_tile_rgb(emit_path)
            s2_after, s2_bounds   = read_s2_tile_rgb(s2_path)
            s2_before             = read_s2_from_scene(s2_scene, s2_bounds)
        except Exception as e:
            print(f"  skip tile {int(row['idx'])}: {e}")
            for ax in axes[i]:
                clean_axes(ax)
            continue

        # align shapes (crop from scene may be off by 1 px due to bounds snap)
        h = min(s2_before.shape[0], s2_after.shape[0])
        w = min(s2_before.shape[1], s2_after.shape[1])
        s2_before = s2_before[:h, :w]
        s2_after  = s2_after[:h, :w]
        diff = np.nanmean(np.abs(s2_after - s2_before), axis=2)

        axes[i, 0].imshow(pct_stretch(emit_rgb),  interpolation="nearest")
        axes[i, 1].imshow(pct_stretch(s2_before), interpolation="bilinear")
        axes[i, 2].imshow(pct_stretch(s2_after),  interpolation="bilinear")
        vmax = float(np.nanpercentile(diff, 99)) if np.isfinite(diff).any() else 0.01
        axes[i, 3].imshow(diff, cmap="inferno", vmin=0, vmax=vmax,
                          interpolation="bilinear")

        for ax in axes[i]:
            clean_axes(ax)

        # left-side annotation: tile index + shift magnitude (small, outside image)
        axes[i, 0].set_ylabel(
            f"tile {int(row['idx'])}\n|Δ|={row['shift_mag_s2_px']:.2f} px",
            rotation=0, ha="right", va="center", labelpad=14,
            fontsize=6.5, color="#555555",
        )

    fig.tight_layout(pad=0.3, w_pad=0.5, h_pad=0.5)
    out = FIG_DIR / "fig_per_tile_realignment"
    out.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"saved {out.with_suffix('.pdf').name}")


if __name__ == "__main__":
    main()
