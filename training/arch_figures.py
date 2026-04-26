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
    from model import build_model, load_checkpoint
    with open(cfg_path) as f:
        cfg = yaml.safe_load(f)
    net = build_model(cfg, device)
    load_checkpoint(net, ckpt_path)
    net.eval()
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


def make_tile_grid(data, arch_names, rgb_bands, out_path, title=None,
                   zoom=False, crop_frac=0.30):
    import matplotlib.patches as mpatches
    cols = ['Bicubic'] + list(arch_names) + ['GT']
    n_rows, n_cols = len(data), len(cols)

    if zoom:
        fig, axes = plt.subplots(
            n_rows * 2, n_cols,
            figsize=(2.2 * n_cols, 2.0 * n_rows * 2),
            gridspec_kw={'height_ratios': [3, 2] * n_rows},
            squeeze=False)
    else:
        fig, axes = plt.subplots(n_rows, n_cols,
                                 figsize=(2.2 * n_cols, 2.4 * n_rows),
                                 squeeze=False)

    for r, (cls, d) in enumerate(data.items()):
        imgs = [d['bic']] + [d['preds'][n] for n in arch_names] + [d['gt']]
        _, H, W = d['gt'].shape

        if zoom:
            row_full, row_zoom = r * 2, r * 2 + 1
            ch, cw = int(H * crop_frac), int(W * crop_frac)
            y0, x0 = (H - ch) // 2, (W - cw) // 2
            for c, img in enumerate(imgs):
                rgb = to_rgb(img, rgb_bands)
                axes[row_full, c].imshow(rgb)
                rect = mpatches.Rectangle((x0, y0), cw, ch, lw=1.2,
                                          edgecolor='yellow', facecolor='none')
                axes[row_full, c].add_patch(rect)
                axes[row_full, c].set_xticks([]); axes[row_full, c].set_yticks([])
                crop = to_rgb(img[:, y0:y0+ch, x0:x0+cw], rgb_bands)
                axes[row_zoom, c].imshow(crop, interpolation='nearest')
                axes[row_zoom, c].set_xticks([]); axes[row_zoom, c].set_yticks([])
            axes[row_full, 0].set_ylabel(cls, fontsize=13)
            axes[row_zoom, 0].set_ylabel('zoom', fontsize=11, fontstyle='italic')
        else:
            for c, img in enumerate(imgs):
                axes[r, c].imshow(to_rgb(img, rgb_bands))
                axes[r, c].set_xticks([]); axes[r, c].set_yticks([])
            axes[r, 0].set_ylabel(cls, fontsize=13)

    for c, name in enumerate(cols):
        axes[0, c].set_title(name, fontsize=13)
    if title:
        fig.suptitle(title, fontsize=14)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
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
    fig, axes = plt.subplots(1, len(coords), figsize=(5 * len(coords), 4),
                             sharey=False)
    if len(coords) == 1:
        axes = [axes]
    for ax, (y, x0), lab in zip(axes, coords, labels):
        ax.plot(x, gt[:, y, x0], 'k-', lw=2, label='GT')
        ax.plot(x, bic[:, y, x0], '--', color='tab:orange', lw=1, label='Bicubic')
        for name in arch_names:
            ax.plot(x, d['preds'][name][:, y, x0], lw=1, alpha=0.8, label=name)
        ax.set_title(f'{class_key} \u2014 {lab} pixel', fontsize=13)
        ax.set_xlabel('Wavelength (nm)' if wavelengths is not None else 'Band', fontsize=12)
        ax.set_ylabel('Reflectance', fontsize=12)
        ax.tick_params(labelsize=11)
        ax.grid(True, alpha=0.3)
    axes[-1].legend(fontsize=10, loc='center left', bbox_to_anchor=(1.02, 0.5))
    plt.tight_layout()
    fig.subplots_adjust(right=0.88)
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def make_perband_psnr(master_csv, arch_names, wavelengths, out_path, split='test'):
    df = pd.read_csv(master_csv)
    df = df[df['split'] == split]
    n_bands = len(wavelengths)

    fig, ax = plt.subplots(figsize=(8, 4.5))
    for arch in arch_names:
        g = df[df['arch'] == arch]
        # per-tile per-band PSNR from RMSE, then average across tiles
        psnr = []
        for b in range(n_bands):
            rmse_vals = pd.to_numeric(g[f'sr_rmse_b{b:02d}'], errors='coerce').dropna()
            mse = (rmse_vals ** 2).clip(lower=1e-10)
            psnr.append((10 * np.log10(1.0 / mse)).mean())
        ax.plot(wavelengths, psnr, '-o', ms=4, lw=1.5, label=arch)

    g0 = df[df['arch'] == df['arch'].iloc[0]]
    bic_psnr = []
    for b in range(n_bands):
        rmse_vals = pd.to_numeric(g0[f'bic_rmse_b{b:02d}'], errors='coerce').dropna()
        mse = (rmse_vals ** 2).clip(lower=1e-10)
        bic_psnr.append((10 * np.log10(1.0 / mse)).mean())
    ax.plot(wavelengths, bic_psnr, '--', color='0.5', lw=1.5, label='Bicubic')

    ax.set_xlabel('Wavelength (nm)', fontsize=14)
    ax.set_ylabel('PSNR (dB)', fontsize=14)
    ax.tick_params(labelsize=12)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def make_perband_rmse(master_csv, arch_names, wavelengths, out_path, split='test'):
    df = pd.read_csv(master_csv)
    df = df[df['split'] == split]
    n_bands = len(wavelengths)

    fig, ax = plt.subplots(figsize=(8, 4.5))
    for arch in arch_names:
        g = df[df['arch'] == arch]
        rmse = [g[f'sr_rmse_b{b:02d}'].mean() for b in range(n_bands)]
        ax.plot(wavelengths, rmse, '-o', ms=4, lw=1.5, label=arch)

    g0 = df[df['arch'] == df['arch'].iloc[0]]
    bic = [g0[f'bic_rmse_b{b:02d}'].mean() for b in range(n_bands)]
    ax.plot(wavelengths, bic, '--', color='0.5', lw=1.5, label='Bicubic')

    ax.set_xlabel('Wavelength (nm)', fontsize=14)
    ax.set_ylabel('RMSE', fontsize=14)
    ax.tick_params(labelsize=12)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    ax.set_ylim(bottom=0)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def make_perband_corr(master_csv, arch_names, wavelengths, out_path, split='test'):
    df = pd.read_csv(master_csv)
    df = df[df['split'] == split]
    n_bands = len(wavelengths)

    fig, ax = plt.subplots(figsize=(8, 4.5))
    for arch in arch_names:
        g = df[df['arch'] == arch]
        corr = [g[f'sr_corr_b{b:02d}'].mean() for b in range(n_bands)]
        ax.plot(wavelengths, corr, '-o', ms=4, lw=1.2, label=arch)

    g0 = df[df['arch'] == df['arch'].iloc[0]]
    bic = [g0[f'bic_corr_b{b:02d}'].mean() for b in range(n_bands)]
    ax.plot(wavelengths, bic, '--', color='0.5', lw=1.5, label='Bicubic')

    ax.set_xlabel('Wavelength (nm)', fontsize=14)
    ax.set_ylabel('Correlation', fontsize=14)
    ax.tick_params(labelsize=12)
    ax.legend(fontsize=11, ncol=2)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def make_training_curves(archs, configs_dir, exp_suffix, out_path,
                         project='EMIT-S2-SuperResolution'):
    try:
        import wandb
    except ImportError:
        print('wandb not installed — skip training curves')
        return
    api = wandb.Api()
    fig, ax = plt.subplots(figsize=(8, 4.5))
    found = 0
    for arch, cfg_stem in archs.items():
        cfg = yaml.safe_load((Path(configs_dir) / f'{cfg_stem}.yaml').read_text())
        run_name = cfg['exp_name'] + exp_suffix
        runs = api.runs(project, filters={'display_name': run_name})
        if not runs:
            print(f'  {arch}: no WandB run "{run_name}"'); continue
        hist = runs[0].history(keys=['val/sr_psnr_mean', '_step'], samples=5000)
        hist = hist.dropna(subset=['val/sr_psnr_mean'])
        if len(hist) == 0:
            print(f'  {arch}: no val metrics'); continue
        ax.plot(hist['_step'], hist['val/sr_psnr_mean'], label=arch)
        found += 1
        print(f'  {arch}: {len(hist)} points, final {hist["val/sr_psnr_mean"].iloc[-1]:.2f} dB')
    if found == 0:
        plt.close(fig); print('no training curves found'); return
    ax.set_xlabel('Iteration', fontsize=14)
    ax.set_ylabel('Val PSNR (dB)', fontsize=14)
    ax.tick_params(labelsize=12)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)


