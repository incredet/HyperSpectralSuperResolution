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
COLORS = {
    'rrdb_cnmf': '#1f77b4',
    'rrdb_sfim': '#ff7f0e',
    'rrdb_syn_emit': '#2ca02c',
    'rrdb_syn_cnmf': '#d62728',
}
FWHM_COEF = 2.3548200450309493
S2_BANDS = ['B02', 'B03', 'B04', 'B05', 'B06', 'B07', 'B08', 'B8A', 'B11', 'B12']
S2_WL = [490, 560, 665, 705, 740, 783, 842, 865, 1610, 2190]

LANDCOVER_PREFIXES = {
    'Tropical forest':   ['tropical_forest'],
    'Temperate forest':  ['temperate_forest', 'boreal_forest', 'subtropical_forest'],
    'Cropland':          ['cropland', 'agriculture'],
    'Savanna':           ['savanna', 'grassland', 'steppe', 'woodland'],
    'Desert':            ['desert', 'salt_flat', 'barren', 'volcanic'],
    # 'Shrubland':         ['shrubland', 'alpine', 'fire_scar', 'mountain'],
    # 'Urban':             ['urban'],
    # 'Wetland':           ['wetland', 'coastal', 'peatland', 'mangrove'],
}


def _label(m):
    return LABELS.get(m, m)


def _aoi_key(lat, lon):
    return f'lat{lat}_lon{lon}'


def load_model(cfg_path, ckpt_path, device):
    from model import build_model, load_checkpoint
    cfg = yaml.safe_load(open(cfg_path))
    net = build_model(cfg, device)
    load_checkpoint(net, ckpt_path)
    net.eval()
    return net


def _classify_landcover(lc, prefixes):
    """Map a land_cover string to a class using prefix matching."""
    for cls, plist in prefixes.items():
        for pfx in plist:
            if lc == pfx or lc.startswith(pfx + '/') or lc.startswith(pfx + '_'):
                return cls
    return None


def select_tiles_by_landcover(aois_csv, zip_dir, split_json, split='test',
                              groups=None, skip=None):
    """Pick one representative tile per landcover class from test set.
    skip: dict {class_name: n} — skip first n matching zips for that class."""
    groups = groups or LANDCOVER_PREFIXES
    skip = skip or {}

    aois_df = pd.read_csv(aois_csv)
    aois_df['aoi'] = ['aoi_' + _aoi_key(r.lat, r.lon) for r in aois_df.itertuples()]
    aois_df['class'] = aois_df['land_cover'].apply(
        lambda lc: _classify_landcover(lc, groups))

    import json
    split_data = json.loads(Path(split_json).read_text())
    test_aois = set(split_data[split])

    zip_dir = Path(zip_dir)
    aoi_to_lc = dict(zip(aois_df['aoi'], aois_df['land_cover']))

    picked = {}
    for cls in groups:
        cls_aois = set(aois_df[aois_df['class'] == cls]['aoi'])
        n_before = len(cls_aois)
        cls_aois &= test_aois
        if not cls_aois:
            print(f'  {cls}: {n_before} AOIs in class, 0 in test split')
            continue
        pure = {a for a in cls_aois if '/' not in aoi_to_lc.get(a, '/')}
        prefer = sorted(pure) if pure else sorted(cls_aois)

        n_skip = skip.get(cls, 0)
        hits = 0
        for zp in sorted(zip_dir.glob('*.zip')):
            aoi = zp.stem.split('__')[0]
            if aoi not in prefer:
                continue
            with zipfile.ZipFile(zp) as zf:
                gt_members = sorted(n for n in zf.namelist()
                                    if n.endswith('_synthetic_gt.npy'))
            if gt_members:
                if hits < n_skip:
                    hits += 1
                    continue
                picked[cls] = (zp, gt_members[len(gt_members) // 2])
                print(f'  {cls}: {aoi} ({aoi_to_lc.get(aoi, "?")})')
                break

    return picked


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

def make_comparison_grid(data, rgb_bands, out_path,
                         models=None, crop_frac=0.30):
    """data: OrderedDict {class_name: {'bic': ..., 'preds': ...}}"""
    models = models or ORDER
    cols = ['Bicubic'] + [_label(m) for m in models]
    n_rows, n_cols = len(data), len(cols)

    fig, axes = plt.subplots(
        n_rows * 2, n_cols,
        figsize=(2.4 * n_cols, 2.2 * n_rows * 2),
        gridspec_kw={'height_ratios': [3, 2] * n_rows},
        squeeze=False)

    for r, (cls, td) in enumerate(data.items()):
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

        axes[row_f, 0].set_ylabel(cls, fontsize=16)
        axes[row_z, 0].set_ylabel('zoom', fontsize=14, fontstyle='italic')

    for c, name in enumerate(cols):
        axes[0, c].set_title(name, fontsize=20)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)



def _sobel_gradient_mag(cube):
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


# ── GSDe histogram (stacked subplots) ──

def make_gsde_histogram(esf_dir, out_path, models=None):
    models = models or ORDER
    esf_dir = Path(esf_dir)

    # collect data first to get shared bins
    gsd_data = {}
    for m in models:
        p = esf_dir / f'esf_per_tile_{m}.csv'
        if not p.exists():
            print(f'  skip {m}: no {p.name}'); continue
        df = pd.read_csv(p)
        gsd_data[m] = FWHM_COEF * df['sigma_px_med'].dropna() * 10

    if not gsd_data:
        return

    all_vals = np.concatenate(list(gsd_data.values()))
    bins = np.linspace(all_vals.min() * 0.9, all_vals.max() * 1.05, 45)

    n = len(gsd_data)
    fig, axes = plt.subplots(n, 1, figsize=(7, 1.8 * n), sharex=True)
    if n == 1:
        axes = [axes]

    for ax, m in zip(axes, models):
        if m not in gsd_data:
            continue
        gsd = gsd_data[m]
        color = COLORS.get(m, '#333')
        ax.hist(gsd, bins=bins, color=color, alpha=0.75,
                edgecolor=color, linewidth=0.6)
        med = gsd.median()
        ax.axvline(med, color='k', ls='--', lw=1.0)
        ax.text(0.97, 0.85, f'{_label(m)}  (med = {med:.1f} m)',
                transform=ax.transAxes, ha='right', fontsize=12,
                bbox=dict(facecolor='white', alpha=0.8, edgecolor='none'))
        ax.set_ylabel('Tiles', fontsize=12)
        ax.tick_params(labelsize=11)
        ax.grid(True, axis='y', alpha=0.3)

    axes[-1].set_xlabel('Effective GSD (m)', fontsize=14)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)



