# Workflow Analysis: Pairs_EMIT_S2_demo_3_5-2.ipynb

A thorough analysis of the EMIT–Sentinel-2 pairing, alignment, tiling, and spectral regression pipeline as implemented in the uploaded notebook and its supporting codebase.

---

## Pipeline Overview

The notebook implements a complete workflow for creating training data for hyperspectral super-resolution: pairing NASA EMIT (60 m, 285 bands) with ESA Sentinel-2 (10 m, 10 bands), spatially aligning them, extracting co-located tiles, and fitting a polynomial regression that maps S2 spectra to synthetic EMIT spectra at 10 m resolution.

The pipeline has 10 stages across 55 cells, calling into 6 Python modules (23 source files total).

---

## Stage-by-Stage Workflow

### Stage 1 — Setup (Cells 0–6)

The notebook is designed for Google Colab. It clones the `HyperSpectralSuperResolution` repository using a GitHub PAT provided interactively, installs dependencies (`arosics`, `py-tools-ds`, `earthaccess`, `hytools`, GDAL CLI), and applies a monkey-patch to `py_tools_ds.warp_ndarray` to handle boolean arrays that GDAL rejects.

Imports pull from six project modules: `data.pairing`, `data.EMIT`, `data.S2`, `geometry`, `viz`, `tiles_helpers`, `documentation`, and `spectral`.

**Key concern:** The monkey-patch (Cell 5) silently overrides a library function at runtime. It's version-specific to py_tools_ds ≤ 0.24.1 and won't survive a library upgrade. There's no teardown or version guard.

### Stage 2 — Authentication (Cells 7–9)

Mounts Google Drive and logs in to NASA Earthdata via `earthaccess.login(persist=True)`. The GitHub PAT remains in `os.environ` for the entire session lifetime, readable by any subprocess.

### Stage 3 — Configuration (Cells 10–11)

Sets global parameters:

- **AOI:** Single point (32.75°N, 114.96°W) buffered by 5 km → creates a WGS-84 bounding box via an azimuthal equidistant projection in `pairs_utils.point_buffer_bbox()`.
- **Cloud thresholds:** `MAX_S2_CLOUD_FRAC = 0.7`, `MAX_EMIT_CLOUD_PCT = 70.0` — allows up to 70% cloud cover. This is very permissive for a super-resolution training pipeline.
- **Output paths:** Local (`pairs_output/`) and Drive (timestamped folder under `HyperResData/`). The Drive folder is named by raw Unix timestamp, which is not human-readable.

### Stage 4 — EMIT/S2 Pair Search (Cells 12–15)

**Step 1 — EMIT search (Cell 13):** Calls `data.EMIT.emit_search.search()` with the AOI bounding box and `cloud_cover=(0.0, 100.0)` — no cloud filter at all at this stage, overriding the configured thresholds. Queries NASA CMR for EMIT L2A reflectance granules.

**Step 2 — Batched pairing (Cell 14):** `pair_emit_to_s2_batched()` (in `data/pairing/pairing.py`) splits EMIT granules into 14-day time windows and, for each window:

1. Deduplicates EMIT granules by latest revision (`emit_dedupe_latest_revision`)
2. Optionally filters by cloud percentage, keeps top-N least-cloudy per UTC day
3. Builds a Sentinel-2 STRtree spatial index from STAC (Element84 Earth Search)
4. For each EMIT granule, finds the best S2 match using:
   - Sun-angle difference < 5° (via unit-vector dot-product comparison)
   - Time-of-day difference < 1.5 hours (circular hour comparison)
   - Spatial overlap metrics computed in UTM (can fit a 6 km tile)
   - Cloud fraction from S2 SCL classification (classes 8–11)
5. Writes JSONL checkpoint files per batch for resume capability

**Step 3 — Load results (Cell 15):** Reads all `pairs_batch_*.jsonl` files, filters for records with a valid `s2_id` and cloud fraction, counts rejection reasons.

**Key modules used:**

