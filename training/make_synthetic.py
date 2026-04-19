import argparse
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
import pandas as pd
import rasterio
from scipy.ndimage import gaussian_filter
from tqdm import tqdm

FWHM_TO_SIGMA = 2.35482
SCALE = 6
NODATA = 65535
MIN_SUPPORT = 0.5  # LR pixel marked nodata if valid-mask support below this


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


def arr_to_npy_bytes(arr):
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def process_pair(aoi, pair, group, drive_base, dst_dir, scale, sigma):
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
            lr = degrade_emit(gt, scale, sigma)
            zout.writestr(f'tile{idx:03d}__emit_b32.npy', arr_to_npy_bytes(lr))
            zout.writestr(f'tile{idx:03d}_synthetic_gt.npy', arr_to_npy_bytes(gt))
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
    parser.add_argument('--sigma', type=float, default=None,
                        help=f'blur sigma (default: scale/{FWHM_TO_SIGMA:.5f})')
    args = parser.parse_args()

    drive_base = Path(args.drive_root) / args.run_tag
    clean = drive_base / 'tiles_clean.csv'
    if not clean.exists():
        parser.error(f'missing {clean}')

    dst = Path(args.dst)
    dst.mkdir(parents=True, exist_ok=True)

    scale = args.scale
    sigma = args.sigma if args.sigma is not None else scale / FWHM_TO_SIGMA

    df = pd.read_csv(clean)
    grouped = df.groupby(['aoi_slug', 'pair_id'])
    print(f'Synthetic data generation')
    print(f'  Drive base: {drive_base}')
    print(f'  tiles_clean.csv: {len(df)} tiles across {len(grouped)} pairs')
    print(f'  Output: {dst}')
    print(f'  Scale: {scale}')
    print(f'  Sigma: {sigma:.4f}')
    print(f'  GT: 96x96 real EMIT (uint16)')
    print(f'  LR: 16x16 degraded EMIT (uint16)')
    print()

    total = 0
    for (aoi, pair), group in tqdm(list(grouped), desc='Pairs'):
        total += process_pair(aoi, pair, group, drive_base, dst, scale, sigma)

    print(f'Done: {total} synthetic pairs across {len(grouped)} pairs')


if __name__ == '__main__':
    main()
