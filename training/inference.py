import argparse
import json
import sys
import zipfile
from pathlib import Path

import numpy as np
import rasterio
import torch
import yaml
from affine import Affine
from tqdm import tqdm

from dataset import EMIT_NODATA, EMIT_SCALE, read_tif_from_zip
from model import build_model, load_checkpoint


def find_emit_tif(emit_root, aoi, pair_id, tile_base):
    return Path(emit_root) / aoi / pair_id / 'tiles' / f'{pair_id}_{tile_base}_emit_b32.tif'


def write_geotiff(sr, out_path, src_tif_path, scale):
    # derive transform from the 60m EMIT tile, scale to 10m grid for 6x upsample
    with rasterio.open(src_tif_path) as src:
        new_transform = src.transform * Affine.scale(1.0 / scale)
        crs = src.crs
    bands, H, W = sr.shape
    profile = {
        'driver': 'GTiff',
        'height': H, 'width': W, 'count': bands,
        'dtype': 'float32',
        'crs': crs,
        'transform': new_transform,
        'compress': 'lzw',
        'tiled': True,
    }
    with rasterio.open(out_path, 'w', **profile) as dst:
        dst.write(sr.astype(np.float32))


def main():
    ap = argparse.ArgumentParser(
        description='Run a trained SR model on 96x96 real EMIT tiles from held-out test AOIs, '
                    'produce 576x576 SR outputs as per-tile .npy files.'
    )
    ap.add_argument('--config', required=True)
    ap.add_argument('--checkpoint', required=True)
    ap.add_argument('--zip-dir', required=True,
                    help='folder containing synthetic zips (from make_synthetic.py)')
    ap.add_argument('--split-file', required=True,
                    help='aoi_split.json with {train,val,test} AOI lists')
    ap.add_argument('--out-dir',
                    help='default: {checkpoint}/../../sr_outputs')
    ap.add_argument('--gt-suffix', default='_synthetic_gt.npy',
                    help='file suffix inside zips identifying the 96x96 real-EMIT input')
    ap.add_argument('--force', action='store_true',
                    help='overwrite existing .npy files')
    ap.add_argument('--save-geotiff', action='store_true',
                    help='also write a georeferenced GeoTIFF alongside each .npy')
    ap.add_argument('--emit-tif-root',
                    help='root dir of original EMIT TIFs (e.g. DRIVE/EMIT_S-2_Matches/2026-04-02); '
                         'required with --save-geotiff')
    args = ap.parse_args()

    if args.save_geotiff and not args.emit_tif_root:
        ap.error('--save-geotiff requires --emit-tif-root')

    with open(args.config) as f:
        cfg = yaml.safe_load(f)

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

    net = build_model(cfg, device)
    kind = load_checkpoint(net, args.checkpoint)
    net.eval()
    print(f'Loaded {kind} weights from {args.checkpoint}')

    split = json.loads(Path(args.split_file).read_text())
    test_aois = set(split['test'])
    print(f'Test AOIs: {len(test_aois)}')

    out_dir = Path(args.out_dir) if args.out_dir else Path(args.checkpoint).parent.parent / 'sr_outputs'
    out_dir.mkdir(parents=True, exist_ok=True)
    print(f'Output dir: {out_dir}')

    zip_dir = Path(args.zip_dir)
    index = []
    for zp in sorted(zip_dir.glob('*.zip')):
        aoi = zp.stem.split('__')[0]
        if aoi not in test_aois:
            continue
        try:
            with zipfile.ZipFile(zp) as zf:
                names = sorted(n for n in zf.namelist() if n.endswith(args.gt_suffix))
        except zipfile.BadZipFile:
            print(f'WARN: skipping unreadable zip {zp.name}')
            continue
        for n in names:
            index.append((zp, n))

    n_zips = len({zp for zp, _ in index})
    print(f'Found {len(index)} test tiles across {n_zips} zips')
    if not index:
        sys.exit('No test tiles found — check --zip-dir and --split-file')

    bands = cfg['num_bands']
    expected_shape = (bands, 96, 96)
    written = skipped_exists = skipped_shape = 0
    tif_written = tif_skipped_missing_src = 0

    for zp, member in tqdm(index, desc='inference'):
        tile_base = Path(member).stem.replace('_synthetic_gt', '')
        npy_path = out_dir / f'{zp.stem}__{tile_base}.npy'
        tif_path = npy_path.with_suffix('.tif')
        need_npy = args.force or not npy_path.exists()
        need_tif = args.save_geotiff and (args.force or not tif_path.exists())
        if not need_npy and not need_tif:
            skipped_exists += 1
            continue

        if need_npy:
            arr = read_tif_from_zip(zp, member)
            if arr.shape != expected_shape:
                skipped_shape += 1
                continue

            mask = arr == EMIT_NODATA
            arr = arr / EMIT_SCALE
            arr[mask] = 0.0

            with torch.no_grad():
                x = torch.from_numpy(arr.astype(np.float32))[None].to(device)
                y = net(x).squeeze(0).cpu().numpy()

            np.save(npy_path, y.astype(np.float32))
            written += 1
        else:
            y = np.load(npy_path)

        if need_tif:
            aoi, pair_id = zp.stem.split('__', 1)
            src_tif = find_emit_tif(args.emit_tif_root, aoi, pair_id, tile_base)
            if not src_tif.exists():
                tif_skipped_missing_src += 1
                continue
            write_geotiff(y, tif_path, src_tif, cfg['scale'])
            tif_written += 1

    print(f'Wrote {written} npy, skipped {skipped_exists} (existing), {skipped_shape} (wrong shape)')
    if args.save_geotiff:
        print(f'Wrote {tif_written} geotiff, skipped {tif_skipped_missing_src} (missing source TIF)')


if __name__ == '__main__':
    main()
