
import argparse
import os
from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))

METRICS = ["PSNR", "SSIM", "SAM", "ERGAS", "RMSE", "UIQI", "SCC"]
HIGHER = {"PSNR": True, "SSIM": True, "SAM": False,
          "ERGAS": False, "RMSE": False, "UIQI": True, "SCC": True}
DEC = {"PSNR": 2, "SSIM": 3, "SAM": 2, "ERGAS": 2, "RMSE": 4, "UIQI": 3, "SCC": 3}
EXCLUDE = {"Regression"}
METHOD_ORDER = ["SFIM", "CNMF", "GLP", "MAPSMM", "HySure", "FUSE", "CSTF", "Bicubic"]

PANEL_CM = 8.0
CM = 1 / 2.54
DPI = 300

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 8.0,
    "axes.labelsize": 8.0,
    "xtick.labelsize": 7.0,
    "ytick.labelsize": 7.0,
    "axes.linewidth": 0.5,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

METHOD_COLOR = {
    "SFIM":    "#4477AA",
    "CNMF":    "#EE6677",
    "GLP":     "#228833",
    "MAPSMM":  "#CCBB44",
    "HySure":  "#66CCEE",
    "FUSE":    "#AA3377",
    "CSTF":    "#BBBBBB",
    "Bicubic": "#000000",
}


def compute_stats(summary_df):
    out = {}
    for m in METHOD_ORDER:
        d = summary_df[summary_df["method"] == m]
        out[m] = {"n": len(d)}
        for k in METRICS:
            out[m][k] = (float(d[k].mean()), float(d[k].std(ddof=1)))
        out[m]["time"] = float(d["time_s"].mean()) if len(d) else 0.0
    return out


def best_per_metric(stats):
    best = {}
    for k in METRICS:
        scored = [(m, stats[m][k][0]) for m in METHOD_ORDER]
        scored.sort(key=lambda x: x[1], reverse=HIGHER[k])
        best[k] = scored[0][0]
    return best


def print_latex_table(stats, best):
    def fmt(m, k):
        mean, std = stats[m][k]
        d = DEC[k]
        body = f"{mean:.{d}f} \\pm {std:.{d}f}"
        return f"$\\mathbf{{{body}}}$" if m == best[k] else f"${body}$"

    mapsmm_caveat = ""
    if stats["MAPSMM"]["n"] < stats["SFIM"]["n"]:
        miss = stats["SFIM"]["n"] - stats["MAPSMM"]["n"]
        mapsmm_caveat = (f" MAPSMM failed on {miss} of {stats['SFIM']['n']} tiles; "
                         f"its statistics are computed over the remaining {stats['MAPSMM']['n']}.")

    print(r"\begin{table}[ht]")
    print(r"  \centering")
    print(r"  \caption{Wald-protocol reduced-resolution evaluation of fusion methods on "
          f"{stats['SFIM']['n']} EMIT--S2 tile pairs at scale factor 6. "
          r"Reported as mean $\pm$ std across tiles. Best per metric in bold."
          f"{mapsmm_caveat}" + r"}")
    print(r"  \label{tab:wald-fusion}")
    print(r"  \resizebox{\textwidth}{!}{%")
    print(r"  \begin{tabular}{lccccccccc}")
    print(r"    \toprule")
    print(r"    Method & $n$ & PSNR$\uparrow$ & SSIM$\uparrow$ & SAM$\downarrow$ & "
          r"ERGAS$\downarrow$ & RMSE$\downarrow$ & UIQI$\uparrow$ & SCC$\uparrow$ & Time (s) \\")
    print(r"    \midrule")
    for m in METHOD_ORDER:
        cells = [m, str(stats[m]["n"])] + [fmt(m, k) for k in METRICS]
        cells.append(f"{stats[m]['time']:.2f}")
        print("    " + " & ".join(cells) + r" \\")
    print(r"    \bottomrule")
    print(r"  \end{tabular}%")
    print(r"  }")
    print(r"\end{table}")


