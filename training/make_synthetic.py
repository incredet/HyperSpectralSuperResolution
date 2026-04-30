import argparse
import sys
import zipfile
from pathlib import Path

import numpy as np
import pandas as pd
from PIL import Image
from scipy.ndimage import gaussian_filter
from tqdm import tqdm

from spectral.pack_npy import read_tif, npy_bytes, write_patched, load_manifest

FWHM_TO_SIGMA = 2.35482
SCALE = 6
NODATA = 65535
MIN_SUPPORT = 0.5  # LR pixel marked nodata if valid-mask support below this

GT_FULL, LR_FULL = 576, 96
GT_SUFFIXES = {"cnmf": "_cnmf", "sfim": "_sfim"}

SYNTHETIC_GT_SUFFIX = {
    "emit": "_synthetic_gt",
    "cnmf": "_synthetic_cnmf_gt",
    "sfim": "_synthetic_sfim_gt",
}


def degrade_emit(arr, scale, sigma, nodata=NODATA, min_support=MIN_SUPPORT):
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
            zout.writestr(f'tile{idx:03d}__emit_b32.npy', npy_bytes(lr))
            zout.writestr(f'tile{idx:03d}_synthetic_gt.npy', npy_bytes(gt))
            pairs += 1
    if pairs == 0:
        dst_zip.unlink()
    return pairs


def process_pair_fusion(aoi, pair, group, drive_base, gt_suffix, full_dir,
                        patched_targets, scale, method, sigma, out_gt_suffix):
    zname = f'{aoi}__{pair}.zip'
    full_zip = full_dir / zname if full_dir else None
    patched_zips = [(d / zname, gt_sz) for d, gt_sz in patched_targets]

    need_full = full_zip is not None and not full_zip.exists()
    need_patched = [(p, gs) for p, gs in patched_zips if not p.exists()]
    if not need_full and not need_patched:
        return 0

    full_zf = zipfile.ZipFile(full_zip, 'w', zipfile.ZIP_STORED) if need_full else None
    patched_zfs = [(zipfile.ZipFile(p, 'w', zipfile.ZIP_STORED), gs)
                   for p, gs in need_patched]

    pairs = 0
    try:
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
            if method == 'gaussian':
                lr = degrade_emit(gt, scale, sigma)
            else:
                lr = degrade_emit_bicubic(gt, scale)

            if full_zf is not None:
                full_zf.writestr(f"tile{idx:03d}__emit_b32.npy", npy_bytes(lr))
                full_zf.writestr(f"tile{idx:03d}{out_gt_suffix}.npy", npy_bytes(gt))
            for zf, gt_sz in patched_zfs:
                write_patched(zf, idx, lr, gt, out_gt_suffix, gt_sz)
            pairs += 1
    finally:
        if full_zf is not None:
            full_zf.close()
        for zf, _ in patched_zfs:
            zf.close()

    if pairs == 0:
        if full_zf is not None:
            full_zip.unlink(missing_ok=True)
        for p, _ in need_patched:
            p.unlink(missing_ok=True)
    return pairs


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--drive-root', required=True)
    parser.add_argument('--run-tag', required=True)
    parser.add_argument('--dst', help='full-tile output dir (use either --dst or --patched, or both for fusion source)')
    parser.add_argument('--patched', action='append', default=[], metavar='DIR:GT',
                        help='patched output: directory and GT patch size (e.g. DIR:192). May be given multiple times. Fusion sources only.')
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

    if not args.dst and not args.patched:
        parser.error('supply --dst and/or --patched DIR:GT')
    if args.source == 'emit' and args.patched:
        parser.error('--patched is only supported for --source cnmf/sfim (emit GT is too small)')

    drive_base = Path(args.drive_root) / args.run_tag
    dst = Path(args.dst) if args.dst else None
    if dst:
        dst.mkdir(parents=True, exist_ok=True)

    patched_targets = []
    for spec in args.patched:
        dir_str, _, gt_str = spec.rpartition(":")
        if not dir_str or not gt_str.isdigit():
            sys.exit(f"bad --patched spec (want DIR:GT): {spec}")
        gt_patch = int(gt_str)
        if gt_patch % SCALE or GT_FULL % gt_patch or LR_FULL % (gt_patch // SCALE):
            sys.exit(f"gt_patch={gt_patch} doesn't cleanly tile "
                     f"({GT_FULL} GT / {LR_FULL} LR, scale {SCALE})")
        patched_targets.append((Path(dir_str), gt_patch))
        Path(dir_str).mkdir(parents=True, exist_ok=True)

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
    if dst:
        print(f'  Full output: {dst}')
    for d, gt_sz in patched_targets:
        lr_p = gt_sz // SCALE
        n = LR_FULL // lr_p
        print(f'  Patched output: {d}  (GT {gt_sz}, LR {lr_p}, {n*n} patches/tile)')
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
            total += process_pair_fusion(
                aoi, pair, group, drive_base, gt_suffix,
                dst, patched_targets,
                scale, args.method, sigma, out_gt_suffix,
            )

    print(f'Done: {total} synthetic pairs across {len(grouped)} pairs')


if __name__ == '__main__':
    main()
