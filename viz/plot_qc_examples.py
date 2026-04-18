"""
QC example figures for thesis.

Main text (separate panels for subfigure composition in Overleaf):
  fig_qc_fail_fwd_s2.{pdf,png}      S2 RGB  — tile failing forward R²
  fig_qc_fail_fwd_emit.{pdf,png}    EMIT RGB — same tile
  fig_qc_fail_rev_s2.{pdf,png}      S2 RGB  — tile passing forward, failing reverse R²
  fig_qc_fail_rev_emit.{pdf,png}    EMIT RGB — same tile

Appendix (single combined grid):
  fig_qc_grid_appendix.{pdf,png}    rows = QC categories, each cell = S2 / EMIT pair

Metadata:
  qc_examples_meta.csv              R² values for all selected tiles (paste into captions)

Reads  {DRIVE_ROOT}/r2_tiles_qc.csv
       {DRIVE_ROOT}/tiles_clean.csv
       tile TIFs on Drive
Writes {DRIVE_ROOT}/figures/

Usage (Colab):
    !python viz/plot_qc_examples.py
"""

from __future__ import annotations

import os
from pathlib import Path

import matplotlib.pyplot as plt
import matplotlib.gridspec as gridspec
import numpy as np
import pandas as pd
import rasterio
from rasterio.plot import reshape_as_image

# ── config ──────────────────────────────────────────────────────────────
DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"

QC_MIN_R2 = 0.75
QC_MIN_R2_REV = 0.70

N_MAIN = 1          # examples per category in main-text figure
N_APPENDIX = 4      # examples per category in appendix grid

# RGB bands in 32-band EMIT tiles (1-based): 665 nm, 560 nm, 490 nm
EMIT_B32_RGB = [6, 4, 2]

CM = 1 / 2.54
DPI = 300
PANEL_CM = 7.0

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


# ── helpers ─────────────────────────────────────────────────────────────

def pct_stretch(arr, plo=2.0, phi=98.0):
    valid = arr[np.isfinite(arr)]
    if not len(valid):
        return np.zeros_like(arr, dtype=np.float32)
    lo, hi = np.percentile(valid, [plo, phi])
    return np.clip((arr - lo) / max(hi - lo, 1e-9), 0.0, 1.0).astype(np.float32)


def read_s2_rgb(tif_path):
    with rasterio.open(tif_path) as src:
        descs = [str(d or "") for d in (src.descriptions or [])]
        def _b(code):
            for i, d in enumerate(descs, 1):
                if d.startswith(code):
                    return i
            return {"B04": 3, "B03": 2, "B02": 1}.get(code, 3)
        data = src.read([_b("B04"), _b("B03"), _b("B02")]).astype(np.float32)
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data)


def read_emit_rgb(tif_path):
    with rasterio.open(tif_path) as src:
        data = src.read(EMIT_B32_RGB).astype(np.float32)
        nodata = src.nodata
    if nodata is not None:
        data[data == nodata] = np.nan
    data[data <= 0] = np.nan
    data /= 10000.0
    return reshape_as_image(data)


def emit_path_from_s2(s2_path):
    p = Path(s2_path)
    return p.parent / p.name.replace("_s2.tif", "_emit_b32.tif")


def clean_axes(axes):
    for ax in np.ravel(axes):
        ax.set_xticks([])
        ax.set_yticks([])
        for sp in ax.spines.values():
            sp.set_visible(False)


def _save(fig, out_path):
    out_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")


def single_panel(img, out_path):
    fig, ax = plt.subplots(figsize=(PANEL_CM * CM, PANEL_CM * CM))
    ax.imshow(img, interpolation="bilinear")
    clean_axes([ax])
    fig.tight_layout(pad=0.1)
    _save(fig, out_path)


# ── tile selection ──────────────────────────────────────────────────────

def _has_files(row):
    s2 = row.get("s2_tif", "")
    if not s2 or not Path(s2).exists():
        return False
    return emit_path_from_s2(s2).exists()


def _pick_diverse(df, sort_col, ascending, n):
    df = df.sort_values(sort_col, ascending=ascending)
    picked, seen = [], set()
    for _, row in df.iterrows():
        aoi = row["aoi_slug"]
        if aoi not in seen:
            picked.append(row.to_dict())
            seen.add(aoi)
        if len(picked) >= n:
            break
    return picked


def select_tiles(qc_df, clean_df, n):
    df = qc_df[qc_df.apply(_has_files, axis=1)].copy()

    clean_keys = set(
        zip(clean_df["aoi_slug"], clean_df["pair_id"],
            clean_df["tile_idx"].astype(int))
    )
    df["_clean"] = df.apply(
        lambda r: (r["aoi_slug"], r["pair_id"], int(r["tile_idx"])) in clean_keys,
        axis=1,
    )

    cats = {}

    # pass all
    cats["pass_all"] = _pick_diverse(
        df[df["_clean"]], "r2_mean", ascending=False, n=n,
    )

    # fail forward R²
    cats["fail_forward"] = _pick_diverse(
        df[df["r2_mean"] < QC_MIN_R2], "r2_mean", ascending=True, n=n,
    )

    # pass forward, fail reverse R²  — sort by biggest gap
    mask_rev = (df["r2_mean"] >= QC_MIN_R2) & (df["r2_reverse"] < QC_MIN_R2_REV)
    rev = df[mask_rev].copy()
    rev["_gap"] = rev["r2_mean"] - rev["r2_reverse"]
    cats["fail_reverse"] = _pick_diverse(
        rev, "_gap", ascending=False, n=n,
    )

    return cats


# ── main-text panels ────────────────────────────────────────────────────

