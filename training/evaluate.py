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
from model import RRDBNet6x
from essaformer import ESSAformer
from mambahsisr import MambaHSISR
from viz import (compute_psnr, compute_sam, compute_ergas, compute_all_metrics,
                 compute_per_band_correlation, to_rgb,
                 make_main_figure, make_perband_figure, make_zoom_figure)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', required=True)
    parser.add_argument('--checkpoint', required=True)
    parser.add_argument('--split', default='test', choices=['val', 'test'])
    parser.add_argument('--out-dir', help='where to save figures and CSV (default: checkpoint dir)')
    parser.add_argument('--n-vis', type=int, default=8, help='number of tiles to visualize')
    parser.add_argument('--no-vis', action='store_true', help='skip figure generation')
    args = parser.parse_args()

    with open(args.config) as f:
        cfg = yaml.safe_load(f)

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    zip_dir = Path(cfg['zip_dir'])
    all_aois = {zp.stem.split('__')[0] for zp in zip_dir.glob('*.zip')}
    train_aois, val_aois, test_aois = split_aois(all_aois, cfg['seed'], cfg.get('max_aois'))
    target_aois = test_aois if args.split == 'test' else val_aois
    index = build_index(zip_dir, cfg['gt_source'], target_aois)

    model_type = cfg.get('model_type', 'rrdbnet6x')
    bands = cfg['num_bands']
    if model_type == 'rrdbnet6x':
        net = RRDBNet6x(bands, bands,
                        cfg['num_feat'], cfg['num_block'], cfg['num_grow_ch'],
                        channel_attention=cfg.get('channel_attention', False))
    elif model_type == 'essaformer':
        net = ESSAformer(bands, bands, dim=cfg.get('dim', 252), upscale=cfg['scale'])
    elif model_type == 'mambahsisr':
        net = MambaHSISR(bands, bands,
                         img_size=cfg['gt_size'] // cfg['scale'],
                         embed_dim=cfg.get('embed_dim', 180),
                         depths=tuple(cfg.get('depths', [5, 5, 5])),
                         upscale=cfg['scale'])
    else:
        raise ValueError(f'Unknown model_type: {model_type}')
    state = torch.load(args.checkpoint, map_location='cpu', weights_only=False)
    key = 'params_ema' if 'params_ema' in state else 'params' if 'params' in state else None
    net.load_state_dict(state[key] if key else state)
    net = net.to(device).eval()
    print(f'Loaded {"EMA" if key == "params_ema" else "regular"} weights from {args.checkpoint}')

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

    for i, (zip_path, lr_name, gt_name, _) in enumerate(tqdm(index, desc=args.split)):
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
        all_sr_corr.append(np.mean(sr_corr))
        all_bic_corr.append(np.mean(bic_corr))

        tile_id = Path(lr_name).stem.replace('_emit_b32', '')
        rows.append({
            'tile': tile_id,
            'sr_psnr': m['sr_psnr'], 'sr_sam': m['sr_sam'], 'sr_ergas': m['sr_ergas'],
            'bic_psnr': m['bic_psnr'], 'bic_sam': m['bic_sam'], 'bic_ergas': m['bic_ergas'],
            'sr_corr': np.mean(sr_corr), 'bic_corr': np.mean(bic_corr),
        })

        if i in vis_set:
            aoi = tile_id.split('__')[0].replace('aoi_', '')

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

    # summary
    sr_psnrs = [r['sr_psnr'] for r in rows]
    bic_psnrs = [r['bic_psnr'] for r in rows]
    sr_sams = [r['sr_sam'] for r in rows]
    bic_sams = [r['bic_sam'] for r in rows]
    sr_ergas = [r['sr_ergas'] for r in rows]
    bic_ergas = [r['bic_ergas'] for r in rows]

    print(f'\n{args.split} results ({len(rows)} tiles):')
    print(f'  SR:      PSNR={np.mean(sr_psnrs):.2f} +/- {np.std(sr_psnrs):.2f}  '
          f'SAM={np.mean(sr_sams):.2f}  ERGAS={np.mean(sr_ergas):.1f}  '
          f'corr={np.mean(all_sr_corr):.4f}')
    print(f'  Bicubic: PSNR={np.mean(bic_psnrs):.2f} +/- {np.std(bic_psnrs):.2f}  '
          f'SAM={np.mean(bic_sams):.2f}  ERGAS={np.mean(bic_ergas):.1f}  '
          f'corr={np.mean(all_bic_corr):.4f}')
    print(f'  Delta:   PSNR=+{np.mean(sr_psnrs) - np.mean(bic_psnrs):.2f}  '
          f'SAM=-{np.mean(bic_sams) - np.mean(sr_sams):.2f}  '
          f'ERGAS=-{np.mean(bic_ergas) - np.mean(sr_ergas):.1f}')
    print(f'\nSaved: {csv_path}')
    if not args.no_vis:
        print(f'Figures: {out_dir / "figures"}/ ({len(vis_set)} tiles × 3 figures)')


if __name__ == '__main__':
    main()
