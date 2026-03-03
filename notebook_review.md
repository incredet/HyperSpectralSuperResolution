# Review: Pairs_EMIT_S2_demo_3_5.ipynb

## Workflow Overview

This notebook pairs NASA EMIT hyperspectral imagery with ESA Sentinel-2 multispectral imagery, aligns them spatially, tiles the overlap region, and fits a spectral regression model (S2 → synthetic EMIT at 10 m). The pipeline has 10 stages: setup, authentication, parameter config, EMIT/S2 pairing search, download, preprocessing/metadata, orthorectification + co-registration + trimming, visualisation, tiling + spectral fitting, and archiving to Google Drive.

---

## Notebook-Level Issues

### 1. Credentials stored in environment variables (Cells 2–3)

The GitHub PAT is placed into `os.environ["GH_TOKEN"]` and piped through a custom `GIT_ASKPASS` shell script. This means the token is readable by any subprocess for the life of the session. If the notebook crashes mid-run and the Colab runtime persists, the token remains exposed. A more contained approach would be to use a credential helper that reads from a keyring or a file with restricted permissions.

### 2. Monkey-patch of `py_tools_ds` (Cell 5)

A runtime monkey-patch converts boolean arrays to uint8 before they reach GDAL via `warp_ndarray`. This is a workaround for a known bug in py_tools_ds ≤ 0.24.1. The problem is that the patch is applied silently and is version-specific — if the library is ever upgraded, the patch may shadow a legitimate fix or become incompatible. The patch also doesn't restore the original function on teardown, so import order matters.

### 3. Scattered `git pull` and `importlib.reload` calls (Cells 18–20, 40–43)

The notebook pulls from the remote repo and reloads modules at three separate points mid-execution. This is a sign of active development, but in a "demo" notebook it creates serious reproducibility problems: the code that ran in Cell 6 may differ from the code that runs after Cell 40's `git pull`. Anyone re-running the notebook end-to-end could get different results depending on the state of the remote repository at that moment.

### 4. Hardcoded pair index (Cell 17)

`pair = pairs[1]` selects the second pair with no bounds check. If only one pair was found, this raises an `IndexError` with no helpful message. Similarly, Cells 47–50 index into `tile_records[91]`, `tile_records[100]`, and `tile_records[35]` without checking length. These would crash silently on smaller AOIs or stricter cloud filters.

### 5. Empty cell and dead code (Cells 22, 39, 54)

Several cells are empty or contain only an unused import (`from rasterio.windows import from_bounds, transform as window_transform` in Cell 39). These add confusion without contributing to the workflow.

### 6. Cloud-cover thresholds are very permissive (Cell 11)

`MAX_S2_CLOUD_FRAC = 0.7` and `MAX_EMIT_CLOUD_PCT = 70.0` allow up to 70% cloud cover. For a super-resolution training pipeline, this is unusually permissive — cloud-contaminated pixels will degrade the spectral regression. The search in Cell 13 further overrides this with `cloud_cover=(0.0, 100.0)`, meaning the initial EMIT search applies no cloud filter at all.

### 7. Drive folder named by raw timestamp (Cell 11)

`DRIVE_ROOT = Path(f".../{time_now}")` uses a Unix timestamp as the folder name. This is not human-readable and makes it difficult to find or compare runs later. A datetime string or run-ID would be more practical.

### 8. No validation between co-registration and trimming (Cells 32–33)

Cell 32 runs AROSICS co-registration and prints a status, but Cell 33 proceeds unconditionally to trim both rasters. If co-registration failed (`res["final"]["success"] == False`), the trimmed output is built from an unregistered S2 image, producing misaligned tiles. There is no guard to stop execution on failure.

### 9. `max_black_frac = 0.0` is overly strict (Cell 38)

Setting `max_black_frac = 0.0` rejects any tile with even a single nodata pixel. In practice, edge tiles along the EMIT swath boundary almost always have partial coverage. This could discard a large fraction of otherwise usable tiles. Combined with the definition of "black" in `tiles_helpers/utils.py` (which treats legitimate zero-reflectance pixels like water as nodata), this filter is both too strict and semantically wrong.

### 10. Spectral fitting loop does not aggregate failures (Cell 46)

The loop in Cell 46 calls `fit_tile()` per tile and saves a matcher, but if `fit_tile()` fails (e.g. too few valid pixels), the exception propagates and aborts the entire loop. There is no try/except or accumulator for failed tiles.

---

## Module-Level Issues

### `data/pairing/pairing.py` — Batched pairing engine

- **Checkpoint race condition**: The resume/checkpoint system reads and writes JSONL files without file locks. If the notebook is restarted and the previous kernel hasn't fully flushed, partial writes can corrupt the checkpoint.
- **"granuleur" typo propagated**: The key `"emit_granuleur"` (Cell 23 references it too) appears to be a misspelling of `"granuleUR"` (the CMR field name). It works internally because the codebase consistently uses the typo, but it will confuse anyone integrating with external CMR tooling.
- **S2 index rebuilt per batch**: Each time window rebuilds the full STAC index, even when batches overlap temporally. For large AOIs this multiplies network calls unnecessarily.

### `data/EMIT/emit_utils.py` — EMIT search and metadata

- **`emit_cloud_pct()` returns `float("inf")` when cloud metadata is missing.** Downstream comparisons like `cloud < threshold` silently pass infinity through, so a granule with no cloud info is treated as having infinite cloud — which is correct for rejection but incorrect if used in averaging or reporting.
- **Broad exception swallowing**: Timestamp parsing wraps everything in a bare `except Exception` that returns `None`. A typo in a dictionary key or a malformed date string produces the same silent `None` as a genuinely missing field.

