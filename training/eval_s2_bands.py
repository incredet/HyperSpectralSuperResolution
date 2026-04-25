#!/usr/bin/env python3
"""Compare SR outputs to real Sentinel-2 via SRF convolution.

For each test tile, simulates what S2 would see from the 32-band SR output
(s2_sim = R @ sr), then compares to the real S2 tile.  Produces a per-tile
CSV and optional figures.

Usage
-----
    python eval_s2_bands.py \
        --sr-dir experiments/mamba-cnmf/sr_outputs \
        --s2-root /path/to/EMIT_S-2_Matches/2026-04-02 \
        --srf-mat ../hif-benchmarking/data/srf_R.mat
"""

import argparse
import csv
import numpy as np
import rasterio
import scipy.io
from pathlib import Path
from tqdm import tqdm

S2_BANDS = ['B02', 'B03', 'B04', 'B05', 'B06', 'B07', 'B08', 'B8A', 'B11', 'B12']
S2_RGB = [2, 1, 0]  # B04, B03, B02


def find_s2_tile(s2_root, aoi, pair_id, tile_base):
    return s2_root / aoi / pair_id / 'tiles' / f'{pair_id}_{tile_base}_s2.tif'


def load_s2(path):
    with rasterio.open(path) as src:
        arr = src.read().astype(np.float32)
    return arr / 10_000.0


def simulate_s2(sr, R):
    """sr: (32, H, W), R: (10, 32) → (10, H, W)"""
    C, H, W = sr.shape
    return (R @ sr.reshape(C, -1)).reshape(R.shape[0], H, W)


def crop(arr, b):
    return arr[:, b:-b, b:-b] if b > 0 else arr


def per_band_rmse(a, b):
    return np.sqrt(((a - b) ** 2).mean(axis=(1, 2)))


def per_band_corr(a, b):
    C = a.shape[0]
    out = np.empty(C)
    for c in range(C):
        out[c] = np.corrcoef(a[c].ravel(), b[c].ravel())[0, 1]
    return out


def mean_sam(a, b):
    dot = (a * b).sum(axis=0)
    na = np.sqrt((a ** 2).sum(axis=0))
    nb = np.sqrt((b ** 2).sum(axis=0))
    cos = np.clip(dot / (na * nb + 1e-10), -1, 1)
    return float(np.nanmean(np.arccos(cos) * (180.0 / np.pi)))


def to_rgb(arr, bands=S2_RGB, pct=98):
    rgb = np.stack([arr[b] for b in bands], axis=-1)
    mx = np.percentile(rgb, pct)
    return np.clip(rgb / max(mx, 1e-6), 0, 1)


def make_figure(s2_real, s2_sim, stem, sam_val):
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt

    fig, axes = plt.subplots(1, 3, figsize=(13, 4))
    axes[0].imshow(to_rgb(s2_real))
    axes[0].set_title('Real S2 (RGB)')
    axes[1].imshow(to_rgb(s2_sim))
    axes[1].set_title('Simulated S2 (RGB)')

    diff = np.sqrt(((s2_sim[S2_RGB] - s2_real[S2_RGB]) ** 2).mean(axis=0))
    im = axes[2].imshow(diff, cmap='hot')
    axes[2].set_title(f'RMSE (RGB bands)\nSAM = {sam_val:.2f}\u00b0')
    fig.colorbar(im, ax=axes[2], fraction=0.046, pad=0.04)

    for ax in axes:
        ax.axis('off')
    fig.suptitle(stem, fontsize=8, y=0.02)
    fig.tight_layout()
    return fig


