# Pairs_Extract.ipynb — Copy-Paste Changes for the From-Scratch Rerun

Apply these changes **in order**. Each section shows the cell, what to find, and what to replace it with.

---

## Change 1 — Cell 6 (Imports)

**Find** this line:
```python
    load_pipeline_defaults,
```

**Replace** with:
```python
    load_pipeline_config,
```

Then **find** this import block:
```python
from data.EMIT.emit_utils import (
    load_emit_wavelengths_nm_from_nc, cache_wavelengths_json,
)
```

**Replace** with:
```python
from data.EMIT.emit_utils import (
    load_emit_wavelengths_nm_from_nc, cache_wavelengths_json,
    closest_bands,
)
```

---

## Change 2 — Cell 12 (Seed config & load)

**Replace the entire cell** with:

```python
# ── Seed config files on first run ────────────────────────────────────────
drive_base = DRIVE_ROOT / RUN_TAG
drive_base.mkdir(parents=True, exist_ok=True)

for seed in ("aois.csv", "pipeline_config.yaml"):
    dst = drive_base / seed
    if not dst.exists():
        shutil.copy(seed, dst)
        print(f"Seeded {dst}")

catalogue = load_aois_catalogue(drive_base)
config_dict = load_pipeline_config(drive_base)

if AOI_INDICES is None:
    AOI_INDICES = list(range(len(catalogue)))

print(f"{len(AOI_INDICES)} AOIs selected, PAIR_RANK={PAIR_RANK}")
print(f"Drive root: {drive_base}")
print(f"\nConfig from pipeline_config.yaml:")
pprint(config_dict)
```

**What changed:**
- `"pipeline_defaults.json"` → `"pipeline_config.yaml"` in seeding
- `load_pipeline_defaults` → `load_pipeline_config`
- `defaults` → `config_dict` (clearer name)
- `AOI_INDICES = list(range(4, len(catalogue)))` → `list(range(len(catalogue)))` (no skip)

---

## Change 3 — Cell 14 (Main loop) — Config construction

**Find:**
```python
    config = PipelineConfig.from_dict({
        **defaults,
        "aoi_lat":    aoi_row["lat"],
        "aoi_lon":    aoi_row["lon"],
        "drive_root": str(drive_base / datetime.now().strftime("%Y-%m-%d")),
    })
```

**Replace** with:
```python
    config = PipelineConfig.from_dict({
        **config_dict,
        "aoi_lat":    aoi_row["lat"],
        "aoi_lon":    aoi_row["lon"],
        "drive_root": str(drive_base),
    })
```

**What changed:**
- `defaults` → `config_dict`
- `drive_base / datetime.now().strftime(...)` → just `drive_base` (no double date nesting)

---

## Change 4 — Cell 14 — EMIT search call

**Find:**
```python
        aoi_geom = point_buffer_bbox(config.aoi_lon, config.aoi_lat, config.aoi_buffer_m)
```

**Replace** with:
```python
        aoi_geom = point_buffer_bbox(config.aoi_lon, config.aoi_lat, config.search_buffer_m)
```

**What changed:** The config field is `search_buffer_m`, not `aoi_buffer_m`.

---

## Change 5 — Cell 14 — EMIT cloud cover filter

**Find:**
```python
        picks = search(
            bbox=aoi_geom.bounds,
            start=search_start,
            end=search_end,
            cloud_cover=(0.0, 100.0),
        )
```

**Replace** with:
```python
        picks = search(
            bbox=aoi_geom.bounds,
            start=search_start,
            end=search_end,
            cloud_cover=(0.0, config.max_emit_cloud_pct),
        )
```

**What changed:** Cloud cover upper bound now comes from config (30.0) instead of hardcoded 100.0.

---

## Change 6 — Cell 14 — S2 download with SCL

**Find:**
```python
        s2_stack, scl_path   = download_s2_spectral_stack(s2_item, ROOT / "s2")
```

**Replace** with:
```python
        s2_stack, scl_path = download_s2_spectral_stack(
            s2_item, ROOT / "s2", return_scl=True,
        )
```

