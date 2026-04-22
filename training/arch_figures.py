import zipfile
from pathlib import Path

import numpy as np
import pandas as pd
import torch
import torch.nn.functional as F
import yaml
import matplotlib.pyplot as plt

from dataset import read_tif_from_zip, EMIT_SCALE, GT_SUFFIXES
from viz import to_rgb


LANDCOVER_GROUPS = {
    'Vegetation':  ['tropical_forest', 'temperate_forest', 'boreal_forest',
                    'tropical_dry_forest', 'tropical_montane_forest',
                    'mangrove', 'grassland', 'savanna'],
    'Cropland':    ['cropland', 'cropland/rice', 'cropland/irrigated',
                    'cropland/plantation', 'cropland/arid'],
    'Arid/bare':   ['desert', 'desert/rock', 'salt_flat', 'mining/barren',
                    'shrubland/semi-arid', 'shrubland/mediterranean',
                    'alpine/mountain', 'alpine/grassland', 'fire_scar'],
    'Built/water': ['urban', 'urban/arid', 'urban/tropical', 'urban/temperate',
                    'wetland', 'wetland/coastal', 'coastal/delta'],
}

SR_METRICS = ('psnr', 'ssim', 'sam', 'ergas', 'rmse', 'corr')


def _fmt_coord(v):
    s = f'{v:.6f}'.rstrip('0')
    return s + '0' if s.endswith('.') else s


def _aoi_key(lat, lon):
    return f'lat{_fmt_coord(lat)}_lon{_fmt_coord(lon)}'


def load_model(cfg_path, ckpt_path, device):
    with open(cfg_path) as f:
        cfg = yaml.safe_load(f)
    mt = cfg.get('model_type', 'rrdbnet6x')
    if mt == 'rrdbnet6x':
        from model import RRDBNet6x
        net = RRDBNet6x(cfg['num_bands'], cfg['num_bands'],
                        cfg['num_feat'], cfg['num_block'], cfg['num_grow_ch'],
                        channel_attention=cfg.get('channel_attention', False))
    elif mt == 'essaformer':
        from essaformer import ESSAformer
        net = ESSAformer(cfg['num_bands'], cfg['num_bands'],
                         dim=cfg.get('dim', 252), upscale=cfg['scale'])
    elif mt == 'cst':
        from cst import CST
        net = CST(inp_channels=cfg['num_bands'], out_channels=cfg['num_bands'],
                  dim=cfg.get('dim', 90),
                  depths=tuple(cfg.get('depths', [6] * 6)),
                  num_heads=tuple(cfg.get('num_heads', [6] * 6)),
                  mlp_ratio=cfg.get('mlp_ratio', 2),
                  drop_path_rate=cfg.get('drop_path_rate', 0.1),
                  scale=cfg['scale'])
    else:
        raise ValueError(f'unknown model_type: {mt}')

    state = torch.load(ckpt_path, map_location='cpu', weights_only=False)
    key = 'params_ema' if 'params_ema' in state else 'params' if 'params' in state else None
    net.load_state_dict(state[key] if key else state)
    net.to(device).eval()
    return net, cfg


def aggregate_arch_table(master_csv, split='test', metrics=SR_METRICS):
    df = pd.read_csv(master_csv)
    df = df[df['split'] == split].copy()
    for m in metrics:
        df[f'sr_{m}']  = pd.to_numeric(df[f'sr_{m}'], errors='coerce')
        df[f'bic_{m}'] = pd.to_numeric(df[f'bic_{m}'], errors='coerce')

    rows = []
    for arch, g in df.groupby('arch'):
        row = {'arch': arch, 'params_M': g['params_M'].iloc[0], 'n_tiles': len(g)}
        for m in metrics:
            row[f'{m}_mean'] = g[f'sr_{m}'].mean()
            row[f'{m}_std']  = g[f'sr_{m}'].std()
        rows.append(row)

    sample = df[df['arch'] == df['arch'].iloc[0]]
    bic = {'arch': 'Bicubic', 'params_M': 0.0, 'n_tiles': len(sample)}
    for m in metrics:
        bic[f'{m}_mean'] = sample[f'bic_{m}'].mean()
        bic[f'{m}_std']  = sample[f'bic_{m}'].std()
    rows.append(bic)
    return pd.DataFrame(rows)


