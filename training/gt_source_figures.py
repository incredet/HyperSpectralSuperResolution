"""Figures for Experiment 2: GT source comparison (CNMF vs SFIM vs synthetic)."""

import zipfile
from pathlib import Path

import numpy as np
import pandas as pd
import torch
import torch.nn.functional as F
import yaml
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches

from dataset import read_tif_from_zip, EMIT_SCALE, EMIT_NODATA
from viz import to_rgb, rgb_bands_for_wavelengths


ORDER = ['rrdb_cnmf', 'rrdb_sfim', 'rrdb_syn_emit', 'rrdb_syn_cnmf']
LABELS = {
    'rrdb_cnmf': 'CNMF',
    'rrdb_sfim': 'SFIM',
    'rrdb_syn_emit': 'Syn-EMIT',
    'rrdb_syn_cnmf': 'Syn-CNMF',
}
FWHM_COEF = 2.3548200450309493
S2_BANDS = ['B02', 'B03', 'B04', 'B05', 'B06', 'B07', 'B08', 'B8A', 'B11', 'B12']
S2_WL = [490, 560, 665, 705, 740, 783, 842, 865, 1610, 2190]


def _label(m):
    return LABELS.get(m, m)


def load_model(cfg_path, ckpt_path, device):
    from model import build_model, load_checkpoint
    cfg = yaml.safe_load(open(cfg_path))
    net = build_model(cfg, device)
    load_checkpoint(net, ckpt_path)
    net.eval()
    return net


def run_tile(models, zip_path, member, device, scale=6):
    arr = read_tif_from_zip(zip_path, member)
    mask = arr == EMIT_NODATA
    arr = arr / EMIT_SCALE
    arr[mask] = 0.0
    lr = np.clip(arr, 0.0, 1.5).astype(np.float32)

    lr_t = torch.from_numpy(lr[None]).to(device)
    bic = F.interpolate(lr_t.cpu().float(), scale_factor=scale,
                        mode='bicubic', align_corners=False).squeeze(0).numpy()
    preds = {}
    with torch.no_grad():
        for name, net in models.items():
            preds[name] = net(lr_t).squeeze(0).cpu().numpy()
    return {'lr': lr, 'bic': bic, 'preds': preds}


# ── comparison grid ──

def make_comparison_grid(tiles_data, rgb_bands, out_path,
                         models=None, crop_frac=0.30):
    models = models or ORDER
    cols = ['Bicubic'] + [_label(m) for m in models]
    n_rows, n_cols = len(tiles_data), len(cols)

    fig, axes = plt.subplots(
        n_rows * 2, n_cols,
        figsize=(2.4 * n_cols, 2.2 * n_rows * 2),
        gridspec_kw={'height_ratios': [3, 2] * n_rows},
        squeeze=False)

    for r, td in enumerate(tiles_data):
        imgs = [td['bic']] + [td['preds'][m] for m in models]
        _, H, W = td['bic'].shape
        row_f, row_z = r * 2, r * 2 + 1
        ch, cw = int(H * crop_frac), int(W * crop_frac)
        y0, x0 = (H - ch) // 2, (W - cw) // 2

        for c, img in enumerate(imgs):
            rgb = to_rgb(img, rgb_bands)
            axes[row_f, c].imshow(rgb)
            rect = mpatches.Rectangle((x0, y0), cw, ch, lw=1.2,
                                      edgecolor='yellow', facecolor='none')
            axes[row_f, c].add_patch(rect)
            axes[row_f, c].set_xticks([]); axes[row_f, c].set_yticks([])
            crop = to_rgb(img[:, y0:y0+ch, x0:x0+cw], rgb_bands)
            axes[row_z, c].imshow(crop, interpolation='nearest')
            axes[row_z, c].set_xticks([]); axes[row_z, c].set_yticks([])

        axes[row_f, 0].set_ylabel(td.get('label', f'Tile {r+1}'), fontsize=16)
        axes[row_z, 0].set_ylabel('zoom', fontsize=14, fontstyle='italic')

    for c, name in enumerate(cols):
        axes[0, c].set_title(name, fontsize=20)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


# ── gradient magnitude maps ──

def _sobel_gradient_mag(cube):
    # mean Sobel gradient magnitude across bands
    from scipy.ndimage import sobel
    B = cube.shape[0]
    gmag = np.zeros(cube.shape[1:], dtype=np.float64)
    for b in range(B):
        gx = sobel(cube[b], axis=1)
        gy = sobel(cube[b], axis=0)
        gmag += np.sqrt(gx**2 + gy**2)
    return (gmag / B).astype(np.float32)


