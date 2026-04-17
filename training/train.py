import argparse
import copy
import shutil
import time
from datetime import datetime
from pathlib import Path

import numpy as np
import torch
import torch.nn.functional as F
import wandb
import yaml
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

from dataset import PairedZipDataset, build_index, split_aois, worker_init_fn
from model import RRDBNet6x
from essaformer import ESSAformer
from mambahsisr import MambaHSISR
from losses import build_losses


def build_model(cfg, device):
    model_type = cfg.get('model_type', 'rrdbnet6x')
    bands = cfg['num_bands']

    if model_type == 'rrdbnet6x':
        model = RRDBNet6x(
            bands, bands,
            cfg['num_feat'], cfg['num_block'], cfg['num_grow_ch'],
            channel_attention=cfg.get('channel_attention', False),
        )
        tag = f'RRDBNet6x {cfg["num_feat"]}f/{cfg["num_block"]}b'
    elif model_type == 'essaformer':
        model = ESSAformer(
            bands, bands,
            dim=cfg.get('dim', 252), upscale=cfg['scale'],
        )
        tag = f'ESSAformer dim={cfg.get("dim", 252)}'
    elif model_type == 'mambahsisr':
        model = MambaHSISR(
            bands, bands,
            img_size=cfg['gt_size'] // cfg['scale'],
            embed_dim=cfg.get('embed_dim', 180),
            depths=tuple(cfg.get('depths', [5, 5, 5])),
            d_state=cfg.get('d_state', 16),
            resi_connection=cfg.get('resi_connection', '1conv'),
            upscale=cfg['scale'],
        )
        tag = f'MambaHSISR dim={cfg.get("embed_dim", 180)} d={cfg.get("depths", [5,5,5])} d_state={cfg.get("d_state", 16)} resi={cfg.get("resi_connection", "1conv")}'
    else:
        raise ValueError(f'Unknown model_type: {model_type}')

    model = model.to(device)
    n_params = sum(p.numel() for p in model.parameters()) / 1e6
    print(f'Model:      {tag}  ({n_params:.1f}M params)')
    return model
from viz import (compute_all_metrics, compute_per_band_correlation,
                 compute_psnr, compute_sam, compute_ergas,
                 make_main_figure, make_perband_figure, make_zoom_figure,
                 select_vis_indices)