def fig_main_text(cats):
    for cat_key, prefix in [("fail_forward", "fig_qc_fail_fwd"),
                             ("fail_reverse", "fig_qc_fail_rev")]:
        tiles = cats.get(cat_key, [])
        if not tiles:
            print(f"  skip {prefix}: no tiles found")
            continue
        t = tiles[0]
        s2_rgb = pct_stretch(read_s2_rgb(t["s2_tif"]))
        emit_rgb = pct_stretch(read_emit_rgb(emit_path_from_s2(t["s2_tif"])))
        single_panel(s2_rgb, FIG_DIR / f"{prefix}_s2")
        single_panel(emit_rgb, FIG_DIR / f"{prefix}_emit")


# ── appendix grid ───────────────────────────────────────────────────────

def fig_appendix(cats, n_cols):
    row_order = ["pass_all", "fail_forward", "fail_reverse"]
    row_labels = {
        "pass_all":      "Pass all filters",
        "fail_forward":  f"Fail forward R²\n(< {QC_MIN_R2})",
        "fail_reverse":  f"Fail reverse R²\n(< {QC_MIN_R2_REV})",
    }
    n_cats = len(row_order)

    # layout: per category 2 image rows (S2 + EMIT), gap rows between categories
    # height_ratios: [S2, EMIT, gap, S2, EMIT, gap, S2, EMIT]
    hr = []
    for i in range(n_cats):
        hr.extend([1, 1])
        if i < n_cats - 1:
            hr.append(0.15)
    n_grid_rows = len(hr)

    cell_cm = 3.2
    fig_w = (3.0 + n_cols * cell_cm) * CM
    fig_h = (sum(hr) * cell_cm * 0.55) * CM

    fig = plt.figure(figsize=(fig_w, fig_h))
    gs = fig.add_gridspec(
        nrows=n_grid_rows, ncols=n_cols + 1,
        width_ratios=[0.35] + [1] * n_cols,
        height_ratios=hr,
        hspace=0.08, wspace=0.06,
    )

    for cat_idx, cat_key in enumerate(row_order):
        tiles = cats.get(cat_key, [])
        # grid row offset: each category uses 2 rows + 1 gap (except last)
        r_s2 = cat_idx * 3
        r_em = r_s2 + 1

        # row label spanning both S2 and EMIT rows
        ax_lab = fig.add_subplot(gs[r_s2:r_em + 1, 0])
        ax_lab.text(
            0.95, 0.5, row_labels[cat_key],
            ha="right", va="center", fontsize=7,
            transform=ax_lab.transAxes,
        )
        ax_lab.axis("off")

        for col_idx in range(min(n_cols, len(tiles))):
            t = tiles[col_idx]
            s2_path = t["s2_tif"]
            em_path = str(emit_path_from_s2(s2_path))

            s2_rgb = pct_stretch(read_s2_rgb(s2_path))
            emit_rgb = pct_stretch(read_emit_rgb(em_path))

            gc = col_idx + 1  # grid column (0 is labels)

            ax_s2 = fig.add_subplot(gs[r_s2, gc])
            ax_s2.imshow(s2_rgb, interpolation="bilinear")
            clean_axes([ax_s2])

            ax_em = fig.add_subplot(gs[r_em, gc])
            ax_em.imshow(emit_rgb, interpolation="bilinear")
            clean_axes([ax_em])

            # R² annotation below EMIT panel
            r2f = t.get("r2_mean", np.nan)
            r2r = t.get("r2_reverse", np.nan)
            label = f"R²={r2f:.2f}"
            if np.isfinite(r2r):
                label += f"  rev={r2r:.2f}"
            ax_em.set_xlabel(label, fontsize=5, labelpad=2)

            # column header on first category row
            if cat_idx == 0:
                ax_s2.set_title("S2 / EMIT", fontsize=6, pad=3)

    _save(fig, FIG_DIR / "fig_qc_grid_appendix")


# ── metadata CSV ────────────────────────────────────────────────────────

def save_meta(cats):
    rows = []
    for cat, tiles in cats.items():
        for i, t in enumerate(tiles):
            rows.append({
                "category": cat,
                "rank": i,
                "aoi_slug": t["aoi_slug"],
                "pair_id": t["pair_id"],
                "tile_idx": t["tile_idx"],
                "r2_mean": round(t.get("r2_mean", float("nan")), 4),
                "r2_reverse": round(t.get("r2_reverse", float("nan")), 4),
                "combined_frac": round(t.get("combined_frac", float("nan")), 4),
            })
    out = FIG_DIR / "qc_examples_meta.csv"
    pd.DataFrame(rows).to_csv(out, index=False)
    print(f"  saved {out.name}")


# ── main ────────────────────────────────────────────────────────────────

def main():
    FIG_DIR.mkdir(parents=True, exist_ok=True)

    qc_df = pd.read_csv(DRIVE_ROOT / "r2_tiles_qc.csv")
    clean_df = pd.read_csv(DRIVE_ROOT / "tiles_clean.csv")
    print(f"Loaded {len(qc_df)} QC tiles, {len(clean_df)} clean tiles")

    n = max(N_MAIN, N_APPENDIX)
    cats = select_tiles(qc_df, clean_df, n=n)
    for cat, tiles in cats.items():
        print(f"  {cat}: {len(tiles)} tiles selected")

    print("\n--- Main text panels ---")
    fig_main_text(cats)

    print("\n--- Appendix grid ---")
    fig_appendix(cats, n_cols=N_APPENDIX)

    print("\n--- Metadata ---")
    save_meta(cats)


if __name__ == "__main__":
    main()