**What changed:** Added `return_scl=True` so the SCL layer is actually downloaded and returned. (The unpacking `s2_stack, scl_path` was already there but `return_scl` wasn't passed, so the function returned a plain Path and the tuple unpack would crash.)

---

## Change 7 — Cell 14 — Tiling with SCL cloud check + emit_check_bands

**Find:**
```python
    valid_tiles = find_valid_paired_tiles(
        emit_path=str(envi_bin_trimmed),
        s2_path=str(out_s2_tif_trimmed),
        **config.tile_params,
    )
```

**Replace** with:
```python
    # Compute 1-based band indices for NaN checking (only selected 32 bands)
    emit_check_bands_1based = None
    if config.emit_target_wavelengths_nm and wl_nm is not None:
        idxs_0, _ = closest_bands(wl_nm, list(config.emit_target_wavelengths_nm))
        emit_check_bands_1based = sorted(set(i + 1 for i in idxs_0))

    valid_tiles = find_valid_paired_tiles(
        emit_path=str(envi_bin_trimmed),
        s2_path=str(out_s2_tif_trimmed),
        scl_path=str(scl_path) if scl_path else None,
        emit_check_bands=emit_check_bands_1based,
        **config.tile_params,
    )
```

**What changed:**
- `scl_path=` now passed so per-tile SCL cloud fraction is checked (threshold from config via `tile_params`)
- `emit_check_bands=` limits NaN checking to the 32 selected bands only (atmospheric bands with expected NaN won't reject tiles)

---

## Change 8 — Cell 14 — write_emit_b32_tile with config wavelengths

**Find:**
```python
        emit_out_b32, emit_b32_idx = write_emit_b32_tile(
            emit_out, num_keep=32,
            idx_0based=emit_b32_idx,
            overwrite=True, wavelengths_nm=wl_nm,
        )
```

**Replace** with:
```python
        emit_out_b32, emit_b32_idx = write_emit_b32_tile(
            emit_out,
            num_keep=config.spectral_num_keep_bands,
            idx_0based=emit_b32_idx,
            overwrite=True,
            wavelengths_nm=wl_nm,
            target_wavelengths_nm=config.emit_target_wavelengths_nm,
        )
```

**What changed:**
- `num_keep=32` → `config.spectral_num_keep_bands` (from YAML)
- Added `target_wavelengths_nm=config.emit_target_wavelengths_nm` — band selection now uses the YAML wavelength list via `closest_bands()` instead of the old linspace fallback

---

## Summary of all changes

| # | Cell | What | Why |
|---|------|------|-----|
| 1 | 6 | Import `load_pipeline_config` + `closest_bands` | New config loading + band selection |
| 2 | 12 | Seed YAML, load config, no AOI skip | New config file format, process all AOIs |
| 3 | 14 | Config construction: `config_dict`, no double date | Correct variable name, fix path nesting |
| 4 | 14 | `aoi_buffer_m` → `search_buffer_m` | Field name fix |
| 5 | 14 | Cloud cover from config | Use `max_emit_cloud_pct` (30%) not 100% |
| 6 | 14 | `return_scl=True` | Actually download SCL for cloud checks |
| 7 | 14 | SCL + emit_check_bands in tiling | Per-tile cloud filter + skip atmospheric NaN |
| 8 | 14 | Config wavelengths in write_emit_b32_tile | Band selection from YAML, not linspace |

---
---

# Color_Matching.ipynb — Copy-Paste Changes

---

## Change 1 — Cell 5 (Imports)

**Add** this import at the end of the import block (after the `report_builder` imports):

```python
from documentation.pairs_artifacts import load_pipeline_config
from data.EMIT.emit_utils import closest_bands
```

---

## Change 2 — Cell 9 (Parameters)

**Replace the entire cell** with:

```python
# ═══════════════════════════════════════════════════════════════════════
#  USER PARAMETERS — edit these before running
# ═══════════════════════════════════════════════════════════════════════

DRIVE_ROOT = Path("/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches")
RUN_TAG    = "2026-03-22"   # must match the extraction run

SHOW_PLOTS = False   # set True for interactive exploration

# ═══════════════════════════════════════════════════════════════════════
```

**What changed:** Removed all hardcoded spectral parameters — they'll come from YAML config.

---

## Change 3 — Cell 10 (spectral_params)

**Replace the entire cell** with:

```python
drive_base = DRIVE_ROOT / RUN_TAG
config_dict = load_pipeline_config(drive_base)
config = PipelineConfig.from_dict({
    **config_dict,
    "aoi_lat": 0.0, "aoi_lon": 0.0,        # dummy — not used here
    "drive_root": str(drive_base),
})

spectral_params = config.spectral_params

print("Spectral params from pipeline_config.yaml:")
pprint(spectral_params)
```

**What changed:** Parameters now loaded from YAML via `PipelineConfig.spectral_params` property instead of hardcoded values.

---

## Change 4 — Cell 14 (Main loop) — band selection fallback

**Find** both occurrences of this block (they appear twice in the if/else):
```python
                from data.EMIT.emit_utils import select_emit_bands
                _, b32_idx = select_emit_bands(wl_nm, num_keep=32)
                wl_b32 = wl_nm[b32_idx]
```

**Replace** each with:
```python
                idxs_0, _ = closest_bands(wl_nm, list(config.emit_target_wavelengths_nm))
                b32_idx = sorted(set(idxs_0))
                wl_b32 = wl_nm[b32_idx]
```

There are **two** places this appears (lines with and without `meta_jsons`). Replace both.

---

## Summary of Color_Matching changes

| # | Cell | What | Why |
|---|------|------|-----|
| 1 | 5 | Add `load_pipeline_config` + `closest_bands` imports | Config-based workflow |
| 2 | 9 | Remove hardcoded spectral params | Now from YAML |
| 3 | 10 | Load config from YAML, use `spectral_params` property | Single source of truth |
| 4 | 14 | `select_emit_bands` → `closest_bands` with config wavelengths | Consistent band selection |
