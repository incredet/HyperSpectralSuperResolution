"""
VALIDATION UPGRADE — Copy-paste cells for SR_EMIT_S2_BasicSR notebook.

Replace BOTH existing cells:
  1. The "Visualization helpers" cell (with to_rgb + make_vis_figure)
  2. The "WandBSRModel" cell

with the two cells below.
"""

# =====================================================================
# CELL 1 — Replace the visualization helpers cell with this
# =====================================================================

import importlib
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import torch, torch.nn.functional as F
import wandb

from basicsr.models.sr_model import SRModel
from basicsr.utils.registry import MODEL_REGISTRY
import basicsr.utils.img_util as _iu
import basicsr.models.sr_model as _srm


# ── Patch tensor2img for >4 channel data ─────────────────────
importlib.reload(_iu)
_orig_t2i = _iu.tensor2img

def _patched_tensor2img(tensor, rgb2bgr=True, out_type=np.uint8, min_max=(0, 1)):
    t = tensor[0] if isinstance(tensor, list) else tensor
    if t.ndim >= 3 and t.shape[-3] > 4:
        rgb2bgr = False
    return _orig_t2i(tensor, rgb2bgr=rgb2bgr, out_type=out_type, min_max=min_max)

_iu.tensor2img = _patched_tensor2img
_srm.tensor2img = _patched_tensor2img


# ── Validation Metrics ────────────────────────────────────────

def compute_psnr(sr, gt, border=6):
    """PSNR in dB, computed over all bands with border crop."""
    cb = border
    s = sr[:, cb:-cb, cb:-cb] if cb > 0 else sr
    g = gt[:, cb:-cb, cb:-cb] if cb > 0 else gt
    mse = np.mean((s - g) ** 2)
    if mse < 1e-10:
        return 100.0
    return float(10 * np.log10(1.0 / mse))


def compute_sam(sr, gt, border=6):
    """Spectral Angle Mapper — mean angle in degrees."""
    cb = border
    s = sr[:, cb:-cb, cb:-cb] if cb > 0 else sr
    g = gt[:, cb:-cb, cb:-cb] if cb > 0 else gt
    dot = np.sum(s * g, axis=0)
    norm_s = np.linalg.norm(s, axis=0).clip(1e-8)
    norm_g = np.linalg.norm(g, axis=0).clip(1e-8)
    cos_sim = np.clip(dot / (norm_s * norm_g), -1 + 1e-7, 1 - 1e-7)
    sam_map = np.degrees(np.arccos(cos_sim))
    return float(np.mean(sam_map))


def compute_ergas(sr, gt, scale=6, border=6):
    """ERGAS — Erreur Relative Globale Adimensionnelle de Synthèse."""
    cb = border
    s = sr[:, cb:-cb, cb:-cb] if cb > 0 else sr
    g = gt[:, cb:-cb, cb:-cb] if cb > 0 else gt
    band_rmse = np.sqrt(np.mean((s - g) ** 2, axis=(1, 2)))
    band_mean = np.mean(g, axis=(1, 2)).clip(1e-8)
    ergas = 100.0 / scale * np.sqrt(np.mean((band_rmse / band_mean) ** 2))
    return float(ergas)


def compute_per_band_correlation(sr, gt, border=6):
    """Per-band Pearson correlation coefficient."""
    cb = border
    s = sr[:, cb:-cb, cb:-cb] if cb > 0 else sr
    g = gt[:, cb:-cb, cb:-cb] if cb > 0 else gt
    C = s.shape[0]
    corrs = np.zeros(C)
    for c in range(C):
        sf = s[c].flatten()
        gf = g[c].flatten()
        if np.std(sf) < 1e-8 or np.std(gf) < 1e-8:
            corrs[c] = 0.0
        else:
            corrs[c] = np.corrcoef(sf, gf)[0, 1]
    return corrs


def compute_all_metrics(sr, gt, bic, scale=6, border=6):
    """Compute all metrics for SR and bicubic, return as dict."""
    return {
        'sr_psnr':  compute_psnr(sr, gt, border),
        'sr_sam':   compute_sam(sr, gt, border),
        'sr_ergas': compute_ergas(sr, gt, scale, border),
        'bic_psnr':  compute_psnr(bic, gt, border),
        'bic_sam':   compute_sam(bic, gt, border),
        'bic_ergas': compute_ergas(bic, gt, scale, border),
    }


# ── Visualization Helpers ─────────────────────────────────────