def select_tiles_by_landcover(master_csv, aois_csv, zip_dir, gt_source,
                              split='test', groups=None, classes=None):
    groups = groups or LANDCOVER_GROUPS
    lc_to_class = {lc: cls for cls, members in groups.items() for lc in members}

    aois = pd.read_csv(aois_csv)
    aois['aoi']   = [_aoi_key(r.lat, r.lon) for r in aois.itertuples()]
    aois['class'] = aois['land_cover'].map(lc_to_class)

    df = pd.read_csv(master_csv)
    df = df[df['split'] == split].merge(aois[['aoi', 'land_cover', 'class']],
                                        on='aoi', how='left')
    df = df.dropna(subset=['class'])
    df['sr_psnr'] = pd.to_numeric(df['sr_psnr'], errors='coerce')

    tile_mean = df.groupby(['class', 'tile'])['sr_psnr'].mean().reset_index()

    wanted = classes or list(groups.keys())
    picked = {}
    for cls in wanted:
        g = tile_mean[tile_mean['class'] == cls].sort_values('sr_psnr')
        if len(g) == 0:
            continue
        picked[cls] = g.iloc[len(g) // 2]['tile']

    return _resolve_tile_refs(picked, zip_dir, gt_source)


def _resolve_tile_refs(picked, zip_dir, gt_source):
    gt_stem = GT_SUFFIXES[gt_source]
    zip_dir = Path(zip_dir)
    out = {}

    for cls, tid in picked.items():
        # full tile ID: "{zip_stem}__{bare}" — derive zip path directly
        i = tid.rfind('__')
        if i > 0:
            scene, bare = tid[:i], tid[i+2:]
            zp = zip_dir / (scene + '.zip')
            if zp.exists():
                with zipfile.ZipFile(zp, 'r') as zf:
                    names = set(zf.namelist())
                ext = '.npy' if any(n.endswith('.npy') for n in names) else '.tif'
                lr_name = bare + '__emit_b32' + ext
                gt_name = bare + gt_stem + ext
                if lr_name in names and gt_name in names:
                    out[cls] = {'tile': tid, 'zip': str(zp),
                                'lr_name': lr_name, 'gt_name': gt_name}
                    continue
        # fallback: scan zips (old-style bare tile names)
        bare = tid.rstrip('_')
        for zp in sorted(zip_dir.glob('*.zip')):
            with zipfile.ZipFile(zp, 'r') as zf:
                names = set(zf.namelist())
            ext = '.npy' if any(n.endswith('.npy') for n in names) else '.tif'
            lr_name = bare + '__emit_b32' + ext
            gt_name = bare + gt_stem + ext
            if lr_name in names and gt_name in names:
                out[cls] = {'tile': tid, 'zip': str(zp),
                            'lr_name': lr_name, 'gt_name': gt_name}
                break

    missing = set(picked) - set(out)
    if missing:
        print(f'warn: {len(missing)} tiles not found in {zip_dir}: {list(missing)}')
    return out


def run_predictions(models, tile_refs, device, scale=6):
    data = {}
    for cls, ref in tile_refs.items():
        lr = read_tif_from_zip(ref['zip'], ref['lr_name'])
        gt = read_tif_from_zip(ref['zip'], ref['gt_name'])
        lr = np.clip(np.nan_to_num(lr / EMIT_SCALE, nan=0.0), 0.0, 1.5).astype(np.float32)
        gt = np.clip(np.nan_to_num(gt / EMIT_SCALE, nan=0.0), 0.0, 1.5).astype(np.float32)

        lr_t = torch.from_numpy(lr[None]).to(device)
        bic = F.interpolate(lr_t.cpu().float(), scale_factor=scale,
                            mode='bicubic', align_corners=False).squeeze(0).numpy()

        preds = {}
        with torch.no_grad():
            for name, net in models.items():
                preds[name] = net(lr_t).squeeze(0).cpu().numpy()

        data[cls] = {'tile': ref['tile'], 'lr': lr, 'gt': gt, 'bic': bic, 'preds': preds}
    return data


def make_tile_grid(data, arch_names, rgb_bands, out_path, title=None):
    cols = ['Bicubic'] + list(arch_names) + ['GT']
    n_rows, n_cols = len(data), len(cols)
    fig, axes = plt.subplots(n_rows, n_cols,
                             figsize=(1.8 * n_cols, 2.0 * n_rows),
                             squeeze=False)
    for r, (cls, d) in enumerate(data.items()):
        axes[r, 0].imshow(to_rgb(d['bic'], rgb_bands))
        for c, name in enumerate(arch_names, start=1):
            axes[r, c].imshow(to_rgb(d['preds'][name], rgb_bands))
        axes[r, -1].imshow(to_rgb(d['gt'], rgb_bands))
        axes[r, 0].set_ylabel(cls, fontsize=10)
        for c in range(n_cols):
            axes[r, c].set_xticks([])
            axes[r, c].set_yticks([])
    for c, name in enumerate(cols):
        axes[0, c].set_title(name, fontsize=10)
    if title:
        fig.suptitle(title, fontsize=11)
    plt.tight_layout()
    fig.savefig(out_path, dpi=180, bbox_inches='tight')
    plt.close(fig)


def make_spectral_figure(data, class_key, arch_names, out_path,
                         wavelengths=None, n_pixels=3):
    d = data[class_key]
    gt, bic = d['gt'], d['bic']
    _, H, W = gt.shape

    brightness = gt.mean(axis=0).flatten()
    order = np.argsort(brightness)
    qs = np.linspace(0.1, 0.9, n_pixels)
    picks = [order[int(q * (len(order) - 1))] for q in qs]
    coords = [(p // W, p % W) for p in picks]
    labels = [f'{int(q * 100)}% bright' for q in qs]

    x = wavelengths if wavelengths is not None else np.arange(gt.shape[0])
    fig, axes = plt.subplots(1, len(coords), figsize=(4.5 * len(coords), 3.3),
                             sharey=False)
    if len(coords) == 1:
        axes = [axes]
    for ax, (y, x0), lab in zip(axes, coords, labels):
        ax.plot(x, gt[:, y, x0], 'k-', lw=2, label='GT')
        ax.plot(x, bic[:, y, x0], '--', color='tab:orange', lw=1, label='Bicubic')
        for name in arch_names:
            ax.plot(x, d['preds'][name][:, y, x0], lw=1, alpha=0.8, label=name)
        ax.set_title(f'{class_key} — {lab} pixel', fontsize=9)
        ax.set_xlabel('Wavelength (nm)' if wavelengths is not None else 'Band')
        ax.set_ylabel('Reflectance')
        ax.grid(True, alpha=0.3)
    axes[-1].legend(fontsize=8, loc='best')
    plt.tight_layout()
    fig.savefig(out_path, dpi=180, bbox_inches='tight')
    plt.close(fig)
