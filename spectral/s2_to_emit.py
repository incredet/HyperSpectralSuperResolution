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
  2. Nearest-neighbour-repeat EMIT to the S2 10 m grid:
       np.repeat(emit, 6, axis=1/2)  → (32, 600, 600)
     Each 60 m EMIT pixel is replicated into a 6×6 block, pairing every
     native 10 m S2 pixel with its parent EMIT value (many-to-one).
     This exposes the model to the full per-pixel spectral variability
     at 10 m, preventing extrapolation artefacts at inference time.
  3. Flatten to pixel vectors and mask nodata.
       X  (N, 10)   ← S2 band values at 10 m
       Y  (N, 32)   ← EMIT reflectances (repeated from 60 m)
  4. Fit 32 independent pipelines:
       PolynomialFeatures(degree=2) → StandardScaler → Ridge
     10 input features + degree-2 expansion → 65 polynomial terms per model.

Inference:
  - Apply the 32 fitted models to S2 at its native 10 m resolution.
  - Output: (32, H_s2, W_s2) synthetic hyperspectral cube at 10 m.
  - Training and inference see the same 10 m pixel distribution.

Public API
----------
  S2ToEMITMatcher          dataclass holding 32 fitted pipelines
  fit_tile(...)            fit from a single tile pair
  fit_tiles_batch(...)     fit by pooling pixels from many tile pairs
  align_s2_to_emit_grid()  standalone block-average helper
  plot_spectral_match()    3-panel: S2 | synth EMIT (from file) | EMIT ground truth
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
from sklearn.preprocessing import PolynomialFeatures, StandardScaler

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_utils import closest_bands
from scipy.ndimage import zoom


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
    """Polynomial Ridge model mapping S2 (10 bands) → EMIT spectral space.

    Do not instantiate directly — use :func:`fit_tile` or
    :func:`fit_tiles_batch`.

    Fitting is done with a single ``PolynomialFeatures`` expansion, a single
    ``StandardScaler``, and a single multi-output ``Ridge`` regression that
    solves all output bands simultaneously (one ``X^T X`` inversion, one
    matrix multiply).

    Attributes
    ----------
    band_indices_0based_ :
        0-based indices of the kept EMIT bands in the full 285-band spectrum.
    wavelengths_nm_ :
        EMIT centre wavelengths for the output bands (nm), or ``None``.
    n_s2_bands_ :
        Number of S2 input features used during training (10).
    n_output_bands_ :
        Number of output EMIT bands (32).
    scale_ :
        S2/EMIT pixel scale factor used during training (6).
    degree_ :
        Polynomial degree (2).
    alpha_ :
        Ridge regularisation strength.
    _poly_ :
        Fitted ``PolynomialFeatures`` transformer.
    _scaler_ :
        Fitted ``StandardScaler`` transformer.
    _W_ :
        ``(n_output_bands, n_poly_features)`` Ridge coefficient matrix.
    _b_ :
        ``(n_output_bands,)`` Ridge intercept vector.
    models_ :
        Legacy field — kept only for backward compatibility with older
        serialised matchers.  Empty for newly fitted matchers.
    """

    band_indices_0based_:  Optional[np.ndarray] = None
    wavelengths_nm_:       Optional[np.ndarray] = None
    n_s2_bands_:           int             = 10
    n_output_bands_:       int             = 32
    scale_:                int             = 6
    degree_:               int             = 2
    alpha_:                float           = 1.0

    # Core fitted objects
    _poly_:    object           = field(default=None, repr=False)
    _scaler_:  object           = field(default=None, repr=False)
    _W_:       Optional[np.ndarray] = field(default=None, repr=False)
    _b_:       Optional[np.ndarray] = field(default=None, repr=False)

    # Legacy — only populated when loading old serialised matchers
    models_:               list = field(default_factory=list, repr=False)

    def _build_fast_weights(self) -> None:
        """Extract W/b from legacy ``models_`` list (old serialised format).

        New matchers already have ``_W_`` and ``_b_`` set directly during
        fitting and do **not** need this method.
        """
        if self._W_ is not None or not self.models_:
            return
        self._poly_   = self.models_[0].named_steps["poly"]
        self._scaler_ = self.models_[0].named_steps["scaler"]
        self._W_ = np.stack(
            [m.named_steps["ridge"].coef_ for m in self.models_]
        ).astype(np.float64)          # (B_out, P)
        self._b_ = np.array(
            [m.named_steps["ridge"].intercept_ for m in self.models_],
            dtype=np.float64,
        )
        self.n_output_bands_ = self._W_.shape[0]

    # ── core ops ─────────────────────────────────────────────────────────

    def predict(self, X_s2: np.ndarray) -> np.ndarray:
        """Predict EMIT reflectances from S2 pixel values.

        Single polynomial expansion + one BLAS ``X_scaled @ W.T + b`` call.

        Args:
            X_s2: ``(N, 10)`` float32 array of S2 band values.

        Returns:
            ``(N, n_output_bands)`` float32 predicted EMIT reflectances.
        """
        if self._W_ is None:
            # Try legacy path
            self._build_fast_weights()
        if self._W_ is None:
            raise RuntimeError("Matcher has not been fitted yet.")

        X_s2 = np.asarray(X_s2, dtype=np.float64)
        X_poly   = self._poly_.transform(X_s2)
        X_scaled = self._scaler_.transform(X_poly)
        return (X_scaled @ self._W_.T + self._b_).astype(np.float32)

    def score(
        self,
        X_s2: np.ndarray,
        Y_emit: np.ndarray,
    ) -> np.ndarray:
        """Per-band R² scores on an (X, Y) evaluation set.

        Args:
            X_s2:   ``(N, 10)`` S2 values.
            Y_emit: ``(N, n_output_bands)`` ground-truth EMIT reflectances.

        Returns:
            ``(n_output_bands,)`` float array of R² scores.
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
        """Apply the model to an S2 tile at its native 10 m resolution.

        Args:
            s2_tile_path: Path to the S2 GeoTIFF tile (10 bands, 10 m).
            out_path:     If given, write the result as a GeoTIFF.
            out_nodata:   Fill value for invalid pixels in the output.

        Returns:
            ``(n_output_bands, H_s2, W_s2)`` float32 synthetic EMIT cube.
        """
        s2_cube, s2_prof, s2_nodata = _read_raster(s2_tile_path)
        B, H, W = s2_cube.shape
        n_out = self.n_output_bands_

        X = s2_cube.reshape(B, H * W).T       # (N, 10)

        valid = np.isfinite(X).all(axis=1)
        if s2_nodata is not None:
            valid &= ~np.any(np.isclose(X, s2_nodata), axis=1)
        valid &= ~np.all(X == 0, axis=1)

        out_flat = np.full((H * W, n_out), out_nodata, dtype=np.float32)
        if valid.any():
            out_flat[valid] = self.predict(X[valid])

        result = out_flat.T.reshape(n_out, H, W)

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

    Training is done at the **native S2 10 m resolution**.  Each EMIT 60 m
    pixel is nearest-neighbour-repeated into a ``scale × scale`` block so
    that every 10 m S2 pixel is paired with its parent EMIT value.  This
    many-to-one pairing exposes the model to the full per-pixel spectral
    variability present at 10 m, preventing the extrapolation artefacts that
    occur when training on 60 m block averages and inferring at 10 m.

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

    # Upsample EMIT to 10 m by repeating each pixel into a scale×scale block.
    # This pairs every native 10 m S2 pixel with its parent 60 m EMIT value.
    emit_at_s2 = zoom(emit_b32, (1, scale, scale), order=1)


    band_indices, wavelengths_nm = _read_emit_band_meta(emit_b32_tile_path)

    valid = _build_valid_mask(s2_cube, emit_at_s2, s2_nodata, emit_nodata)

    B_s2, H, W = s2_cube.shape
    X_all = s2_cube.reshape(B_s2, H * W).T                # (N, 10)
    Y_all = emit_at_s2.reshape(emit_at_s2.shape[0], H * W).T  # (N, 32)

    X_train = X_all[valid]
    Y_train = Y_all[valid]
    n_out   = Y_train.shape[1]

    if verbose:
        print(
            f"Fitting:  {X_train.shape[0]:,} valid pixels  |  "
            f"{X_train.shape[1]} S2 bands  →  {n_out} EMIT bands"
        )

    # Single poly expansion → single scaler → single multi-output Ridge
    poly   = PolynomialFeatures(degree=degree, include_bias=False)
    scaler = StandardScaler()
    ridge  = Ridge(alpha=alpha)

    X_poly   = poly.fit_transform(X_train.astype(np.float64))
    X_scaled = scaler.fit_transform(X_poly)
    ridge.fit(X_scaled, Y_train)

    matcher = S2ToEMITMatcher(
        band_indices_0based_ = band_indices,
        wavelengths_nm_      = wavelengths_nm,
        n_s2_bands_          = s2_cube.shape[0],
        n_output_bands_      = n_out,
        scale_               = scale,
        degree_              = degree,
        alpha_               = alpha,
        _poly_               = poly,
        _scaler_             = scaler,
        _W_                  = ridge.coef_.astype(np.float64),   # (n_out, P)
        _b_                  = ridge.intercept_.astype(np.float64),
    )

    # ── in-sample R² (training diagnostic only) ──────────────────────────
    Y_pred      = matcher.predict(X_train)
    r2_per_band = np.array([
        r2_score(Y_train[:, i], Y_pred[:, i]) for i in range(n_out)
    ])

    stats = {
        "n_train_pixels": int(X_train.shape[0]),
        "n_emit_bands":   n_out,
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
    """Fit 32 models by pooling 10 m pixels from multiple tile pairs.

    Preferred over per-tile fitting when many tiles are available: pooling
    captures a wider range of scene conditions and surface types, which makes
    the polynomial fit more robust and less prone to overfitting.

    Training uses native 10 m S2 pixels paired many-to-one with their
    parent 60 m EMIT value (nearest-neighbour repeat).  See :func:`fit_tile`
    for rationale.

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

        # Upsample EMIT to 10 m (nearest-neighbour repeat)
        emit_at_s2 = zoom(emit_b32, (1, scale, scale), order=1)

        if band_indices is None:
            band_indices, wavelengths_nm = _read_emit_band_meta(emit_path)
            n_s2_bands = s2_cube.shape[0]

        valid = _build_valid_mask(s2_cube, emit_at_s2, s2_nodata, emit_nodata)

        B_s2, H, W = s2_cube.shape
        X = s2_cube.reshape(B_s2, H * W).T
        Y = emit_at_s2.reshape(emit_at_s2.shape[0], H * W).T

        all_X.append(X[valid])
        all_Y.append(Y[valid])

        if verbose:
            print(f"  {Path(s2_path).name:<50s}  {valid.sum():>6,} valid px")

    X_train = np.concatenate(all_X, axis=0)
    Y_train = np.concatenate(all_Y, axis=0)
    n_out   = Y_train.shape[1]

    if verbose:
        print(
            f"Total: {X_train.shape[0]:,} pixels  |  "
            f"{X_train.shape[1]} S2 bands  →  {n_out} EMIT bands"
        )

    # Single poly expansion → single scaler → single multi-output Ridge
    poly   = PolynomialFeatures(degree=degree, include_bias=False)
    scaler = StandardScaler()
    ridge  = Ridge(alpha=alpha)

    X_poly   = poly.fit_transform(X_train.astype(np.float64))
    X_scaled = scaler.fit_transform(X_poly)
    ridge.fit(X_scaled, Y_train)

    matcher = S2ToEMITMatcher(
        band_indices_0based_ = band_indices,
        wavelengths_nm_      = wavelengths_nm,
        n_s2_bands_          = n_s2_bands or 10,
        n_output_bands_      = n_out,
        scale_               = scale,
        degree_              = degree,
        alpha_               = alpha,
        _poly_               = poly,
        _scaler_             = scaler,
        _W_                  = ridge.coef_.astype(np.float64),
        _b_                  = ridge.intercept_.astype(np.float64),
    )

    Y_pred      = matcher.predict(X_train)
    r2_per_band = np.array([
        r2_score(Y_train[:, i], Y_pred[:, i]) for i in range(n_out)
    ])

    stats = {
        "n_tiles":        len(tile_pairs),
        "n_train_pixels": int(X_train.shape[0]),
        "n_emit_bands":   n_out,
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

def plot_spectral_match(
    s2_tile_path: str | Path,
    synth_emit_path: str | Path,
    emit_b32_tile_path: str | Path,
    *,
    wavelengths_nm: Optional[np.ndarray] = None,
    targets_nm: tuple[float, float, float] = (650.0, 550.0, 470.0),
    percentile: tuple[float, float] = (2.0, 98.0),
    gamma: float = 1 / 2.2,
    title_suffix: str = "",
    save_path: str | Path | None = None,
    show: bool = True,
) -> None:
    """Three-panel comparison: S2 | synthetic EMIT | EMIT ground truth.

    Reads all three panels directly from disk — no re-inference.  Call this
    after ``apply_to_tile`` has already written *synth_emit_path*.

    Panel 1 — **S2 at 10 m** (true colour from B04/B03/B02 band descriptions,
    or first three bands as fallback).

    Panel 2 — **Synthetic EMIT at 10 m** (the GeoTIFF written by
    ``apply_to_tile``; three bands chosen closest to *targets_nm*).

    Panel 3 — **EMIT ground truth at 60 m** (same three wavelength bands,
    so colours are physically comparable).

    Wavelengths are resolved in order: *wavelengths_nm* parameter →
    per-band tags in *synth_emit_path* → per-band tags in
    *emit_b32_tile_path* → approximate fallback.

    Args:
        s2_tile_path:       Path to S2 GeoTIFF tile (10 bands, 10 m).
        synth_emit_path:    Path to synthetic EMIT GeoTIFF written by
                            ``apply_to_tile`` (32 bands, 10 m).
        emit_b32_tile_path: Path to EMIT-b32 GeoTIFF tile (32 bands, 60 m).
        wavelengths_nm:     Optional 32-element wavelength array (nm).
                            If *None*, read from file tags.
        targets_nm:         Target R/G/B wavelengths for the hyperspectral panels.
        percentile:         Low/high percentile for per-channel contrast stretch.
        gamma:              Display gamma (default 1/2.2 ≈ sRGB).
        title_suffix:       Appended to the first panel title (e.g. tile index).
        save_path:          Optional path to save the figure.
        show:               Call ``plt.show()`` after plotting.
    """
    import matplotlib.pyplot as plt

    # ── helper ────────────────────────────────────────────────────────────
    def _stretch_rgb(rgb: np.ndarray) -> np.ndarray:
        rgb = rgb.astype(np.float32, copy=True)
        out = np.zeros_like(rgb)
        for c in range(rgb.shape[2]):
            ch  = rgb[..., c]
            fin = np.isfinite(ch)
            if not fin.any():
                continue
            lo, hi = np.percentile(ch[fin], percentile)
            if hi > lo:
                out[..., c] = np.clip((ch - lo) / (hi - lo), 0, 1)
        return np.clip(out ** gamma, 0, 1)

    def _read_wl_tags(ds) -> np.ndarray | None:
        tags = [ds.tags(b) for b in range(1, ds.count + 1)]
        vals = [float(t["wavelength"]) for t in tags if "wavelength" in t]
        return np.array(vals) if len(vals) == ds.count else None

    # ── Resolve wavelengths ───────────────────────────────────────────────
    wl_arr = wavelengths_nm
    if wl_arr is None:
        with rasterio.open(synth_emit_path) as ds:
            wl_arr = _read_wl_tags(ds)
    if wl_arr is None:
        with rasterio.open(emit_b32_tile_path) as ds:
            wl_arr = _read_wl_tags(ds)

    if wl_arr is not None:
        rgb_idxs, picked_nm = closest_bands(wl_arr, targets_nm)
        wl_str = "/".join(f"{w:.0f}" for w in picked_nm) + " nm"
    else:
        n        = 32
        rgb_idxs = [n * 2 // 3, n // 2, n // 6]
        wl_str   = "approx R/G/B"

    # ── Open all three files in one pass ─────────────────────────────────
    with rasterio.open(s2_tile_path) as s2_ds, \
         rasterio.open(synth_emit_path) as syn_ds, \
         rasterio.open(emit_b32_tile_path) as emit_ds:

        # S2: find B04/B03/B02 by band description
        desc = list(s2_ds.descriptions or [])
        def _find(keywords):
            for bi, d in enumerate(desc, start=1):
                if d and all(k in d.lower() for k in keywords):
                    return bi
            return None
        b_r = _find(["b04"]) or _find(["red"])
        b_g = _find(["b03"]) or _find(["green"])
        b_b = _find(["b02"]) or _find(["blue"])
        if b_r and b_g and b_b:
            s2_rgb = np.moveaxis(s2_ds.read([b_r, b_g, b_b]).astype(np.float32), 0, -1)
        else:
            s2_rgb = np.moveaxis(s2_ds.read(list(range(1, min(3, s2_ds.count) + 1))).astype(np.float32), 0, -1)
        s2_nodata = s2_ds.nodata

        # Synthetic EMIT
        bands_1based = [i + 1 for i in rgb_idxs]
        pred_rgb  = np.moveaxis(syn_ds.read(bands_1based).astype(np.float32), 0, -1)
        pred_nodata = syn_ds.nodata

        # EMIT ground truth
        emit_rgb  = np.moveaxis(emit_ds.read(bands_1based).astype(np.float32), 0, -1)
        emit_nodata = emit_ds.nodata

    # ── Nodata → nan ──────────────────────────────────────────────────────
    if np.nanmax(s2_rgb) > 1.5:
        s2_rgb /= 10_000.0
    if s2_nodata is not None:
        s2_rgb[s2_rgb == s2_nodata / 10_000.0] = np.nan

    if pred_nodata is not None:
        pred_rgb[pred_rgb == pred_nodata] = np.nan
    pred_rgb[~np.isfinite(pred_rgb)] = np.nan

    if emit_nodata is not None:
        emit_rgb[emit_rgb == emit_nodata] = np.nan

    # ── Plot ──────────────────────────────────────────────────────────────
    fig, axes = plt.subplots(1, 3, figsize=(15, 5))
    for ax, img, title in zip(
        axes,
        [_stretch_rgb(s2_rgb), _stretch_rgb(pred_rgb), _stretch_rgb(emit_rgb)],
        [
            f"S2  10 m{('  ' + title_suffix) if title_suffix else ''}",
            f"S2 → EMIT synth  10 m\n({wl_str})",
            f"EMIT  60 m\n({wl_str})",
        ],
    ):
        ax.imshow(img)
        ax.set_title(title, fontsize=10)
        ax.axis("off")

    plt.tight_layout()
    if save_path is not None:
        Path(save_path).parent.mkdir(parents=True, exist_ok=True)
        plt.savefig(str(save_path), dpi=150, bbox_inches="tight")
    if show:
        plt.show()
    else:
        plt.close(fig)


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