- `data/pairing/pairs_utils.py` — AOI buffering, solar geometry, overlap metrics. Contains `overlap_metrics_and_geom_wgs84()` which projects geometries to UTM for metric area calculations. Default `tile_m = 6000` (6 km).
- `data/pairing/pairing.py` — The batched orchestrator. Rebuilds the S2 STAC index per batch (inefficient for overlapping windows).
- `data/EMIT/emit_search.py` — CMR search, UMM geometry parsing, cloud extraction, deduplication.
- `data/S2/s2_search.py` — STAC search, SCL cloud counting, S2 index building. **Has a conflicting default** `tile_m = 60000` (60 km) — 10× different from `pairs_utils.py`. The notebook avoids this by explicit parameterisation, but it's a latent trap.

### Stage 5 — Download One Pair (Cells 16–21)

Selects `pairs[0]`, re-fetches the EMIT granule metadata from CMR (`refetch_emit_pick`), fetches the S2 STAC item, then downloads:

- EMIT L2A reflectance netCDF (`_RFL_` asset) + observation geometry netCDF
- S2 10-band spectral stack as a GeoTIFF via `download_s2_spectral_stack()`

The S2 download stacks bands B02–B12 (10 m and 20 m bands resampled to 10 m) into a single multi-band GeoTIFF. Band descriptions are embedded as GDAL metadata tags.

### Stage 6 — Preprocessing (Cells 22–25)

Extracts EMIT wavelengths from the netCDF (285 values, ~381–2493 nm), caches to JSON. Creates a `RunPaths` directory structure for outputs (local + Drive mirror). Initialises a `ReportWriter` for generating a run-level markdown report. Writes EMIT and S2 metadata summaries.

**Module:** `documentation/pairs_artifacts.py` — provides `RunPaths`, `ReportWriter`, `TileRecord`, and various metadata/manifest writers.

### Stage 7 — Orthorectification, Crop, Co-registration, Trim (Cells 26–33)

This is the geometric heart of the pipeline. Four sequential operations bring EMIT and S2 into pixel-aligned correspondence.

**Step 7a — EMIT orthorectification (Cell 30):**

`geometry/EMIT_proj.py::convert_emit_nc_to_envi()` — the largest module (1,931 lines). Converts EMIT L1B/L2A swath data to orthorectified, UTM-projected datacubes.

The process has three sub-steps:

1. **GLT scatter-to-grid (WGS-84 geographic):** Reads raw EMIT radiance/reflectance plus geolocation arrays (lon, lat, elevation) from netCDF. Builds a Geolocation Lookup Table (GLT) mapping output grid pixels to raw sensor coordinates. Constructs a GDAL VRT with `GEOLOCATION` metadata domain and runs `gdalwarp` in a single pass to produce an orthorectified ENVI cube in geographic projection.

2. **DEM parallax correction (optional, enabled here):** Downloads Copernicus GLO-30 DEM tiles, resamples to the EMIT grid, computes EGM2008 geoid undulation (orthometric → ellipsoidal height conversion via `pyproj`). For each pixel, calculates the parallax shift from the elevation difference between the DEM surface and EMIT's assumed reference, using viewing angles from the observation geometry. Shifts pixel coordinates accordingly.

3. **Geographic → UTM warp:** Runs `gdalwarp -tr 60 60 -te ...` to reproject from WGS-84 to UTM at 60 m. The target extent is computed by `_compute_te()`, which snaps the EMIT output grid to the S2 pixel origin — this is a critical step that guarantees each EMIT pixel covers exactly 6×6 S2 pixels with zero sub-pixel offset.

Also exports GeoTIFFs (uint16 scaled, deflate compressed) for inspection.

**Step 7b — S2 crop (Cell 31):**

`crop_s2_stack_to_te()` crops the S2 10-band stack to the EMIT footprint extent using the same target extent from the warp. Internally, uses `rasterio.windows.from_bounds()` with the S2 transform, snapped to exact S2 pixel boundaries. This preserves the S2 native grid origin.

**Step 7c — Co-registration (Cell 32):**

`geometry/arosics_coreg.py::coregister_s2_granule_to_emit_granule()` runs AROSICS `COREG_LOCAL` to refine the S2-to-EMIT alignment with local tie points.

The function:
1. Finds the closest EMIT bands to S2 B03 (560 nm), B04 (665 nm), B08 (842 nm)
2. Runs tie-point matching with a 512×512 pixel window, 120 m grid spacing, up to 1000 points
3. Applies the shift field to produce a co-registered S2 GeoTIFF

