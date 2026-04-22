import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from skimage.metrics import structural_similarity


def compute_psnr(sr, gt, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    mse = np.mean((s - g) ** 2)
    if mse < 1e-10:
        return 100.0
    return float(10 * np.log10(1.0 / mse))


def compute_ssim(sr, gt, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    vals = [structural_similarity(g[c], s[c], data_range=1.0) for c in range(s.shape[0])]
    return float(np.mean(vals))


def compute_rmse(sr, gt, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    return float(np.sqrt(np.mean((s - g) ** 2)))


def compute_sam(sr, gt, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    dot = np.sum(s * g, axis=0)
    norm_s = np.linalg.norm(s, axis=0).clip(1e-8)
    norm_g = np.linalg.norm(g, axis=0).clip(1e-8)
    cos_sim = np.clip(dot / (norm_s * norm_g), -1 + 1e-7, 1 - 1e-7)
    return float(np.mean(np.degrees(np.arccos(cos_sim))))


def compute_ergas(sr, gt, scale=6, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    band_rmse = np.sqrt(np.mean((s - g) ** 2, axis=(1, 2)))
    band_mean = np.mean(g, axis=(1, 2)).clip(1e-8)
    return float(100.0 / scale * np.sqrt(np.mean((band_rmse / band_mean) ** 2)))


def compute_per_band_correlation(sr, gt, border=6):
    s = sr[:, border:-border, border:-border] if border > 0 else sr
    g = gt[:, border:-border, border:-border] if border > 0 else gt
    corrs = np.zeros(s.shape[0])
    for c in range(s.shape[0]):
        sf, gf = s[c].flatten(), g[c].flatten()
        if np.std(sf) < 1e-8 or np.std(gf) < 1e-8:
            corrs[c] = 0.0
        else:
            corrs[c] = np.corrcoef(sf, gf)[0, 1]
    return corrs


def compute_all_metrics(sr, gt, bic, scale=6, border=6):
    return {
        'sr_psnr': compute_psnr(sr, gt, border),
        'sr_ssim': compute_ssim(sr, gt, border),
        'sr_sam': compute_sam(sr, gt, border),
        'sr_ergas': compute_ergas(sr, gt, scale, border),
        'sr_rmse': compute_rmse(sr, gt, border),
        'bic_psnr': compute_psnr(bic, gt, border),
        'bic_ssim': compute_ssim(bic, gt, border),
        'bic_sam': compute_sam(bic, gt, border),
        'bic_ergas': compute_ergas(bic, gt, scale, border),
        'bic_rmse': compute_rmse(bic, gt, border),
    }


NATURAL_RGB_NM = (665.0, 560.0, 490.0)


def rgb_bands_for_wavelengths(wavelengths_nm, rgb_nm=NATURAL_RGB_NM):
    wl = np.asarray(wavelengths_nm, dtype=float)
    return [int(np.argmin(np.abs(wl - nm))) for nm in rgb_nm]


def to_rgb(cube, bands):
    rgb = np.stack([cube[b] for b in bands], axis=-1)
    pos = rgb[rgb > 0]
    if len(pos) > 0:
        lo, hi = np.percentile(pos, [2, 98])
    else:
        lo, hi = 0.0, 1.0
    return np.clip((rgb - lo) / (hi - lo + 1e-8), 0, 1)


def select_vis_indices(dataset, n_vis):
    n_vis = min(n_vis, len(dataset))
    aoi_groups = {}
    for idx in range(len(dataset)):
        aoi = dataset.index[idx][3].split('__')[0]
        aoi_groups.setdefault(aoi, []).append(idx)
    if len(aoi_groups) >= n_vis:
        aois = sorted(aoi_groups)
        step = max(1, len(aois) // n_vis)
        return [aoi_groups[a][len(aoi_groups[a]) // 2] for a in aois[::step][:n_vis]]
    indices = []
    for aoi in sorted(aoi_groups):
        tiles = aoi_groups[aoi]
        per_aoi = max(1, n_vis // len(aoi_groups))
        step = max(1, len(tiles) // per_aoi)
        indices.extend(tiles[::step][:per_aoi])
    return sorted(set(indices))[:n_vis]


def make_main_figure(sr_np, gt_np, bic_np, metrics, bands, gt_source='', aoi_label=''):
    sr_rgb = to_rgb(sr_np, bands)
    gt_rgb = to_rgb(gt_np, bands)
    bic_rgb = to_rgb(bic_np, bands)

    rmse_sr = np.sqrt(np.mean((sr_np - gt_np) ** 2, axis=0))
    rmse_bic = np.sqrt(np.mean((bic_np - gt_np) ** 2, axis=0))

    dot = np.sum(sr_np * gt_np, axis=0)
    n_sr = np.linalg.norm(sr_np, axis=0).clip(1e-8)
    n_gt = np.linalg.norm(gt_np, axis=0).clip(1e-8)
    sam_map = np.degrees(np.arccos(np.clip(dot / (n_sr * n_gt), -1 + 1e-7, 1 - 1e-7)))

    sr_bic_diff = np.sqrt(np.mean((sr_np - bic_np) ** 2, axis=0))
    rmse_vmax = max(rmse_sr.max(), rmse_bic.max()) * 0.9

    pfx = f'[{aoi_label}] ' if aoi_label else ''
    gt_tag = f' ({gt_source})' if gt_source else ''

    fig, axes = plt.subplots(2, 3, figsize=(16, 11))

    axes[0, 0].imshow(bic_rgb)
    axes[0, 0].set_title(
        f'{pfx}Bicubic\nPSNR={metrics["bic_psnr"]:.2f}  SAM={metrics["bic_sam"]:.2f}  '
        f'ERGAS={metrics["bic_ergas"]:.1f}', fontsize=9)
    axes[0, 1].imshow(sr_rgb)
    axes[0, 1].set_title(
        f'{pfx}SR\nPSNR={metrics["sr_psnr"]:.2f}  SAM={metrics["sr_sam"]:.2f}  '
        f'ERGAS={metrics["sr_ergas"]:.1f}', fontsize=9)
    axes[0, 2].imshow(gt_rgb)
    axes[0, 2].set_title(f'{pfx}GT{gt_tag}', fontsize=9)

    im1 = axes[1, 0].imshow(rmse_sr, cmap='hot', vmin=0, vmax=rmse_vmax)
    axes[1, 0].set_title('SR RMSE (per pixel)', fontsize=9)
    plt.colorbar(im1, ax=axes[1, 0], fraction=0.046)

    im2 = axes[1, 1].imshow(sam_map, cmap='hot', vmin=0)
    axes[1, 1].set_title('SR SAM (degrees)', fontsize=9)
    plt.colorbar(im2, ax=axes[1, 1], fraction=0.046)

    im3 = axes[1, 2].imshow(sr_bic_diff, cmap='coolwarm', vmin=0)
    axes[1, 2].set_title('|SR - Bicubic| RMSE', fontsize=9)
    plt.colorbar(im3, ax=axes[1, 2], fraction=0.046)

    for ax in axes[0]:
        ax.axis('off')
    for ax in axes[1]:
        ax.set_xticks([])
        ax.set_yticks([])
    plt.tight_layout()
    return fig


def make_perband_figure(sr_np, gt_np, bic_np, border=6, aoi_label=''):
    cb = border
    sr_c = sr_np[:, cb:-cb, cb:-cb] if cb > 0 else sr_np
    gt_c = gt_np[:, cb:-cb, cb:-cb] if cb > 0 else gt_np
    bic_c = bic_np[:, cb:-cb, cb:-cb] if cb > 0 else bic_np

    bands = np.arange(sr_c.shape[0])
    rmse_sr = np.sqrt(np.mean((sr_c - gt_c) ** 2, axis=(1, 2)))
    rmse_bic = np.sqrt(np.mean((bic_c - gt_c) ** 2, axis=(1, 2)))
    corr_sr = compute_per_band_correlation(sr_np, gt_np, border)
    corr_bic = compute_per_band_correlation(bic_np, gt_np, border)

    pfx = f'[{aoi_label}] ' if aoi_label else ''
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(14, 8), sharex=True)

    ax1.plot(bands, rmse_bic, 'o-', ms=4, color='#FF9800', label='Bicubic', alpha=0.8, linewidth=1.5)
    ax1.plot(bands, rmse_sr, 's-', ms=4, color='#2196F3', label='SR', alpha=0.8, linewidth=1.5)
    ax1.fill_between(bands, rmse_sr, rmse_bic, where=(rmse_sr < rmse_bic),
                     color='#4CAF50', alpha=0.15, label='SR wins')
    ax1.fill_between(bands, rmse_sr, rmse_bic, where=(rmse_sr >= rmse_bic),
                     color='#F44336', alpha=0.15, label='Bicubic wins')
    ax1.set_ylabel('RMSE')
    ax1.set_title(f'{pfx}Per-band RMSE: SR vs Bicubic')
    ax1.legend(fontsize=9)
    ax1.grid(True, alpha=0.3)
    ax1.set_ylim(bottom=0)

    ax2.plot(bands, corr_bic, 'o-', ms=4, color='#FF9800', label='Bicubic', alpha=0.8, linewidth=1.5)
    ax2.plot(bands, corr_sr, 's-', ms=4, color='#2196F3', label='SR', alpha=0.8, linewidth=1.5)
    ax2.set_ylabel('Pearson r')
    ax2.set_xlabel('Band index')
    ax2.set_title(f'{pfx}Per-band Correlation with GT')
    ax2.legend(fontsize=9)
    ax2.grid(True, alpha=0.3)
    ax2.set_ylim(0, 1.05)
    ax2.set_xticks(bands)

    plt.tight_layout()
    return fig


def make_zoom_figure(sr_np, gt_np, bic_np, bands, crop_frac=0.35, aoi_label=''):
    _, H, W = gt_np.shape
    ch, cw = int(H * crop_frac), int(W * crop_frac)
    y0, x0 = (H - ch) // 2, (W - cw) // 2

    sr_rgb = to_rgb(sr_np[:, y0:y0 + ch, x0:x0 + cw], bands)
    gt_rgb = to_rgb(gt_np[:, y0:y0 + ch, x0:x0 + cw], bands)
    bic_rgb = to_rgb(bic_np[:, y0:y0 + ch, x0:x0 + cw], bands)

    pfx = f'[{aoi_label}] ' if aoi_label else ''
    fig, axes = plt.subplots(1, 3, figsize=(15, 5))
    axes[0].imshow(bic_rgb, interpolation='nearest')
    axes[0].set_title(f'{pfx}Bicubic (zoom)')
    axes[1].imshow(sr_rgb, interpolation='nearest')
    axes[1].set_title(f'{pfx}SR (zoom)')
    axes[2].imshow(gt_rgb, interpolation='nearest')
    axes[2].set_title(f'{pfx}GT (zoom)')
    for ax in axes:
        ax.axis('off')
    fig.subplots_adjust(left=0.01, right=0.99, top=0.92, bottom=0.01, wspace=0.05)
    return fig
