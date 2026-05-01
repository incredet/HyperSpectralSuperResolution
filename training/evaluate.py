import argparse
import csv
import numpy as np
import torch
import torch.nn.functional as F
import yaml
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from pathlib import Path
from tqdm import tqdm

from dataset import build_index, split_aois, read_tif_from_zip, EMIT_SCALE, EMIT_NODATA
from model import build_model, load_checkpoint
from viz import (compute_all_metrics, compute_per_band_correlation, compute_per_band_rmse,
                 make_main_figure, make_perband_figure, make_zoom_figure)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', required=True)
    parser.add_argument('--checkpoint', required=True)
    parser.add_argument('--split', default='test', choices=['val', 'test'])
    parser.add_argument('--out-dir', help='where to save figures and CSV (default: checkpoint dir)')
    parser.add_argument('--n-vis', type=int, default=8, help='number of tiles to visualize')
    parser.add_argument('--no-vis', action='store_true', help='skip figure generation')
    parser.add_argument('--zip-dir', help='override zip_dir in config')
    parser.add_argument('--gt-source', help='override gt_source in config')
    parser.add_argument('--split-json', help='JSON with {train,val,test} AOI lists; overrides split_aois')
    args = parser.parse_args()

    with open(args.config) as f:
        cfg = yaml.safe_load(f)
    if args.zip_dir:
        cfg['zip_dir'] = args.zip_dir
        cfg['zip_dir_full'] = args.zip_dir
    if args.gt_source:
        cfg['gt_source'] = args.gt_source

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    zip_dir = Path(cfg['zip_dir'])
    zip_dir_full = Path(cfg.get('zip_dir_full', cfg['zip_dir']))

    if args.split_json:
        import json
        with open(args.split_json) as f:
            split_data = json.load(f)
        val_aois = set(split_data['val'])
        test_aois = set(split_data['test'])
        print(f'Loaded split from {args.split_json}: {len(val_aois)} val / {len(test_aois)} test AOIs')
    else:
        all_aois = {zp.stem.split('__')[0] for zp in zip_dir.glob('*.zip')}
        all_aois |= {zp.stem.split('__')[0] for zp in zip_dir_full.glob('*.zip')}
        _, val_aois, test_aois = split_aois(all_aois, cfg['seed'], cfg.get('max_aois'))
    target_aois = test_aois if args.split == 'test' else val_aois
    index = build_index(zip_dir_full, cfg['gt_source'], target_aois)
    if not index:
        print(f'No tiles for split={args.split}; check zip_dir and AOI split.')
        return

    net = build_model(cfg, device)
    kind = load_checkpoint(net, args.checkpoint)
    net.eval()
    print(f'Loaded {kind} weights from {args.checkpoint}')

    out_dir = Path(args.out_dir) if args.out_dir else Path(args.checkpoint).parent.parent / f'eval_{args.split}'
    out_dir.mkdir(parents=True, exist_ok=True)
    if not args.no_vis:
        (out_dir / 'figures').mkdir(exist_ok=True)

    scale = cfg['scale']
    border = scale
    vis_bands = cfg.get('vis_bands', [10, 6, 2])
    gt_source = cfg.get('gt_source', '')

    # pick which tiles to visualize (spread across AOIs)
    vis_step = max(1, len(index) // args.n_vis)
    vis_set = set(range(0, len(index), vis_step)[:args.n_vis]) if not args.no_vis else set()

    rows = []
    all_sr_corr, all_bic_corr = [], []

    for i, (zip_path, lr_name, gt_name, scene_id) in enumerate(tqdm(index, desc=args.split)):
        lq = read_tif_from_zip(zip_path, lr_name)
        gt = read_tif_from_zip(zip_path, gt_name)

        mask = lq == EMIT_NODATA
        lq /= EMIT_SCALE
        lq[mask] = 0.0
        gt /= EMIT_SCALE
        gt = np.clip(np.nan_to_num(gt, nan=0.0), 0.0, 1.5)

        with torch.no_grad():
            sr = net(torch.from_numpy(lq[None]).float().to(device)).squeeze(0).cpu().numpy()
        bic = F.interpolate(
            torch.from_numpy(lq[None]).float(),
            scale_factor=scale, mode='bicubic', align_corners=False
        ).squeeze(0).numpy()

        m = compute_all_metrics(sr, gt, bic, scale, border)
        sr_corr = compute_per_band_correlation(sr, gt, border)
        bic_corr = compute_per_band_correlation(bic, gt, border)
        sr_brmse = compute_per_band_rmse(sr, gt, border)
        bic_brmse = compute_per_band_rmse(bic, gt, border)

        bare = Path(lr_name).stem.replace('__emit_b32', '')
        tile_id = scene_id + '__' + bare if scene_id else bare
        raw_aoi = scene_id.split('__')[0] if '__' in scene_id else ''
        aoi_id = raw_aoi.replace('aoi_', '', 1)
        row = {
            'tile': tile_id,
            'aoi': aoi_id,
            **m,
            'sr_corr': float(np.mean(sr_corr)),
            'bic_corr': float(np.mean(bic_corr)),
        }
        for b in range(len(sr_corr)):
            row[f'sr_corr_b{b:02d}'] = float(sr_corr[b])
            row[f'bic_corr_b{b:02d}'] = float(bic_corr[b])
            row[f'sr_rmse_b{b:02d}'] = float(sr_brmse[b])
            row[f'bic_rmse_b{b:02d}'] = float(bic_brmse[b])
        rows.append(row)

        if i in vis_set:
            aoi = aoi_id.replace('aoi_', '')

            fig = make_main_figure(sr, gt, bic, m, vis_bands, gt_source, aoi)
            fig.savefig(out_dir / 'figures' / f'{tile_id}_main.png', dpi=150, bbox_inches='tight')
            plt.close(fig)

            fig = make_perband_figure(sr, gt, bic, border, aoi)
            fig.savefig(out_dir / 'figures' / f'{tile_id}_perband.png', dpi=150, bbox_inches='tight')
            plt.close(fig)

            fig = make_zoom_figure(sr, gt, bic, vis_bands, aoi_label=aoi)
            fig.savefig(out_dir / 'figures' / f'{tile_id}_zoom.png', dpi=150, bbox_inches='tight')
            plt.close(fig)

    # save per-tile CSV
    csv_path = out_dir / f'{args.split}_metrics.csv'
    with open(csv_path, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=rows[0].keys())
        writer.writeheader()
        writer.writerows(rows)

    def avg(key):
        return float(np.mean([r[key] for r in rows]))

    print(f'\n{args.split} results ({len(rows)} tiles):')
    print(f'  SR:      PSNR={avg("sr_psnr"):.2f}  SSIM={avg("sr_ssim"):.4f}  '
          f'SAM={avg("sr_sam"):.2f}  ERGAS={avg("sr_ergas"):.2f}  '
          f'RMSE={avg("sr_rmse"):.4f}  corr={avg("sr_corr"):.4f}')
    print(f'  Bicubic: PSNR={avg("bic_psnr"):.2f}  SSIM={avg("bic_ssim"):.4f}  '
          f'SAM={avg("bic_sam"):.2f}  ERGAS={avg("bic_ergas"):.2f}  '
          f'RMSE={avg("bic_rmse"):.4f}  corr={avg("bic_corr"):.4f}')
    print(f'\nSaved: {csv_path}')
    if not args.no_vis:
        print(f'Figures: {out_dir / "figures"}/ ({len(vis_set)} tiles × 3 figures)')


if __name__ == '__main__':
    main()
