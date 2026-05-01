import argparse
import time
from pathlib import Path

import numpy as np
import pandas as pd
from scipy.ndimage import map_coordinates, sobel
from scipy.special import erf
from tqdm import tqdm

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


def _fit_erf_batch(profiles, t, sigma_bounds, x0_bound,
                   n_sigma=80, n_x0=51,
                   min_r2=0.9, min_contrast_rel=0.05, span=None):
    # For fixed (x0, sigma), the erf step is linear in (a, b) — closed-form per profile.
    # Grid-search (x0, sigma), then parabolic-refine sigma in log space.
    N, M = profiles.shape
    sigma_grid = np.geomspace(sigma_bounds[0], sigma_bounds[1], n_sigma)
    x0_grid = np.linspace(-x0_bound, x0_bound, n_x0)

    sum_y = profiles.sum(axis=1)                              # [N]
    sum_yy = np.einsum('ij,ij->i', profiles, profiles)        # [N]
    ss_tot = sum_yy - (sum_y * sum_y) / M                     # [N]

    sqrt2 = np.sqrt(2.0)
    ssr_per_sigma = np.full((n_sigma, N), np.inf)
    b_per_sigma = np.zeros((n_sigma, N))

    for si, sigma in enumerate(sigma_grid):
        basis = 0.5 * (1.0 + erf((t[None, :] - x0_grid[:, None]) / (sqrt2 * sigma)))  # [Nx0, M]
        s1 = basis.sum(axis=1)                                # [Nx0]
        s2 = np.einsum('ij,ij->i', basis, basis)              # [Nx0]
        det = M * s2 - s1 * s1                                # [Nx0]
        ok = det > 1e-12
        if not ok.any():
            continue
        basis, s1, s2, det = basis[ok], s1[ok], s2[ok], det[ok]

        ybasis = profiles @ basis.T                           # [N, Nx0_ok]
        a = (s2[None, :] * sum_y[:, None] - s1[None, :] * ybasis) / det[None, :]
        b = (M * ybasis - s1[None, :] * sum_y[:, None]) / det[None, :]
        # ss_res via normal-equation identity: sum(y²) - a*sum(y) - b*sum(y*basis)
        ssr = sum_yy[:, None] - a * sum_y[:, None] - b * ybasis
        np.maximum(ssr, 0.0, out=ssr)

        best_x0 = np.argmin(ssr, axis=1)                      # [N]
        rows = np.arange(N)
        ssr_per_sigma[si] = ssr[rows, best_x0]
        b_per_sigma[si] = b[rows, best_x0]

    best_s = np.argmin(ssr_per_sigma, axis=0)                 # [N]
    rows = np.arange(N)
    best_ssr = ssr_per_sigma[best_s, rows]
    best_b = b_per_sigma[best_s, rows]

    log_sigma = np.log(sigma_grid)
    sigma_out = sigma_grid[best_s].astype(np.float64)
    interior = (best_s > 0) & (best_s < n_sigma - 1)
    if interior.any():
        idx = np.where(interior)[0]
        si = best_s[idx]
        r0 = ssr_per_sigma[si - 1, idx]
        r1 = ssr_per_sigma[si, idx]
        r2_ = ssr_per_sigma[si + 1, idx]
        denom = r0 - 2 * r1 + r2_
        step = log_sigma[1] - log_sigma[0]
        dx = np.zeros_like(r0)
        good = denom > 0
        dx[good] = 0.5 * (r0[good] - r2_[good]) / denom[good] * step
        np.clip(dx, -step, step, out=dx)
        sigma_out[idx] = np.exp(log_sigma[si] + dx)

    r2 = 1.0 - best_ssr / np.maximum(ss_tot, 1e-12)
    if span is None:
        span = np.ones(N)
    bad = (r2 < min_r2) | (np.abs(best_b) / np.maximum(span, 1e-9) < min_contrast_rel)
    sigma_out[bad] = np.nan
    return sigma_out


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
    n_sigma_grid=80,
    n_x0_grid=51,
    return_sigmas=False,
):
    scalar = _to_scalar(img, nodata=nodata)
    ys, xs, ny, nx = _select_edges(scalar, top_fraction, border)
    n_tried = int(ys.size)

    def _blank():
        out = {
            'n_tried': n_tried, 'n_accepted': 0,
            'sigma_px_med': np.nan, 'sigma_px_q1': np.nan, 'sigma_px_q3': np.nan,
            'sigma_iqr': np.nan, 'fwhm_px': np.nan, 'gsd_eff_m': np.nan,
        }
        if return_sigmas:
            out['sigmas'] = np.empty(0)
        return out

    if n_tried == 0:
        return _blank()

    # Batch sub-pixel profile sampling: one map_coordinates call for all candidates.
    t = np.arange(-half_len, half_len + 1, dtype=np.float64)
    M = t.size
    ys_prof = ys[:, None] + t[None, :] * ny[:, None]
    xs_prof = xs[:, None] + t[None, :] * nx[:, None]
    profiles = map_coordinates(
        scalar, [ys_prof.ravel(), xs_prof.ravel()],
        order=1, mode='reflect',
    ).reshape(n_tried, M)

    finite = np.isfinite(profiles).all(axis=1)
    span = profiles.max(axis=1) - profiles.min(axis=1)
    keep = finite & (span > 0)
    if not keep.any():
        return _blank()

    sigmas = _fit_erf_batch(
        profiles[keep], t, sigma_bounds, x0_bound,
        n_sigma=n_sigma_grid, n_x0=n_x0_grid,
        min_r2=min_r2, min_contrast_rel=min_contrast_rel, span=span[keep],
    )
    sigmas = sigmas[np.isfinite(sigmas)]

    out = {
        'n_tried': n_tried, 'n_accepted': int(sigmas.size),
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
    return estimate_esf(_load_image(path), pixel_size_m, nodata, **kw)


def _analyze_one(path, pixel_size_m, nodata, kw):
    try:
        r = analyze_file(path, pixel_size_m, nodata=nodata, **kw)
    except Exception as e:
        print(f'\n  [skip] {Path(path).name}: {e}')
        r = {'n_tried': 0, 'n_accepted': 0,
             'sigma_px_med': np.nan, 'sigma_px_q1': np.nan, 'sigma_px_q3': np.nan,
             'sigma_iqr': np.nan, 'fwhm_px': np.nan, 'gsd_eff_m': np.nan}
    r['file'] = Path(path).name
    return r


def analyze_folder(folder, pixel_size_m, pattern='*.npy', nodata=None,
                   n_jobs=1, **kw):
    folder = Path(folder)
    files = sorted(folder.glob(pattern))
    n = len(files)
    print(f'  {n} tiles', flush=True)
    t0 = time.time()
    rows = [_analyze_one(f, pixel_size_m, nodata, kw)
            for f in tqdm(files, desc=folder.name, unit='tile')]
    dt = time.time() - t0
    rate = n / dt if dt > 0 else float('inf')
    print(f'  done in {dt:.0f}s ({rate:.2f} tiles/s)', flush=True)
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
    p.add_argument('--n-sigma-grid', type=int, default=80,
                   help='log-spaced sigma grid size for batch fit (default 80)')
    p.add_argument('--n-x0-grid', type=int, default=51,
                   help='linear x0 grid size for batch fit (default 51)')
    p.add_argument('--no-plot', action='store_true')
    p.add_argument('--jobs', type=int, default=1,
                   help='ignored — fit is numpy-vectorized; kept for CLI back-compat')
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
        n_sigma_grid=args.n_sigma_grid,
        n_x0_grid=args.n_x0_grid,
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
