"""
spectral/s2_to_emit.py
----------------------
Maps Sentinel-2 (10 bands, 10 m) into EMIT spectral space (32 subsampled
bands, 60 m) using one independent 2nd-order polynomial Ridge regression per
EMIT band.

Pipeline overview
-----------------
Training (per tile pair):
  1. Read S2  (10, 600, 600)  and EMIT-b32  (32, 100, 100).
  2. Block-average S2 to the EMIT 60 m grid:
       reshape (10, 600, 600) → (10, 100, 6, 100, 6) → mean over axes (2,4)
       → (10, 100, 100)
     *No EMIT upsampling, no interpolation artefacts.*
  3. Flatten to pixel vectors and mask nodata.
       X  (N, 10)   ← S2 band values at 60 m
       Y  (N, 32)   ← EMIT reflectances at 60 m
  4. Fit 32 independent pipelines:
       PolynomialFeatures(degree=2) → StandardScaler → Ridge
     10 input features + degree-2 expansion → 65 polynomial terms per model.

Inference:
  - Apply the 32 fitted models to S2 at its native 10 m resolution.
  - Output: (32, H_s2, W_s2) synthetic hyperspectral cube at 10 m.
  - EMIT spatial resolution is never changed.

Public API
----------
  S2ToEMITMatcher          dataclass holding 32 fitted pipelines
  fit_tile(...)            fit from a single tile pair
  fit_tiles_batch(...)     fit by pooling pixels from many tile pairs
  align_s2_to_emit_grid()  standalone block-average helper
  plot_r2_spectrum()       diagnostic: R² vs EMIT wavelength
  scatter_band()           diagnostic: predicted vs ground-truth for one band
"""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, Sequence

import joblib
import numpy as np
import rasterio
from rasterio.warp import reproject, Resampling
from sklearn.linear_model import Ridge
from sklearn.metrics import r2_score
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import PolynomialFeatures, StandardScaler


# ---------------------------------------------------------------------------
# Spatial alignment
# ---------------------------------------------------------------------------

def align_s2_to_emit_grid(
    s2_cube: np.ndarray,
    scale: int = 6,
    *,
    s2_profile: dict | None = None,
    emit_profile: dict | None = None,
) -> np.ndarray:
    """Downsample S2 to the EMIT 60 m grid by block-averaging.

    When tile dimensions are exact multiples of *scale* — guaranteed by the
    ``snap_bounds_to_grid(grid_m=60)`` step in the pairing pipeline — each
    EMIT pixel corresponds to exactly ``scale × scale`` S2 pixels.  We
    reshape and average those blocks directly, which is:

    * Radiometrically correct  (area-weighted, flux-preserving).
    * Interpolation-free       (no ringing, no edge artefacts).
    * Physically faithful      (mirrors how a 60 m sensor integrates
                                over its ground footprint).

    If the sizes are **not** exact multiples of *scale* (rare edge-case),
    we fall back to ``rasterio.reproject`` with ``Resampling.average``.
    This requires ``s2_profile`` and ``emit_profile`` to be provided.

    Args:
        s2_cube:      S2 data ``(B, H*scale, W*scale)``, float32.
        scale:        Spatial scale factor, default 6  (60 m / 10 m).
        s2_profile:   Rasterio profile of *s2_cube* (fallback only).
        emit_profile: Rasterio profile of the target EMIT grid (fallback only).

    Returns:
        ``(B, H, W)`` float32 array on the EMIT 60 m grid.
    """
    s2_cube = np.asarray(s2_cube, dtype=np.float32)
    B, H_s2, W_s2 = s2_cube.shape

    if H_s2 % scale == 0 and W_s2 % scale == 0:
        H, W = H_s2 // scale, W_s2 // scale
        # reshape into blocks and average: no interpolation, exact alignment
        return s2_cube.reshape(B, H, scale, W, scale).mean(axis=(2, 4))

    # ── fallback ─────────────────────────────────────────────────────────
    if s2_profile is None or emit_profile is None:
        raise ValueError(
            f"Tile sizes ({H_s2}, {W_s2}) are not exact multiples of "
            f"scale={scale}.  Provide s2_profile and emit_profile for the "
            "rasterio reproject fallback."
        )
    H_e = emit_profile["height"]
    W_e = emit_profile["width"]
    out = np.full((B, H_e, W_e), np.nan, dtype=np.float32)
    for b in range(B):
        reproject(
            source=s2_cube[b],
            destination=out[b],
            src_transform=s2_profile["transform"],
            src_crs=s2_profile["crs"],
            dst_transform=emit_profile["transform"],
            dst_crs=emit_profile["crs"],
            src_nodata=s2_profile.get("nodata"),
            dst_nodata=np.nan,
            resampling=Resampling.average,
        )
    return out


