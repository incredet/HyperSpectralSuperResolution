"""
documentation/report_builder.py
-------------------------------
Rich run-report generation with embedded graphics, R² aggregation,
and export to both markdown and self-contained HTML.

Public API
----------
ReportBuilder     — extends ReportWriter with image/table/stats support
R2Aggregator      — collects per-tile R² stats and computes summaries
plot_r2_histogram — histogram of per-tile mean R²
plot_r2_per_band  — box-plot of R² by wavelength/band
plot_side_by_side_rgb — save S2 vs EMIT comparison to PNG
plot_example_tiles    — generate example tile-pair images
"""

from __future__ import annotations

import base64
import textwrap
from dataclasses import dataclass, field
from pathlib import Path
from typing import TYPE_CHECKING, Any, Sequence

import numpy as np
import matplotlib

matplotlib.use("Agg")          # non-interactive backend for file output
import matplotlib.pyplot as plt

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from documentation.pairs_artifacts import ReportWriter

if TYPE_CHECKING:
    from documentation.config import PipelineConfig


# ---------------------------------------------------------------------------
# R² Aggregation
# ---------------------------------------------------------------------------


@dataclass
class R2Aggregator:
    """Collect R² statistics from all tiles and compute scene-level summaries."""

    tile_indices: list[int] = field(default_factory=list)
    r2_per_band: list[np.ndarray] = field(default_factory=list)
    r2_mean: list[float] = field(default_factory=list)
    wavelengths_nm: np.ndarray | None = None

    # ── mutation helpers ──────────────────────────────────────────────────

    def add(self, idx: int, r2_bands: np.ndarray, r2_mean_val: float) -> None:
        """Append one tile's results."""
        self.tile_indices.append(idx)
        self.r2_per_band.append(np.asarray(r2_bands, dtype=np.float64))
        self.r2_mean.append(float(r2_mean_val))

    # ── aggregation ──────────────────────────────────────────────────────

    def summary(self) -> dict[str, Any]:
        """Compute scene-level R² statistics.

        Returns a dict with keys:
        ``n_tiles``, ``n_bands``,
        ``global_mean``, ``global_median``, ``global_min``, ``global_max``,
        ``global_std``,
        ``per_band_mean``, ``per_band_std``.
        """
        if not self.r2_mean:
            return {"n_tiles": 0, "n_bands": 0}

        means = np.array(self.r2_mean)
        stacked = np.stack(self.r2_per_band)  # (n_tiles, n_bands)

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
        """Return a markdown table of per-tile R² statistics."""
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


# ---------------------------------------------------------------------------
# Plotting
# ---------------------------------------------------------------------------


def plot_r2_histogram(
    r2_means: Sequence[float],
    out_path: str | Path,
    *,
    title: str = "R² distribution across tiles",
) -> Path:
    """Histogram of per-tile mean R² with summary vertical lines."""
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
    """Box-plot of R² across tiles for each spectral band."""
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    stacked = np.stack(r2_per_band)  # (n_tiles, n_bands)
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
    """Save a side-by-side S2 / EMIT true-colour comparison to *out_path*.

    Delegates to ``viz.plots`` for the actual rendering.
    """
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


def plot_example_tiles(
    tile_records: list,
    out_dir: str | Path,
    *,
    n: int = 3,
    wl_nm: np.ndarray | None = None,
) -> list[Path]:
    """Generate side-by-side RGB plots for *n* evenly-spaced tiles.

    Delegates to ``tiles_helpers.utils.plot_tile_pair_simple``.
    """
    from tiles_helpers.utils import plot_tile_pair_simple

    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    if not tile_records:
        return []

    # Pick evenly spaced indices: first, middle(s), last
    indices = np.round(np.linspace(0, len(tile_records) - 1, n)).astype(int)
    indices = sorted(set(indices))

    paths: list[Path] = []
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


# ---------------------------------------------------------------------------
# HTML helpers
# ---------------------------------------------------------------------------