### `data/S2/s2_search.py` — Sentinel-2 search and download

- **Inconsistent default `tile_m`**: This module defaults to `tile_m = 60000.0` (60 km), while `pairs_utils.py` defaults to `tile_m = 6000.0` (6 km). If both defaults are used in the same run (which the notebook avoids only by explicit parameterisation), overlap calculations will disagree by a factor of 10.
- **Hardcoded SCL cloud classes `{8, 9, 10, 11}`**: These are correct for Sentinel-2 L2A Sen2Cor SCL, but there is no version check. If Element84's Earth Search changes processing versions, the classes could shift without warning.
- **Division by zero**: `clouds / total` in the SCL counting path doesn't guard against `total == 0` (possible if the overlap polygon is entirely outside the SCL raster).

### `geometry/EMIT_proj.py` — Orthorectification and reprojection

- **Global `NO_DATA_VALUE = -9999.0`**: This is hardcoded at module level and used everywhere. EMIT L2A reflectance actually uses `-9999` as nodata, so this works for the current product, but if the pipeline is extended to other sensors or EMIT L1B (which uses different fill values), it will silently misclassify valid data as nodata.
- **Observable band parsing** relies on matching string names in a specific order. If the NetCDF variable order changes between EMIT data versions, the wrong observation angle could be assigned to the path-length slot, producing incorrect DEM corrections.

### `geometry/arosics_coreg.py` — Co-registration

- **Hardcoded wavelength targets** (`B03: 560 nm`, `B04: 665 nm`, `B08: 842 nm`) are used to find the closest EMIT band for tie-point matching. These are nominal S2 values; the actual centre wavelengths vary by ±3 nm across S2A/S2B. More importantly, EMIT's spectral sampling (7.4 nm) means the "closest" band could be off by half a channel.
- **Silent fallback on failure**: If AROSICS can't find enough tie points, the function returns a dict with `success: False` but doesn't raise. The notebook checks this (Cell 32) but only prints a message — it doesn't stop the pipeline.

### `spectral/s2_to_emit.py` — Spectral regression

- **Tile dimension must be an exact multiple of `scale` (default 6)**: `align_s2_to_emit_grid()` reshapes using `(H // scale, scale, W // scale, scale)`. If the S2 tile is 601 × 600 pixels, the reshape silently drops one row with no warning.
- **Bilinear interpolation on the EMIT reference** (`zoom(..., order=1)`): When upsampling EMIT to 10 m for diagnostic plots, bilinear interpolation creates sub-pixel blended values at nodata boundaries. These phantom values enter the regression validation, inflating apparent R² in border regions.
- **R² can be NaN**: `r2_score()` returns NaN if a band has zero variance in the prediction. The stats dict then contains NaN values that are printed but never checked, so a completely failed band doesn't flag as an error.
- **All-zero S2 pixels rejected as nodata**: Legitimate dark surfaces (deep water, shadows) are zero or near-zero in multiple bands and get masked out, biasing the regression toward bright surfaces.

### `tiles_helpers/utils.py` — Tile extraction

- **Black-pixel detection treats reflectance = 0 as invalid**: For water bodies and cast shadows, this discards valid data. Combined with `max_black_frac = 0.0`, any tile containing water is rejected.
- **`write_emit_b32_tile()` selects 32 evenly-spaced bands**: The selection is deterministic but not wavelength-aware — it doesn't prefer bands in atmospheric windows or avoid known water-absorption regions (1350–1450 nm, 1800–1950 nm). Bands in those regions have low SNR and degrade the regression.

### `documentation/pairs_artifacts.py` — Report and archiving

- **`copy_any()` tries `rsync` first, then falls back to `shutil`**: If `rsync` partially succeeds (copies some files, then fails), the `shutil` fallback doesn't know which files were already transferred and may skip or duplicate them.
- **CSV column order is non-deterministic**: The manifest CSV is built from dynamically constructed dicts. Across different Python versions or different tile counts, column order can shift, breaking downstream readers that index by position.

---

## Summary of High-Priority Items

| Priority | Issue | Location |
|----------|-------|----------|
| **Critical** | Pipeline continues after co-registration failure | Cell 32 → Cell 33 |
| **Critical** | `tile_m` default mismatch (6 km vs 60 km) across modules | `s2_search.py` vs `pairs_utils.py` |
| **Critical** | Tile dimension must be exact multiple of scale factor; no check | `s2_to_emit.py` |
| **High** | Mid-notebook `git pull` breaks reproducibility | Cells 18, 40 |
| **High** | Hardcoded array indices without bounds checks | Cells 17, 47–50 |
| **High** | Zero-reflectance pixels incorrectly treated as nodata | `tiles_helpers/utils.py` |
| **High** | No error accumulation in spectral fitting loop | Cell 46 |
| **High** | Broad `except Exception` swallows real errors | `emit_utils.py` |
| **Medium** | 70% cloud cover threshold too permissive for training data | Cell 11 |
| **Medium** | Bilinear interpolation on nodata boundaries inflates R² | `s2_to_emit.py` |
| **Medium** | Nodata sentinel inconsistency (−9999 vs 65535) | `EMIT_proj.py` vs `arosics_coreg.py` |
| **Medium** | Non-deterministic CSV column order | `pairs_artifacts.py` |
| **Low** | Drive folder named by raw Unix timestamp | Cell 11 |
| **Low** | Empty/dead cells reduce readability | Cells 22, 39, 54 |