def pick_best_per_family(master_csv, families):
    val_tbl = aggregate_arch_table(master_csv, split='val')
    best = {}
    for fam, variants in families.items():
        sub = val_tbl[val_tbl['arch'].isin(variants)].sort_values('psnr_mean', ascending=False)
        best[fam] = sub.iloc[0]['arch']
        print(f'{fam}: {best[fam]} (val PSNR {sub.iloc[0]["psnr_mean"]:.2f})')
    return list(best.values())


if __name__ == '__main__':
    import argparse

    p = argparse.ArgumentParser(description='Generate all arch comparison figures')
    p.add_argument('--master-csv', required=True)
    p.add_argument('--configs-dir', required=True)
    p.add_argument('--exp-dir', required=True, help='root experiments dir')
    p.add_argument('--exp-suffix', default='')
    p.add_argument('--zip-dir', required=True)
    p.add_argument('--aois-csv', required=True)
    p.add_argument('--pipe-config', required=True, help='pipeline_config.yaml')
    p.add_argument('--fig-dir', required=True)
    p.add_argument('--gt-source', default='cnmf')
    p.add_argument('--no-wandb', action='store_true')
    args = p.parse_args()

    import torch
    from viz import rgb_bands_for_wavelengths

    fig_dir = Path(args.fig_dir)
    fig_dir.mkdir(parents=True, exist_ok=True)

    pipe_cfg = yaml.safe_load(Path(args.pipe_config).read_text())
    wl = pipe_cfg['emit_target_wavelengths_nm']
    rgb_bands = rgb_bands_for_wavelengths(wl)
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    ARCHS = {
        'RRDB-192': 'exp1_rrdb_192x24',
        'RRDB-96':  'exp1_rrdb_96x24',
        'ESSA-252': 'exp1_essa_dim252',
        'ESSA-180': 'exp1_essa_dim180',
        'CST-180':  'exp1_cst_dim180',
        'CST-96':   'exp1_cst_dim96',
    }
    FAMILIES = {
        'RRDB': ['RRDB-192', 'RRDB-96'],
        'ESSA': ['ESSA-252', 'ESSA-180'],
        'CST':  ['CST-180', 'CST-96'],
    }

    configs_dir = Path(args.configs_dir)
    exp_dir = Path(args.exp_dir)

    # best per family (val PSNR)
    best_archs = pick_best_per_family(args.master_csv, FAMILIES)

    # load all 6 models
    all_models = {}
    for arch, cfg_stem in ARCHS.items():
        cfg_path = configs_dir / f'{cfg_stem}.yaml'
        cfg = yaml.safe_load(cfg_path.read_text())
        ckpt = exp_dir / (cfg['exp_name'] + args.exp_suffix) / 'models' / 'best.pth'
        if not ckpt.exists():
            print(f'skip {arch}: no ckpt at {ckpt}'); continue
        all_models[arch], _ = load_model(str(cfg_path), str(ckpt), device)
        print(f'loaded {arch}')

    tile_refs = select_tiles_by_landcover(
        args.master_csv, args.aois_csv, args.zip_dir, args.gt_source, split='test')

    # --- main text ---
    print('\n=== main text figures ===')

    # 1. visual grid — best per family, with zoom
    best_models = {a: all_models[a] for a in best_archs if a in all_models}
    data_best = run_predictions(best_models, tile_refs, device)
    make_tile_grid(data_best, best_archs, rgb_bands,
                   out_path=fig_dir / 'tile_grid_main.png', zoom=True)
    print(f'  tile_grid_main.png')

    # 2. per-band PSNR — best per family
    make_perband_psnr(args.master_csv, best_archs, wl,
                      out_path=fig_dir / 'perband_psnr_main.png')
    print(f'  perband_psnr_main.png')

    # 3. per-band RMSE — best per family
    make_perband_rmse(args.master_csv, best_archs, wl,
                      out_path=fig_dir / 'perband_rmse_main.png')
    print(f'  perband_rmse_main.png')

    # --- appendix ---
    print('\n=== appendix figures ===')

    # 4. full 6-model grid (no zoom)
    data_all = run_predictions(all_models, tile_refs, device)
    make_tile_grid(data_all, list(all_models), rgb_bands,
                   out_path=fig_dir / 'tile_grid_all.png',
                   title='Test tiles — 6× SR (trained on CNMF)')
    print(f'  tile_grid_all.png')

    # 5. per-band correlation — all 6
    make_perband_corr(args.master_csv, list(ARCHS), wl,
                      out_path=fig_dir / 'perband_corr_appendix.png')
    print(f'  perband_corr_appendix.png')

    # 6. per-band PSNR — all 6
    make_perband_psnr(args.master_csv, list(ARCHS), wl,
                      out_path=fig_dir / 'perband_psnr_appendix.png')
    print(f'  perband_psnr_appendix.png')

    # 7. per-band RMSE — all 6
    make_perband_rmse(args.master_csv, list(ARCHS), wl,
                      out_path=fig_dir / 'perband_rmse_appendix.png')
    print(f'  perband_rmse_appendix.png')

    # 8. spectral profiles — all 6
    for cls in data_all:
        safe = cls.replace('/', '_')
        make_spectral_figure(data_all, cls, list(all_models),
                             out_path=fig_dir / f'spectra_{safe}.png',
                             wavelengths=wl)
        print(f'  spectra_{safe}.png')

    # 9. training curves
    if not args.no_wandb:
        make_training_curves(ARCHS, args.configs_dir, args.exp_suffix,
                             out_path=fig_dir / 'training_curves.png')
        if (fig_dir / 'training_curves.png').exists():
            print(f'  training_curves.png')

    print(f'\nall figures in {fig_dir}')
