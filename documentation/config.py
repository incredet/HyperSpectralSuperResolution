"""
documentation/config.py
-----------------------
Centralised configuration for the EMIT–Sentinel-2 super-resolution pipeline.

All tuneable parameters live in a single frozen dataclass that can be
serialised to JSON/YAML and reloaded for reproducible runs.

Usage::

    from documentation.config import PipelineConfig

    config = PipelineConfig(aoi_lat=32.75, aoi_lon=-114.96)
    config.to_json("run_config.json")

    # later …
    config = PipelineConfig.from_json("run_config.json")
"""

from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass, field, asdict, fields
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Optional


@dataclass(frozen=True)
class PipelineConfig:
    """Immutable container for every pipeline parameter.

    Grouped by functional category.  Frozen so that a config object
    cannot be accidentally mutated after creation.
    """

    # ── AOI & search ─────────────────────────────────────────────────────
    aoi_lat: float = 32.75
    aoi_lon: float = -114.96
    aoi_buffer_m: float = 5_000.0
    s2_api: str = "https://earth-search.aws.element84.com/v1"
    s2_collection: str = "sentinel-2-l2a"

    # ── Search temporal bounds (ISO 8601 strings, e.g. "2023-01-01") ─────
    # When set, EMIT/S2 searches are bounded to this window, making
    # results immune to newly-ingested imagery.  If None, defaults to
    # "all available" (non-reproducible — a warning is printed).
    search_start: Optional[str] = None
    search_end: Optional[str] = None

    # ── Pairing ──────────────────────────────────────────────────────────
    pairing_days: float = 3.0
    pairing_window_days: int = 14
    emit_top_n_per_day: int = 5
    sun_deg_max: float = 5.0
    max_tod_diff_h: float = 1.5
    pairing_tile_m: float = 6_000.0
    top_k_prefilter: int = 50

    # ── Quality filters ──────────────────────────────────────────────────
    max_s2_cloud_frac: Optional[float] = 0.70
    max_emit_cloud_pct: Optional[float] = None
    max_black_frac: float = 0.0

    # ── AROSICS co-registration ──────────────────────────────────────────
    coreg_grid_res: float = 600.0
    coreg_max_points: int = 500
    coreg_window_size: tuple[int, int] = (512, 512)
    coreg_max_shift: int = 50
    coreg_min_reliability: int = 60
    coreg_tieP_filter_level: int = 3
    coreg_nodata_emit: float = 65535.0
    coreg_nodata_s2: Optional[float] = 0.0
    coreg_out_gsd: tuple[float, float] = (10.0, 10.0)
    coreg_resamp_calc: str = "cubic"
    coreg_resamp_deshift: str = "cubic"
    coreg_prefer_bands: tuple[str, ...] = ("B03", "B04", "B08")
    coreg_cliptoextent: bool = False

    # ── Tiling ───────────────────────────────────────────────────────────
    emit_tile_size: int = 120
    tile_scale: int = 6

    # ── Spectral fitting ─────────────────────────────────────────────────
    spectral_degree: int = 2
    spectral_alpha: float = 1.0
    spectral_max_cv: float = 0.25
    spectral_emit_upsample_order: int = 1
    spectral_num_keep_bands: int = 32

    # ── Encoding / output ────────────────────────────────────────────────
    reflectance_scale: float = 10_000.0
    nodata_uint16: int = 65535

    # ── DEM ──────────────────────────────────────────────────────────────
    apply_dem_correction: bool = True

    # ── Paths ────────────────────────────────────────────────────────────
    local_root: str = "pairs_output"
    drive_root: Optional[str] = None

    # ── Helpers ──────────────────────────────────────────────────────────

    def to_dict(self) -> dict[str, Any]:
        """Serialise to a JSON-safe dictionary."""
        d: dict[str, Any] = {}
        for f in fields(self):
            val = getattr(self, f.name)
            if isinstance(val, Path):
                val = str(val)
            elif isinstance(val, tuple):
                val = list(val)
            d[f.name] = val
        return d

    def to_json(self, path: str | Path) -> Path:
        """Persist configuration to a JSON file."""
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(self.to_dict(), indent=2))
        return path

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "PipelineConfig":
        """Reconstruct from a dictionary (e.g. loaded from JSON)."""
        d = d.copy()
        # Convert lists back to tuples for tuple-typed fields
        _tuple_fields = {
            f.name for f in fields(cls)
            if "tuple" in str(f.type).lower()
        }
        for key in _tuple_fields:
            if key in d and isinstance(d[key], list):
                d[key] = tuple(d[key])
        # Filter to known fields only
        known = {f.name for f in fields(cls)}
        return cls(**{k: v for k, v in d.items() if k in known})

    @classmethod
    def from_json(cls, path: str | Path) -> "PipelineConfig":
        """Load configuration from a JSON file."""
        with open(path) as f:
            return cls.from_dict(json.load(f))

    # ── Convenience extractors ───────────────────────────────────────────

    @property
    def tile_params(self) -> dict[str, Any]:
        """Dict suitable for ``find_valid_paired_tiles()``."""
        return {
            "emit_tile_size": self.emit_tile_size,
            "scale": self.tile_scale,
            "max_black_frac": self.max_black_frac,
        }

    @property
    def spectral_params(self) -> dict[str, Any]:
        """Dict suitable for ``fit_tile()`` / ``fit_tiles_batch()``."""
        return {
            "scale": self.tile_scale,
            "degree": self.spectral_degree,
            "alpha": self.spectral_alpha,
            "max_cv": self.spectral_max_cv,
            "emit_upsample_order": self.spectral_emit_upsample_order,
        }

    @property
    def run_fingerprint(self) -> str:
        """Short deterministic hash of the config for quick comparison.

        Two configs with the same parameters (excluding ``local_root``
        and ``drive_root``) produce the same fingerprint.
        """
        d = self.to_dict()
        # Exclude paths — they don't affect scientific results
        for k in ("local_root", "drive_root"):
            d.pop(k, None)
        blob = json.dumps(d, sort_keys=True).encode()
        return hashlib.sha256(blob).hexdigest()[:12]

    @property
    def search_bounds(self) -> tuple[Optional[datetime], Optional[datetime]]:
        """Parse search_start / search_end into timezone-aware datetimes.

        Returns (None, None) if not set.
        """
        import warnings
        from datetime import datetime as _dt

        def _parse(s: Optional[str]) -> Optional[datetime]:
            if s is None:
                return None
            s = s.strip()
            for fmt in ("%Y-%m-%d", "%Y-%m-%dT%H:%M:%S", "%Y-%m-%dT%H:%M:%SZ"):
                try:
                    dt = _dt.strptime(s, fmt)
                    return dt.replace(tzinfo=timezone.utc)
                except ValueError:
                    continue
            raise ValueError(f"Cannot parse date string: {s!r}")

        start = _parse(self.search_start)
        end = _parse(self.search_end)

        if start is None and end is None:
            warnings.warn(
                "search_start and search_end are both None — EMIT search "
                "will return ALL available granules. Set these for "
                "reproducible runs.",
                stacklevel=2,
            )

        return start, end