def _image_to_base64(path: Path) -> str:
    """Read an image file and return a data-URI string."""
    suffix = path.suffix.lower().lstrip(".")
    mime = {"png": "image/png", "jpg": "image/jpeg", "jpeg": "image/jpeg",
            "svg": "image/svg+xml"}.get(suffix, "image/png")
    data = path.read_bytes()
    b64 = base64.b64encode(data).decode("ascii")
    return f"data:{mime};base64,{b64}"


_HTML_TEMPLATE = textwrap.dedent("""\
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <title>{title}</title>
    <style>
      body {{ font-family: -apple-system, BlinkMacSystemFont, "Segoe UI",
             Roboto, Helvetica, sans-serif; max-width: 960px; margin: 2em auto;
             line-height: 1.6; color: #222; }}
      h1 {{ border-bottom: 2px solid #333; padding-bottom: .3em; }}
      h2 {{ border-bottom: 1px solid #ccc; padding-bottom: .2em; margin-top: 2em; }}
      table {{ border-collapse: collapse; margin: 1em 0; }}
      th, td {{ border: 1px solid #ccc; padding: .35em .6em; text-align: left; }}
      th {{ background: #f5f5f5; }}
      img {{ max-width: 100%; height: auto; }}
      .img-row {{ display: flex; gap: 1em; flex-wrap: wrap; }}
      .img-row img {{ flex: 1 1 45%; min-width: 300px; }}
      pre {{ background: #f8f8f8; padding: 1em; overflow-x: auto; }}
      code {{ background: #f0f0f0; padding: .1em .3em; border-radius: 3px; }}
    </style>
    </head>
    <body>
    {body}
    </body>
    </html>
""")


# ---------------------------------------------------------------------------
# ReportBuilder
# ---------------------------------------------------------------------------


class ReportBuilder(ReportWriter):
    """Extended report writer producing both markdown and HTML outputs.

    Usage::

        report = ReportBuilder(md_path, html_path=html_path)
        report.start(title="Run XYZ")
        report.add_config_table(config)
        report.add_image("Comparison", some_png)
        report.add_r2_section(r2_aggregator)
        report.finalise_html()
    """

    def __init__(
        self,
        path: str | Path,
        *,
        html_path: str | Path | None = None,
        mode: str = "overwrite",
    ):
        super().__init__(path, mode=mode)
        self.html_path = Path(html_path) if html_path else None
        self._images: list[tuple[str, Path]] = []

    # ── config table ─────────────────────────────────────────────────────

    def add_config_table(self, config: "PipelineConfig") -> None:
        """Write the full pipeline configuration as a markdown table."""
        d = config.to_dict()
        lines = ["| Parameter | Value |", "|-----------:|:------|"]
        for k, v in d.items():
            lines.append(f"| `{k}` | `{v}` |")
        self.raw(f"\n## Pipeline Configuration\n\n" + "\n".join(lines) + "\n")

    # ── images ───────────────────────────────────────────────────────────

    def add_image(
        self, heading: str, path: str | Path, caption: str = ""
    ) -> None:
        """Append a single image to the report."""
        path = Path(path)
        self._images.append((heading, path))
        alt = caption or heading
        # Use relative path from the report's directory
        try:
            rel = path.relative_to(self.path.parent)
        except ValueError:
            rel = path
        self.raw(f"\n## {heading}\n\n![{alt}]({rel})\n")

    def add_image_row(
        self, heading: str, paths: list[Path], captions: list[str] | None = None
    ) -> None:
        """Append multiple images side-by-side."""
        if captions is None:
            captions = [f"Image {i+1}" for i in range(len(paths))]
        self.raw(f"\n## {heading}\n\n")
        # Markdown table for side-by-side display
        header = " | ".join(captions)
        sep = " | ".join(["---"] * len(paths))
        cells = []
        for p, c in zip(paths, captions):
            p = Path(p)
            self._images.append((c, p))
            try:
                rel = p.relative_to(self.path.parent)
            except ValueError:
                rel = p
            cells.append(f"![{c}]({rel})")
        row = " | ".join(cells)
        self.raw(f"| {header} |\n| {sep} |\n| {row} |\n")

    # ── tables ───────────────────────────────────────────────────────────

    def add_table(self, heading: str, markdown_table: str) -> None:
        """Append a pre-formatted markdown table."""
        self.raw(f"\n## {heading}\n\n{markdown_table}\n")

    # ── R² section ───────────────────────────────────────────────────────

    def add_r2_section(
        self,
        agg: R2Aggregator,
        *,
        histogram_path: Path | None = None,
        per_band_path: Path | None = None,
    ) -> None:
        """Write the full R² quality section to the report."""
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

    # ── HTML generation ──────────────────────────────────────────────────

    def finalise_html(self, title: str = "Run Report") -> Path | None:
        """Generate a self-contained HTML report with base64-embedded images.

        Returns the HTML path, or None if no html_path was configured.
        """
        if self.html_path is None:
            return None

        md_text = self.path.read_text(encoding="utf-8")

        # Replace markdown image references with base64 data URIs
        import re
        def _replace_img(m: re.Match) -> str:
            alt = m.group(1)
            rel_path = m.group(2)
            # Try resolving relative to the markdown file's directory
            img_path = self.path.parent / rel_path
            if not img_path.exists():
                img_path = Path(rel_path)
            if img_path.exists():
                data_uri = _image_to_base64(img_path)
                return f'<img src="{data_uri}" alt="{alt}" />'
            return m.group(0)  # keep original if not found

        html_body = re.sub(r"!\[([^\]]*)\]\(([^)]+)\)", _replace_img, md_text)

        # Convert basic markdown to HTML
        html_body = _markdown_to_html(html_body)

        html = _HTML_TEMPLATE.format(title=title, body=html_body)

        self.html_path.parent.mkdir(parents=True, exist_ok=True)
        self.html_path.write_text(html, encoding="utf-8")
        return self.html_path