**Critical bug:** `nodata_emit=65535` is hardcoded in the function signature and repeated in the notebook call. But the EMIT UTM data is float32 with nodata = −9999. This means AROSICS treats actual nodata pixels as valid image data, corrupting the tie-point correlation. The notebook does not override this default.

**Step 7d — Trim to common extent (Cell 33):**

Finds the valid-data bounding box of the co-registered S2 (excludes 2-pixel margin for edge artefacts), intersects with the EMIT extent, snaps to the 60 m grid using the same anchor point, then crops both rasters with `gdal_translate -projwin`. This produces pixel-locked EMIT and S2 rasters.

**No error guard:** If co-registration failed in Cell 32, Cell 33 proceeds anyway, trimming an unregistered S2 image and producing misaligned tiles.

### Stage 8 — Visualisation (Cells 34–36)

Two side-by-side RGB comparisons (S2 vs EMIT): one before trimming (after ortho), one after co-registration and trimming. Uses `viz/plots.py` functions with percentile stretching, gamma correction, and optional white balance.

### Stage 9 — Tiling and Spectral Fitting (Cells 37–50)

**Step 9a — Find valid tile positions (Cell 38):**

`tiles_helpers/utils.py::find_valid_paired_tiles()` scans the aligned EMIT/S2 pair and returns non-overlapping tile windows: 100×100 EMIT pixels = 600×600 S2 pixels (with scale=6). Tiles with any "black" pixels are rejected (`max_black_frac = 0.0`).

The tile indexing assumes perfect grid lock — `s2_win = Window(col * scale, row * scale, ...)` — with no verification that the grids are actually phase-locked. If any prior step introduced a fractional-pixel shift, every tile would be misaligned.

**"Black" pixel issue:** Zero-valued pixels (legitimate for water, shadows) are treated as nodata and rejected. Combined with `max_black_frac = 0.0`, this discards any tile with even one water or shadow pixel.

**Step 9b — Save tile pairs (Cell 44):**

For each valid tile, the loop:
1. Extracts and saves the full-band EMIT tile (285 bands, uint16 scaled) and S2 tile (10 bands) as GeoTIFFs
2. Creates a 32-band EMIT subset (`write_emit_b32_tile`) by selecting 32 evenly-spaced band indices from the 285 available — **wavelength-blind selection** that doesn't avoid atmospheric absorption windows (1350–1450 nm, 1800–1950 nm) where data is dominated by noise
3. Generates a side-by-side RGB plot
4. Records metadata (window positions, geo summaries) in a `TileRecord`
5. Writes per-tile JSON metadata and a CSV manifest

**Step 9c — Spectral fitting (Cell 46):**

For each tile, `spectral/s2_to_emit.py::fit_tile()` trains a per-tile polynomial Ridge regression:

1. **Block homogeneity filter:** Rejects 60 m blocks where the coefficient of variation across the 6×6 S2 sub-pixels exceeds `max_cv = 0.3`. This prevents mixed-surface blocks from contaminating training.

2. **EMIT upsampling to 10 m:** Uses `scipy.ndimage.zoom(emit_b32, (1, scale, scale), order=1)` — **this is bilinear interpolation, not nearest-neighbour as documented**. The docstring and module description both say "nearest-neighbour-repeat" / "np.repeat". Bilinear smooths the target signal at EMIT pixel boundaries and bleeds nodata values into valid regions.

3. **Polynomial expansion:** `PolynomialFeatures(degree=2)` expands 10 S2 bands to 65 features (all cross-terms and squares).

4. **StandardScaler + Ridge regression:** Multi-output Ridge with α = 0.5, mapping 65 features → 32 EMIT bands simultaneously.

5. **Apply:** Runs inference at native 10 m S2 resolution to produce a 32-band synthetic EMIT tile.

6. **Save:** Writes the matcher to joblib and the synthetic tile as a GeoTIFF.

**No error aggregation:** If `fit_tile()` fails for any tile, the exception propagates and aborts the entire loop. There's no try/except or failure accumulator.

**Step 9d — Diagnostics (Cells 47–50):**

