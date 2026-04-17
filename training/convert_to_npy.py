import argparse
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
import rasterio
from rasterio.io import MemoryFile
from tqdm import tqdm


GT_SUFFIXES = {
    'regression': '_regression_synth',
    'sfim': '_sfim',
    'cnmf': '_cnmf',
    'synthetic': '_synthetic_gt',
}

SCALE = 6
GT_PATCH = 192
LR_PATCH = GT_PATCH // SCALE 


def read_array(zf, name):
    raw = zf.read(name)
    if name.endswith('.npy'):
        return np.load(BytesIO(raw))
    with MemoryFile(raw) as mf:
        with mf.open() as ds:
            return ds.read()


def arr_to_npy_bytes(arr):
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def patch_zip(src_zip, dst_zip, gt_suffix):
    with zipfile.ZipFile(src_zip, 'r') as zin, \
         zipfile.ZipFile(dst_zip, 'w', zipfile.ZIP_STORED) as zout:
        names = set(zin.namelist())

        # detect extension
        ext = '.npy' if any(n.endswith('.npy') for n in names) else '.tif'
        lr_suffix = '__emit_b32' + ext
        gt_ext = gt_suffix + ext

        lr_names = sorted(n for n in names if n.endswith(lr_suffix))
        patches = 0

        for lr_name in lr_names:
            gt_name = lr_name.replace('__emit_b32' + ext, gt_ext)
            if gt_name not in names:
                continue

            try:
                lr = read_array(zin, lr_name)  # (32, 96, 96)
                gt = read_array(zin, gt_name)  # (32, 576, 576)
            except Exception:
                continue

            _, h_lr, w_lr = lr.shape
            _, h_gt, w_gt = gt.shape
            n_rows = h_lr // LR_PATCH
            n_cols = w_lr // LR_PATCH
            base = lr_name.replace(lr_suffix, '')

            for r in range(n_rows):
                for c in range(n_cols):
                    pid = r * n_cols + c
                    lr_patch = lr[:,
                                  r * LR_PATCH:(r + 1) * LR_PATCH,
                                  c * LR_PATCH:(c + 1) * LR_PATCH]
                    gt_patch = gt[:,
                                  r * GT_PATCH:(r + 1) * GT_PATCH,
                                  c * GT_PATCH:(c + 1) * GT_PATCH]

                    zout.writestr(f'{base}_p{pid:02d}__emit_b32.npy',
                                  arr_to_npy_bytes(lr_patch))
                    zout.writestr(f'{base}_p{pid:02d}{gt_suffix}.npy',
                                  arr_to_npy_bytes(gt_patch))
                    patches += 1

    return patches


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', required=True, help='source zip directory (GeoTIFF or npy zips)')
    parser.add_argument('--dst', required=True, help='destination directory for patched npy zips')
    parser.add_argument('--gt-source', default='cnmf', choices=GT_SUFFIXES.keys())
    args = parser.parse_args()

    src = Path(args.src)
    dst = Path(args.dst)
    dst.mkdir(parents=True, exist_ok=True)

    gt_suffix = GT_SUFFIXES[args.gt_source]
    zips = sorted(src.glob('*.zip'))
    print(f'Patching {len(zips)} zips: {src} -> {dst}')
    print(f'GT {GT_PATCH}x{GT_PATCH}, LR {LR_PATCH}x{LR_PATCH}, scale {SCALE}')

    total = 0
    for zp in tqdm(zips, desc='Zips'):
        dst_zip = dst / zp.name
        if dst_zip.exists():
            continue
        n = patch_zip(zp, dst_zip, gt_suffix)
        total += n

    print(f'Done: {total} patches across {len(zips)} zips')


if __name__ == '__main__':
    main()
