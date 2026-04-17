import argparse
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
from scipy.ndimage import gaussian_filter
from tqdm import tqdm

try:
    import rasterio
    from rasterio.io import MemoryFile
except ImportError:
    rasterio = None

FWHM_TO_SIGMA = 2.35482
SCALE = 6


def read_array(zf, name):
    raw = zf.read(name)
    if name.endswith('.npy'):
        return np.load(BytesIO(raw))
    if rasterio is None:
        raise ImportError('rasterio needed for .tif source zips')
    with MemoryFile(raw) as mf:
        with mf.open() as ds:
            return ds.read() 


def degrade_emit(arr, scale, sigma):
    """Gaussian blur + decimation, band-wise. Input/output: (B, H, W) uint16."""
    arr_f = arr.astype(np.float64)
    blurred = np.empty_like(arr_f)
    for b in range(arr_f.shape[0]):
        blurred[b] = gaussian_filter(arr_f[b], sigma=sigma)
    offset = scale // 2
    lr_f = blurred[:, offset::scale, offset::scale]
    return np.clip(np.round(lr_f), 0, 65535).astype(np.uint16)


def arr_to_npy_bytes(arr):
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def process_zip(src_zip, dst_zip, scale, sigma):
    with zipfile.ZipFile(src_zip, 'r') as zin, \
         zipfile.ZipFile(dst_zip, 'w', zipfile.ZIP_STORED) as zout:
        names = set(zin.namelist())
        ext = '.npy' if any(n.endswith('.npy') for n in names) else '.tif'
        lr_suffix = '__emit_b32' + ext

        emit_names = sorted(n for n in names if n.endswith(lr_suffix))
        pairs = 0

        for emit_name in emit_names:
            try:
                gt = read_array(zin, emit_name)  # (32, 96, 96)
            except Exception:
                continue

            lr = degrade_emit(gt, scale, sigma)  # (32, 16, 16)

            base = emit_name.replace(lr_suffix, '')
            zout.writestr(f'{base}__emit_b32.npy', arr_to_npy_bytes(lr))
            zout.writestr(f'{base}__synthetic_gt.npy', arr_to_npy_bytes(gt))
            pairs += 1

    return pairs


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', required=True,
                        help='source zip dir (any existing GT source, e.g. zips_cnmf)')
    parser.add_argument('--dst', required=True,
                        help='output directory for synthetic patched zips')
    parser.add_argument('--scale', type=int, default=SCALE)
    parser.add_argument('--sigma', type=float, default=None,
                        help=f'blur sigma (default: scale/{FWHM_TO_SIGMA:.5f})')
    args = parser.parse_args()

    src = Path(args.src)
    dst = Path(args.dst)
    dst.mkdir(parents=True, exist_ok=True)

    scale = args.scale
    sigma = args.sigma if args.sigma is not None else scale / FWHM_TO_SIGMA

    zips = sorted(src.glob('*.zip'))
    print(f'Synthetic data generation')
    print(f'  Source: {src} ({len(zips)} zips)')
    print(f'  Output: {dst}')
    print(f'  Scale: {scale}')
    print(f'  Sigma: {sigma:.4f}')
    print(f'  GT: 96x96 real EMIT (uint16)')
    print(f'  LR: 16x16 degraded EMIT (uint16)')
    print()

    total = 0
    for zp in tqdm(zips, desc='Zips'):
        dst_zip = dst / zp.name
        if dst_zip.exists():
            continue
        n = process_zip(zp, dst_zip, scale, sigma)
        total += n

    print(f'Done: {total} synthetic pairs across {len(zips)} zips')


if __name__ == '__main__':
    main()
