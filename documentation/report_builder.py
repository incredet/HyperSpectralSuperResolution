"""Markdown reporting and R² aggregation for pipeline runs."""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path
from typing import TYPE_CHECKING, Any, Sequence

import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from documentation.pairs_artifacts import ensure_dir, utc_now_iso

if TYPE_CHECKING:
    from documentation.config import PipelineConfig


@dataclass
class R2Aggregator:
    tile_indices: list = field(default_factory=list)
    r2_per_band: list = field(default_factory=list)
    r2_mean: list = field(default_factory=list)
    wavelengths_nm: np.ndarray | None = None

    def add(self, idx: int, r2_bands: np.ndarray, r2_mean_val: float) -> None:
        self.tile_indices.append(idx)
        self.r2_per_band.append(np.asarray(r2_bands, dtype=np.float64))
        self.r2_mean.append(float(r2_mean_val))

    def summary(self) -> dict[str, Any]:
        if not self.r2_mean:
            return {"n_tiles": 0, "n_bands": 0}

        means = np.array(self.r2_mean)
        stacked = np.stack(self.r2_per_band)

        return {
            "n_tiles": len(self.r2_mean),
            "n_bands": stacked.shape[1],
            "global_mean": float(np.mean(means)),
            "global_median": float(np.median(means)),
            "global_min": float(np.min(means)),
            "global_max": float(np.max(means)),
            "global_std": float(np.std(means)),
            "per_band_mean": np.mean(stacked, axis=0).tolist(),
            "per_band_std": np.std(stacked, axis=0).tolist(),
        }

    def to_markdown_table(self) -> str:
        if not self.r2_mean:
            return "_No tiles fitted._\n"

        lines = ["| Tile | Mean R² | Min R² | Max R² |",
                 "|-----:|--------:|-------:|-------:|"]
        for idx, bands in zip(self.tile_indices, self.r2_per_band):
            lines.append(
                f"| {idx:3d} | {np.mean(bands):.4f} "
                f"| {np.min(bands):.4f} | {np.max(bands):.4f} |"
            )
        return "\n".join(lines) + "\n"


def plot_r2_histogram(
    r2_means: Sequence[float],
    out_path: str | Path,
    *,
    title: str = "R² distribution across tiles",
) -> Path:
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    vals = np.asarray(r2_means)
    fig, ax = plt.subplots(figsize=(7, 4))
    ax.hist(vals, bins=min(20, max(5, len(vals) // 2)), edgecolor="white",
            color="#4C72B0", alpha=0.85)

    mean_v = float(np.mean(vals))
    med_v = float(np.median(vals))

    ax.axvline(mean_v, color="crimson", ls="--", lw=1.5,
               label=f"mean = {mean_v:.4f}")
    ax.axvline(med_v, color="orange", ls="-.", lw=1.5,
               label=f"median = {med_v:.4f}")

    ax.set_xlabel("Mean R² per tile")
    ax.set_ylabel("Count")
    ax.set_title(title)
    ax.legend(fontsize=9)
    fig.tight_layout()
    fig.savefig(out_path, dpi=150)
    plt.close(fig)
    return out_path


def plot_r2_per_band(
    r2_per_band: Sequence[np.ndarray],
    wavelengths_nm: np.ndarray | None,
    out_path: str | Path,
    *,
    title: str = "R² by spectral band",
) -> Path:
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    stacked = np.stack(r2_per_band)
    n_bands = stacked.shape[1]

    fig, ax = plt.subplots(figsize=(max(8, n_bands * 0.35), 5))
    bp = ax.boxplot(
        [stacked[:, b] for b in range(n_bands)],
        patch_artist=True,
        widths=0.6,
        showfliers=False,
    )
    for patch in bp["boxes"]:
        patch.set_facecolor("#4C72B0")
        patch.set_alpha(0.6)

    if wavelengths_nm is not None and len(wavelengths_nm) == n_bands:
        labels = [f"{w:.0f}" for w in wavelengths_nm]
        ax.set_xticklabels(labels, rotation=60, ha="right", fontsize=7)
        ax.set_xlabel("Wavelength (nm)")
    else:
        ax.set_xlabel("Band index")

    ax.set_ylabel("R²")
    ax.set_title(title)
    ax.set_ylim(bottom=max(0, ax.get_ylim()[0] - 0.05))
    fig.tight_layout()
    fig.savefig(out_path, dpi=150)
    plt.close(fig)
    return out_path


def plot_side_by_side_rgb(
    s2_path: str | Path,
    emit_path: str | Path,
    out_path: str | Path,
    *,
    wl_nm: np.ndarray | None = None,
    title: str = "",
    gamma: float = 1 / 2.2,
) -> Path:
    """Save a side-by-side S2 / EMIT true-colour comparison."""
    from viz.plots import plot_s2_truecolor_from_stack, show_emit_rgb_from_envi

    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))
    plot_s2_truecolor_from_stack(str(s2_path), ax=ax1)

    emit_p = Path(emit_path)
    show_emit_rgb_from_envi(
        str(emit_p.parent),
        pattern=str(emit_p.name),
        wavelengths_nm=wl_nm,
        ax=ax2,
        gamma=gamma,
    )

    if title:
        fig.suptitle(title, fontsize=12, y=1.02)
    fig.tight_layout()
    fig.savefig(out_path, dpi=150, bbox_inches="tight")
    plt.close(fig)
    return out_path


