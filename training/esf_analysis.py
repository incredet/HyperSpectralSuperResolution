import argparse
import time
from pathlib import Path

import numpy as np
import pandas as pd
from joblib import Parallel, delayed
from scipy.ndimage import map_coordinates, sobel
from scipy.optimize import curve_fit
from scipy.special import erf

FWHM_COEF = 2.0 * np.sqrt(2.0 * np.log(2.0))   # 2.3548
W1090_COEF = 2.5631                             # 10%-to-90% edge width per sigma


def erf_step(x, a, b, x0, sigma):
    return a + b * 0.5 * (1.0 + erf((x - x0) / (np.sqrt(2.0) * sigma)))


def _load_image(path):
    path = Path(path)
    if path.suffix == '.npy':
        return np.load(path)
    if path.suffix in ('.tif', '.tiff'):
        import rasterio
        with rasterio.open(path) as ds:
            return ds.read()
    raise ValueError(f'unsupported file type: {path.suffix}')


def _to_scalar(arr, nodata=None):
    arr = np.asarray(arr, dtype=np.float64)
    if arr.ndim == 3:
        arr = arr.mean(axis=0)
    elif arr.ndim != 2:
        raise ValueError(f'expected 2D or 3D array, got shape {arr.shape}')
    if nodata is not None:
        arr = np.where(arr == nodata, np.nan, arr)
    return arr


def _select_edges(img, top_fraction, border):
    valid = np.isfinite(img)
    if not valid.any():
        return (np.empty(0, int),) * 2 + (np.empty(0),) * 2
    fill = float(np.nanmedian(img[valid]))
    work = np.where(valid, img, fill)

    gy = sobel(work, axis=0)
    gx = sobel(work, axis=1)
    mag = np.hypot(gy, gx)

    H, W = img.shape
    mask = np.zeros_like(mag, dtype=bool)
    mask[border:H - border, border:W - border] = True
    mask &= valid

    masked = np.where(mask, mag, -np.inf)
    positive = masked[np.isfinite(masked) & (masked > 0)]
    if positive.size < 100:
        return (np.empty(0, int),) * 2 + (np.empty(0),) * 2

    thresh = np.quantile(positive, 1.0 - top_fraction)
    ys, xs = np.where(masked >= thresh)
    m = mag[ys, xs]
    ny = gy[ys, xs] / (m + 1e-12)
    nx = gx[ys, xs] / (m + 1e-12)

    # sub-pixel non-maxima suppression along gradient direction
    fwd = map_coordinates(mag, [ys + ny, xs + nx], order=1, mode='reflect')
    bwd = map_coordinates(mag, [ys - ny, xs - nx], order=1, mode='reflect')
    keep = (m >= fwd) & (m >= bwd)
    return ys[keep], xs[keep], ny[keep], nx[keep]


def _fit_edge(img, y, x, ny, nx, half_len, sigma_bounds,
              min_contrast_rel, min_r2, x0_bound):
    t = np.arange(-half_len, half_len + 1, dtype=np.float64)
    prof = map_coordinates(img, [y + t * ny, x + t * nx],
                           order=1, mode='reflect')
    if not np.all(np.isfinite(prof)):
        return None
    span = float(prof.max() - prof.min())
    if span <= 0:
        return None
    p0 = [float(prof.min()), float(prof[-1] - prof[0]), 0.0, 1.0]
    try:
        popt, _ = curve_fit(
            erf_step, t, prof, p0=p0,
            bounds=([-np.inf, -np.inf, -x0_bound, sigma_bounds[0]],
                    [ np.inf,  np.inf,  x0_bound, sigma_bounds[1]]),
            maxfev=400,
        )
    except Exception:
        return None
    a, b, x0, sigma = popt
    pred = erf_step(t, *popt)
    ss_res = float(np.sum((prof - pred) ** 2))
    ss_tot = float(np.sum((prof - prof.mean()) ** 2))
    if ss_tot <= 0:
        return None
    r2 = 1.0 - ss_res / ss_tot
    if r2 < min_r2 or abs(b) / max(span, 1e-9) < min_contrast_rel:
        return None
    return sigma


