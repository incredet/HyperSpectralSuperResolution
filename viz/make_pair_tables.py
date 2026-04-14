"""
Emit LaTeX tables summarising the EMIT–S2 pair set.

Three tables:
  tab_pairs_summary.tex        overall statistics
  tab_pairs_by_landcover.tex   per-land-cover-group breakdown
  tab_pairs_by_year.tex        per-calendar-year breakdown

All tables use booktabs. Wrap in \\begin{table}...\\caption{...}\\end{table}
in the thesis; this script emits the tabular env only.

Reads  {DRIVE_ROOT}/figures/pair_dates.csv
Writes {DRIVE_ROOT}/figures/tables/tab_pairs_*.tex
"""

from __future__ import annotations

import os
from pathlib import Path

import numpy as np
import pandas as pd

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
CSV_PATH = FIG_DIR / "pair_dates.csv"
OUT_DIR = FIG_DIR / "tables"

# --- land-cover grouping (kept in sync with plot_aoi_map.py) ----------------
GROUP_RULES = [
    ("forest", {
        "tropical_forest", "temperate_forest", "boreal_forest",
        "subtropical_forest", "tropical_dry_forest", "tropical_montane_forest",
        "mangrove", "peatland", "woodland",
    }),
    ("cropland", {"cropland", "agriculture"}),
    ("desert / arid", {"desert", "arid", "semi-arid", "salt_flat"}),
    ("grassland / savanna", {"grassland", "savanna", "steppe", "shrubland"}),
    ("wetland", {"wetland", "lake", "coastal"}),
    ("mountain / alpine", {"mountain", "alpine"}),
    ("urban", {"urban"}),
    ("mediterranean", {"mediterranean"}),
    ("barren / volcanic", {
        "volcanic", "barren", "mining", "fire_scar", "deforestation",
    }),
]
GROUP_ORDER = [g for g, _ in GROUP_RULES] + ["other"]


def assign_group(lc: str) -> str:
    head = (lc or "").split("/")[0].strip()
    for name, members in GROUP_RULES:
        if head in members:
            return name
    tail = (lc or "").split("/")[-1].strip()
    for name, members in GROUP_RULES:
        if tail in members:
            return name
    return "other"


def escape(s: str) -> str:
    return s.replace("&", r"\&").replace("_", r"\_")


# --- summary table ----------------------------------------------------------
def make_summary(df: pd.DataFrame) -> str:
    emit = pd.to_datetime(df["emit_dt"], utc=True)
    span = f"{emit.min().strftime('%Y-%m')} -- {emit.max().strftime('%Y-%m')}"
    abs_dt = df["delta_hours"].abs()
    n = len(df)
    rows = [
        ("Total pairs", f"{n}"),
        ("Date range", span),
        (r"Mean $|\Delta t|$",   f"{abs_dt.mean():.2f}\\,h"),
        (r"Median $|\Delta t|$", f"{abs_dt.median():.2f}\\,h"),
        (r"Max $|\Delta t|$",    f"{abs_dt.max():.2f}\\,h"),
        (r"Pairs within $\pm$24\,h",
         f"{(abs_dt <= 24).sum()} ({(abs_dt <= 24).mean()*100:.0f}\\%)"),
        (r"Pairs within $\pm$48\,h",
         f"{(abs_dt <= 48).sum()} ({(abs_dt <= 48).mean()*100:.0f}\\%)"),
        (r"Pairs within $\pm$72\,h",
         f"{(abs_dt <= 72).sum()} ({(abs_dt <= 72).mean()*100:.0f}\\%)"),
    ]

    body = "\n".join(f"{k} & {v} \\\\" for k, v in rows)
    return (
        r"\begin{tabular}{lr}" + "\n"
        r"\toprule" + "\n"
        "Statistic & Value \\\\\n"
        r"\midrule" + "\n"
        + body + "\n"
        + r"\bottomrule" + "\n"
        + r"\end{tabular}" + "\n"
    )


# --- per-land-cover table ---------------------------------------------------
def make_by_landcover(df: pd.DataFrame) -> str:
    df = df.copy()
    df["group"] = df["land_cover"].map(assign_group)
    df["abs_dt"] = df["delta_hours"].abs()

    lines = []
    for grp in GROUP_ORDER:
        sub = df[df["group"] == grp]
        if not len(sub):
            continue
        lines.append(
            f"{grp} & {len(sub)} & "
            f"{sub['abs_dt'].median():.1f} & "
            f"{sub['abs_dt'].mean():.1f} & "
            f"{sub['abs_dt'].max():.1f} \\\\"
        )
    lines.append(r"\midrule")
    lines.append(
        f"\\textbf{{total}} & \\textbf{{{len(df)}}} & "
        f"\\textbf{{{df['abs_dt'].median():.1f}}} & "
        f"\\textbf{{{df['abs_dt'].mean():.1f}}} & "
        f"\\textbf{{{df['abs_dt'].max():.1f}}} \\\\"
    )

    return (
        r"\begin{tabular}{lrrrr}" + "\n"
        r"\toprule" + "\n"
        r"Land-cover group & $n$ & median $|\Delta t|$ & mean $|\Delta t|$ & max $|\Delta t|$ \\" + "\n"
        r" &  & (h) & (h) & (h) \\" + "\n"
        r"\midrule" + "\n"
        + "\n".join(lines) + "\n"
        + r"\bottomrule" + "\n"
        + r"\end{tabular}" + "\n"
    )


# --- per-year table ---------------------------------------------------------
def make_by_year(df: pd.DataFrame) -> str:
    df = df.copy()
    df["year"] = pd.to_datetime(df["emit_dt"], utc=True).dt.year
    df["abs_dt"] = df["delta_hours"].abs()

    lines = []
    for y in sorted(df["year"].unique()):
        sub = df[df["year"] == y]
        lines.append(
            f"{y} & {len(sub)} & "
            f"{sub['abs_dt'].median():.1f} & "
            f"{sub['abs_dt'].max():.1f} \\\\"
        )
    lines.append(r"\midrule")
    lines.append(
        f"\\textbf{{total}} & \\textbf{{{len(df)}}} & "
        f"\\textbf{{{df['abs_dt'].median():.1f}}} & "
        f"\\textbf{{{df['abs_dt'].max():.1f}}} \\\\"
    )

    return (
        r"\begin{tabular}{lrrr}" + "\n"
        r"\toprule" + "\n"
        r"Year & $n$ & median $|\Delta t|$ (h) & max $|\Delta t|$ (h) \\" + "\n"
        r"\midrule" + "\n"
        + "\n".join(lines) + "\n"
        + r"\bottomrule" + "\n"
        + r"\end{tabular}" + "\n"
    )


def main() -> None:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    df = pd.read_csv(CSV_PATH)

    tables = {
        "tab_pairs_summary.tex":      make_summary(df),
        "tab_pairs_by_landcover.tex": make_by_landcover(df),
        "tab_pairs_by_year.tex":      make_by_year(df),
    }

    for name, tex in tables.items():
        (OUT_DIR / name).write_text(tex)
        print(f"\n===== {name} =====")
        print(tex)


if __name__ == "__main__":
    main()