# ---------------------------------------------------------------------------
# Internal helpers
# ---------------------------------------------------------------------------

def _read_raster(path: str | Path) -> tuple[np.ndarray, dict, float | None]:
    """Read all bands as float32 ``(B, H, W)`` plus profile and nodata."""
    with rasterio.open(path) as ds:
        arr     = ds.read().astype(np.float32)
        profile = ds.profile.copy()
        nodata  = ds.nodata
    return arr, profile, nodata


def _build_valid_mask(
    s2_on_emit: np.ndarray,
    emit_b32: np.ndarray,
    s2_nodata: float | None,
    emit_nodata: float | None,
) -> np.ndarray:
    """Boolean flat mask ``(H*W,)`` — True where both sensors have valid data."""
    B_s2, H, W = s2_on_emit.shape
    N = H * W
    X = s2_on_emit.reshape(B_s2, N).T          # (N, B_s2)
    Y = emit_b32.reshape(emit_b32.shape[0], N).T  # (N, B_emit)

    valid = np.isfinite(X).all(axis=1) & np.isfinite(Y).all(axis=1)
    if s2_nodata is not None:
        valid &= ~np.any(np.isclose(X, s2_nodata), axis=1)
    if emit_nodata is not None:
        valid &= ~np.any(np.isclose(Y, emit_nodata), axis=1)
    # also reject all-zero S2 pixels (common nodata sentinel in STAC downloads)
    valid &= ~np.all(X == 0, axis=1)
    return valid


def _make_pipeline(degree: int = 2, alpha: float = 1.0) -> Pipeline:
    """Build a single PolynomialFeatures → StandardScaler → Ridge pipeline."""
    return Pipeline([
        ("poly",   PolynomialFeatures(degree=degree, include_bias=False)),
        ("scaler", StandardScaler()),
        ("ridge",  Ridge(alpha=alpha)),
    ])


def _read_emit_band_meta(
    emit_b32_path: str | Path,
) -> tuple[np.ndarray | None, np.ndarray | None]:
    """Read wavelength and band-index metadata stored in the b32 GeoTIFF.

    Returns ``(band_indices_0based, wavelengths_nm)``.
    Either may be ``None`` if the tags are absent.
    """
    with rasterio.open(emit_b32_path) as ds:
        n = ds.count
        wavelengths, indices = [], []
        for b in range(1, n + 1):
            bt = ds.tags(b)
            w  = bt.get("wavelength") or bt.get("WAVELENGTH")
            idx = bt.get("emit_band_index")
            wavelengths.append(float(w)   if w   is not None else None)
            indices.append(    int(idx)   if idx is not None else b - 1)

    wl_arr  = (np.array(wavelengths, dtype=np.float64)
               if all(w is not None for w in wavelengths) else None)
    idx_arr = np.array(indices, dtype=int)
    return idx_arr, wl_arr


def _write_geotiff(
    cube: np.ndarray,
    ref_profile: dict,
    out_path: str | Path,
    nodata: float,
    wavelengths_nm: np.ndarray | None,
    band_indices: np.ndarray | None,
) -> None:
    """Write a ``(B, H, W)`` float32 cube as a compressed GeoTIFF.

    Band descriptions and ``wavelength`` / ``emit_band_index`` tags are
    written if the corresponding arrays are provided.
    """
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    profile = ref_profile.copy()
    profile.update(
        count=cube.shape[0],
        dtype="float32",
        nodata=nodata,
        driver="GTiff",
        compress="DEFLATE",
        predictor=3,        # floating-point predictor for better compression
        tiled=True,
        BIGTIFF="IF_SAFER",
    )
    profile.pop("interleave", None)

    with rasterio.open(out_path, "w", **profile) as dst:
        dst.write(cube)
        for i in range(cube.shape[0]):
            tags: dict[str, str] = {}
            if wavelengths_nm is not None:
                tags["wavelength"] = f"{wavelengths_nm[i]:.4f}"
            if band_indices is not None:
                tags["emit_band_index"] = str(int(band_indices[i]))
            if tags:
                dst.update_tags(i + 1, **tags)


# ---------------------------------------------------------------------------
# Matcher dataclass
# ---------------------------------------------------------------------------

