from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional

import joblib
import numpy as np
import rasterio
from rasterio.warp import reproject, Resampling
from scipy.ndimage import zoom
from sklearn.linear_model import Ridge
from sklearn.metrics import r2_score
from sklearn.preprocessing import PolynomialFeatures, StandardScaler

from data.EMIT.emit_utils import closest_bands

DN_SCALE = np.float32(10000.0)


def align_s2_to_emit_grid(s2_cube, scale=6, *, s2_profile=None, emit_profile=None):
    s2_cube = np.asarray(s2_cube, dtype=np.float32)
    B, H_s2, W_s2 = s2_cube.shape

    if H_s2 % scale == 0 and W_s2 % scale == 0:
        H, W = H_s2 // scale, W_s2 // scale
        return s2_cube.reshape(B, H, scale, W, scale).mean(axis=(2, 4))

    if s2_profile is None or emit_profile is None:
        raise ValueError(
            f"Tile sizes ({H_s2}, {W_s2}) not exact multiples of "
            f"scale={scale}; need s2_profile and emit_profile for fallback."
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


def _read_raster(path):
    with rasterio.open(path) as ds:
        arr     = ds.read().astype(np.float32)
        profile = ds.profile.copy()
        nodata  = ds.nodata
    return arr, profile, nodata


def _build_valid_mask(s2_on_emit, emit_b32, s2_nodata, emit_nodata):
    B_s2, H, W = s2_on_emit.shape
    N = H * W
    X = s2_on_emit.reshape(B_s2, N).T          # (N, B_s2)
    Y = emit_b32.reshape(emit_b32.shape[0], N).T  # (N, B_emit)

    valid = np.isfinite(X).all(axis=1) & np.isfinite(Y).all(axis=1)
    if s2_nodata is not None:
        valid &= ~np.all(np.isclose(X, s2_nodata), axis=1)
    if emit_nodata is not None:
        valid &= ~np.any(np.isclose(Y, emit_nodata), axis=1)
    # also reject all-zero S2 pixels (common nodata sentinel in STAC downloads)
    valid &= ~np.all(X == 0, axis=1)
    return valid


def _block_homogeneity_mask(s2_cube, scale=6, *, max_cv=0.25, s2_nodata=None):
    B, H_s2, W_s2 = s2_cube.shape
    H_e = H_s2 // scale
    W_e = W_s2 // scale

    blocks = s2_cube[:, :H_e * scale, :W_e * scale].reshape(
        B, H_e, scale, W_e, scale,
    )

    block_mean = blocks.mean(axis=(2, 4))    # (B, H_e, W_e)
    block_std  = blocks.std(axis=(2, 4))     # (B, H_e, W_e)

    # Coefficient of variation per band per block; avoid /0
    safe_mean = np.where(np.abs(block_mean) > 1e-8, block_mean, 1e-8)
    cv = np.abs(block_std / safe_mean)

    # A block is homogeneous if ALL bands have CV < max_cv
    homo_block = np.all(cv < max_cv, axis=0)

    if s2_nodata is not None:
        has_nodata = np.any(
            np.isclose(blocks, s2_nodata), axis=(0, 2, 4),
        )
        homo_block &= ~has_nodata

    all_zero = np.all(blocks == 0, axis=(0, 2, 4))
    homo_block &= ~all_zero

    # Expand back to 10 m: each EMIT block → scale×scale True/False at 10m grid
    homo_10m = np.repeat(
        np.repeat(homo_block, scale, axis=0),
        scale, axis=1,
    )

    # Edge pixels if S2 tile isn't exactly divisible
    mask_full = np.zeros((H_s2, W_s2), dtype=bool)
    mask_full[:H_e * scale, :W_e * scale] = homo_10m

    return mask_full.ravel()


def _read_emit_band_meta(emit_b32_path):
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


@dataclass
class S2ToEMITRegressor:

    band_indices_0based_:  Optional[np.ndarray] = None
    wavelengths_nm_:       Optional[np.ndarray] = None
    n_s2_bands_:           int             = 10
    n_output_bands_:       int             = 32
    scale_:                int             = 6
    degree_:               int             = 2
    alpha_:                float           = 1.0

    _poly_:    object           = field(default=None, repr=False)
    _scaler_:  object           = field(default=None, repr=False)
    _W_:       Optional[np.ndarray] = field(default=None, repr=False)
    _b_:       Optional[np.ndarray] = field(default=None, repr=False)
    _y_max_:   Optional[np.ndarray] = field(default=None, repr=False)  # per-band training max

    # populated only when loading old serialised regressors
    models_:               list = field(default_factory=list, repr=False)

    def _build_fast_weights(self):
        if self._W_ is not None or not self.models_:
            return
        self._poly_   = self.models_[0].named_steps["poly"]
        self._scaler_ = self.models_[0].named_steps["scaler"]
        self._W_ = np.stack(
            [m.named_steps["ridge"].coef_ for m in self.models_]
        ).astype(np.float64)
        self._b_ = np.array(
            [m.named_steps["ridge"].intercept_ for m in self.models_],
            dtype=np.float64,
        )
        self.n_output_bands_ = self._W_.shape[0]

    def predict(self, X_s2):
        if self._W_ is None:
            self._build_fast_weights()
        if self._W_ is None:
            raise RuntimeError("Regressor has not been fitted yet.")

        X_s2 = np.asarray(X_s2, dtype=np.float64)
        X_poly   = self._poly_.transform(X_s2)
        X_scaled = self._scaler_.transform(X_poly)
        return (X_scaled @ self._W_.T + self._b_).astype(np.float32)

    def score(self, X_s2, Y_emit):
        Y_pred = self.predict(X_s2)
        return np.array([
            r2_score(Y_emit[:, i], Y_pred[:, i])
            for i in range(Y_emit.shape[1])
        ])

    def apply_to_tile(self, s2_tile_path, *, out_path=None, out_nodata=65535):
        s2_cube, s2_prof, s2_nodata = _read_raster(s2_tile_path)
        B, H, W = s2_cube.shape
        n_out = self.n_output_bands_

        X = s2_cube.reshape(B, H * W).T

        valid = np.isfinite(X).all(axis=1)
        if s2_nodata is not None:
            valid &= ~np.all(np.isclose(X, s2_nodata), axis=1)
        valid &= ~np.all(X == 0, axis=1)

        out_flat = np.full((H * W, n_out), out_nodata, dtype=np.uint16)
        if valid.any():
            X_valid = X[valid] / DN_SCALE
            pred = self.predict(X_valid)
            if self._y_max_ is not None:
                np.clip(pred, 0.0, self._y_max_[np.newaxis, :], out=pred)
            else:
                np.clip(pred, 0.0, None, out=pred)

            pred_dn = np.rint(pred * DN_SCALE).astype(np.int32)
            np.clip(pred_dn, 0, int(out_nodata) - 1, out=pred_dn)
            out_flat[valid] = pred_dn.astype(np.uint16)

        result = out_flat.T.reshape(n_out, H, W)

        if out_path is not None:
            out_path = Path(out_path)
            out_path.parent.mkdir(parents=True, exist_ok=True)
            is_int = np.issubdtype(result.dtype, np.integer)
            profile = s2_prof.copy()
            profile.update(
                count=result.shape[0], dtype=str(result.dtype),
                nodata=out_nodata, driver="GTiff", compress="DEFLATE",
                predictor=2 if is_int else 3, tiled=True, BIGTIFF="IF_SAFER",
            )
            profile.pop("interleave", None)
            with rasterio.open(out_path, "w", **profile) as dst:
                dst.write(result)
                for i in range(result.shape[0]):
                    tags = {}
                    if self.wavelengths_nm_ is not None:
                        tags["wavelength"] = f"{self.wavelengths_nm_[i]:.4f}"
                    if self.band_indices_0based_ is not None:
                        tags["emit_band_index"] = str(int(self.band_indices_0based_[i]))
                    if tags:
                        dst.update_tags(i + 1, **tags)

        return result

    def save(self, path):
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        joblib.dump(self, path)
        print(f"Regressor saved → {path}")

    @staticmethod
    def load(path):
        return joblib.load(path)


S2ToEMITMatcher = S2ToEMITRegressor  # legacy alias


def fit_tile(
    s2_tile_path,
    emit_b32_tile_path,
    *,
    scale=6,
    degree=2,
    alpha=1.0,
    max_cv=0.25,
    verbose=True,
    emit_upsample_order=1,
    mode="upsample",
):
    assert mode in ("upsample", "downsample"), mode

    s2_cube,  s2_prof,   s2_nodata   = _read_raster(s2_tile_path)
    emit_b32, emit_prof, emit_nodata = _read_raster(emit_b32_tile_path)
    band_indices, wavelengths_nm = _read_emit_band_meta(emit_b32_tile_path)

    if mode == "downsample":
        B, H, W = s2_cube.shape
        if H % scale or W % scale:
            raise ValueError(f"S2 tile ({H}×{W}) not exact multiple of scale={scale}")
        s2_cube = s2_cube.reshape(B, H // scale, scale, W // scale, scale).mean(axis=(2, 4))
        emit_use = emit_b32
    else:
        emit_use = zoom(emit_b32, (1, scale, scale), order=emit_upsample_order)

    valid = _build_valid_mask(s2_cube, emit_use, s2_nodata, emit_nodata)

    if mode == "upsample":
        homo = _block_homogeneity_mask(s2_cube, scale, max_cv=max_cv,
                                       s2_nodata=s2_nodata)
        valid &= homo

    s2_cube  = s2_cube  / DN_SCALE
    emit_use = emit_use / DN_SCALE

    B_s2, H, W = s2_cube.shape
    X_all = s2_cube.reshape(B_s2, H * W).T
    Y_all = emit_use.reshape(emit_use.shape[0], H * W).T
    X_train = X_all[valid]
    Y_train = Y_all[valid]
    n_out   = Y_train.shape[1]

    H_e, W_e = (H, W) if mode == "downsample" else (H // scale, W // scale)
    n_total_blocks = H_e * W_e

    if verbose:
        if mode == "upsample":
            n_homo = int(homo.sum()) // (scale * scale)
            print(f"Homo: {n_homo}/{n_total_blocks} blocks pass CV<{max_cv}")
        print(f"{mode}: {X_train.shape[0]:,} px  |  {B_s2} S2 → {n_out} EMIT bands")

    if X_train.shape[0] < 100:
        raise ValueError(f"Only {X_train.shape[0]} valid pixels (mode={mode})")

    poly   = PolynomialFeatures(degree=degree, include_bias=False)
    scaler = StandardScaler()
    ridge  = Ridge(alpha=alpha, random_state=42)

    X_poly   = poly.fit_transform(X_train.astype(np.float64))
    X_scaled = scaler.fit_transform(X_poly)
    ridge.fit(X_scaled, Y_train)

    regressor = S2ToEMITRegressor(
        band_indices_0based_ = band_indices,
        wavelengths_nm_ = wavelengths_nm,
        n_s2_bands_ = B_s2,
        n_output_bands_ = n_out,
        scale_ = scale,
        degree_ = degree,
        alpha_ = alpha,
        _poly_ = poly,
        _scaler_ = scaler,
        _W_ = ridge.coef_.astype(np.float64),
        _b_ = ridge.intercept_.astype(np.float64),
        _y_max_ = Y_train.max(axis=0).astype(np.float32),
    )

    Y_pred = regressor.predict(X_train)
    r2_per_band = np.array([
        r2_score(Y_train[:, i], Y_pred[:, i]) for i in range(n_out)
    ])

    stats = {
        "mode": mode, "n_train_pixels": int(X_train.shape[0]),
        "n_emit_bands": n_out,
        "r2_per_band": r2_per_band.tolist(),
        "r2_mean": float(r2_per_band.mean()),
        "r2_min":  float(r2_per_band.min()),
        "wavelengths_nm": wavelengths_nm.tolist() if wavelengths_nm is not None else None,
    }

    if verbose:
        print(f"R² mean={stats['r2_mean']:.4f}  min={stats['r2_min']:.4f}")

    return regressor, stats


def plot_spectral_match(
    s2_tile_path,
    synth_emit_path,
    emit_b32_tile_path,
    *,
    wavelengths_nm=None,
    targets_nm=(650.0, 550.0, 470.0),
    percentile=(2.0, 98.0),
    gamma=1 / 2.2,
    title_suffix="",
    r2_mean=None,
    save_path=None,
    show=True,
):
    import matplotlib.pyplot as plt

    def _stretch_rgb(rgb):
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

    def _read_wl_tags(ds):
        tags = [ds.tags(b) for b in range(1, ds.count + 1)]
        vals = [float(t["wavelength"]) for t in tags if "wavelength" in t]
        return np.array(vals) if len(vals) == ds.count else None

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

        bands_1based = [i + 1 for i in rgb_idxs]
        pred_rgb  = np.moveaxis(syn_ds.read(bands_1based).astype(np.float32), 0, -1)
        pred_nodata = syn_ds.nodata

        emit_rgb  = np.moveaxis(emit_ds.read(bands_1based).astype(np.float32), 0, -1)
        emit_nodata = emit_ds.nodata

    # All three panels may be uint16 DN (scaled by 10000) or float32 reflectance — auto-detect
    for rgb, nd in [(s2_rgb, s2_nodata), (pred_rgb, pred_nodata), (emit_rgb, emit_nodata)]:
        if nd is not None:
            rgb[rgb == nd] = np.nan
    pred_rgb[~np.isfinite(pred_rgb)] = np.nan

    if np.nanmax(s2_rgb) > 1.5:
        s2_rgb /= 10_000.0
    if np.nanmax(pred_rgb) > 1.5:
        pred_rgb /= 10_000.0
    if np.nanmax(emit_rgb) > 1.5:
        emit_rgb /= 10_000.0

    fig, axes = plt.subplots(1, 3, figsize=(15, 5))
    r2_str = f"  R²={r2_mean:.4f}" if r2_mean is not None else ""
    for ax, img, title in zip(
        axes,
        [_stretch_rgb(s2_rgb), _stretch_rgb(pred_rgb), _stretch_rgb(emit_rgb)],
        [
            f"S2  10 m{('  ' + title_suffix) if title_suffix else ''}{r2_str}",
            f"S2 → EMIT regression synth  10 m\n({wl_str})",
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


def plot_r2_spectrum(stats, *, title="S2 → EMIT spectral matching — R² per band", save_path=None, show=True):
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


def scatter_band(matcher, X_s2, Y_emit, band_idx=0, *, sample=20_000, seed=0, save_path=None, show=True):
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
