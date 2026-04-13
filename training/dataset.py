import numpy as np
import random
import zipfile
import rasterio
from rasterio.io import MemoryFile
from pathlib import Path
from torch.utils.data import Dataset
import torch


EMIT_SCALE = 10_000.0
EMIT_NODATA = 65535

GT_SUFFIXES = {
    'regression': '_regression_synth.tif',
    'sfim': '_sfim.tif',
    'cnmf': '_cnmf.tif',
}


def split_aois(all_aois, seed=42, max_aois=None):
    all_aois = sorted(all_aois)
    rng = np.random.default_rng(seed)
    perm = rng.permutation(len(all_aois))

    if max_aois and max_aois < len(all_aois):
        perm = perm[:max_aois]
        print(f'MAX_AOIS={max_aois}: using {len(perm)} of {len(all_aois)} AOIs')

    selected = [all_aois[i] for i in perm]
    n = len(selected)
    n_test = max(1, int(0.15 * n))
    n_val = max(1, int(0.15 * n))

    test_aois = set(selected[:n_test])
    val_aois = set(selected[n_test:n_test + n_val])
    train_aois = set(selected[n_test + n_val:])

    print(f'AOI split: {n} total -> {len(train_aois)} train / {len(val_aois)} val / {len(test_aois)} test')
    return train_aois, val_aois, test_aois


def build_index(zip_dir, gt_source, aoi_filter=None):
    gt_suffix = GT_SUFFIXES[gt_source]
    index = []

    for zp in sorted(Path(zip_dir).glob('*.zip')):
        aoi = zp.stem.split('__')[0]
        if aoi_filter is not None and aoi not in aoi_filter:
            continue

        try:
            zf = zipfile.ZipFile(zp, 'r')
            names = set(zf.namelist())
        except Exception:
            continue

        for lr_name in sorted(n for n in names if n.endswith('__emit_b32.tif')):
            gt_name = lr_name.replace('__emit_b32.tif', gt_suffix)
            if gt_name not in names:
                continue
            try:
                with MemoryFile(zf.read(gt_name)) as mf:
                    with mf.open() as ds:
                        _ = ds.shape
            except Exception:
                continue
            index.append((str(zp), lr_name, gt_name, zp.stem))
        zf.close()

    print(f'Index: {len(index)} tiles from {zip_dir}')
    return index


def read_tif_from_zip(zip_path, filename):
    with zipfile.ZipFile(zip_path, 'r') as zf:
        raw = zf.read(filename)
    with MemoryFile(raw) as mf:
        with mf.open() as ds:
            return ds.read().astype(np.float32)


class PairedZipDataset(Dataset):

    def __init__(self, index, scale=6, gt_size=96, augment=True, preload=False):
        self.index = index
        self.scale = scale
        self.gt_size = gt_size
        self.augment = augment
        self.cache = None

        if preload:
            import time
            t0 = time.time()
            print(f'[PairedZipDataset] Preloading {len(index)} pairs into RAM...')
            self.cache = []
            for i, (zip_path, lr_name, gt_name, _) in enumerate(index):
                try:
                    lq = read_tif_from_zip(zip_path, lr_name)
                    gt = read_tif_from_zip(zip_path, gt_name)
                    self.cache.append((lq, gt))
                except Exception:
                    self.cache.append(None)
                if (i + 1) % 1000 == 0:
                    print(f'  {i+1}/{len(index)}...')
            elapsed = time.time() - t0
            mb = sum(c[0].nbytes + c[1].nbytes for c in self.cache if c) / 1e6
            print(f'  Done: {mb:.0f} MB in {elapsed:.1f}s')
        else:
            print(f'[PairedZipDataset] {len(index)} pairs, scale={scale}, gt_size={gt_size}, augment={augment}')

    def __len__(self):
        return len(self.index)

    def __getitem__(self, idx):
        if self.cache is not None:
            entry = self.cache[idx]
            if entry is None:
                return self.__getitem__((idx + 1) % len(self))
            lq, gt = entry[0].copy(), entry[1].copy()
        else:
            zip_path, lr_name, gt_name, _ = self.index[idx]
            try:
                gt = read_tif_from_zip(zip_path, gt_name)
            except rasterio.errors.RasterioIOError:
                return self.__getitem__((idx + 1) % len(self))
            lq = read_tif_from_zip(zip_path, lr_name)

        mask = lq == EMIT_NODATA
        lq /= EMIT_SCALE
        lq[mask] = 0.0
        gt /= EMIT_SCALE
        gt = np.clip(np.nan_to_num(gt, nan=0.0), 0.0, 1.5)

        if self.gt_size:
            _, H_gt, W_gt = gt.shape
            lq_size = self.gt_size // self.scale

            top_lq = random.randint(0, max(0, H_gt // self.scale - lq_size))
            left_lq = random.randint(0, max(0, W_gt // self.scale - lq_size))
            top_gt, left_gt = top_lq * self.scale, left_lq * self.scale

            gt = gt[:, top_gt:top_gt + self.gt_size, left_gt:left_gt + self.gt_size]
            lq = lq[:, top_lq:top_lq + lq_size, left_lq:left_lq + lq_size]

        if self.augment:
            if random.random() > 0.5:
                gt = np.flip(gt, axis=2).copy()
                lq = np.flip(lq, axis=2).copy()
            if random.random() > 0.5:
                gt = np.flip(gt, axis=1).copy()
                lq = np.flip(lq, axis=1).copy()
            if random.random() > 0.5:
                gt = np.rot90(gt, k=1, axes=(1, 2)).copy()
                lq = np.rot90(lq, k=1, axes=(1, 2)).copy()

        return {
            'lq': torch.from_numpy(lq.copy()).float(),
            'gt': torch.from_numpy(gt.copy()).float(),
            'lq_path': f'{zip_path}::{lr_name}',
            'gt_path': f'{zip_path}::{gt_name}',
        }