def _markdown_to_html(md: str) -> str:
    """Minimal markdown → HTML conversion (headings, lists, tables, images).

    This is intentionally simple — no external dependency required.
    """
    import re
    lines = md.split("\n")
    html_lines: list[str] = []
    in_table = False
    in_list = False

    for line in lines:
        stripped = line.strip()

        # Already-converted <img> tags — pass through
        if stripped.startswith("<img "):
            if in_list:
                html_lines.append("</ul>")
                in_list = False
            html_lines.append(stripped)
            continue

        # Headings
        hm = re.match(r"^(#{1,6})\s+(.*)", stripped)
        if hm:
            if in_list:
                html_lines.append("</ul>")
                in_list = False
            if in_table:
                html_lines.append("</table>")
                in_table = False
            level = len(hm.group(1))
            html_lines.append(f"<h{level}>{hm.group(2)}</h{level}>")
            continue

        # Table rows
        if stripped.startswith("|") and stripped.endswith("|"):
            cells = [c.strip() for c in stripped.split("|")[1:-1]]
            # Skip separator rows
            if all(set(c) <= {"-", ":", " "} for c in cells):
                continue
            if not in_table:
                html_lines.append("<table>")
                in_table = True
                tag = "th"
            else:
                tag = "td"
            row = "".join(f"<{tag}>{c}</{tag}>" for c in cells)
            html_lines.append(f"<tr>{row}</tr>")
            continue

        if in_table and not stripped.startswith("|"):
            html_lines.append("</table>")
            in_table = False

        # Bullet lists
        if stripped.startswith("- "):
            if not in_list:
                html_lines.append("<ul>")
                in_list = True
            html_lines.append(f"<li>{stripped[2:]}</li>")
            continue

        if in_list and not stripped.startswith("- "):
            html_lines.append("</ul>")
            in_list = False

        # Bold / code
        line = re.sub(r"\*\*(.+?)\*\*", r"<strong>\1</strong>", line)
        line = re.sub(r"`([^`]+)`", r"<code>\1</code>", line)

        # Paragraph
        if stripped:
            html_lines.append(f"<p>{line}</p>")
        else:
            html_lines.append("")

    if in_list:
        html_lines.append("</ul>")
    if in_table:
        html_lines.append("</table>")

    return "\n".join(html_lines)
