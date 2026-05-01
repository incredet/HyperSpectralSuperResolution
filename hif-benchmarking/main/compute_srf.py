#!/usr/bin/env python3
import argparse
import sys
from pathlib import Path

import numpy as np

try:
    import scipy.io
except ImportError:
    sys.exit("scipy is required: pip install scipy")


EMIT_TARGET_WAVELENGTHS_NM = [
    440, 490, 530, 560, 620, 665, 705, 720,
    740, 783, 842, 865, 880, 920, 970, 1050,
    1130, 1200, 1260, 1510, 1560, 1610, 1680,
    2040, 2100, 2190, 2200, 2250, 2290, 2340, 2390, 2440,
]

S2_BANDS = ["B02", "B03", "B04", "B05", "B06", "B07", "B08", "B8A", "B11", "B12"]


def load_s2_srf(csv_path):
    import csv
    with open(csv_path) as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    wl = np.array([float(r["wavelength_nm"]) for r in rows])
    srf = {}
    for band in S2_BANDS:
        srf[band] = np.array([float(r[band]) for r in rows])
    return wl, srf


def compute_R(srf_wl, srf_dict, emit_centers, emit_fwhm):
    sigma = emit_fwhm / 2.35482  # FWHM → Gaussian sigma
    n_s2 = len(S2_BANDS)
    n_emit = len(emit_centers)
    R = np.zeros((n_s2, n_emit), dtype=np.float64)

    dw = np.gradient(srf_wl)  # wavelength spacing (for integration)

    for j, ec in enumerate(emit_centers):
        # EMIT band j spectral response: Gaussian
        emit_resp = np.exp(-0.5 * ((srf_wl - ec) / sigma) ** 2)

        for i, band in enumerate(S2_BANDS):
            s2_resp = srf_dict[band]
            # integrate product
            R[i, j] = np.sum(s2_resp * emit_resp * dw)

    # normalise rows to sum to 1
    row_sums = R.sum(axis=1, keepdims=True)
    row_sums[row_sums == 0] = 1.0  # avoid division by zero
    R = R / row_sums

    return R


def main():
    ap = argparse.ArgumentParser(
        description="Compute analytical S2→EMIT spectral response matrix R."
    )
    ap.add_argument("--srf-csv", required=True,
                    help="Path to S2A SRF CSV (from ESA S2-SRF document).")
    ap.add_argument("--emit-wavelengths", type=float, nargs="+",
                    default=EMIT_TARGET_WAVELENGTHS_NM,
                    help="EMIT band centre wavelengths in nm (default: 32 thesis bands).")
    ap.add_argument("--emit-fwhm", type=float, default=7.5,
                    help="EMIT spectral FWHM in nm (default: 7.5).")
    ap.add_argument("--output", default="data/srf_R.mat",
                    help="Output .mat file path (default: data/srf_R.mat).")
    args = ap.parse_args()

    srf_wl, srf_dict = load_s2_srf(args.srf_csv)
    emit_centers = np.array(args.emit_wavelengths)
    print(f"S2 SRF: {len(srf_wl)} wavelengths, {len(S2_BANDS)} bands")
    print(f"EMIT: {len(emit_centers)} bands, FWHM={args.emit_fwhm} nm")

    R = compute_R(srf_wl, srf_dict, emit_centers, args.emit_fwhm)

    # Print summary
    print(f"\nR matrix shape: {R.shape} (S2 bands × EMIT bands)")
    print(f"Row sums (should be 1.0): {R.sum(axis=1).round(6).tolist()}")

    for i, band in enumerate(S2_BANDS):
        nonzero = np.where(R[i] > 0.01)[0]
        if len(nonzero) > 0:
            contributing = [(j, emit_centers[j], R[i, j]) for j in nonzero]
            parts = [f"{ec:.0f}nm({w:.3f})" for _, ec, w in contributing]
            print(f"  {band}: {', '.join(parts)}")
        else:
            print(f"  {band}: no significant EMIT overlap")

    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    # Save R without bias column — CNMF_fusion.m will be modified to handle this
    scipy.io.savemat(str(out_path), {
        "R": R,
        "s2_bands": S2_BANDS,
        "emit_wavelengths_nm": emit_centers,
        "emit_fwhm_nm": args.emit_fwhm,
    }, do_compression=True)
    print(f"\nSaved: {out_path}")


if __name__ == "__main__":
    main()
