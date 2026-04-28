"""ESF comparison of CNMF vs SFIM fused tiles — histogram + summary table."""

import argparse
from pathlib import Path

import numpy as np
import pandas as pd
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

FWHM_COEF = 2.3548200450309493


def load_pair(cnmf_csv, sfim_csv):
    cnmf = pd.read_csv(cnmf_csv)
    sfim = pd.read_csv(sfim_csv)
    cnmf['tile'] = cnmf['file'].str.replace('_cnmf.tif', '', regex=False)
    sfim['tile'] = sfim['file'].str.replace('_sfim.tif', '', regex=False)
    merged = sfim[['tile', 'gsd_eff_m', 'sigma_iqr']].merge(
        cnmf[['tile', 'gsd_eff_m', 'sigma_iqr']], on='tile', suffixes=('_sfim', '_cnmf'))
    merged['gsd_diff'] = merged['gsd_eff_m_sfim'] - merged['gsd_eff_m_cnmf']
    return merged, cnmf, sfim


def make_diff_histogram(merged, out_path):
    diff = merged['gsd_diff'].dropna()

    fig, ax = plt.subplots(figsize=(7, 4))
    bins = np.linspace(np.percentile(diff, 0.5), np.percentile(diff, 99.5), 80)
    ax.hist(diff, bins=bins, color='#555', alpha=0.75, edgecolor='#333', linewidth=0.4)
    ax.axvline(0, color='k', ls='-', lw=0.8)
    med = diff.median()
    ax.axvline(med, color='#d62728', ls='--', lw=1.2)
    ax.text(0.97, 0.92, f'median = {med:+.1f} m',
            transform=ax.transAxes, ha='right', fontsize=12, color='#d62728',
            bbox=dict(facecolor='white', alpha=0.8, edgecolor='none'))

    n_sfim_worse = (diff > 5).sum()
    n_cnmf_worse = (diff < -5).sum()
    ax.text(0.97, 0.80,
            f'SFIM worse by >5 m: {n_sfim_worse} tiles\n'
            f'CNMF worse by >5 m: {n_cnmf_worse} tiles',
            transform=ax.transAxes, ha='right', fontsize=11,
            bbox=dict(facecolor='white', alpha=0.8, edgecolor='none'))

    ax.set_xlabel('GSD$_\\mathrm{eff}$ difference  (SFIM $-$ CNMF, m)', fontsize=13)
    ax.set_ylabel('Number of tiles', fontsize=13)
    ax.tick_params(labelsize=11)
    ax.grid(True, axis='y', alpha=0.3)
    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)
    print(f'  {out_path.name}')


def make_summary_table(merged, cnmf, sfim, out_path):
    rows = []
    for label, df in [('CNMF', cnmf), ('SFIM', sfim)]:
        gsd = df['gsd_eff_m'].dropna()
        q1, med, q3 = np.quantile(gsd, [0.25, 0.5, 0.75])
        rows.append({
            'Method': label,
            'n_tiles': int(gsd.size),
            'GSDe_median': round(med, 2),
            'GSDe_Q1': round(q1, 2),
            'GSDe_Q3': round(q3, 2),
            'GSDe_IQR': round(q3 - q1, 2),
        })

    diff = merged['gsd_diff'].dropna()
    rows.append({
        'Method': 'Diff (SFIM-CNMF)',
        'n_tiles': int(diff.size),
        'GSDe_median': round(diff.median(), 2),
        'GSDe_Q1': round(np.quantile(diff, 0.25), 2),
        'GSDe_Q3': round(np.quantile(diff, 0.75), 2),
        'GSDe_IQR': round(np.quantile(diff, 0.75) - np.quantile(diff, 0.25), 2),
    })

    summary = pd.DataFrame(rows)
    summary.to_csv(out_path, index=False)
    print(f'  {out_path.name}')
    print(summary.to_string(index=False))


def make_paired_histogram(cnmf, sfim, out_path):
    """Side-by-side GSDe histograms for both methods."""
    gsd_c = cnmf['gsd_eff_m'].dropna()
    gsd_s = sfim['gsd_eff_m'].dropna()

    lo = min(gsd_c.min(), gsd_s.min()) * 0.9
    hi = np.percentile(np.concatenate([gsd_c, gsd_s]), 99) * 1.05
    bins = np.linspace(lo, hi, 60)

    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(7, 5), sharex=True)

    ax1.hist(gsd_c, bins=bins, color='#1f77b4', alpha=0.75,
             edgecolor='#1f77b4', linewidth=0.5)
    med_c = gsd_c.median()
    ax1.axvline(med_c, color='k', ls='--', lw=1.0)
    ax1.text(0.97, 0.85, f'CNMF  (med = {med_c:.1f} m)',
             transform=ax1.transAxes, ha='right', fontsize=12,
             bbox=dict(facecolor='white', alpha=0.8, edgecolor='none'))
    ax1.set_ylabel('Tiles', fontsize=12)
    ax1.tick_params(labelsize=11)
    ax1.grid(True, axis='y', alpha=0.3)

    ax2.hist(gsd_s, bins=bins, color='#ff7f0e', alpha=0.75,
             edgecolor='#ff7f0e', linewidth=0.5)
    med_s = gsd_s.median()
    ax2.axvline(med_s, color='k', ls='--', lw=1.0)
    ax2.text(0.97, 0.85, f'SFIM  (med = {med_s:.1f} m)',
             transform=ax2.transAxes, ha='right', fontsize=12,
             bbox=dict(facecolor='white', alpha=0.8, edgecolor='none'))
    ax2.set_ylabel('Tiles', fontsize=12)
    ax2.set_xlabel('Effective GSD (m)', fontsize=13)
    ax2.tick_params(labelsize=11)
    ax2.grid(True, axis='y', alpha=0.3)

    plt.tight_layout()
    fig.savefig(out_path, dpi=200, bbox_inches='tight')
    plt.close(fig)
    print(f'  {out_path.name}')


if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--cnmf-csv', required=True, help='esf_per_tile_CNMF_fused.csv')
    p.add_argument('--sfim-csv', required=True, help='esf_per_tile_SFIM_fused.csv')
    p.add_argument('--out-dir', required=True)
    args = p.parse_args()

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)

    merged, cnmf, sfim = load_pair(args.cnmf_csv, args.sfim_csv)
    print(f'{len(merged)} paired tiles')

    make_diff_histogram(merged, out / 'fusion_esf_diff.png')
    make_paired_histogram(cnmf, sfim, out / 'fusion_esf_paired.png')
    make_summary_table(merged, cnmf, sfim, out / 'fusion_esf_summary.csv')