def compute_gain_stats(dist_df):
    out = {}
    for m in METHOD_ORDER:
        if m == "Bicubic":
            continue
        d = dist_df[dist_df["method"] == m]
        if len(d) == 0:
            continue
        d_psnr = d["gt_PSNR"] - d["bic_gt_PSNR"]
        d_sam = d["bic_gt_SAM"] - d["gt_SAM"]
        d_rmse = d["bic_gt_RMSE"] - d["gt_RMSE"]
        out[m] = {
            "n": len(d),
            "dPSNR": (float(d_psnr.mean()), float(d_psnr.std(ddof=1))),
            "dSAM": (float(d_sam.mean()), float(d_sam.std(ddof=1))),
            "dRMSE": (float(d_rmse.mean()), float(d_rmse.std(ddof=1))),
            "win_psnr": float((d_psnr > 0).mean() * 100),
            "win_sam": float((d_sam > 0).mean() * 100),
            "dist_rmse": float(d["dist_bic_RMSE"].mean()),
            "dist_sam": float(d["dist_bic_SAM"].mean()),
        }
    return out


def print_gain_table(gain_stats):
    methods = [m for m in METHOD_ORDER if m in gain_stats]

    # best per column
    best = {}
    best["dPSNR"] = max(methods, key=lambda m: gain_stats[m]["dPSNR"][0])
    best["dSAM"] = max(methods, key=lambda m: gain_stats[m]["dSAM"][0])
    best["dRMSE"] = max(methods, key=lambda m: gain_stats[m]["dRMSE"][0])
    best["win_psnr"] = max(methods, key=lambda m: gain_stats[m]["win_psnr"])
    best["win_sam"] = max(methods, key=lambda m: gain_stats[m]["win_sam"])

    def fmt_pm(m, key, dec):
        mean, std = gain_stats[m][key]
        body = f"{mean:+.{dec}f} \\pm {std:.{dec}f}"
        return f"$\\mathbf{{{body}}}$" if m == best[key] else f"${body}$"

    def fmt_pct(m, key):
        v = gain_stats[m][key]
        body = f"{v:.1f}"
        return f"$\\mathbf{{{body}}}$" if m == best[key] else f"${body}$"

    print()
    print(r"\begin{table}[ht]")
    print(r"  \centering")
    print(r"  \caption{Per-tile gains over the bicubic baseline on the same "
          f"{gain_stats[methods[0]]['n']} Wald tiles. "
          r"$\Delta$PSNR, $\Delta$SAM, $\Delta$RMSE are signed so that positive values "
          r"indicate improvement over bicubic. Win rate is the fraction of tiles on which "
          r"the method strictly beats bicubic. The last two columns report how far the "
          r"method output departs from bicubic (mean per-tile RMSE and SAM between "
          r"method and bicubic outputs).}")
    print(r"  \label{tab:wald-gain}")
    print(r"  \resizebox{\textwidth}{!}{%")
    print(r"  \begin{tabular}{lccccccc}")
    print(r"    \toprule")
    print(r"    Method & $\Delta$PSNR$\uparrow$ & $\Delta$SAM$\uparrow$ & "
          r"$\Delta$RMSE$\uparrow$ & Win\% PSNR & Win\% SAM & "
          r"$d_{\mathrm{bic}}$ RMSE & $d_{\mathrm{bic}}$ SAM \\")
    print(r"    \midrule")
    for m in methods:
        cells = [
            m,
            fmt_pm(m, "dPSNR", 2),
            fmt_pm(m, "dSAM", 2),
            fmt_pm(m, "dRMSE", 4),
            fmt_pct(m, "win_psnr"),
            fmt_pct(m, "win_sam"),
            f"{gain_stats[m]['dist_rmse']:.4f}",
            f"{gain_stats[m]['dist_sam']:.2f}",
        ]
        print("    " + " & ".join(cells) + r" \\")
    print(r"    \bottomrule")
    print(r"  \end{tabular}%")
    print(r"  }")
    print(r"\end{table}")