def estimate_esf(
    img,
    pixel_size_m=1.0,
    nodata=None,
    top_fraction=0.02,
    border=8,
    half_len=8,
    sigma_bounds=(0.4, 6.0),
    min_contrast_rel=0.05,
    min_r2=0.9,
    x0_bound=2.5,
    return_sigmas=False,
):
    """Estimate effective spatial resolution from a 2D or (B, H, W) image."""
    scalar = _to_scalar(img, nodata=nodata)
    ys, xs, ny, nx = _select_edges(scalar, top_fraction, border)
    sigmas = []
    for y, x, vy, vx in zip(ys, xs, ny, nx):
        s = _fit_edge(scalar, y, x, vy, vx,
                      half_len, sigma_bounds, min_contrast_rel, min_r2, x0_bound)
        if s is not None:
            sigmas.append(s)
    sigmas = np.asarray(sigmas)
    out = {
        'n_tried': int(ys.size),
        'n_accepted': int(sigmas.size),
        'sigma_px_med': np.nan, 'sigma_px_q1': np.nan, 'sigma_px_q3': np.nan,
        'sigma_iqr': np.nan, 'fwhm_px': np.nan, 'gsd_eff_m': np.nan,
    }
    if sigmas.size > 0:
        q1, med, q3 = np.quantile(sigmas, [0.25, 0.5, 0.75])
        out.update({
            'sigma_px_med': float(med),
            'sigma_px_q1': float(q1),
            'sigma_px_q3': float(q3),
            'sigma_iqr': float(q3 - q1),
            'fwhm_px': float(FWHM_COEF * med),
            'gsd_eff_m': float(FWHM_COEF * med * pixel_size_m),
        })
    if return_sigmas:
        out['sigmas'] = sigmas
    return out


def analyze_file(path, pixel_size_m, nodata=None, **kw):
    """Run ESF on a single .npy or .tif file."""
    return estimate_esf(_load_image(path), pixel_size_m, nodata, **kw)


def _analyze_one(path, pixel_size_m, nodata, kw):
    r = analyze_file(path, pixel_size_m, nodata=nodata, **kw)
    r['file'] = Path(path).name
    return r


def _register_main_for_loky():
    import sys
    try:
        import cloudpickle
        cloudpickle.register_pickle_by_value(sys.modules[__name__])
    except Exception as e:
        print(f'  [warn] cloudpickle register_pickle_by_value failed: {e}', flush=True)


def analyze_folder(folder, pixel_size_m, pattern='*.npy', nodata=None,
                   n_jobs=1, **kw):
    """Run ESF on every file in a folder; return per-file DataFrame."""
    folder = Path(folder)
    files = sorted(folder.glob(pattern))
    n = len(files)
    print(f'  {n} tiles, n_jobs={n_jobs}', flush=True)
    t0 = time.time()
    if n_jobs == 1 or n <= 1:
        rows = [_analyze_one(f, pixel_size_m, nodata, kw) for f in files]
    else:
        _register_main_for_loky()
        rows = Parallel(n_jobs=n_jobs, verbose=5, backend='threading')(
            delayed(_analyze_one)(f, pixel_size_m, nodata, kw) for f in files
        )
    dt = time.time() - t0
    rate = n / dt if dt > 0 else float('inf')
    print(f'  done in {dt:.0f}s ({rate:.1f} tiles/s)', flush=True)
    return pd.DataFrame(rows)


def _aggregate(df, pixel_size_m):
    med = df['sigma_px_med'].dropna()
    if med.empty:
        return None
    q1, m, q3 = np.quantile(med, [0.25, 0.5, 0.75])
    return {
        'n_tiles': int(med.size),
        'sigma_px': float(m),
        'sigma_iqr': float(q3 - q1),
        'fwhm_px': float(FWHM_COEF * m),
        'gsd_eff_m': float(FWHM_COEF * m * pixel_size_m),
        'gsd_eff_q1': float(FWHM_COEF * q1 * pixel_size_m),
        'gsd_eff_q3': float(FWHM_COEF * q3 * pixel_size_m),
        'edges_total': int(df['n_accepted'].sum()),
    }