- R² spectrum plot (per-band R² vs wavelength)
- Scatter plot of predicted vs ground-truth for one band
- Spectral match visualisation (S2 RGB | synthetic EMIT RGB | real EMIT RGB)

These use `align_s2_to_emit_grid()` to block-average S2 to 60 m for comparison. This function uses exact reshape-mean when dimensions are multiples of 6 (no interpolation kernel), falling back to `rasterio reproject(average)` otherwise.

### Stage 10 — Archive (Cells 51–53)

Copies outputs to Google Drive: UTM GeoTIFFs, raw EMIT netCDF, raw S2 stack, and metadata. Writes an archive map JSON. The `describe_tif()` function prints CRS, shape, dtype, and statistics for final outputs.

---

## Module Architecture Summary

| Module | Files | Responsibility |
|--------|-------|---------------|
| `geometry/` | 5 files (2,776 lines) | EMIT orthorectification, DEM correction, crop/snap utilities, AROSICS co-registration |
| `spectral/` | 2 files (1,039+ lines) | S2→EMIT polynomial Ridge regression, training, inference, diagnostics |
| `data/EMIT/` | 2 files (~300 lines) | CMR search, granule metadata, wavelength utilities |
| `data/S2/` | 2 files (~220 lines) | STAC search, SCL cloud counting, band download |
| `data/pairing/` | 2 files (~400 lines) | EMIT-S2 temporal/spatial pairing engine |
| `tiles_helpers/` | 2 files (~500 lines) | Tile extraction, 32-band selection, visualisation |
| `viz/` | 1 file (144 lines) | RGB rendering for S2 and EMIT |
| `documentation/` | 3 files (~250 lines) | Run paths, report writing, metadata/manifest generation |

---

## Critical Bugs

1. **AROSICS nodata mismatch (Cell 32 + `arosics_coreg.py`):** `nodata_emit=65535` should be `-9999`. EMIT UTM data is float32 with −9999 nodata. Using 65535 means actual nodata pixels are treated as valid, corrupting tie-point correlation and producing incorrect shift estimates.

2. **Bilinear upsampling of EMIT targets (`s2_to_emit.py` line 460, also line 570):** `zoom(order=1)` instead of `order=0` or `np.repeat`. Smooths training targets at pixel boundaries and bleeds nodata into valid pixels. Directly degrades the learned spectral mapping.

3. **No co-registration failure guard (Cell 32→33):** Pipeline continues to trim, tile, and fit spectral models even if AROSICS returned `success: False`. All downstream products would be built on misaligned data.

4. **Wavelength-blind band selection (`tiles_helpers/utils.py::write_emit_b32_tile`):** Selects 32 bands by evenly spacing indices across 285, without avoiding atmospheric absorption windows. Bands in the 1350–1450 nm and 1800–1950 nm water vapour regions are dominated by noise and degrade the regression.

5. **"Black" = zero conflation (`tiles_helpers/utils.py`):** Water and deep shadow pixels have legitimately zero or near-zero reflectance. Treating zero as nodata rejects valid tiles containing these surface types.

---

## Design Strengths

- **S2-origin grid anchoring** in `_compute_te()` is mathematically correct and ensures the 6:1 pixel ratio is exact.
- **Block-average downsampling** via reshape-mean is the physically correct PSF approximation for training.
- **Homogeneity filtering** (CV threshold) in the spectral module prevents mixed-surface blocks from contaminating the regression.
- **Checkpoint resume** in the batched pairing engine allows recovery from interrupted long searches.
- **Comprehensive metadata trail** — per-tile JSONs, run reports, manifest CSVs, archive maps.
- **60 m grid snapping** with a consistent anchor throughout crop/trim ensures phase-lock.

---

## Reproducibility Concerns

- Three `!git pull` calls mid-notebook (Cells 27, 40) can change the code between stages during a single run.
- `importlib.reload()` after git pulls means the same function name may point to different code in different cells.
- Cloud thresholds are overridden in Cell 13 (`cloud_cover=(0.0, 100.0)`), contradicting the configured limits.
- Hardcoded tile indices (e.g., `tile_records[0]`) in diagnostic cells assume a minimum number of tiles exist.
- The Unix-timestamp Drive folder name makes comparison across runs difficult.
