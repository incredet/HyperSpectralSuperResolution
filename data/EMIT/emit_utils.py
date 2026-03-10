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


# ── Sentinel-2 band centre wavelengths (nm) ──────────────────────────────
S2_BAND_WAVELENGTHS_NM: dict[str, float] = {
    "B02": 490.0,   # Blue
    "B03": 560.0,   # Green
    "B04": 665.0,   # Red
    "B05": 705.0,   # Vegetation Red Edge 1
    "B06": 740.0,   # Vegetation Red Edge 2
    "B07": 783.0,   # Vegetation Red Edge 3
    "B08": 842.0,   # NIR
    "B8A": 865.0,   # Narrow NIR
    "B11": 1610.0,  # SWIR-1
    "B12": 2190.0,  # SWIR-2
}

# ── Atmospheric absorption windows to exclude (nm) ───────────────────────
ATMOSPHERIC_EXCLUDE_NM: list[tuple[float, float]] = [
    (1350.0, 1450.0),  # Water vapour
    (1800.0, 1950.0),  # Water vapour
]


def select_emit_bands(
    wavelengths_nm: np.ndarray,
    num_keep: int = 32,
    s2_targets_nm: dict[str, float] | None = None,
    exclude_ranges_nm: list[tuple[float, float]] | None = None,
) -> np.ndarray:
    """Select EMIT bands that include S2-corresponding bands and avoid
    atmospheric absorption windows.

    Algorithm:
        1. Mark bands inside *exclude_ranges_nm* as invalid.
        2. Find the closest valid EMIT band for each S2 target wavelength
           (mandatory set).
        3. Distribute the remaining ``num_keep - len(mandatory)`` bands
           evenly across the valid (non-excluded) spectral range, excluding
           the mandatory bands already chosen.
        4. Merge, deduplicate, sort, and return 0-based indices.

    Args:
        wavelengths_nm:    Full EMIT wavelength array (e.g. 285 values).
        num_keep:          Total number of bands to select (default 32).
        s2_targets_nm:     Dict of S2 band name → centre wavelength in nm.
                           Defaults to :data:`S2_BAND_WAVELENGTHS_NM`.
        exclude_ranges_nm: List of ``(min_nm, max_nm)`` tuples defining
                           wavelength ranges to exclude.  Defaults to
                           :data:`ATMOSPHERIC_EXCLUDE_NM`.

    Returns:
        Sorted 0-based index array (``int64``, length *num_keep*).
    """
    wl = np.asarray(wavelengths_nm, dtype=np.float64)
    n_bands = len(wl)

    if s2_targets_nm is None:
        s2_targets_nm = S2_BAND_WAVELENGTHS_NM
    if exclude_ranges_nm is None:
        exclude_ranges_nm = ATMOSPHERIC_EXCLUDE_NM

    # Step 1: mask out atmospheric absorption windows
    valid_mask = np.ones(n_bands, dtype=bool)
    for wl_min, wl_max in exclude_ranges_nm:
        valid_mask &= ~((wl >= wl_min) & (wl <= wl_max))

    # Step 2: find mandatory bands (closest valid EMIT band per S2 target)
    mandatory = set()
    for s2_wl in s2_targets_nm.values():
        dists = np.where(valid_mask, np.abs(wl - s2_wl), np.inf)
        mandatory.add(int(np.argmin(dists)))

    mandatory_arr = np.sort(np.array(list(mandatory), dtype=int))

    # Step 3: distribute remaining bands evenly across valid range
    num_remaining = num_keep - len(mandatory_arr)

    valid_indices = np.where(valid_mask)[0]
    available = np.setdiff1d(valid_indices, mandatory_arr)

    if num_remaining > 0 and len(available) > 0:
        pick_count = min(num_remaining, len(available))
        pick_positions = np.round(
            np.linspace(0, len(available) - 1, pick_count)
        ).astype(int)
        distributed = available[pick_positions]
    else:
        distributed = np.array([], dtype=int)

    # Step 4: merge, deduplicate, sort
    selected = np.sort(np.unique(np.concatenate([mandatory_arr, distributed])))

    # If deduplication reduced count below num_keep, pad from valid pool
    if len(selected) < num_keep:
        remaining_pool = np.setdiff1d(valid_indices, selected)
        need = num_keep - len(selected)
        if len(remaining_pool) >= need:
            pick_positions = np.round(
                np.linspace(0, len(remaining_pool) - 1, need)
            ).astype(int)
            extra = remaining_pool[pick_positions]
            selected = np.sort(np.unique(np.concatenate([selected, extra])))

    return selected[:num_keep].astype(int)


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