def _boxplot(per_tile, labels, pixel_size, out_path):
    try:
        import matplotlib.pyplot as plt
    except Exception as e:
        print(f'[plot] skipped: {e}')
        return
    data, names = [], []
    for df, label in zip(per_tile, labels):
        vals = (FWHM_COEF * df['sigma_px_med'].dropna() * pixel_size).tolist()
        if vals:
            data.append(vals)
            names.append(label)
    if not data:
        return
    fig, ax = plt.subplots(figsize=(1.2 * len(names) + 3, 4.5))
    ax.boxplot(data, showfliers=False, widths=0.6)
    ax.set_xticks(range(1, len(names) + 1))
    ax.set_xticklabels(names, rotation=15, ha='right')
    ax.set_ylabel('Effective GSD per tile (m)')
    ax.axhline(pixel_size, ls='--', color='0.4', label=f'nominal {pixel_size:g} m')
    ax.legend()
    ax.grid(True, axis='y', alpha=0.3)
    fig.tight_layout()
    fig.savefig(out_path, dpi=150)
    plt.close(fig)


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--inputs', nargs='+', required=True,
                   help='one or more folders; each folder = one model / image source')
    p.add_argument('--labels', nargs='+', required=True,
                   help='label per folder (same count as --inputs)')
    p.add_argument('--pattern', default='*.npy',
                   help='glob inside each folder (default *.npy)')
    p.add_argument('--pixel-size', type=float, default=10.0,
                   help='nominal pixel size in meters (default 10)')
    p.add_argument('--nodata', type=float, default=None,
                   help='value in the image to treat as nodata (default none)')
    p.add_argument('--out-dir', required=True)
    p.add_argument('--top-fraction', type=float, default=0.02,
                   help='fraction of strongest-gradient pixels kept as candidates')
    p.add_argument('--border', type=int, default=8,
                   help='pixels excluded near image border')
    p.add_argument('--half-len', type=int, default=8,
                   help='profile half-length; total samples = 2*half_len + 1')
    p.add_argument('--sigma-min', type=float, default=0.4)
    p.add_argument('--sigma-max', type=float, default=6.0)
    p.add_argument('--min-r2', type=float, default=0.9)
    p.add_argument('--min-contrast-rel', type=float, default=0.05)
    p.add_argument('--x0-bound', type=float, default=2.5)
    p.add_argument('--no-plot', action='store_true')
    p.add_argument('--jobs', type=int, default=-1,
                   help='joblib n_jobs for per-tile parallelism (-1 = all cores)')
    args = p.parse_args()

    if len(args.inputs) != len(args.labels):
        p.error('--inputs and --labels must have the same length')

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    kw = dict(
        top_fraction=args.top_fraction,
        border=args.border,
        half_len=args.half_len,
        sigma_bounds=(args.sigma_min, args.sigma_max),
        min_r2=args.min_r2,
        min_contrast_rel=args.min_contrast_rel,
        x0_bound=args.x0_bound,
    )

    per_tile_dfs = []
    summary_rows = []
    t_all = time.time()
    for i, (folder, label) in enumerate(zip(args.inputs, args.labels), 1):
        print(f'[{i}/{len(args.inputs)}] {label}  {folder}', flush=True)
        df = analyze_folder(folder, args.pixel_size, args.pattern, args.nodata,
                            n_jobs=args.jobs, **kw)
        df['model'] = label
        df.to_csv(out_dir / f'esf_per_tile_{label}.csv', index=False)
        per_tile_dfs.append(df)

        agg = _aggregate(df, args.pixel_size)
        if agg is None:
            print(f'  no valid tiles for {label}')
            continue
        summary_rows.append({'model': label, **agg})
        print(f'  {agg["n_tiles"]} tiles | sigma={agg["sigma_px"]:.3f} px | '
              f'FWHM={agg["fwhm_px"]:.3f} px | '
              f'GSDe={agg["gsd_eff_m"]:.2f} m '
              f'(IQR {agg["gsd_eff_q1"]:.2f}–{agg["gsd_eff_q3"]:.2f})')

    summary = pd.DataFrame(summary_rows)
    summary.to_csv(out_dir / 'esf_summary.csv', index=False)
    print(f'\nAll folders done in {time.time() - t_all:.0f}s')
    print('Summary:')
    print(summary.to_string(index=False))

    if per_tile_dfs:
        pd.concat(per_tile_dfs, ignore_index=True).to_csv(
            out_dir / 'esf_per_tile_all.csv', index=False)
        if not args.no_plot:
            _boxplot(per_tile_dfs, args.labels, args.pixel_size,
                     out_dir / 'esf_boxplot.png')


if __name__ == '__main__':
    main()