@dataclass
class S2ToEMITMatcher:
    """32 fitted polynomial Ridge pipelines mapping S2 → EMIT spectral space.

    Do not instantiate directly — use :func:`fit_tile` or
    :func:`fit_tiles_batch`.

    Attributes
    ----------
    models_ :
        List of 32 fitted sklearn ``Pipeline`` objects, one per EMIT b32 band.
    band_indices_0based_ :
        0-based indices of the 32 kept EMIT bands in the full spectrum.
    wavelengths_nm_ :
        EMIT centre wavelengths for the 32 bands (nm), or ``None``.
    n_s2_bands_ :
        Number of S2 input features used during training (10).
    scale_ :
        S2/EMIT pixel scale factor used during training (6).
    degree_ :
        Polynomial degree (2).
    alpha_ :
        Ridge regularisation strength.
    """

    models_:               list            = field(default_factory=list)
    band_indices_0based_:  Optional[np.ndarray] = None
    wavelengths_nm_:       Optional[np.ndarray] = None
    n_s2_bands_:           int             = 10
    scale_:                int             = 6
    degree_:               int             = 2
    alpha_:                float           = 1.0

    # ── core ops ─────────────────────────────────────────────────────────

    def predict(self, X_s2: np.ndarray) -> np.ndarray:
        """Predict EMIT b32 reflectances from S2 pixel values.

        Args:
            X_s2: ``(N, 10)`` float32 array of S2 band values.

        Returns:
            ``(N, 32)`` float32 array of predicted EMIT reflectances.
        """
        if not self.models_:
            raise RuntimeError("Matcher has not been fitted yet.")
        X_s2 = np.asarray(X_s2, dtype=np.float32)
        out  = np.empty((X_s2.shape[0], len(self.models_)), dtype=np.float32)
        for i, pipe in enumerate(self.models_):
            out[:, i] = pipe.predict(X_s2).astype(np.float32)
        return out

    def score(
        self,
        X_s2: np.ndarray,
        Y_emit: np.ndarray,
    ) -> np.ndarray:
        """Per-band R² scores on an (X, Y) evaluation set.

        Args:
            X_s2:   ``(N, 10)`` S2 values.
            Y_emit: ``(N, 32)`` ground-truth EMIT reflectances.

        Returns:
            ``(32,)`` float array of R² scores.
        """
        Y_pred = self.predict(X_s2)
        return np.array([
            r2_score(Y_emit[:, i], Y_pred[:, i])
            for i in range(Y_emit.shape[1])
        ])

    def apply_to_tile(
        self,
        s2_tile_path: str | Path,
        *,
        out_path: str | Path | None = None,
        out_nodata: float = -9999.0,
    ) -> np.ndarray:
        """Apply all 32 models to an S2 tile at its native 10 m resolution.

        The S2 data is **not** resampled — models are applied pixel-by-pixel
        at 10 m, producing a 32-band synthetic EMIT cube at the S2 spatial
        resolution  (e.g. 600 × 600 for a standard 100-EMIT-pixel tile).

        EMIT data is never touched; its spatial resolution stays at 60 m.

        Args:
            s2_tile_path: Path to the S2 GeoTIFF tile (10 bands, 10 m).
            out_path:     If given, write the result as a GeoTIFF.
            out_nodata:   Fill value for invalid pixels in the output.

        Returns:
            ``(32, H_s2, W_s2)`` float32 synthetic EMIT cube.
        """
        s2_cube, s2_prof, s2_nodata = _read_raster(s2_tile_path)
        B, H, W = s2_cube.shape

        X = s2_cube.reshape(B, H * W).T       # (N, 10)

        valid = np.isfinite(X).all(axis=1)
        if s2_nodata is not None:
            valid &= ~np.any(np.isclose(X, s2_nodata), axis=1)
        valid &= ~np.all(X == 0, axis=1)

        out_flat = np.full(
            (H * W, len(self.models_)), out_nodata, dtype=np.float32
        )
        if valid.any():
            out_flat[valid] = self.predict(X[valid])

        result = out_flat.T.reshape(len(self.models_), H, W)  # (32, H, W)

        if out_path is not None:
            _write_geotiff(
                result, s2_prof, out_path, out_nodata,
                self.wavelengths_nm_, self.band_indices_0based_,
            )

        return result

    # ── persistence ──────────────────────────────────────────────────────

    def save(self, path: str | Path) -> None:
        """Serialise the matcher to disk with joblib."""
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        joblib.dump(self, path)
        print(f"Matcher saved → {path}")

    @staticmethod
    def load(path: str | Path) -> "S2ToEMITMatcher":
        """Deserialise a previously saved matcher."""
        return joblib.load(path)


