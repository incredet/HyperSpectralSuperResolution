"""Audit existing zip directories and SFIM outputs on Drive.

Usage (in Colab):
    python training/audit_drive.py \\
        --drive-root /content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches \\
        --run-tag 2026-04-02
"""
import argparse
import zipfile
from io import BytesIO
from pathlib import Path

import numpy as np


def inspect_zip_dir(zip_dir: Path, label: str):
    print(f"\n── {label}: {zip_dir}")
    if not zip_dir.exists():
        print("   (missing)")
        return
    zips = sorted(zip_dir.glob("*.zip"))
    print(f"   zips: {len(zips)}")
    if not zips:
        return

    sample = zips[0]
    print(f"   sample: {sample.name}")
    with zipfile.ZipFile(sample) as zf:
        names = zf.namelist()
        exts = sorted({Path(n).suffix for n in names})
        print(f"   entries: {len(names)}, ext(s): {exts}")

        # Pick one LR + GT and report shape
        lr_name = next((n for n in names if "__emit_b32" in n), None)
        gt_name = next((n for n in names
                        if ("_cnmf" in n or "_sfim" in n
                            or "_synthetic_gt" in n or "_regression_synth" in n)
                        and "__emit_b32" not in n), None)
        for n in (lr_name, gt_name):
            if n is None:
                continue
            raw = zf.read(n)
            try:
                if n.endswith(".npy"):
                    arr = np.load(BytesIO(raw))
                else:
                    import rasterio
                    from rasterio.io import MemoryFile
                    with MemoryFile(raw) as mf, mf.open() as ds:
                        arr = ds.read()
                print(f"   {n}: shape={arr.shape}, dtype={arr.dtype}, "
                      f"min={arr.min()}, max={arr.max()}")
            except Exception as e:
                print(f"   {n}: READ FAILED ({e})")


def audit_sfim_outputs(drive_base: Path):
    print(f"\n── SFIM outputs on Drive: {drive_base}")
    sfim_tifs = list(drive_base.glob("*/*/SFIM/*_sfim.tif"))
    print(f"   found: {len(sfim_tifs)} _sfim.tif files")
    if not sfim_tifs:
        sfim_tifs = list(drive_base.glob("*/*/tiles/*_sfim.tif"))
        print(f"   (fallback tiles/): {len(sfim_tifs)} files")
    if not sfim_tifs:
        print("   no SFIM outputs found")
        return

    import rasterio
    n_check = min(10, len(sfim_tifs))
    print(f"   checking first {n_check} for corruption:")
    bad = 0
    for p in sfim_tifs[:n_check]:
        try:
            with rasterio.open(p) as ds:
                a = ds.read()
            nan = np.isnan(a.astype(np.float64)).sum()
            zero = (a == 0).all(axis=0).sum()  # fully-zero pixels
            rng = (a.min(), a.max())
            tag = "OK" if nan == 0 and rng[1] > 0 else "SUSPECT"
            print(f"      {tag} {p.parent.parent.name}/{p.name}  "
                  f"shape={a.shape} dtype={a.dtype} nan={nan} "
                  f"zero_pixels={zero} range=({rng[0]},{rng[1]})")
            if tag != "OK":
                bad += 1
        except Exception as e:
            print(f"      FAIL {p.name}: {e}")
            bad += 1
    print(f"   suspect/failed: {bad}/{n_check}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--drive-root", required=True)
    ap.add_argument("--run-tag", required=True)
    args = ap.parse_args()

    drive_base = Path(args.drive_root) / args.run_tag
    print(f"Drive base: {drive_base}  exists={drive_base.exists()}")

    for name in ["zips_cnmf", "zips_cnmf_npy",
                 "zips_cnmf_patched", "zips_cnmf_patched_192",
                 "zips_sfim", "zips_sfim_npy", "zips_sfim_patched"]:
        inspect_zip_dir(drive_base / name, name)

    audit_sfim_outputs(drive_base)


if __name__ == "__main__":
    main()
