import argparse
import re
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
import pandas as pd
import rasterio
from PIL import Image
from scipy.ndimage import gaussian_filter
from tqdm import tqdm

FWHM_TO_SIGMA = 2.35482
SCALE = 6
NODATA = 65535
MIN_SUPPORT = 0.5  # LR pixel marked nodata if valid-mask support below this

GT_FULL, LR_FULL = 576, 96
GT_SUFFIXES = {"cnmf": "_cnmf", "sfim": "_sfim"}
R2_CSV = {"cnmf": "r2_cnmf_tiles.csv", "sfim": "r2_sfim_tiles.csv"}
R2_COL = {"cnmf": "r2_cnmf_mean",     "sfim": "r2_sfim_mean"}


def read_tif(path):
    with rasterio.open(path) as ds:
        return ds.read()


def degrade_emit(arr, scale, sigma, nodata=NODATA, min_support=MIN_SUPPORT):
    """Nodata-aware Gaussian blur + decimation, per-band. (B, H, W) uint16 → uint16."""
    valid = (arr != nodata)
    data = np.where(valid, arr.astype(np.float64), 0.0)
    mask = valid.astype(np.float64)

    num = np.empty_like(data)
    den = np.empty_like(mask)
    for b in range(data.shape[0]):
        num[b] = gaussian_filter(data[b], sigma=sigma)
        den[b] = gaussian_filter(mask[b], sigma=sigma)

    offset = scale // 2
    num_lr = num[:, offset::scale, offset::scale]
    den_lr = den[:, offset::scale, offset::scale]

    keep = den_lr >= min_support
    lr = np.zeros_like(num_lr)
    np.divide(num_lr, den_lr, out=lr, where=keep)

    out = np.clip(np.round(lr), 0, nodata - 1).astype(np.uint16)
    out[~keep] = nodata
    return out


def degrade_emit_bicubic(arr, scale, nodata=NODATA, min_support=MIN_SUPPORT):
    """Nodata-aware PIL bicubic downsample, per-band. (B, H, W) uint16 → uint16."""
    B, H, W = arr.shape
    Hlr, Wlr = H // scale, W // scale
    valid = (arr != nodata)
    data = np.where(valid, arr.astype(np.float32), np.float32(0.0))
    mask = valid.astype(np.float32)

    for b in range(B):
        if valid[b].any() and not valid[b].all():
            data[b] = np.where(valid[b], data[b], data[b][valid[b]].mean()).astype(np.float32)

    lr = np.empty((B, Hlr, Wlr), dtype=np.float32)
    den = np.empty((B, Hlr, Wlr), dtype=np.float32)
    for b in range(B):
        lr[b] = np.asarray(
            Image.fromarray(data[b]).resize((Wlr, Hlr), resample=Image.BICUBIC),
            dtype=np.float32,
        )
        den[b] = np.asarray(
            Image.fromarray(mask[b]).resize((Wlr, Hlr), resample=Image.BILINEAR),
            dtype=np.float32,
        )

    keep = den >= min_support
    out = np.clip(np.round(lr), 0, nodata - 1).astype(np.uint16)
    out[~keep] = nodata
    return out


def arr_to_npy_bytes(arr):
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def process_pair_emit(aoi, pair, group, drive_base, dst_dir, scale, sigma, method):
    dst_zip = dst_dir / f'{aoi}__{pair}.zip'
    if dst_zip.exists():
        return 0
    pairs = 0
    with zipfile.ZipFile(dst_zip, 'w', zipfile.ZIP_STORED) as zout:
        for _, row in group.iterrows():
            idx = int(row['tile_idx'])
            name = f'{pair}_tile{idx:03d}'
            lr_path = drive_base / aoi / pair / 'tiles' / f'{name}_emit_b32.tif'
            if not lr_path.exists():
                continue
            try:
                gt = read_tif(lr_path)
            except Exception:
                continue
            if gt.shape != (32, 96, 96):
                continue
            if method == 'gaussian':
                lr = degrade_emit(gt, scale, sigma)
            else:
                lr = degrade_emit_bicubic(gt, scale)
            zout.writestr(f'tile{idx:03d}__emit_b32.npy', arr_to_npy_bytes(lr))
            zout.writestr(f'tile{idx:03d}_synthetic_gt.npy', arr_to_npy_bytes(gt))
            pairs += 1
    if pairs == 0:
        dst_zip.unlink()
    return pairs


# ── CNMF/SFIM source: same QC as pack_npy ─────────────────────

def load_manifest(drive_base, gt_source, r2_thresh):
    clean = drive_base / 'tiles_clean.csv'
    if not clean.exists():
        raise FileNotFoundError(f'missing {clean}')
    df = pd.read_csv(clean)
    print(f'tiles_clean.csv: {len(df)} QC-passed')

    if gt_source in R2_CSV:
        r2_path = drive_base / R2_CSV[gt_source]
        if not r2_path.exists():
            print(f'WARNING: {r2_path.name} missing — skipping R² filter')
        else:
            r2 = pd.read_csv(r2_path)
            r2 = r2[r2['status'] == 'OK']
            if 'tile_idx' not in r2.columns and 'tile_name' in r2.columns:
                r2['tile_idx'] = r2['tile_name'].apply(
                    lambda x: int(re.search(r'tile(\d+)', x).group(1)))
            cols = ['aoi_slug', 'pair_id', 'tile_idx', R2_COL[gt_source]]
            if 'out_path' in r2.columns:
                cols.append('out_path')
            before = len(df)
            df = df.merge(r2[cols], on=cols[:3], how='inner')
            print(f'after merge with {gt_source} R²: {len(df)} (dropped {before - len(df)})')
            thresh = r2_thresh if r2_thresh is not None else 0.5
            before = len(df)
            df = df[df[R2_COL[gt_source]] >= thresh]
            print(f'after R² >= {thresh}: {len(df)} (dropped {before - len(df)})')
    return df