# ---------------------------------------------------------------------------
# Fitting — single tile
# ---------------------------------------------------------------------------

def fit_tile(
    s2_tile_path: str | Path,
    emit_b32_tile_path: str | Path,
    *,
    scale: int = 6,
    degree: int = 2,
    alpha: float = 1.0,
    verbose: bool = True,
) -> tuple[S2ToEMITMatcher, dict]:
    """Fit 32 polynomial Ridge models from a single aligned tile pair.

    The S2 tile is block-averaged to the EMIT 60 m grid (no interpolation,
    no EMIT upsampling).  Valid pixel pairs are extracted and 32 independent
    ``Pipeline(PolynomialFeatures(degree=2) → StandardScaler → Ridge)``
    models are fitted — one per EMIT b32 band.

    With 10 S2 features and ``degree=2``:
    * 10 linear terms  (B2, B3, …, B12)
    * 10 squared terms (B2², …, B12²)
    * 45 cross terms   (B2·B3, …)
    = **65 polynomial features** per model.

    Args:
        s2_tile_path:       Path to S2 GeoTIFF tile (10 bands, 10 m).
        emit_b32_tile_path: Path to EMIT-b32 GeoTIFF tile (32 bands, 60 m).
        scale:              S2/EMIT resolution ratio (default 6).
        degree:             Polynomial degree (default 2).
        alpha:              Ridge regularisation strength (default 1.0).
        verbose:            Print progress and R² summary.

    Returns:
        ``(matcher, stats)`` where *stats* is a dict containing:
        ``n_train_pixels``, ``r2_per_band``, ``r2_mean``, ``r2_min``,
        ``wavelengths_nm``.
    """
    s2_cube,  s2_prof,   s2_nodata   = _read_raster(s2_tile_path)
    emit_b32, emit_prof, emit_nodata = _read_raster(emit_b32_tile_path)

    s2_on_emit = align_s2_to_emit_grid(
        s2_cube, scale=scale,
        s2_profile=s2_prof, emit_profile=emit_prof,
    )

    band_indices, wavelengths_nm = _read_emit_band_meta(emit_b32_tile_path)

    valid = _build_valid_mask(s2_on_emit, emit_b32, s2_nodata, emit_nodata)

    B_s2, H, W = s2_on_emit.shape
    X_all = s2_on_emit.reshape(B_s2, H * W).T            # (N, 10)
    Y_all = emit_b32.reshape(emit_b32.shape[0], H * W).T  # (N, 32)

    X_train = X_all[valid]
    Y_train = Y_all[valid]

    if verbose:
        print(
            f"Fitting:  {X_train.shape[0]:,} valid pixels  |  "
            f"{X_train.shape[1]} S2 bands  →  {Y_train.shape[1]} EMIT bands"
        )

    models = []
    for i in range(Y_train.shape[1]):
        pipe = _make_pipeline(degree=degree, alpha=alpha)
        pipe.fit(X_train, Y_train[:, i])
        models.append(pipe)

    matcher = S2ToEMITMatcher(
        models_              = models,
        band_indices_0based_ = band_indices,
        wavelengths_nm_      = wavelengths_nm,
        n_s2_bands_          = s2_cube.shape[0],
        scale_               = scale,
        degree_              = degree,
        alpha_               = alpha,
    )

    # ── in-sample R² (training diagnostic only) ──────────────────────────
    Y_pred      = matcher.predict(X_train)
    r2_per_band = np.array([
        r2_score(Y_train[:, i], Y_pred[:, i]) for i in range(Y_train.shape[1])
    ])

    stats = {
        "n_train_pixels": int(X_train.shape[0]),
        "n_emit_bands":   int(Y_train.shape[1]),
        "r2_per_band":    r2_per_band.tolist(),
        "r2_mean":        float(r2_per_band.mean()),
        "r2_min":         float(r2_per_band.min()),
        "wavelengths_nm": wavelengths_nm.tolist() if wavelengths_nm is not None else None,
    }

    if verbose:
        print(
            f"Done.     R² mean={stats['r2_mean']:.4f}  "
            f"min={stats['r2_min']:.4f}  "
            f"max={max(stats['r2_per_band']):.4f}"
        )

    return matcher, stats


