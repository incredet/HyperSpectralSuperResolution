from pathlib import Path
import re
import json
import warnings
import numpy as np
import rasterio
from arosics import COREG_LOCAL

import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from data.EMIT.emit_utils import closest_bands

def s2_bandmap_from_template(s2_template_tif: str) -> dict[str, int]:
    with rasterio.open(s2_template_tif) as src:
        descs = src.descriptions or ()
    if not descs or all(d is None for d in descs):
        raise ValueError(f"S2 template has no band descriptions: {s2_template_tif}")

    bandmap = {}
    for i, d in enumerate(descs, start=1): 
        if not d:
            continue
        band_code = str(d).split("_", 1)[0].upper() 
        bandmap[band_code] = i
    return bandmap


def closest_band_1based(wavelengths_nm: np.ndarray, target_nm: float) -> int:
    return int(np.argmin(np.abs(np.asarray(wavelengths_nm, float) - float(target_nm)))) + 1


def coregister_s2_granule_to_emit_granule(
    *,
    emit_ref_tif: str,
    s2_tgt_tif: str,
    out_s2_tif: str,
    s2_map,
    emit_wl_nm,
    prefer=("B03", "B08", "B04"),
    window_size=(512, 512),   
    grid_res=600,             
    max_points=500,           
    max_shift=50,
    min_reliability=60,  
    tieP_filter_level=3,
    nodata_emit=65535,
    nodata_s2=None,
    out_gsd=[10, 10],
    resamp_calc="cubic",
    resamp_deshift="cubic",
    cliptoextent=True
):

    target_nm = {"B03": 560.0, "B08": 842.0, "B04": 665.0}

    keys = list(target_nm.keys())
    targets = [target_nm[k] for k in keys]

    idxs_1b = closest_bands(
        emit_wl_nm,
        targets,
        one_based=True,
        return_picked=False,
        verbose=True, 
    )


    emit_match = dict(zip(keys, idxs_1b))

    if nodata_s2 is None:
        with rasterio.open(s2_tgt_tif) as src:
            nodata_s2 = src.nodata

    attempts = []
    last_err = None
 
    for code_raw in prefer:
        code = str(code_raw).split("_", 1)[0].upper()
        if code not in target_nm:
            continue
        if code not in s2_map:
            attempts.append({"s2_code": code, "success": False, "error": f"{code} not in S2 template descriptions"})
            continue

        try:
            CRL = COREG_LOCAL(
                im_ref=str(emit_ref_tif),
                im_tgt=str(s2_tgt_tif),
                grid_res=float(grid_res),
                max_points=int(max_points) if max_points is not None else None,
                window_size=tuple(window_size),

                path_out=str(out_s2_tif),
                fmt_out="GTIFF",
                out_crea_options=["TILED=YES", "COMPRESS=DEFLATE"],

                r_b4match=int(emit_match[code]),
                s_b4match=int(s2_map[code]),

                max_shift=int(max_shift),
                min_reliability=int(min_reliability),
                tieP_filter_level=int(tieP_filter_level),

                nodata=(nodata_emit, nodata_s2),
                resamp_alg_calc=resamp_calc,
                resamp_alg_deshift=resamp_deshift,

                match_gsd=False,
                align_grids=True,
                out_gsd=list(out_gsd),

            )

            result = CRL.correct_shifts(cliptoextent=cliptoextent)
            if not hasattr(CRL, "success"):
                warnings.warn("COREG_LOCAL missing 'success' attr — treating as failed", RuntimeWarning)
            ok = bool(getattr(CRL, "success", False))
            info = {
                "success": ok,
                "s2_code": code,
                "s2_match_band_1b": int(s2_map[code]),
                "emit_match_band_1b": int(emit_match[code]),
                "emit_match_wl_nm": float(emit_wl_nm[int(emit_match[code]) - 1]),
                "grid_res": grid_res,
                "max_points": max_points,
                "result_keys": list(result.keys()) if isinstance(result, dict) else None,
            }
            attempts.append(info)

            if ok:
                return {"final": info, "attempts": attempts, "out_s2_tif": str(out_s2_tif)}
            
        except Exception as e:
            last_err = str(e)
            attempts.append({"s2_code": code, "success": False, "error": last_err})

    return {"final": {"success": False, "error": last_err or "All attempts failed"}, "attempts": attempts, "out_s2_tif": str(out_s2_tif)}