def main():
    ap = argparse.ArgumentParser(
        description='Evaluate SR outputs against real Sentinel-2 via SRF convolution.')
    ap.add_argument('--sr-dir', required=True,
                    help='.npy SR outputs from inference.py')
    ap.add_argument('--s2-root', required=True,
                    help='root of S2 tiles: {aoi}/{pair}/tiles/*_s2.tif')
    ap.add_argument('--srf-mat', required=True,
                    help='srf_R.mat from compute_srf.py (key "R", shape 10x32)')
    ap.add_argument('--out-dir', default=None,
                    help='default: {sr-dir}/../eval_s2')
    ap.add_argument('--out-csv', default=None,
                    help='explicit CSV output path (overrides out-dir default)')
    ap.add_argument('--border', type=int, default=6,
                    help='border pixels to exclude (default: 6)')
    ap.add_argument('--n-vis', type=int, default=8)
    ap.add_argument('--no-vis', action='store_true')
    args = ap.parse_args()

    R = scipy.io.loadmat(args.srf_mat)['R'].astype(np.float32)
    assert R.shape == (10, 32), f'expected R (10,32), got {R.shape}'
    print(f'R: {R.shape}, row sums {R.sum(axis=1).round(4).tolist()}')

    sr_dir = Path(args.sr_dir)
    s2_root = Path(args.s2_root)
    out_dir = Path(args.out_dir) if args.out_dir else sr_dir.parent / 'eval_s2'
    out_dir.mkdir(parents=True, exist_ok=True)

    npy_files = sorted(sr_dir.glob('*.npy'))
    print(f'{len(npy_files)} SR outputs in {sr_dir}')
    if not npy_files:
        return

    if not args.no_vis:
        import matplotlib
        matplotlib.use('Agg')
        import matplotlib.pyplot as plt
        (out_dir / 'figures').mkdir(exist_ok=True)

    vis_step = max(1, len(npy_files) // args.n_vis)
    vis_set = set(range(0, len(npy_files), vis_step)[:args.n_vis]) if not args.no_vis else set()

    rows = []
    missing = 0

    for i, npy_path in enumerate(tqdm(npy_files, desc='eval_s2')):
        stem = npy_path.stem
        parts = stem.split('__')
        if len(parts) < 3:
            print(f'WARN: unexpected name {stem}')
            continue
        aoi, pair_id, tile_base = parts[0], parts[1], '__'.join(parts[2:])

        s2_path = find_s2_tile(s2_root, aoi, pair_id, tile_base)
        if not s2_path.exists():
            missing += 1
            continue

        sr = np.load(npy_path)       # (32, 576, 576)
        s2_real = load_s2(s2_path)   # (10, 576, 576)
        s2_sim = simulate_s2(sr, R)  # (10, 576, 576)

        if s2_real.shape[1:] != s2_sim.shape[1:]:
            print(f'WARN: shape mismatch {stem}: SR→{s2_sim.shape}, S2→{s2_real.shape}')
            continue

        sc = crop(s2_sim, args.border)
        rc = crop(s2_real, args.border)

        rmse = per_band_rmse(sc, rc)
        corr = per_band_corr(sc, rc)
        sam = mean_sam(sc, rc)

        row = {
            'tile': stem,
            'aoi': aoi.replace('aoi_', '', 1),
            'sam': round(sam, 4),
            'rmse_mean': round(float(rmse.mean()), 6),
            'corr_mean': round(float(corr.mean()), 4),
        }
        for b in range(10):
            row[f'rmse_{S2_BANDS[b]}'] = round(float(rmse[b]), 6)
            row[f'corr_{S2_BANDS[b]}'] = round(float(corr[b]), 4)
        rows.append(row)

        if i in vis_set:
            fig = make_figure(s2_real, s2_sim, stem, sam)
            fig.savefig(out_dir / 'figures' / f'{stem}.png', dpi=150, bbox_inches='tight')
            plt.close(fig)

    if missing:
        print(f'WARN: {missing} tiles had no matching S2 file')
    if not rows:
        print('No tiles evaluated.')
        return

    csv_path = Path(args.out_csv) if args.out_csv else out_dir / 'eval_s2_bands.csv'
    with open(csv_path, 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=rows[0].keys())
        w.writeheader()
        w.writerows(rows)

    def avg(k):
        return float(np.mean([r[k] for r in rows]))

    print(f'\nS2-band eval ({len(rows)} tiles):')
    print(f'  SAM={avg("sam"):.2f}°  RMSE={avg("rmse_mean"):.4f}  corr={avg("corr_mean"):.4f}')
    print(f'  Per-band RMSE: {" ".join(f"{b}={avg(f"rmse_{b}"):.4f}" for b in S2_BANDS)}')
    print(f'  Per-band corr: {" ".join(f"{b}={avg(f"corr_{b}"):.4f}" for b in S2_BANDS)}')
    print(f'\nSaved: {csv_path}')
    if not args.no_vis:
        print(f'Figures: {out_dir / "figures"}/')


if __name__ == '__main__':
    main()
