"""
QC example figures for thesis.

Main text (separate panels for subfigure composition in Overleaf):
  fig_qc_pass_s2.{pdf,png}          S2 RGB  — tile passing all filters
  fig_qc_pass_emit.{pdf,png}        EMIT RGB — same tile
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
N_APPENDIX = 3      # examples per category in appendix grid

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
    """Shared percentile stretch. NaN pixels → black (0) so nodata does not
    show as transparent white."""
    valid = arr[np.isfinite(arr)]
    if not len(valid):
        return np.zeros_like(arr, dtype=np.float32)
    lo, hi = np.percentile(valid, [plo, phi])
    out = np.clip((arr - lo) / max(hi - lo, 1e-9), 0.0, 1.0).astype(np.float32)

    if arr.ndim == 3:
        nan_mask = np.any(~np.isfinite(arr), axis=-1)
        out[nan_mask] = 0.0
    else:
        out = np.nan_to_num(out, nan=0.0)
    return out


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

    # pass all filters — prefer moderately high R² (avoid trivially uniform tiles)
    pass_pool = df[df["_clean"] & (df["r2_mean"] < 0.99)]
    if len(pass_pool) < n:
        pass_pool = df[df["_clean"]]
    cats["pass_all"] = _pick_diverse(pass_pool, "r2_mean", ascending=False, n=n)

    # fail forward R² — prefer tiles where reverse R² still passes (makes the
    # point clearly that the two checks are independent). Fall back to reverse
    # higher than forward, then to any fail-forward tile.
    fwd_fail = df[df["r2_mean"] < QC_MIN_R2].copy()
    strict = fwd_fail[fwd_fail["r2_reverse"] >= QC_MIN_R2_REV]
    if len(strict) >= n:
        pool, sort_col, asc = strict, "r2_mean", True
    else:
        fwd_fail["_gap_rev"] = fwd_fail["r2_reverse"] - fwd_fail["r2_mean"]
        gap = fwd_fail[fwd_fail["_gap_rev"] > 0]
        if len(gap) >= n:
            pool, sort_col, asc = gap, "_gap_rev", False
        else:
            pool, sort_col, asc = fwd_fail, "r2_mean", True
    cats["fail_forward"] = _pick_diverse(pool, sort_col, asc, n)

    # pass forward, fail reverse R² — sort by biggest gap
    rev_fail = df[(df["r2_mean"] >= QC_MIN_R2) & (df["r2_reverse"] < QC_MIN_R2_REV)].copy()
    rev_fail["_gap"] = rev_fail["r2_mean"] - rev_fail["r2_reverse"]
    cats["fail_reverse"] = _pick_diverse(rev_fail, "_gap", ascending=False, n=n)

    return cats


# ── main-text panels ────────────────────────────────────────────────────

def fig_main_text(cats):
    mapping = [
        ("pass_all",     "fig_qc_pass"),
        ("fail_forward", "fig_qc_fail_fwd"),
        ("fail_reverse", "fig_qc_fail_rev"),
    ]
    for cat_key, prefix in mapping:
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
    """3 category rows stacked vertically. Each row holds n_cols horizontal
    S2|EMIT pairs — S2 and EMIT sit shoulder to shoulder as a natural pair.
    Italic subcaption above each row, R² labels under each pair. No headers,
    minimal chrome — the tiles are the main event."""
    row_order = ["pass_all", "fail_forward", "fail_reverse"]
    sub_labels = {
        "pass_all":     "(a) Pass all filters",
        "fail_forward": f"(b) Fail forward $R^2$ (< {QC_MIN_R2})",
        "fail_reverse": f"(c) Fail reverse $R^2$ (< {QC_MIN_R2_REV})",
    }
    n_cats = len(row_order)

    # columns: S2, EMIT (pair), small gap, S2, EMIT, small gap, S2, EMIT
    col_widths, pair_cols = [], []
    for p in range(n_cols):
        c0 = len(col_widths)
        col_widths.extend([1.0, 1.0])
        pair_cols.append((c0, c0 + 1))
        if p < n_cols - 1:
            col_widths.append(0.22)   # small gap between pairs
    n_grid_cols = len(col_widths)

    # rows per category: caption (0.22) → images (1.0) → R² labels (0.16)
    # gap (0.32) between categories
    hr, cat_rows = [], []
    for c in range(n_cats):
        cap_r = len(hr); hr.append(0.22)
        img_r = len(hr); hr.append(1.0)
        r2_r  = len(hr); hr.append(0.16)
        cat_rows.append((cap_r, img_r, r2_r))
        if c < n_cats - 1:
            hr.append(0.32)
    n_grid_rows = len(hr)

    cell_cm = 3.6
    fig_w = sum(col_widths) * cell_cm * CM
    fig_h = sum(hr)         * cell_cm * CM

    fig = plt.figure(figsize=(fig_w, fig_h))
    gs = fig.add_gridspec(
        nrows=n_grid_rows, ncols=n_grid_cols,
        height_ratios=hr, width_ratios=col_widths,
        hspace=0.0, wspace=0.0,
    )

    for cat_idx, cat_key in enumerate(row_order):
        cap_r, img_r, r2_r = cat_rows[cat_idx]
        tiles = cats.get(cat_key, [])

        ax_cap = fig.add_subplot(gs[cap_r, :])
        ax_cap.text(
            0.5, 0.5, sub_labels[cat_key],
            ha="center", va="center", fontsize=7.5, style="italic",
            transform=ax_cap.transAxes,
        )
        ax_cap.axis("off")

        for p, (c_s2, c_em) in enumerate(pair_cols):
            if p >= len(tiles):
                continue
            t = tiles[p]
            s2_path = t["s2_tif"]
            em_path = str(emit_path_from_s2(s2_path))
            s2_rgb   = pct_stretch(read_s2_rgb(s2_path))
            emit_rgb = pct_stretch(read_emit_rgb(em_path))

            ax_s2 = fig.add_subplot(gs[img_r, c_s2])
            ax_s2.imshow(s2_rgb, interpolation="bilinear", aspect="equal")
            clean_axes([ax_s2])

            ax_em = fig.add_subplot(gs[img_r, c_em])
            ax_em.imshow(emit_rgb, interpolation="bilinear", aspect="equal")
            clean_axes([ax_em])

            # R² label centered under the pair
            ax_r2 = fig.add_subplot(gs[r2_r, c_s2:c_em + 1])
            r2f = t.get("r2_mean", np.nan)
            r2r = t.get("r2_reverse", np.nan)
            label = f"$R^2_f$ = {r2f:.2f}"
            if np.isfinite(r2r):
                label += f"   $R^2_r$ = {r2r:.2f}"
            ax_r2.text(
                0.5, 1.0, label,
                ha="center", va="top", fontsize=6.5,
                transform=ax_r2.transAxes,
            )
            ax_r2.axis("off")

    _save(fig, FIG_DIR / "fig_qc_grid_appendix")


# ── metadata CSV ────────────────────────────────────────────────────────

def save_meta(main_cats, appendix_cats):
    rows = []
    for which, group in [("main", main_cats), ("appendix", appendix_cats)]:
        for cat, tiles in group.items():
            for i, t in enumerate(tiles):
                rows.append({
                    "figure": which,
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

    # Pick enough tiles for both main and appendix, then split to avoid overlap
    n_total = N_MAIN + N_APPENDIX
    cats = select_tiles(qc_df, clean_df, n=n_total)
    for cat, tiles in cats.items():
        print(f"  {cat}: {len(tiles)} tiles selected")

    main_cats = {k: v[:N_MAIN] for k, v in cats.items()}
    appx_cats = {k: v[N_MAIN:N_MAIN + N_APPENDIX] for k, v in cats.items()}

    print("\n--- Main text panels ---")
    fig_main_text(main_cats)

    print("\n--- Appendix grid ---")
    fig_appendix(appx_cats, n_cols=N_APPENDIX)

    print("\n--- Metadata ---")
    save_meta(main_cats, appx_cats)


if __name__ == "__main__":
    main()