def _s2_perband(s2b_dir, metric, ylabel, out_path, models=None):
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
        vals = [df[f'{metric}_{b}'].mean() for b in S2_BANDS]
        ax.plot(x, vals, '-o', ms=5, lw=1.5, label=_label(m),
                color=COLORS.get(m))

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
        ax.plot(x, psnr, '-o', ms=5, lw=1.5, label=_label(m),
                color=COLORS.get(m))

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
    import argparse, json

    p = argparse.ArgumentParser(description='GT source comparison figures')
    p.add_argument('--configs-dir', required=True)
    p.add_argument('--exp-dir', required=True, help='root experiments dir')
    p.add_argument('--zip-dir', required=True, help='test zips (synthetic)')
    p.add_argument('--split-file', required=True, help='aoi_split.json')
    p.add_argument('--aois-csv', required=True, help='aois.csv with land_cover')
    p.add_argument('--esf-dir', required=True, help='dir with esf_per_tile CSVs')
    p.add_argument('--s2b-dir', required=True, help='dir with s2_bands CSVs')
    p.add_argument('--pipe-config', required=True, help='pipeline_config.yaml')
    p.add_argument('--fig-dir', required=True)
    p.add_argument('--no-inference', action='store_true',
                   help='skip grid/gradient (need GPU), only csv-based plots')
    args = p.parse_args()

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

        # select tiles by landcover class
        # skip first Urban zip — often lands on desert outskirts
        tile_refs = select_tiles_by_landcover(
            args.aois_csv, args.zip_dir, args.split_file,
            skip={'Urban': 1})
        print(f'selected {len(tile_refs)} tiles: {list(tile_refs.keys())}')

        from collections import OrderedDict
        data = OrderedDict()
        for cls, (zp, member) in tile_refs.items():
            td = run_tile(models, zp, member, device)
            data[cls] = td

        # 1. comparison grid
        make_comparison_grid(data, rgb_bands,
                             out_path=fig_dir / 'gt_comparison_grid.png')
        print('  gt_comparison_grid.png')

        # 2. gradient magnitude maps (first tile)
        first_cls = next(iter(data))
        make_gradient_maps(data[first_cls], rgb_bands,
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