def plot_distance_scatter(summary_df, dist_df, out_path):
    # per-method means on each axis
    fid = summary_df.groupby("method")[["PSNR", "SAM"]].mean()
    div = dist_df.groupby("method")[["dist_bic_RMSE", "dist_bic_SAM"]].mean()

    # bicubic reference: by definition distance-to-bicubic = 0
    bic_psnr = float(summary_df[summary_df["method"] == "Bicubic"]["PSNR"].mean())
    bic_sam = float(summary_df[summary_df["method"] == "Bicubic"]["SAM"].mean())

    fig, axes = plt.subplots(
        1, 2,
        figsize=(PANEL_CM * 2.2 * CM, PANEL_CM * CM),
    )

    panels = [
        ("PSNR", "dist_bic_RMSE", axes[0],
         r"PSNR $\uparrow$ (dB)", r"mean $\|x - \mathrm{bicubic}\|_{\mathrm{RMSE}}$",
         bic_psnr),
        ("SAM", "dist_bic_SAM", axes[1],
         r"SAM $\downarrow$ (deg)", r"mean SAM$(x,\,\mathrm{bicubic})$",
         bic_sam),
    ]

    for x_col, y_col, ax, xlabel, ylabel, bic_ref in panels:
        for m in METHOD_ORDER:
            if m == "Bicubic":
                continue  # distance-to-bicubic = 0, plotted as reference line
            if m not in div.index:
                continue
            x = float(fid.loc[m, x_col])
            y = float(div.loc[m, y_col])
            ax.scatter(x, y, s=45, color=METHOD_COLOR[m],
                       edgecolor="black", linewidth=0.4, zorder=3)
            ax.annotate(m, (x, y), xytext=(5, 3), textcoords="offset points",
                        fontsize=7, zorder=4)

        # reference: bicubic itself at y=0
        ax.axhline(0, color="#999999", linewidth=0.4, linestyle="--", zorder=1)
        ax.scatter(bic_ref, 0, marker="x", color="black", s=40, linewidth=1.0, zorder=3)
        ax.annotate("Bicubic", (bic_ref, 0), xytext=(5, 3),
                    textcoords="offset points", fontsize=7, zorder=4)

        ax.set_xlabel(xlabel)
        ax.set_ylabel(ylabel)
        for spine in ("top", "right"):
            ax.spines[spine].set_visible(False)

    fig.tight_layout(pad=0.4)
    fig.savefig(out_path.with_suffix(".pdf"), dpi=DPI, bbox_inches="tight")
    fig.savefig(out_path.with_suffix(".png"), dpi=DPI, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out_path.with_suffix('.pdf').name}")
    print(f"  saved {out_path.with_suffix('.png').name}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--eval-dir", type=Path, default=DRIVE_ROOT / "wald_eval")
    ap.add_argument("--dataset", default="EMIT32_WALD")
    ap.add_argument("--scale", default="6")
    ap.add_argument("--out-dir", type=Path, default=DRIVE_ROOT / "figures")
    args = ap.parse_args()

    stem = f"{args.dataset}_{args.scale}"
    summary_csv = args.eval_dir / f"{stem}_summary.csv"
    dist_csv = args.eval_dir / f"{stem}_bicubic_distance.csv"

    summary_df = pd.read_csv(summary_csv)
    summary_df = summary_df[~summary_df["method"].isin(EXCLUDE)].copy()

    dist_df = pd.read_csv(dist_csv)
    dist_df = dist_df[~dist_df["method"].isin(EXCLUDE)].copy()

    stats = compute_stats(summary_df)
    best = best_per_metric(stats)

    print_latex_table(stats, best)

    gain_stats = compute_gain_stats(dist_df)
    print_gain_table(gain_stats)

    args.out_dir.mkdir(parents=True, exist_ok=True)
    plot_distance_scatter(summary_df, dist_df,
                          args.out_dir / "fig_wald_distance_to_bicubic")


if __name__ == "__main__":
    main()