def make_gradient_maps(tile_data, rgb_bands, out_path, models=None):
    models = models or ORDER
    bic = tile_data['bic']

    gmaps = [_sobel_gradient_mag(bic)]
    labs = ['Bicubic']
    for m in models:
        gmaps.append(_sobel_gradient_mag(tile_data['preds'][m]))
        labs.append(_label(m))

    n = len(gmaps)
    fig, axes = plt.subplots(1, n + 1, figsize=(2.8 * (n + 1), 3.2),
                             gridspec_kw={'width_ratios': [1] * n + [0.06]})

    vmax = np.quantile(np.concatenate([g.ravel() for g in gmaps]), 0.98)
    for i, (gm, lab) in enumerate(zip(gmaps, labs)):
        im = axes[i].imshow(gm, cmap='inferno', vmin=0, vmax=vmax)
        axes[i].set_title(lab, fontsize=16)
        axes[i].set_xticks([]); axes[i].set_yticks([])

    cb = fig.colorbar(im, cax=axes[-1])
    cb.set_label('Mean gradient magnitude', fontsize=12)
    cb.ax.tick_params(labelsize=11)

    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


# ── GSDe histogram ──

def make_gsde_histogram(esf_dir, out_path, models=None):
    models = models or ORDER
    esf_dir = Path(esf_dir)
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728']

    # draw in reverse so first model (CNMF) ends up on top
    fig, ax = plt.subplots(figsize=(6, 4))
    for i, m in reversed(list(enumerate(models))):
        p = esf_dir / f'esf_per_tile_{m}.csv'
        if not p.exists():
            print(f'  skip {m}: no {p.name}'); continue
        df = pd.read_csv(p)
        gsd = FWHM_COEF * df['sigma_px_med'].dropna() * 10
        ax.hist(gsd, bins=40, alpha=0.45, color=colors[i % len(colors)],
                edgecolor=colors[i % len(colors)], linewidth=0.8,
                label=f'{_label(m)} (med={gsd.median():.1f} m)')

    ax.axhline(y=0, color='k', lw=0.5)
    ax.set_xlabel('Effective GSD (m)', fontsize=14)
    ax.set_ylabel('Number of tiles', fontsize=14)
    ax.tick_params(labelsize=12)
    # legend in original ORDER (not reversed draw order)
    handles, labels = ax.get_legend_handles_labels()
    ax.legend(handles[::-1], labels[::-1], fontsize=11)
    ax.grid(True, axis='y', alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


# ── S2 per-band line plots ──

def _s2_perband(s2b_dir, metric, ylabel, out_path, models=None):
    models = models or ORDER
    s2b_dir = Path(s2b_dir)
    # band labels with center wavelength for context
    xlabels = [f'{b}\n{wl}nm' for b, wl in zip(S2_BANDS, S2_WL)]
    x = np.arange(len(S2_BANDS))

    fig, ax = plt.subplots(figsize=(8, 4.5))
    for m in models:
        p = s2b_dir / f's2_bands_{m}.csv'
        if not p.exists():
            continue
        df = pd.read_csv(p)
        vals = [df[f'{metric}_{b}'].mean() for b in S2_BANDS]
        ax.plot(x, vals, '-o', ms=5, lw=1.5, label=_label(m))

    ax.set_xticks(x)
    ax.set_xticklabels(xlabels, fontsize=9)
    ax.set_ylabel(ylabel, fontsize=14)
    ax.tick_params(axis='y', labelsize=12)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def make_s2_perband_corr(s2b_dir, out_path, models=None):
    _s2_perband(s2b_dir, 'corr', 'Correlation with real S2', out_path, models)


def make_s2_perband_rmse(s2b_dir, out_path, models=None):
    _s2_perband(s2b_dir, 'rmse', 'RMSE vs real S2', out_path, models)


def make_s2_perband_psnr(s2b_dir, out_path, models=None):
    """PSNR per S2 band: -20·log10(RMSE) assuming [0,1] data."""
    models = models or ORDER
    s2b_dir = Path(s2b_dir)
    xlabels = [f'{b}\n{wl}nm' for b, wl in zip(S2_BANDS, S2_WL)]
    x = np.arange(len(S2_BANDS))

    fig, ax = plt.subplots(figsize=(8, 4.5))
    for m in models:
        p = s2b_dir / f's2_bands_{m}.csv'
        if not p.exists():
            continue
        df = pd.read_csv(p)
        rmse_vals = [df[f'rmse_{b}'].mean() for b in S2_BANDS]
        psnr = [-20 * np.log10(v) if v > 0 else 60.0 for v in rmse_vals]
        ax.plot(x, psnr, '-o', ms=5, lw=1.5, label=_label(m))

    ax.set_xticks(x)
    ax.set_xticklabels(xlabels, fontsize=9)
    ax.set_ylabel('PSNR (dB) vs real S2', fontsize=14)
    ax.tick_params(axis='y', labelsize=12)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


# ── main ──

if __name__ == '__main__':
    import argparse

    p = argparse.ArgumentParser(description='GT source comparison figures')
    p.add_argument('--configs-dir', required=True)
    p.add_argument('--exp-dir', required=True, help='root experiments dir with model checkpoints')
    p.add_argument('--zip-dir', required=True, help='synthetic zips with 96x96 EMIT tiles')
    p.add_argument('--split-file', required=True, help='aoi_split.json')
    p.add_argument('--esf-dir', required=True, help='dir with esf_per_tile_{model}.csv files')
    p.add_argument('--s2b-dir', required=True, help='dir with s2_bands_{model}.csv files')
    p.add_argument('--pipe-config', required=True, help='pipeline_config.yaml')
    p.add_argument('--fig-dir', required=True)
    p.add_argument('--n-tiles', type=int, default=3, help='tiles for comparison grid')
    p.add_argument('--no-inference', action='store_true',
                   help='skip grid/residual (need inference), only make csv-based plots')
    args = p.parse_args()

    import json

    fig_dir = Path(args.fig_dir)
    fig_dir.mkdir(parents=True, exist_ok=True)

    pipe_cfg = yaml.safe_load(Path(args.pipe_config).read_text())
    wl = pipe_cfg['emit_target_wavelengths_nm']
    rgb_bands = rgb_bands_for_wavelengths(wl)

    CONFIGS = {
        'rrdb_cnmf':     ('exp1_rrdb_192x24.yaml',                   'exp1-rrdb-192x24-cnmf'),
        'rrdb_sfim':     ('exp2_rrdb_192x24_sfim.yaml',              'exp2-rrdb-192x24-sfim-sfim'),
        'rrdb_syn_emit': ('exp3_rrdb_192x24_synthetic_bicubic.yaml', 'exp3-rrdb-192x24-synthetic-bicubic'),
        'rrdb_syn_cnmf': ('exp3_rrdb_192x24_synthetic_cnmf.yaml',   'exp3-rrdb-192x24-synthetic-cnmf'),
    }

    if not args.no_inference:
        device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        configs_dir = Path(args.configs_dir)
        exp_dir = Path(args.exp_dir)

        models = {}
        for name, (cfg_file, exp_folder) in CONFIGS.items():
            ckpt = exp_dir / exp_folder / 'models' / 'best.pth'
            if not ckpt.exists():
                print(f'skip {name}: no ckpt at {ckpt}'); continue
            models[name] = load_model(str(configs_dir / cfg_file), str(ckpt), device)
            print(f'loaded {name}')

        # pick tiles: take every Nth from test set
        split = json.loads(Path(args.split_file).read_text())
        test_aois = set(split['test'])
        zip_dir = Path(args.zip_dir)
        all_tiles = []
        for zp in sorted(zip_dir.glob('*.zip')):
            if zp.stem.split('__')[0] not in test_aois:
                continue
            with zipfile.ZipFile(zp) as zf:
                members = sorted(n for n in zf.namelist() if n.endswith('_synthetic_gt.npy'))
            for m in members:
                all_tiles.append((zp, m))

        step = max(1, len(all_tiles) // args.n_tiles)
        picks = all_tiles[::step][:args.n_tiles]
        print(f'{len(picks)} tiles selected from {len(all_tiles)} total')

        tiles_data = []
        for zp, member in picks:
            td = run_tile(models, zp, member, device)
            bare = Path(member).stem.replace('_synthetic_gt', '')
            td['label'] = bare[-7:]  # short suffix for row label
            tiles_data.append(td)

        # 1. comparison grid
        make_comparison_grid(tiles_data, rgb_bands,
                             out_path=fig_dir / 'gt_comparison_grid.png')
        print('  gt_comparison_grid.png')

        # 2. gradient magnitude maps (first tile)
        make_gradient_maps(tiles_data[0], rgb_bands,
                           out_path=fig_dir / 'gt_gradient_maps.png')
        print('  gt_gradient_maps.png')

    # 3. GSDe histogram
    make_gsde_histogram(args.esf_dir, out_path=fig_dir / 'gt_gsde_histogram.png')
    print('  gt_gsde_histogram.png')

    # 4. S2 per-band
    make_s2_perband_corr(args.s2b_dir, out_path=fig_dir / 'gt_s2_perband_corr.png')
    print('  gt_s2_perband_corr.png')

    make_s2_perband_psnr(args.s2b_dir, out_path=fig_dir / 'gt_s2_perband_psnr.png')
    print('  gt_s2_perband_psnr.png')

    make_s2_perband_rmse(args.s2b_dir, out_path=fig_dir / 'gt_s2_perband_rmse.png')
    print('  gt_s2_perband_rmse.png')

    print(f'\nall figures in {fig_dir}')