@torch.no_grad()
def validate(net, dataset, cfg, device, step, do_vis=False):
    net.eval()
    scale = cfg['scale']
    border = scale
    vis_bands = cfg.get('vis_bands', [10, 6, 2])

    if do_vis:
        n_vis = min(cfg.get('n_vis', 4), len(dataset))
        vis_indices = set(select_vis_indices(dataset, n_vis))
    else:
        vis_indices = set()

    # Cache bicubic metrics per tile — they never change between val runs.
    # Only the bic image itself is recomputed when needed for vis.
    if not hasattr(validate, '_bic_cache'):
        validate._bic_cache = {}

    all_metrics = []
    all_sr_corr, all_bic_corr = [], []
    cached = {}

    for idx in range(len(dataset)):
        data = dataset[idx]
        lq = data['lq'].unsqueeze(0).to(device)
        sr = net(lq).squeeze(0).cpu().numpy()
        lq_np = data['lq'].numpy()
        gt_np = data['gt'].numpy()

        bic_entry = validate._bic_cache.get(idx)
        need_bic_image = idx in vis_indices

        if bic_entry is None:
            bic_np = F.interpolate(
                torch.from_numpy(lq_np[None]), scale_factor=scale,
                mode='bicubic', align_corners=False
            ).squeeze(0).numpy()
            bic_psnr = compute_psnr(bic_np, gt_np, border)
            bic_sam = compute_sam(bic_np, gt_np, border)
            bic_ergas = compute_ergas(bic_np, gt_np, scale, border)
            bic_corr = compute_per_band_correlation(bic_np, gt_np, border)
            validate._bic_cache[idx] = (bic_psnr, bic_sam, bic_ergas, bic_corr)
        else:
            bic_psnr, bic_sam, bic_ergas, bic_corr = bic_entry
            if need_bic_image:
                bic_np = F.interpolate(
                    torch.from_numpy(lq_np[None]), scale_factor=scale,
                    mode='bicubic', align_corners=False
                ).squeeze(0).numpy()
            else:
                bic_np = None

        m = {
            'sr_psnr': compute_psnr(sr, gt_np, border),
            'sr_sam': compute_sam(sr, gt_np, border),
            'sr_ergas': compute_ergas(sr, gt_np, scale, border),
            'bic_psnr': bic_psnr,
            'bic_sam': bic_sam,
            'bic_ergas': bic_ergas,
        }
        all_metrics.append(m)
        all_sr_corr.append(compute_per_band_correlation(sr, gt_np, border))
        all_bic_corr.append(bic_corr)

        if idx in vis_indices:
            cached[idx] = (sr, gt_np, bic_np, m)

    n_val = len(dataset)
    sr_psnrs = [m['sr_psnr'] for m in all_metrics]
    bic_psnrs = [m['bic_psnr'] for m in all_metrics]
    sr_sams = [m['sr_sam'] for m in all_metrics]
    bic_sams = [m['bic_sam'] for m in all_metrics]
    sr_ergas = [m['sr_ergas'] for m in all_metrics]
    bic_ergas = [m['bic_ergas'] for m in all_metrics]

    wandb.log({
        'val/sr_psnr_mean': np.mean(sr_psnrs),
        'val/sr_sam_mean': np.mean(sr_sams),
        'val/sr_ergas_mean': np.mean(sr_ergas),
        'val/bic_psnr_mean': np.mean(bic_psnrs),
        'val/bic_sam_mean': np.mean(bic_sams),
        'val/bic_ergas_mean': np.mean(bic_ergas),
        'val/delta_psnr': np.mean(sr_psnrs) - np.mean(bic_psnrs),
        'val/delta_sam': np.mean(bic_sams) - np.mean(sr_sams),
        'val/delta_ergas': np.mean(bic_ergas) - np.mean(sr_ergas),
        'val/sr_corr_mean': np.mean(all_sr_corr),
        'val/bic_corr_mean': np.mean(all_bic_corr),
        'val/sr_wins_psnr': sum(m['sr_psnr'] > m['bic_psnr'] for m in all_metrics) / n_val,
        'val/sr_wins_sam': sum(m['sr_sam'] < m['bic_sam'] for m in all_metrics) / n_val,
        'val/sr_wins_ergas': sum(m['sr_ergas'] < m['bic_ergas'] for m in all_metrics) / n_val,
        'global_step': step,
    })

    if cached:
        gt_source = cfg.get('gt_source', '')
        images = {}
        for i, idx in enumerate(sorted(cached)):
            sr_np, gt_np, bic_np, metrics = cached[idx]
            aoi = dataset.index[idx][3].split('__')[0].replace('aoi_', '')

            fig = make_main_figure(sr_np, gt_np, bic_np, metrics, vis_bands, gt_source, aoi)
            images[f'val_vis/tile_{i}_main'] = wandb.Image(fig)
            plt.close(fig)

            fig = make_perband_figure(sr_np, gt_np, bic_np, border, aoi)
            images[f'val_vis/tile_{i}_perband'] = wandb.Image(fig)
            plt.close(fig)

            fig = make_zoom_figure(sr_np, gt_np, bic_np, vis_bands, aoi_label=aoi)
            images[f'val_vis/tile_{i}_zoom'] = wandb.Image(fig)
            plt.close(fig)

        wandb.log({**images, 'global_step': step})

    mean_psnr = np.mean(sr_psnrs)
    tag = ' [+vis]' if do_vis else ''
    print(f'  val{tag} PSNR={mean_psnr:.2f}  SAM={np.mean(sr_sams):.2f}  '
          f'ERGAS={np.mean(sr_ergas):.1f}  '
          f'delta_PSNR={np.mean(sr_psnrs) - np.mean(bic_psnrs):+.2f}')
    return mean_psnr