# ---------------------------------------------------------------------------
# Fitting — multiple tiles
# ---------------------------------------------------------------------------

def fit_tiles_batch(
    tile_pairs: Sequence[tuple[str | Path, str | Path]],
    *,
    scale: int = 6,
    degree: int = 2,
    alpha: float = 1.0,
    verbose: bool = True,
) -> tuple[S2ToEMITMatcher, dict]:
    """Fit 32 models by pooling pixels from multiple tile pairs.

    Preferred over per-tile fitting when many tiles are available: pooling
    captures a wider range of scene conditions and surface types, which makes
    the polynomial fit more robust and less prone to overfitting.

    Band metadata (indices, wavelengths) is read from the first tile; all
    tiles in the batch are assumed to share the same EMIT-b32 band selection.

    Args:
        tile_pairs: Sequence of ``(s2_tile_path, emit_b32_tile_path)`` tuples.
        scale, degree, alpha, verbose: same as :func:`fit_tile`.

    Returns:
        ``(matcher, stats)`` with an additional ``n_tiles`` key in *stats*.
    """
    all_X: list[np.ndarray] = []
    all_Y: list[np.ndarray] = []
    band_indices:  np.ndarray | None = None
    wavelengths_nm: np.ndarray | None = None
    n_s2_bands: int | None = None

    for s2_path, emit_path in tile_pairs:
        s2_cube,  s2_prof,   s2_nodata   = _read_raster(s2_path)
        emit_b32, emit_prof, emit_nodata = _read_raster(emit_path)

        s2_on_emit = align_s2_to_emit_grid(
            s2_cube, scale=scale,
            s2_profile=s2_prof, emit_profile=emit_prof,
        )

        if band_indices is None:
            band_indices, wavelengths_nm = _read_emit_band_meta(emit_path)
            n_s2_bands = s2_cube.shape[0]

        valid = _build_valid_mask(s2_on_emit, emit_b32, s2_nodata, emit_nodata)

        B_s2, H, W = s2_on_emit.shape
        X = s2_on_emit.reshape(B_s2, H * W).T
        Y = emit_b32.reshape(emit_b32.shape[0], H * W).T

        all_X.append(X[valid])
        all_Y.append(Y[valid])

        if verbose:
            print(f"  {Path(s2_path).name:<50s}  {valid.sum():>6,} valid px")

    X_train = np.concatenate(all_X, axis=0)
    Y_train = np.concatenate(all_Y, axis=0)

    if verbose:
        print(
            f"Total: {X_train.shape[0]:,} pixels  |  "
            f"{X_train.shape[1]} S2 bands  →  {Y_train.shape[1]} EMIT bands"
        )

    models = []
    for i in range(Y_train.shape[1]):
        pipe = _make_pipeline(degree=degree, alpha=alpha)
        pipe.fit(X_train, Y_train[:, i])
        models.append(pipe)

    matcher = S2ToEMITMatcher(
        models_              = models,
        band_indices_0based_ = band_indices,
        wavelengths_nm_      = wavelengths_nm,
        n_s2_bands_          = n_s2_bands or 10,
        scale_               = scale,
        degree_              = degree,
        alpha_               = alpha,
    )

    Y_pred      = matcher.predict(X_train)
    r2_per_band = np.array([
        r2_score(Y_train[:, i], Y_pred[:, i]) for i in range(Y_train.shape[1])
    ])

    stats = {
        "n_tiles":        len(tile_pairs),
        "n_train_pixels": int(X_train.shape[0]),
        "n_emit_bands":   int(Y_train.shape[1]),
        "r2_per_band":    r2_per_band.tolist(),
        "r2_mean":        float(r2_per_band.mean()),
        "r2_min":         float(r2_per_band.min()),
        "wavelengths_nm": wavelengths_nm.tolist() if wavelengths_nm is not None else None,
    }

    if verbose:
        print(
            f"Done.     R² mean={stats['r2_mean']:.4f}  "
            f"min={stats['r2_min']:.4f}  "
            f"max={max(stats['r2_per_band']):.4f}"
        )

    return matcher, stats


# ---------------------------------------------------------------------------
# Diagnostics
# ---------------------------------------------------------------------------

