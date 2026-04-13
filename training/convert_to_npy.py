"""Convert GeoTIFF tile zips to .npy tile zips for faster training I/O.

Reads each zip of GeoTIFFs, converts LR/GT tiles to raw numpy arrays
(kept as uint16 to save space), and writes a new zip with .npy files
using ZIP_STORED (no compression). This is a one-time conversion meant
to be run once and the output stored permanently on Drive.

Usage:
    python convert_to_npy.py \
        --src /path/to/zips_cnmf \
        --dst /path/to/zips_cnmf_npy \
        --gt-source cnmf
"""
import argparse
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np
import rasterio
from rasterio.io import MemoryFile
from tqdm import tqdm


GT_SUFFIXES = {
    'regression': '_regression_synth.tif',
    'sfim': '_sfim.tif',
    'cnmf': '_cnmf.tif',
}


def tif_to_npy_bytes(raw_tif):
    with MemoryFile(raw_tif) as mf:
        with mf.open() as ds:
            arr = ds.read()  # uint16
    buf = BytesIO()
    np.save(buf, arr)
    return buf.getvalue()


def convert_zip(src_zip, dst_zip, gt_suffix):
    with zipfile.ZipFile(src_zip, 'r') as zin, \
         zipfile.ZipFile(dst_zip, 'w', zipfile.ZIP_STORED) as zout:
        names = zin.namelist()
        converted = 0
        for name in names:
            if name.endswith('__emit_b32.tif'):
                npy_name = name.replace('.tif', '.npy')
                zout.writestr(npy_name, tif_to_npy_bytes(zin.read(name)))
                converted += 1
            elif name.endswith(gt_suffix):
                npy_name = name.replace('.tif', '.npy')
                zout.writestr(npy_name, tif_to_npy_bytes(zin.read(name)))
                converted += 1
    return converted


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--src', required=True, help='source zip directory (GeoTIFF zips)')
    parser.add_argument('--dst', required=True, help='destination directory for npy zips')
    parser.add_argument('--gt-source', default='cnmf', choices=GT_SUFFIXES.keys())
    args = parser.parse_args()

    src = Path(args.src)
    dst = Path(args.dst)
    dst.mkdir(parents=True, exist_ok=True)

    gt_suffix = GT_SUFFIXES[args.gt_source]
    zips = sorted(src.glob('*.zip'))
    print(f'Converting {len(zips)} zips: {src} -> {dst}')

    total = 0
    for zp in tqdm(zips, desc='Zips'):
        dst_zip = dst / zp.name
        if dst_zip.exists():
            continue
        n = convert_zip(zp, dst_zip, gt_suffix)
        total += n

    print(f'Done: {total} tiles converted')


if __name__ == '__main__':
    main()