def to_rgb(cube, bands=CFG.VIS_BANDS):
    """Convert (C,H,W) hyperspectral cube → (H,W,3) RGB for display."""
    rgb = np.stack([cube[b] for b in bands], axis=-1)
    pos = rgb[rgb > 0]
    if len(pos) > 0:
        lo, hi = np.percentile(pos, [2, 98])
    else:
        lo, hi = 0.0, 1.0
    return np.clip((rgb - lo) / (hi - lo + 1e-8), 0, 1)


def make_main_figure(lq_np, sr_np, gt_np, bic_np, metrics, bands, aoi_label=''):
    """
    Main comparison figure: 2×3 grid.
    Row 1: Bicubic RGB | SR RGB | GT RGB
    Row 2: RMSE spatial map | SAM spatial map | difference (|SR - bicubic|)
    """
    sr_rgb  = to_rgb(sr_np, bands)
    gt_rgb  = to_rgb(gt_np, bands)
    bic_rgb = to_rgb(bic_np, bands)

    # Spatial error maps
    rmse_map_sr  = np.sqrt(np.mean((sr_np  - gt_np) ** 2, axis=0))
    rmse_map_bic = np.sqrt(np.mean((bic_np - gt_np) ** 2, axis=0))
    dot   = np.sum(sr_np * gt_np, axis=0)
    n_sr  = np.linalg.norm(sr_np, axis=0).clip(1e-8)
    n_gt  = np.linalg.norm(gt_np, axis=0).clip(1e-8)
    sam_map = np.degrees(np.arccos(np.clip(dot / (n_sr * n_gt), -1 + 1e-7, 1 - 1e-7)))

    # Difference: where SR diverges from bicubic
    sr_bic_diff = np.sqrt(np.mean((sr_np - bic_np) ** 2, axis=0))

    # Shared vmax for RMSE maps
    rmse_vmax = max(rmse_map_sr.max(), rmse_map_bic.max()) * 0.9

    fig, axes = plt.subplots(2, 3, figsize=(16, 11))
    title_prefix = f'[{aoi_label}] ' if aoi_label else ''

    axes[0, 0].imshow(bic_rgb)
    axes[0, 0].set_title(
        f'{title_prefix}Bicubic\n'
        f'PSNR={metrics["bic_psnr"]:.2f}  SAM={metrics["bic_sam"]:.2f}°  ERGAS={metrics["bic_ergas"]:.1f}',
        fontsize=9)
    axes[0, 1].imshow(sr_rgb)
    axes[0, 1].set_title(
        f'{title_prefix}SR\n'
        f'PSNR={metrics["sr_psnr"]:.2f}  SAM={metrics["sr_sam"]:.2f}°  ERGAS={metrics["sr_ergas"]:.1f}',
        fontsize=9)
    axes[0, 2].imshow(gt_rgb)
    axes[0, 2].set_title(f'{title_prefix}GT (CNMF)', fontsize=9)

    im1 = axes[1, 0].imshow(rmse_map_sr, cmap='hot', vmin=0, vmax=rmse_vmax)
    axes[1, 0].set_title('SR RMSE (per pixel)', fontsize=9)
    plt.colorbar(im1, ax=axes[1, 0], fraction=0.046)

    im2 = axes[1, 1].imshow(sam_map, cmap='hot', vmin=0)
    axes[1, 1].set_title('SR SAM (degrees)', fontsize=9)
    plt.colorbar(im2, ax=axes[1, 1], fraction=0.046)

    im3 = axes[1, 2].imshow(sr_bic_diff, cmap='coolwarm', vmin=0)
    axes[1, 2].set_title('|SR − Bicubic| RMSE', fontsize=9)
    plt.colorbar(im3, ax=axes[1, 2], fraction=0.046)

    for ax in axes.flat:
        if not ax.images:  # skip axes with colorbars
            pass
        ax.axis('off')
    # Re-enable axis for maps with colorbars
    for ax in axes[1]:
        ax.axis('on')
        ax.set_xticks([])
        ax.set_yticks([])
    plt.tight_layout()
    return fig