SYNTHETIC_GT_SUFFIX = {
    'emit': '_synthetic_gt',
    'cnmf': '_synthetic_cnmf_gt',
    'sfim': '_synthetic_sfim_gt',
}


def process_pair_fusion(aoi, pair, group, drive_base, gt_suffix, dst_dir, scale, method, sigma, out_gt_suffix):
    dst_zip = dst_dir / f'{aoi}__{pair}.zip'
    if dst_zip.exists():
        return 0
    pairs = 0
    with zipfile.ZipFile(dst_zip, 'w', zipfile.ZIP_STORED) as zout:
        for _, row in group.iterrows():
            idx = int(row['tile_idx'])
            name = f'{pair}_tile{idx:03d}'
            if 'out_path' in row and pd.notna(row.get('out_path')):
                gt_path = Path(row['out_path'])
            else:
                gt_path = drive_base / aoi / pair / 'tiles' / f'{name}{gt_suffix}.tif'
            if not gt_path.exists():
                continue
            try:
                gt = read_tif(gt_path)
            except Exception:
                continue
            if gt.shape != (32, GT_FULL, GT_FULL):
                continue
            # degrade the fusion GT to create synthetic LR
            if method == 'gaussian':
                lr = degrade_emit(gt, scale, sigma)
            else:
                lr = degrade_emit_bicubic(gt, scale)
            zout.writestr(f'tile{idx:03d}__emit_b32.npy', arr_to_npy_bytes(lr))
            zout.writestr(f'tile{idx:03d}{out_gt_suffix}.npy', arr_to_npy_bytes(gt))
            pairs += 1
    if pairs == 0:
        dst_zip.unlink()
    return pairs


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--drive-root', required=True)
    parser.add_argument('--run-tag', required=True)
    parser.add_argument('--dst', required=True, help='output dir for synthetic NPY zips')
    parser.add_argument('--scale', type=int, default=SCALE)
    parser.add_argument('--method', choices=['gaussian', 'bicubic'], default='gaussian',
                        help='degradation: gaussian blur+decimate (Wald) or PIL bicubic (CAVE)')
    parser.add_argument('--sigma', type=float, default=None,
                        help=f'gaussian blur sigma (default: scale/{FWHM_TO_SIGMA:.5f})')
    parser.add_argument('--source', choices=['emit', 'cnmf', 'sfim'], default='emit',
                        help='tile source: emit (96x96, old default) or cnmf/sfim (576x576 fusion GT)')
    parser.add_argument('--r2-thresh', type=float, default=None,
                        help='R² threshold for cnmf/sfim source (default 0.5)')
    args = parser.parse_args()

    drive_base = Path(args.drive_root) / args.run_tag
    dst = Path(args.dst)
    dst.mkdir(parents=True, exist_ok=True)

    scale = args.scale
    sigma = args.sigma if args.sigma is not None else scale / FWHM_TO_SIGMA

    if args.source == 'emit':
        clean = drive_base / 'tiles_clean.csv'
        if not clean.exists():
            parser.error(f'missing {clean}')
        df = pd.read_csv(clean)
        grouped = df.groupby(['aoi_slug', 'pair_id'])
        gt_shape = f'{LR_FULL}x{LR_FULL}'
        lr_shape = f'{LR_FULL // scale}x{LR_FULL // scale}'
    else:
        df = load_manifest(drive_base, args.source, args.r2_thresh)
        grouped = df.groupby(['aoi_slug', 'pair_id'])
        gt_shape = f'{GT_FULL}x{GT_FULL}'
        lr_shape = f'{GT_FULL // scale}x{GT_FULL // scale}'

    print(f'Synthetic data generation (source: {args.source})')
    print(f'  Drive base: {drive_base}')
    print(f'  Tiles: {len(df)} across {len(grouped)} pairs')
    print(f'  Output: {dst}')
    print(f'  Scale: {scale}, method: {args.method}')
    if args.method == 'gaussian':
        print(f'  Sigma: {sigma:.4f}')
    print(f'  GT: {gt_shape}x32 (uint16)')
    print(f'  LR: {lr_shape}x32 degraded (uint16)')
    print()

    out_gt_suffix = SYNTHETIC_GT_SUFFIX[args.source]
    total = 0
    for (aoi, pair), group in tqdm(list(grouped), desc='Pairs'):
        if args.source == 'emit':
            total += process_pair_emit(aoi, pair, group, drive_base, dst, scale, sigma, args.method)
        else:
            gt_suffix = GT_SUFFIXES[args.source]
            total += process_pair_fusion(aoi, pair, group, drive_base, gt_suffix, dst, scale, args.method, sigma, out_gt_suffix)

    print(f'Done: {total} synthetic pairs across {len(grouped)} pairs')


if __name__ == '__main__':
    main()
