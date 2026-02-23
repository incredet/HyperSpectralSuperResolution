from pathlib import Path
import json
import numpy as np

def load_emit_wavelengths_nm_from_nc(emit_nc_path: str) -> np.ndarray:
    emit_nc_path = str(emit_nc_path)

    try:
        import xarray as xr
        ds = xr.open_dataset(emit_nc_path, group="sensor_band_parameters")
        candidates = ["wavelengths", "wavelength", "wavelength_center", "band_center_wavelength"]
        var = None
        for c in candidates:
            if c in ds.variables:
                var = c
                break
        if var is None:
            for c in candidates:
                if c in ds.coords:
                    var = c
                    break
        if var is None:
            raise KeyError(f"Could not find wavelength variable in sensor_band_parameters. Vars: {list(ds.variables)}")

        wl = ds[var].values.astype(np.float64)
        units = (ds[var].attrs.get("units") or "").lower()

    except Exception:
        from netCDF4 import Dataset
        with Dataset(emit_nc_path, "r") as nc:
            grp = nc.groups.get("sensor_band_parameters", None)
            if grp is None:
                raise KeyError("Group 'sensor_band_parameters' not found in EMIT netCDF.")
            candidates = ["wavelengths", "wavelength", "wavelength_center", "band_center_wavelength"]
            var = None
            for c in candidates:
                if c in grp.variables:
                    var = c
                    break
            if var is None:
                raise KeyError(f"Could not find wavelength variable. Vars: {list(grp.variables.keys())}")
            v = grp.variables[var]
            wl = np.array(v[:], dtype=np.float64)
            units = (getattr(v, "units", "") or "").lower()

    if units in ("nanometers", "nm", ""):
        wl_nm = wl
    elif units in ("micrometers", "um", "µm"):
        wl_nm = wl * 1000.0
    else:
        wl_nm = wl

    return wl_nm


def cache_wavelengths_json(wavelengths_nm: np.ndarray, out_path: str):
    out = {
        "wavelength_units": "nm",
        "wavelengths_nm": [float(x) for x in np.asarray(wavelengths_nm).ravel()],
    }
    Path(out_path).parent.mkdir(parents=True, exist_ok=True)
    Path(out_path).write_text(json.dumps(out, indent=2))


def closest_bands(
    wavelengths_nm,
    targets_nm,
    *,
    one_based=False,
    return_picked=True,
    verbose=False,
):
    wl = np.atleast_1d(np.asarray(wavelengths_nm, dtype=float))
    if np.isscalar(targets_nm):
        targets = [float(targets_nm)]
        scalar = True
    else:
        targets = [float(t) for t in targets_nm]
        scalar = False

    idxs = [int(np.argmin(np.abs(wl - t))) for t in targets]
    if one_based:
        idxs_out = [i + 1 for i in idxs]
    else:
        idxs_out = idxs

    picked = [float(wl[i]) for i in idxs]

    if verbose:
        for t, i, p in zip(targets, idxs_out, picked):
            base = "1-based" if one_based else "0-based"
            print(f"Picked band {i} ({base}) at {p:.1f} nm for target {t:.1f} nm")

    if return_picked:
        return (idxs_out[0], picked[0]) if scalar else (idxs_out, picked)
    else:
        return idxs_out[0] if scalar else idxs_out