def plot_realignment_summary(
    tile_records: list,
    out_path: str | Path,
    *,
    title: str = "Per-tile realignment shifts",
) -> Path | None:
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    dys, dxs = [], []
    rejected = 0
    for rec in tile_records:
        rs = getattr(rec, "realign_stats", None)
        if rs is None:
            continue
        if not rs.get("applied", False):
            rejected += 1
            continue
        dy, dx = rs["shift_emit_px"]
        dys.append(dy)
        dxs.append(dx)

    if not dys:
        return None

    dys_arr = np.array(dys)
    dxs_arr = np.array(dxs)
    mags = np.sqrt(dys_arr ** 2 + dxs_arr ** 2)

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

    sc = ax1.scatter(dxs_arr, dys_arr, c=mags, cmap="viridis",
                     s=30, alpha=0.7, edgecolors="white", linewidth=0.3)
    ax1.axhline(0, color="grey", ls="--", lw=0.5)
    ax1.axvline(0, color="grey", ls="--", lw=0.5)
    ax1.set_xlabel("dx (EMIT pixels)")
    ax1.set_ylabel("dy (EMIT pixels)")
    ax1.set_title("Shift direction per tile")
    ax1.set_aspect("equal")
    cbar = fig.colorbar(sc, ax=ax1, shrink=0.8)
    cbar.set_label("magnitude (EMIT px)")

    mean_dy = float(np.mean(dys_arr))
    mean_dx = float(np.mean(dxs_arr))
    ax1.plot(mean_dx, mean_dy, "rx", markersize=10, markeredgewidth=2,
             label=f"mean ({mean_dx:.3f}, {mean_dy:.3f})")
    ax1.legend(fontsize=8)

    ax2.hist(mags, bins=min(20, max(5, len(mags) // 2)),
             edgecolor="white", color="#4C72B0", alpha=0.85)
    ax2.axvline(float(np.mean(mags)), color="crimson", ls="--", lw=1.5,
                label=f"mean = {float(np.mean(mags)):.4f}")
    ax2.axvline(float(np.median(mags)), color="orange", ls="-.", lw=1.5,
                label=f"median = {float(np.median(mags)):.4f}")
    ax2.set_xlabel("Shift magnitude (EMIT pixels)")
    ax2.set_ylabel("Count")
    ax2.set_title("Shift magnitude distribution")
    ax2.legend(fontsize=9)

    fig.suptitle(title, fontsize=12, y=1.02)
    fig.tight_layout()
    fig.savefig(out_path, dpi=150, bbox_inches="tight")
    plt.close(fig)
    return out_path


def plot_example_tiles(
    tile_records: list,
    out_dir: str | Path,
    *,
    n: int = 3,
    wl_nm: np.ndarray | None = None,
) -> list[Path]:
    from tiles_helpers.utils import plot_tile_pair_simple

    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    if not tile_records:
        return []

    indices = np.round(np.linspace(0, len(tile_records) - 1, n)).astype(int)
    indices = sorted(set(indices))

    paths = []
    for i in indices:
        rec = tile_records[i]
        png = out_dir / f"example_tile_{rec.idx:03d}.png"
        plot_tile_pair_simple(
            emit_tile_path=rec.emit_tif,
            s2_tile_path=rec.s2_tif,
            title_suffix=f"{rec.idx:03d}",
            save_path=str(png),
            show=False,
            emit_wavelengths_nm=wl_nm,
        )
        paths.append(png)
    return paths


class ReportBuilder:

    def __init__(self, path: str | Path, *, html_path=None, mode: str = "overwrite"):
        self.path = Path(path)
        ensure_dir(self.path.parent)
        self.mode = mode
        self._started = False

    def start(self, *, title: str = "EMIT and Sentinel-2 pairs report"):
        if self._started:
            return self
        if self.mode.lower() in {"overwrite", "w", "write"} or not self.path.exists():
            self.path.write_text(f"# {title}\n\n- Generated: {utc_now_iso()}\n")
        self._started = True
        return self

    def section(self, heading: str, lines) -> None:
        if not self._started:
            self.start()
        with self.path.open("a", encoding="utf-8") as f:
            f.write(f"\n## {heading}\n")
            for ln in lines:
                if ln is not None:
                    f.write(f"- {ln}\n")

    def raw(self, text: str) -> None:
        if not self._started:
            self.start()
        with self.path.open("a", encoding="utf-8") as f:
            f.write(text)

    def add_config_table(self, config: "PipelineConfig") -> None:
        d = config.to_dict()
        lines = ["| Parameter | Value |", "|-----------:|:------|"]
        for k, v in d.items():
            lines.append(f"| `{k}` | `{v}` |")
        self.raw(f"\n## Pipeline Configuration\n\n" + "\n".join(lines) + "\n")

    def add_image(self, heading: str, path: str | Path, caption: str = "") -> None:
        path = Path(path)
        alt = caption or heading
        try:
            rel = path.relative_to(self.path.parent)
        except ValueError:
            rel = path
        self.raw(f"\n## {heading}\n\n![{alt}]({rel})\n")

    def add_table(self, heading: str, markdown_table: str) -> None:
        self.raw(f"\n## {heading}\n\n{markdown_table}\n")

    def add_realignment_section(self, tile_records: list, *, plot_path=None) -> None:
        applied, rejected, total = 0, 0, 0
        dys, dxs = [], []
        for rec in tile_records:
            rs = getattr(rec, "realign_stats", None)
            if rs is None:
                continue
            total += 1
            if rs.get("applied", False):
                applied += 1
                dy, dx = rs["shift_emit_px"]
                dys.append(dy)
                dxs.append(dx)
            else:
                rejected += 1

        if total == 0:
            self.section("Per-Tile Realignment", ["Realignment was not enabled."])
            return

        lines = [
            f"Tiles processed: {total}",
            f"Shifts applied: {applied}",
            f"Shifts rejected (exceeded threshold): {rejected}",
        ]
        if dys:
            mags = [np.sqrt(dy**2 + dx**2) for dy, dx in zip(dys, dxs)]
            lines += [
                f"Mean shift: dy={np.mean(dys):.4f}, dx={np.mean(dxs):.4f} EMIT px",
                f"Mean magnitude: {np.mean(mags):.4f} EMIT px",
                f"Max magnitude: {np.max(mags):.4f} EMIT px",
            ]

        self.section("Per-Tile Realignment", lines)

        if plot_path and Path(plot_path).exists():
            self.add_image("Realignment Shift Distribution", plot_path)

    def add_r2_section(self, agg: R2Aggregator, *, histogram_path=None, per_band_path=None) -> None:
        s = agg.summary()
        if s["n_tiles"] == 0:
            self.section("Spectral Fitting — R² Quality", ["No tiles fitted."])
            return

        self.section("Spectral Fitting — R² Summary", [
            f"Tiles fitted: {s['n_tiles']}",
            f"Bands per tile: {s['n_bands']}",
            f"Global mean R²: {s['global_mean']:.4f}",
            f"Global median R²: {s['global_median']:.4f}",
            f"R² range: [{s['global_min']:.4f}, {s['global_max']:.4f}]",
            f"Std dev: {s['global_std']:.4f}",
        ])

        self.add_table("Per-Tile R² Statistics", agg.to_markdown_table())

        if histogram_path and histogram_path.exists():
            self.add_image("R² Distribution Across Tiles", histogram_path)
        if per_band_path and per_band_path.exists():
            self.add_image("R² by Spectral Band", per_band_path)
