
import os
from pathlib import Path

import pandas as pd

REPO_ROOT = Path(__file__).resolve().parent.parent

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR  = DRIVE_ROOT / "figures"
OUT_DIR  = FIG_DIR / "tables"
QC_MIN_R2 = 0.75

# land-cover grouping (kept in sync with plot_aoi_map.py)
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


def assign_group(lc):
    head = (lc or "").split("/")[0].strip()
    for name, members in GROUP_RULES:
        if head in members:
            return name
    tail = (lc or "").split("/")[-1].strip()
    for name, members in GROUP_RULES:
        if tail in members:
            return name
    return "other"


# QC filter table

def make_qc_filters(all_tiles, clean):
    n = len(all_tiles)
    rows = [
        ("EMIT cloud contamination",
         (~all_tiles["pass_emit_cloud"]).sum()),
        ("S2 reverse regression $R^2 < 0.70$",
         (~all_tiles["pass_r2_reverse"]).sum()),
        ("S2 brightness (cloud/snow)",
         (~all_tiles["pass_s2_bright"]).sum()),
        (f"Forward regression $R^2 < {QC_MIN_R2}$",
         all_tiles["pass_qc"].sum() - len(clean)),
    ]
    total_rejected = n - len(clean)

    lines = []
    for label, nfail in rows:
        lines.append(
            f"{label} & {nfail:,} & {nfail/n*100:.1f}\\% \\\\"
        )
    lines.append(r"\midrule")
    lines.append(
        f"\\textbf{{Total rejected}} & "
        f"\\textbf{{{total_rejected:,}}} & "
        f"\\textbf{{{total_rejected/n*100:.1f}\\%}} \\\\"
    )
    lines.append(
        f"\\textbf{{Total retained}} & "
        f"\\textbf{{{len(clean):,}}} & "
        f"\\textbf{{{len(clean)/n*100:.1f}\\%}} \\\\"
    )

    return (
        r"\begin{tabular}{lrr}" + "\n"
        r"\toprule" + "\n"
        r"QC filter & tiles failed & \% of total \\" + "\n"
        r"\midrule" + "\n"
        + "\n".join(lines) + "\n"
        + r"\bottomrule" + "\n"
        + r"\end{tabular}" + "\n"
    )


# post-QC pair tables
# Restrict pair_dates to pairs that appear in tiles_clean

def postqc_pair_dates(pair_dates, clean):
    kept_pairs = set(clean["pair_id"].unique())
    return pair_dates[pair_dates["pair_id"].isin(kept_pairs)].copy()


def make_summary(df):
    emit  = pd.to_datetime(df["emit_dt"], utc=True)
    span  = f"{emit.min().strftime('%Y-%m')} -- {emit.max().strftime('%Y-%m')}"
    abs_dt = df["delta_hours"].abs()
    n = len(df)
    rows = [
        ("Total pairs (post-QC)", f"{n}"),
        ("Date range", span),
        (r"Mean $|\Delta t|$",   f"{abs_dt.mean():.2f}\\,h"),
        (r"Median $|\Delta t|$", f"{abs_dt.median():.2f}\\,h"),
        (r"Max $|\Delta t|$",    f"{abs_dt.max():.2f}\\,h"),
        (r"Pairs within $\pm$24\,h",
         f"{(abs_dt <= 24).sum()} ({(abs_dt <= 24).mean()*100:.0f}\\%)"),
        (r"Pairs within $\pm$48\,h",
         f"{(abs_dt <= 48).sum()} ({(abs_dt <= 48).mean()*100:.0f}\\%)"),
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


def make_by_landcover(df):
    df = df.copy()
    df["group"]  = df["land_cover"].map(assign_group)
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


def make_by_year(df):
    df = df.copy()
    df["year"]   = pd.to_datetime(df["emit_dt"], utc=True).dt.year
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


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    all_tiles  = pd.read_csv(DRIVE_ROOT / "r2_tiles_qc.csv")
    clean      = pd.read_csv(DRIVE_ROOT / "tiles_clean.csv")
    pair_dates = pd.read_csv(FIG_DIR / "pair_dates.csv")
    postqc_aoi = pd.read_csv(FIG_DIR / "aoi_postqc_counts.csv")

    df_postqc = postqc_pair_dates(pair_dates, clean)
    print(f"post-QC pairs: {len(df_postqc)} of {len(pair_dates)}")

    tables = {
        "tab_qc_filters.tex":
            make_qc_filters(all_tiles, clean),
        "tab_pairs_summary_postqc.tex":
            make_summary(df_postqc),
        "tab_pairs_by_landcover_postqc.tex":
            make_by_landcover(df_postqc),
        "tab_pairs_by_year_postqc.tex":
            make_by_year(df_postqc),
    }

    for name, tex in tables.items():
        (OUT_DIR / name).write_text(tex)
        print(f"\n===== {name} =====")
        print(tex)


if __name__ == "__main__":
    main()