def save_ckpt(model, ema, optimizer, scheduler, scaler, step, best_psnr, path):
    torch.save({
        'params': model.state_dict(),
        'params_ema': ema.state_dict(),
        'optimizer': optimizer.state_dict(),
        'scheduler': scheduler.state_dict(),
        'scaler': scaler.state_dict(),
        'iter': step,
        'best_psnr': best_psnr,
    }, path)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--config', required=True)
    parser.add_argument('--resume')
    parser.add_argument('--zip-dir')
    parser.add_argument('--out-dir')
    args = parser.parse_args()

    with open(args.config) as f:
        cfg = yaml.safe_load(f)
    if args.zip_dir:
        cfg['zip_dir'] = args.zip_dir
    if args.out_dir:
        cfg['out_dir'] = args.out_dir

    torch.manual_seed(cfg['seed'])
    np.random.seed(cfg['seed'])
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    exp_name = cfg.get('exp_name')
    if not exp_name:
        model_type = cfg.get('model_type', 'rrdbnet6x')
        if model_type == 'rrdbnet6x':
            exp_name = f"{cfg['gt_source']}-{cfg['num_feat']}x{cfg['num_block']}-{datetime.now():%m%d}"
        else:
            exp_name = f"{cfg['gt_source']}-{model_type}-{datetime.now():%m%d}"
    out_dir = Path(cfg['out_dir']) / exp_name
    (out_dir / 'models').mkdir(parents=True, exist_ok=True)
    shutil.copy2(args.config, out_dir / 'config.yaml')

    print(f'Experiment: {exp_name}')
    print(f'Output:     {out_dir}')

    # --- data ---
    zip_dir = Path(cfg['zip_dir'])
    zip_dir_full = Path(cfg.get('zip_dir_full', cfg['zip_dir']))

    # pool AOIs from both folders so split matches the original 109-AOI split
    all_aois = {zp.stem.split('__')[0] for zp in zip_dir.glob('*.zip')}
    all_aois |= {zp.stem.split('__')[0] for zp in zip_dir_full.glob('*.zip')}
    train_aois, val_aois, _ = split_aois(all_aois, cfg['seed'], cfg.get('max_aois'))

    train_index = build_index(zip_dir, cfg['gt_source'], train_aois)
    val_index = build_index(zip_dir_full, cfg['gt_source'], val_aois)

    preload = cfg.get('preload', False)
    train_set = PairedZipDataset(train_index, cfg['scale'], cfg['gt_size'], preload=preload)
    val_set = PairedZipDataset(val_index, cfg['scale'], gt_size=None, augment=False, preload=preload)

    nw = 2 if preload else cfg.get('num_workers', 4)
    train_loader = torch.utils.data.DataLoader(
        train_set, batch_size=cfg['batch_size'], shuffle=True,
        num_workers=nw, pin_memory=True, drop_last=True,
        persistent_workers=nw > 0,
        worker_init_fn=worker_init_fn,
    )

    # --- model ---
    model = build_model(cfg, device)
    ema = copy.deepcopy(model).eval()

    # --- losses ---
    loss_fns = build_losses(cfg['loss'], device)

    # --- optimizer ---
    optimizer = torch.optim.Adam(model.parameters(), lr=cfg['lr'], betas=tuple(cfg['betas']))
    scheduler = torch.optim.lr_scheduler.MultiStepLR(optimizer, cfg['milestones'], cfg['gamma'])

    start_iter = 0
    best_psnr = 0.0
    _scaler_state = None

    if args.resume:
        ckpt = torch.load(args.resume, map_location='cpu', weights_only=False)
        model.load_state_dict(ckpt['params'])
        ema.load_state_dict(ckpt.get('params_ema', ckpt['params']))
        if 'optimizer' in ckpt:
            optimizer.load_state_dict(ckpt['optimizer'])
            scheduler.load_state_dict(ckpt['scheduler'])
            for pg in optimizer.param_groups:
                pg['lr'] = cfg['lr']
            start_iter = ckpt['iter']
            best_psnr = ckpt.get('best_psnr', 0.0)
            print(f'Resumed from iter {start_iter}, best PSNR={best_psnr:.2f}, lr overridden to {cfg["lr"]:.1e}')
        else:
            print(f'Loaded weights from {args.resume} (no optimizer state, starting fresh)')
        _scaler_state = ckpt.get('scaler')

    wandb.init(
        project=cfg['wandb']['project'],
        entity=cfg['wandb'].get('entity'),
        name=exp_name,
        config=cfg,
        resume='allow' if args.resume else None,
    )

    # --- training loop ---
    use_amp = cfg.get('amp', True) and device.type == 'cuda'
    scaler = torch.amp.GradScaler('cuda', enabled=use_amp)
    if args.resume and _scaler_state:
        scaler.load_state_dict(_scaler_state)
    model.train()
    loader_iter = iter(train_loader)
    ema_decay = cfg['ema_decay']
    print_freq = cfg.get('print_freq', 100)
    t0 = time.time()

    data_time = 0.0
    for step in range(start_iter, cfg['total_iter']):
        t_data = time.time()
        try:
            batch = next(loader_iter)
        except StopIteration:
            loader_iter = iter(train_loader)
            batch = next(loader_iter)
        data_time += time.time() - t_data

        lq = batch['lq'].to(device)
        gt = batch['gt'].to(device)

        with torch.amp.autocast('cuda', enabled=use_amp):
            sr = model(lq)
            loss = torch.tensor(0.0, device=device)
            for name, (fn, weight) in loss_fns.items():
                loss = loss + weight * fn(sr, gt)

        optimizer.zero_grad()
        scaler.scale(loss).backward()
        if cfg.get('grad_clip', 0) > 0:
            scaler.unscale_(optimizer)
            torch.nn.utils.clip_grad_norm_(model.parameters(), cfg['grad_clip'])
        scaler.step(optimizer)
        scaler.update()
        scheduler.step()

        with torch.no_grad():
            for p, pe in zip(model.parameters(), ema.parameters()):
                pe.data.mul_(ema_decay).add_(p.data, alpha=1 - ema_decay)

        if cfg.get('abort_on_nan') and torch.isnan(loss):
            print(f'NaN at iter {step + 1}')
            break

        if (step + 1) % print_freq == 0:
            elapsed = time.time() - t0
            wandb.log({
                'train/loss': loss.item(),
                'train/lr': optimizer.param_groups[0]['lr'],
                'global_step': step + 1,
            })
            print(f'[{step + 1}/{cfg["total_iter"]}]  '
                  f'loss={loss.item():.4f}  lr={optimizer.param_groups[0]["lr"]:.2e}  '
                  f'{print_freq / elapsed:.1f} it/s  data={data_time:.1f}s/{elapsed:.1f}s')
            t0 = time.time()
            data_time = 0.0

        if (step + 1) % cfg['val_freq'] == 0:
            vis_freq = cfg.get('vis_freq', cfg['val_freq'] * 5)
            do_vis = (step + 1) % vis_freq == 0
            psnr = validate(ema, val_set, cfg, device, step + 1, do_vis=do_vis)
            model.train()
            if psnr > best_psnr:
                best_psnr = psnr
                save_ckpt(model, ema, optimizer, scheduler, scaler, step + 1, best_psnr,
                          out_dir / 'models' / 'best.pth')
                print(f'  * new best: {best_psnr:.2f} dB')
            if cfg.get('abort_psnr_floor') and psnr < cfg['abort_psnr_floor']:
                print(f'PSNR {psnr:.2f} < floor {cfg["abort_psnr_floor"]}, stopping')
                break

        if (step + 1) % cfg['save_freq'] == 0:
            save_ckpt(model, ema, optimizer, scheduler, scaler, step + 1, best_psnr,
                      out_dir / 'models' / f'iter_{step + 1}.pth')

    wandb.finish()
    print(f'Done. Best val PSNR: {best_psnr:.2f} dB')


if __name__ == '__main__':
    main()