def make_perband_figure(sr_np, gt_np, bic_np, border=6, aoi_label=''):
    """
    Wide per-band RMSE + correlation figure.
    Top: per-band RMSE for SR and bicubic (shared y-axis).
    Bottom: per-band Pearson correlation for SR and bicubic.
    """
    cb = border
    sr_c  = sr_np[:, cb:-cb, cb:-cb]  if cb > 0 else sr_np
    gt_c  = gt_np[:, cb:-cb, cb:-cb]  if cb > 0 else gt_np
    bic_c = bic_np[:, cb:-cb, cb:-cb] if cb > 0 else bic_np

    C = sr_c.shape[0]
    bands = np.arange(C)

    # Per-band RMSE
    rmse_sr  = np.sqrt(np.mean((sr_c  - gt_c) ** 2, axis=(1, 2)))
    rmse_bic = np.sqrt(np.mean((bic_c - gt_c) ** 2, axis=(1, 2)))

    # Per-band correlation
    corr_sr  = compute_per_band_correlation(sr_np, gt_np, border)
    corr_bic = compute_per_band_correlation(bic_np, gt_np, border)

    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(14, 8), sharex=True)
    title_prefix = f'[{aoi_label}] ' if aoi_label else ''

    # RMSE subplot
    ax1.plot(bands, rmse_bic, 'o-', ms=4, color='#FF9800', label='Bicubic', alpha=0.8, linewidth=1.5)
    ax1.plot(bands, rmse_sr,  's-', ms=4, color='#2196F3', label='SR',      alpha=0.8, linewidth=1.5)
    ax1.fill_between(bands, rmse_sr, rmse_bic, where=(rmse_sr < rmse_bic),
                     color='#4CAF50', alpha=0.15, label='SR wins')
    ax1.fill_between(bands, rmse_sr, rmse_bic, where=(rmse_sr >= rmse_bic),
                     color='#F44336', alpha=0.15, label='Bicubic wins')
    ax1.set_ylabel('RMSE', fontsize=11)
    ax1.set_title(f'{title_prefix}Per-band RMSE: SR vs Bicubic', fontsize=12)
    ax1.legend(fontsize=9, loc='upper right')
    ax1.grid(True, alpha=0.3)
    ax1.set_ylim(bottom=0)

    # Correlation subplot
    ax2.plot(bands, corr_bic, 'o-', ms=4, color='#FF9800', label='Bicubic', alpha=0.8, linewidth=1.5)
    ax2.plot(bands, corr_sr,  's-', ms=4, color='#2196F3', label='SR',      alpha=0.8, linewidth=1.5)
    ax2.set_ylabel('Pearson r', fontsize=11)
    ax2.set_xlabel('Band index', fontsize=11)
    ax2.set_title(f'{title_prefix}Per-band Correlation with GT', fontsize=12)
    ax2.legend(fontsize=9, loc='lower right')
    ax2.grid(True, alpha=0.3)
    ax2.set_ylim(0, 1.05)
    ax2.set_xticks(bands)

    plt.tight_layout()
    return fig


def make_zoom_figure(sr_np, gt_np, bic_np, bands, crop_frac=0.35, aoi_label=''):
    """
    Zoom-in comparison: center crop of the tile at higher magnification.
    1×3: Bicubic crop | SR crop | GT crop
    """
    _, H, W = gt_np.shape
    ch, cw = int(H * crop_frac), int(W * crop_frac)
    y0 = (H - ch) // 2
    x0 = (W - cw) // 2

    sr_crop  = sr_np[:,  y0:y0+ch, x0:x0+cw]
    gt_crop  = gt_np[:,  y0:y0+ch, x0:x0+cw]
    bic_crop = bic_np[:, y0:y0+ch, x0:x0+cw]

    sr_rgb  = to_rgb(sr_crop, bands)
    gt_rgb  = to_rgb(gt_crop, bands)
    bic_rgb = to_rgb(bic_crop, bands)

    fig, axes = plt.subplots(1, 3, figsize=(15, 5))
    title_prefix = f'[{aoi_label}] ' if aoi_label else ''

    axes[0].imshow(bic_rgb, interpolation='nearest')
    axes[0].set_title(f'{title_prefix}Bicubic (zoom)', fontsize=10)
    axes[1].imshow(sr_rgb, interpolation='nearest')
    axes[1].set_title(f'{title_prefix}SR (zoom)', fontsize=10)
    axes[2].imshow(gt_rgb, interpolation='nearest')
    axes[2].set_title(f'{title_prefix}GT (zoom)', fontsize=10)

    for ax in axes:
        ax.axis('off')
    plt.tight_layout()
    return fig