def plot_r2_spectrum(
    stats: dict,
    *,
    title: str = "S2 → EMIT spectral matching — R² per band",
    save_path: str | Path | None = None,
    show: bool = True,
) -> None:
    """Plot R² as a function of EMIT wavelength.

    A well-fitted model should have high R² across the spectrum, with
    characteristic dips near atmospheric absorption features (1400 nm,
    1900 nm) where both sensors have reduced SNR.

    Args:
        stats:     Dict returned by :func:`fit_tile` or :func:`fit_tiles_batch`.
        title:     Plot title.
        save_path: If given, save the figure here.
        show:      Call ``plt.show()``.
    """
    import matplotlib.pyplot as plt

    r2  = np.array(stats["r2_per_band"])
    wl  = stats.get("wavelengths_nm")
    x   = np.array(wl) if wl is not None else np.arange(len(r2))
    xlabel = "Wavelength (nm)" if wl is not None else "EMIT band index"

    fig, ax = plt.subplots(figsize=(10, 4))
    ax.plot(x, r2, linewidth=1.5, color="steelblue")
    ax.fill_between(x, 0, r2, alpha=0.15, color="steelblue")
    ax.axhline(stats["r2_mean"], linestyle="--", color="orange",
               linewidth=1.2, label=f"mean R² = {stats['r2_mean']:.3f}")
    ax.set_xlabel(xlabel)
    ax.set_ylabel("R²")
    ax.set_title(title)
    ax.set_ylim(0, 1)
    ax.legend(framealpha=0.8)
    ax.grid(True, linewidth=0.4, alpha=0.5)
    plt.tight_layout()

    if save_path is not None:
        Path(save_path).parent.mkdir(parents=True, exist_ok=True)
        plt.savefig(str(save_path), dpi=150, bbox_inches="tight")
    if show:
        plt.show()
    else:
        plt.close(fig)


def scatter_band(
    matcher: S2ToEMITMatcher,
    X_s2: np.ndarray,
    Y_emit: np.ndarray,
    band_idx: int = 0,
    *,
    sample: int = 20_000,
    seed: int = 0,
    save_path: str | Path | None = None,
    show: bool = True,
) -> float:
    """Scatter plot of predicted vs. ground-truth for one EMIT band.

    Args:
        matcher:   Fitted :class:`S2ToEMITMatcher`.
        X_s2:      ``(N, 10)`` S2 values.
        Y_emit:    ``(N, 32)`` EMIT ground-truth values.
        band_idx:  Which of the 32 EMIT bands to visualise (0-based).
        sample:    Max number of points to scatter (for speed).
        seed:      Random seed for sub-sampling.
        save_path: Optional path to save the figure.
        show:      Call ``plt.show()``.

    Returns:
        R² score for the chosen band.
    """
    import matplotlib.pyplot as plt

    y_true = Y_emit[:, band_idx].astype(np.float32)
    y_pred = matcher.predict(X_s2)[:, band_idx]

    valid = np.isfinite(y_true) & np.isfinite(y_pred)
    y_true, y_pred = y_true[valid], y_pred[valid]

    r2 = float(r2_score(y_true, y_pred))

    if len(y_true) > sample:
        rng = np.random.default_rng(seed)
        idx = rng.choice(len(y_true), size=sample, replace=False)
        y_true, y_pred = y_true[idx], y_pred[idx]

    lo = float(np.percentile(np.concatenate([y_true, y_pred]), 0.5))
    hi = float(np.percentile(np.concatenate([y_true, y_pred]), 99.5))

    wl_str = ""
    if (matcher.wavelengths_nm_ is not None
            and band_idx < len(matcher.wavelengths_nm_)):
        wl_str = f" — {matcher.wavelengths_nm_[band_idx]:.1f} nm"

    fig, ax = plt.subplots(figsize=(5, 5))
    ax.scatter(y_true, y_pred, s=3, alpha=0.2, color="steelblue")
    ax.plot([lo, hi], [lo, hi], linewidth=1.0, color="orange", label="y = x")
    ax.set_xlabel("EMIT ground truth")
    ax.set_ylabel("S2 → EMIT prediction")
    ax.set_title(f"Band {band_idx}{wl_str}\nR² = {r2:.4f}")
    ax.set_xlim(lo, hi)
    ax.set_ylim(lo, hi)
    ax.legend(framealpha=0.8)
    ax.grid(True, linewidth=0.3, alpha=0.5)
    plt.tight_layout()

    if save_path is not None:
        Path(save_path).parent.mkdir(parents=True, exist_ok=True)
        plt.savefig(str(save_path), dpi=150, bbox_inches="tight")
    if show:
        plt.show()
    else:
        plt.close(fig)

    return r2
