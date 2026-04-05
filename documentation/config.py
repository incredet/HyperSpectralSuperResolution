from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass, fields
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Optional


@dataclass(frozen=True)
class PipelineConfig:
    aoi_lat: float
    aoi_lon: float
    aoi_buffer_m: float
    s2_api: str
    s2_collection: str

    search_start: Optional[str]
    search_end: Optional[str]

    pairing_days: float
    pairing_window_days: int
    emit_top_n_per_day: int
    sun_deg_max: float
    max_tod_diff_h: float
    pairing_tile_m: float
    top_k_prefilter: int

    max_s2_cloud_frac: Optional[float]
    max_emit_cloud_pct: Optional[float]
    max_black_frac: float

    coreg_grid_res: float
    coreg_max_points: int
    coreg_window_size: tuple[int, int]
    coreg_max_shift: int
    coreg_min_reliability: int
    coreg_tieP_filter_level: int
    coreg_nodata_emit: float
    coreg_nodata_s2: Optional[float]
    coreg_out_gsd: tuple[float, float]
    coreg_resamp_calc: str
    coreg_resamp_deshift: str
    coreg_prefer_bands: tuple[str, ...]
    coreg_cliptoextent: bool

    emit_tile_size: int
    tile_scale: int
    max_tile_cloud_frac: float

    qc_min_r2: float
    qc_max_emit_cloud_frac: float
    qc_min_r2_reverse: float
    qc_max_s2_bright_frac: float

    emit_target_wavelengths_nm: tuple[float, ...]
    spectral_num_keep_bands: int

    spectral_degree: int
    spectral_alpha: float
    spectral_max_cv: float
    spectral_emit_upsample_order: int

    reflectance_scale: float
    nodata_uint16: int

    apply_dem_correction: bool

    local_root: str
    drive_root: Optional[str]

    def to_dict(self) -> dict[str, Any]:
        d = {}
        for f in fields(self):
            val = getattr(self, f.name)
            if isinstance(val, Path):
                val = str(val)
            elif isinstance(val, tuple):
                val = list(val)
            d[f.name] = val
        return d

    def to_json(self, path: str | Path) -> Path:
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(self.to_dict(), indent=2))
        return path

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "PipelineConfig":
        d = d.copy()

        # Backwards-compat defaults for keys added after initial config
        d.setdefault("qc_min_r2", 0.0)
        d.setdefault("qc_max_emit_cloud_frac", 0.05)
        d.setdefault("qc_min_r2_reverse", 0.70)
        d.setdefault("qc_max_s2_bright_frac", 1.0)

        _tuple_fields = {
            f.name for f in fields(cls)
            if "tuple" in str(f.type).lower()
        }
        for key in _tuple_fields:
            if key in d and isinstance(d[key], list):
                d[key] = tuple(d[key])

        known = {f.name for f in fields(cls)}
        missing = known - set(d.keys())
        if missing:
            raise ValueError(
                f"Missing required config keys: {sorted(missing)}.  "
                f"Add them to pipeline_config.yaml."
            )

        return cls(**{k: v for k, v in d.items() if k in known})

    @classmethod
    def from_json(cls, path: str | Path) -> "PipelineConfig":
        with open(path) as f:
            return cls.from_dict(json.load(f))

    @classmethod
    def from_yaml(
        cls,
        path: str | Path,
        *,
        overrides: dict[str, Any] | None = None,
    ) -> "PipelineConfig":
        import yaml

        path = Path(path)
        if not path.exists():
            raise FileNotFoundError(
                f"Config file not found: {path}.  "
                f"Seed it from the repo's pipeline_config.yaml."
            )

        with open(path) as f:
            d = yaml.safe_load(f) or {}

        if overrides:
            d.update(overrides)

        return cls.from_dict(d)

    @property
    def tile_params(self) -> dict[str, Any]:
        return {
            "emit_tile_size": self.emit_tile_size,
            "scale": self.tile_scale,
            "max_black_frac": self.max_black_frac,
            "max_cloud_frac": self.max_tile_cloud_frac,
        }

    @property
    def qc_params(self) -> dict[str, Any]:
        return {
            "min_r2": self.qc_min_r2,
            "max_emit_cloud_frac": self.qc_max_emit_cloud_frac,
            "min_r2_reverse": self.qc_min_r2_reverse,
            "max_s2_bright_frac": self.qc_max_s2_bright_frac,
        }

    @property
    def spectral_params(self) -> dict[str, Any]:
        return {
            "scale": self.tile_scale,
            "degree": self.spectral_degree,
            "alpha": self.spectral_alpha,
            "max_cv": self.spectral_max_cv,
            "emit_upsample_order": self.spectral_emit_upsample_order,
        }

    @property
    def run_fingerprint(self) -> str:
        d = self.to_dict()
        for k in ("local_root", "drive_root"):
            d.pop(k, None)
        blob = json.dumps(d, sort_keys=True).encode()
        return hashlib.sha256(blob).hexdigest()[:12]

    @property
    def search_bounds(self) -> tuple[Optional[datetime], Optional[datetime]]:
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