def select_vis_indices(dataset, n_vis):
    """
    Select visualization indices spread across different AOIs.
    Falls back to evenly-spaced if AOI info not available.
    """
    n = len(dataset)
    n_vis = min(n_vis, n)

    # Group tiles by AOI
    aoi_groups = {}
    for idx in range(n):
        entry = dataset.index[idx]
        scene_key = entry[3]  # (zip_path, lr_name, gt_name, scene_key, tile_id)
        aoi = scene_key.split('__')[0]
        if aoi not in aoi_groups:
            aoi_groups[aoi] = []
        aoi_groups[aoi].append(idx)

    if len(aoi_groups) >= n_vis:
        # Pick one tile from each of n_vis different AOIs
        aoi_list = sorted(aoi_groups.keys())
        step = max(1, len(aoi_list) // n_vis)
        selected_aois = aoi_list[::step][:n_vis]
        indices = []
        for aoi in selected_aois:
            # Pick the middle tile from each AOI
            tiles = aoi_groups[aoi]
            indices.append(tiles[len(tiles) // 2])
        return indices
    else:
        # Fewer AOIs than requested samples — pick from each AOI, then fill
        indices = []
        for aoi in sorted(aoi_groups.keys()):
            tiles = aoi_groups[aoi]
            per_aoi = max(1, n_vis // len(aoi_groups))
            step = max(1, len(tiles) // per_aoi)
            indices.extend(tiles[::step][:per_aoi])
        return sorted(set(indices))[:n_vis]


print('Metrics & visualization helpers loaded ✓')


# =====================================================================
# CELL 2 — Replace the WandBSRModel cell with this
# =====================================================================

from collections import OrderedDict
from basicsr.losses import build_loss

if 'WandBSRModel' in MODEL_REGISTRY._obj_map:
    del MODEL_REGISTRY._obj_map['WandBSRModel']

@MODEL_REGISTRY.register()
class WandBSRModel(SRModel):
    """SRModel + spectral cosine loss + multi-metric validation + WandB vis."""

    def init_training_settings(self):
        super().init_training_settings()
        train_opt = self.opt['train']
        if train_opt.get('spectral_opt'):
            self.cri_spectral = build_loss(train_opt['spectral_opt']).to(self.device)
        else:
            self.cri_spectral = None

    def optimize_parameters(self, current_iter):
        self.optimizer_g.zero_grad()
        self.output = self.net_g(self.lq)

        l_total = torch.tensor(0.0, device=self.device)
        loss_dict = OrderedDict()

        # Pixel loss (L1)
        if self.cri_pix:
            l_pix = self.cri_pix(self.output, self.gt)
            l_total = l_total + l_pix
            loss_dict['l_pix'] = l_pix

        # Perceptual loss (if used)
        if hasattr(self, 'cri_perceptual') and self.cri_perceptual:
            l_percep, l_style = self.cri_perceptual(self.output, self.gt)
            if l_percep is not None:
                l_total = l_total + l_percep
                loss_dict['l_percep'] = l_percep
            if l_style is not None:
                l_total = l_total + l_style
                loss_dict['l_style'] = l_style

        # Spectral cosine loss
        if self.cri_spectral:
            l_spectral = self.cri_spectral(self.output, self.gt)
            l_total = l_total + l_spectral
            loss_dict['l_spectral'] = l_spectral

        l_total.backward()

        # Gradient clipping
        if self.opt['train'].get('grad_clip'):
            torch.nn.utils.clip_grad_norm_(
                self.net_g.parameters(),
                self.opt['train']['grad_clip']['max_norm']
            )

        self.optimizer_g.step()
        self.log_dict = self.reduce_loss_dict(loss_dict)

        # EMA update
        if self.ema_decay > 0:
            self.model_ema(decay=self.ema_decay)

    def nondist_validation(self, dataloader, current_iter, tb_logger, save_img):
        # --- Phase 1: Run parent validation (computes PSNR via BasicSR) ---
        super().nondist_validation(dataloader, current_iter, tb_logger, save_img)

        if wandb.run is None:
            return

        dataset = dataloader.dataset
        scale = self.opt.get('scale', CFG.SCALE)
        border = scale  # crop border for metrics

        # --- Phase 2: Compute full metrics over ALL validation tiles ---
        all_sr_psnr, all_sr_sam, all_sr_ergas = [], [], []
        all_bic_psnr, all_bic_sam, all_bic_ergas = [], [], []
        all_sr_corr, all_bic_corr = [], []

        for idx in range(len(dataset)):
            data = dataset[idx]
            lq = data['lq'].unsqueeze(0).to(self.device)

            with torch.no_grad():
                sr = self.net_g(lq)

            lq_np = data['lq'].numpy()
            sr_np = sr.squeeze(0).cpu().numpy()
            gt_np = data['gt'].numpy()

            # Bicubic baseline
            bic_np = F.interpolate(
                torch.from_numpy(lq_np[None]), scale_factor=scale,
                mode='bicubic', align_corners=False
            ).squeeze(0).numpy()

            m = compute_all_metrics(sr_np, gt_np, bic_np, scale, border)
            all_sr_psnr.append(m['sr_psnr'])
            all_sr_sam.append(m['sr_sam'])
            all_sr_ergas.append(m['sr_ergas'])
            all_bic_psnr.append(m['bic_psnr'])
            all_bic_sam.append(m['bic_sam'])
            all_bic_ergas.append(m['bic_ergas'])

            all_sr_corr.append(compute_per_band_correlation(sr_np, gt_np, border))
            all_bic_corr.append(compute_per_band_correlation(bic_np, gt_np, border))

        # Log aggregate metrics
        n_val = len(dataset)
        metric_log = {
            'val/sr_psnr_mean':   np.mean(all_sr_psnr),
            'val/sr_sam_mean':    np.mean(all_sr_sam),
            'val/sr_ergas_mean':  np.mean(all_sr_ergas),
            'val/bic_psnr_mean':  np.mean(all_bic_psnr),
            'val/bic_sam_mean':   np.mean(all_bic_sam),
            'val/bic_ergas_mean': np.mean(all_bic_ergas),
            # Deltas: positive = SR is better
            'val/delta_psnr':  np.mean(all_sr_psnr)  - np.mean(all_bic_psnr),
            'val/delta_sam':   np.mean(all_bic_sam)   - np.mean(all_sr_sam),    # lower SAM = better
            'val/delta_ergas': np.mean(all_bic_ergas) - np.mean(all_sr_ergas),  # lower ERGAS = better
            # Mean per-band correlation (averaged over tiles, then bands)
            'val/sr_corr_mean':  np.mean(all_sr_corr),
            'val/bic_corr_mean': np.mean(all_bic_corr),
            # How many tiles SR beats bicubic on each metric
            'val/sr_wins_psnr':  sum(s > b for s, b in zip(all_sr_psnr, all_bic_psnr)) / n_val,
            'val/sr_wins_sam':   sum(s < b for s, b in zip(all_sr_sam, all_bic_sam)) / n_val,
            'val/sr_wins_ergas': sum(s < b for s, b in zip(all_sr_ergas, all_bic_ergas)) / n_val,
            'global_step': current_iter,
        }
        wandb.log(metric_log)

        # --- Phase 3: Enhanced visualization on diverse tiles ---
        n_vis = min(CFG.N_VIS_SAMPLES, len(dataset))
        vis_indices = select_vis_indices(dataset, n_vis)

        images = {}
        for i, idx in enumerate(vis_indices):
            data = dataset[idx]
            lq = data['lq'].unsqueeze(0).to(self.device)

            with torch.no_grad():
                sr = self.net_g(lq)

            lq_np = data['lq'].numpy()
            sr_np = sr.squeeze(0).cpu().numpy()
            gt_np = data['gt'].numpy()

            bic_np = F.interpolate(
                torch.from_numpy(lq_np[None]), scale_factor=scale,
                mode='bicubic', align_corners=False
            ).squeeze(0).numpy()

            # AOI label for plot titles
            entry = dataset.index[idx]
            aoi_label = entry[3].split('__')[0].replace('aoi_', '')

            metrics = compute_all_metrics(sr_np, gt_np, bic_np, scale, border)

            # Figure 1: Main comparison (RGB + spatial error maps)
            fig_main = make_main_figure(
                lq_np, sr_np, gt_np, bic_np, metrics, CFG.VIS_BANDS, aoi_label)
            images[f'val_vis/tile_{i}_main'] = wandb.Image(fig_main)
            plt.close(fig_main)

            # Figure 2: Per-band RMSE + correlation (wide)
            fig_bands = make_perband_figure(
                sr_np, gt_np, bic_np, border, aoi_label)
            images[f'val_vis/tile_{i}_perband'] = wandb.Image(fig_bands)
            plt.close(fig_bands)

            # Figure 3: Zoom-in center crop
            fig_zoom = make_zoom_figure(
                sr_np, gt_np, bic_np, CFG.VIS_BANDS, crop_frac=0.35, aoi_label)
            images[f'val_vis/tile_{i}_zoom'] = wandb.Image(fig_zoom)
            plt.close(fig_zoom)

        wandb.log({**images, 'global_step': current_iter})

print('WandBSRModel registered ✓')
