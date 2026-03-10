# Notebook Migration Guide

How to update `Pairs_EMIT_S2_demo_3_5-2.ipynb` to use the new modules. Each section below maps old cells to new code.

---

## Cells 2–6 → Setup (keep, but remove git clone if running locally)

No change to pip installs or monkey-patch. Remove the `git clone` / `%cd` if you're running from the repo directly.

**Add these imports** alongside the existing ones in Cell 6:

```python
from documentation.config import PipelineConfig
from documentation.pairs_artifacts import make_pair_id, RunPaths, write_global_manifest
from documentation.report_builder import (
    ReportBuilder, R2Aggregator,
    plot_r2_histogram, plot_r2_per_band,
    plot_side_by_side_rgb, plot_example_tiles,
)
from geometry.alignment import align_emit_s2_pair
```

---

## Cell 11 → Replace with PipelineConfig

**Old (scattered variables):**
```python
LAT = 32.75
LON = -114.96
SEARCH_BUFFER_M = 5_000
S2_API = "https://earth-search.aws.element84.com/v1"
S2_COLLECTION = "sentinel-2-l2a"
MAX_S2_CLOUD_FRAC = 0.7
MAX_EMIT_CLOUD_PCT = 70.0
# ... paths, TILE_PARAMS, etc.
```

**New (single config object):**
```python
config = PipelineConfig(
    # AOI
    aoi_lat=32.75,
    aoi_lon=-114.96,
    aoi_buffer_m=5_000,

    # Quality
    max_s2_cloud_frac=0.70,
    max_emit_cloud_pct=70.0,
    max_black_frac=0.0,

    # AROSICS — adjust these per-scene as needed
    coreg_grid_res=600,
    coreg_max_points=500,
    coreg_window_size=(512, 512),
    coreg_max_shift=50,

    # Spectral
    spectral_degree=2,
    spectral_alpha=1.0,
    spectral_max_cv=0.25,
    spectral_emit_upsample_order=1,  # 0=nearest, 1=bilinear, 3=bicubic

    # Paths
    local_root="pairs_output",
    drive_root=f"/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/{datetime.now().timestamp()}",
)

# Shared output root (config saved here once; per-pair folders created later)
ROOT = Path(config.local_root)
DRIVE_ROOT = Path(config.drive_root) if config.drive_root else None
ROOT.mkdir(parents=True, exist_ok=True)

# Save config at the shared root level for reproducibility
config.to_json(ROOT / "pipeline_config.json")
if DRIVE_ROOT:
    config.to_json(DRIVE_ROOT / "pipeline_config.json")

print("Config:", config.to_dict())
```

---

## Cell 13 → Use config for AOI

```python
aoi_geom = point_buffer_bbox(config.aoi_lon, config.aoi_lat, config.aoi_buffer_m)
```

---

## Cell 14 → Use config for pairing

```python
run_summary = pair_emit_to_s2_batched(
    emit_items       = picks,
    aoi_geom_wgs84   = aoi_geom,
    out_dir          = ROOT,
    s2_api           = config.s2_api,
    s2_collection    = config.s2_collection,
    days             = config.pairing_days,
    window_days      = config.pairing_window_days,
    resume           = True,
    emit_top_n_per_day   = config.emit_top_n_per_day,
    emit_max_cloud_pct   = config.max_emit_cloud_pct,
    scl_cloud_max        = config.max_s2_cloud_frac,
    top_k_prefilter      = config.top_k_prefilter,
    tile_m           = config.pairing_tile_m,
    sun_deg_max      = config.sun_deg_max,
    max_tod_diff_h   = config.max_tod_diff_h,
)
```

---

## Cells 22–25 → Use ReportBuilder instead of ReportWriter

```python
wl_nm   = load_emit_wavelengths_nm_from_nc(str(emit_nc))
wl_json = Path(emit_nc).with_suffix(".wavelengths.json")
cache_wavelengths_json(wl_nm, wl_json)

# Generate pair_id and build per-pair folder structure
pair_id = make_pair_id(emit_nc, s2_item)
paths   = RunPaths.build(
    emit_nc=emit_nc,
    local_root=ROOT / pair_id,       # per-pair local working dir
    drive_base=DRIVE_ROOT,            # drive_root/{pair_id}/ created automatically
    pair_id=pair_id,
    s2_item=s2_item,
)

# Use ReportBuilder (replaces ReportWriter)
report = ReportBuilder(
    paths.drive_report_md,
    html_path=paths.drive_report_md.with_suffix(".html"),
    mode="overwrite",
)
report.start(title=f"EMIT / S2 pair: {paths.pair_id}")

# Save config to report AND to per-pair metadata
report.add_config_table(config)
config.to_json(paths.drive_meta / "pipeline_config.json")

emit_summary = write_emit_metadata(emit_pick, paths.drive_meta, report=report)
s2_summary   = write_s2_metadata(s2_item,   paths.drive_meta, report=report)
```

---

## Cells 27–33 → Replace with single `align_emit_s2_pair()` call

**Delete cells 27–33 entirely** (git pull, reload, ortho, crop, co-reg, trim). Replace with:

```python
alignment = align_emit_s2_pair(
    emit_nc      = emit_nc,
    s2_stack     = s2_stack,
    out_dir      = ROOT,
    config       = config,
    wl_nm        = wl_nm,
    emit_obs_nc  = obs_path,
    report       = report,
    keep_intermediate = False,
    emit_info_save_path = paths.drive_alignment / "emit_conversion.json",
)

if not alignment.success:
    raise RuntimeError(f"Co-registration failed: {alignment.coreg_info}")

envi_bin_trimmed    = alignment.emit_envi_trimmed
out_s2_tif_trimmed  = alignment.s2_tif_trimmed
emit_conv_info      = alignment.emit_conv_info
envi_bin            = alignment.emit_envi_full

print(f"EMIT: {envi_bin_trimmed}")
print(f"S2:   {out_s2_tif_trimmed}")
```

---

## Cells 35–36 → Save comparison images to report

```python
# Before alignment (use untrimmed ENVI + the S2 overlap crop)
rgb_before = plot_side_by_side_rgb(
    s2_path=alignment.s2_overlap_path or s2_stack,
    emit_path=envi_bin,
    out_path=paths.drive_plots / "comparison_before_coreg.png",
    wl_nm=wl_nm,
    title="Before co-registration",
)
report.add_image("S2 vs EMIT — Before Co-registration", rgb_before)

# After alignment
rgb_after = plot_side_by_side_rgb(
    s2_path=out_s2_tif_trimmed,
    emit_path=envi_bin_trimmed,
    out_path=paths.drive_plots / "comparison_after_coreg.png",
    wl_nm=wl_nm,
    title="After co-registration + trim",
)
report.add_image("S2 vs EMIT — After Co-registration", rgb_after)
```

---

## Cell 38 → Use config for tiling

```python
valid_tiles = find_valid_paired_tiles(
    emit_path = str(envi_bin_trimmed),
    s2_path   = str(out_s2_tif_trimmed),
    **config.tile_params,
)
print(f"{len(valid_tiles)} valid tile positions found.")
```

---

## Cells 40–43 → Delete

Remove the mid-execution `git pull`, `%cd`, `importlib.reload`, and re-import cells. They are no longer needed.

---

## Cell 44 → Update tiling loop with pair_id

The tile-saving loop now passes `pair_id` to `save_tile_pair` and `TileRecord` for multi-scene provenance:

```python
tile_records: list[TileRecord] = []
emit_b32_idx: np.ndarray | None = None

for tile_info in tqdm(valid_tiles):
    k = int(tile_info["idx"])

    # pair_id is included in tile filenames
    emit_out, s2_out = save_tile_pair(
        emit_path = str(envi_bin_trimmed),
        s2_path   = str(out_s2_tif_trimmed),
        tile_info = tile_info,
        out_dir   = paths.drive_tiles,
        pair_id   = paths.pair_id,        # ← NEW
    )

    emit_out_b32, emit_b32_idx = write_emit_b32_tile(
        emit_out,
        num_keep   = 32,
        idx_0based = emit_b32_idx,
        overwrite  = True,
    )

    plot_png = paths.drive_plots / f"{paths.pair_id}_tile{k:03d}_pair.png"
    plot_tile_pair_simple(
        emit_tile_path = str(emit_out),
        s2_tile_path   = str(s2_out),
        title_suffix   = f"tile {k:03d}",
        save_path      = str(plot_png),
        show           = False,
        emit_wavelengths_nm = wl_nm,
    )

    rec = TileRecord(
        idx             = k,
        emit_tif        = str(emit_out),
        s2_tif          = str(s2_out),
        pair_id         = paths.pair_id,  # ← NEW
        plot_png        = str(plot_png),
        emit_black_frac = tile_info.get("emit_black_frac"),
        s2_black_frac   = tile_info.get("s2_black_frac"),
    )
    rec.emit_geo = tif_geo_summary(emit_out)
    rec.s2_geo   = tif_geo_summary(s2_out)
    rec.emit_b32_tif = str(emit_out_b32)
    rec.emit_b32_indices_0based = emit_b32_idx.tolist()

    write_tile_metadata(
        rec,
        tile_info    = tile_info,
        out_dir      = paths.drive_tile_meta,
        emit_granule = emit_summary.get("granule_ur"),
        emit_time    = emit_summary.get("time"),
        s2_id        = s2_summary.get("id"),
        s2_datetime  = s2_summary.get("datetime"),
        params       = config.tile_params,
    )
    tile_records.append(rec)

write_manifest_csv(paths.drive_manifest_csv, tile_records)
```

---

## Cell 46 → Collect R² stats into R2Aggregator

**Old:**
```python
for rec in tqdm(tile_records, desc="Fitting + applying"):
    matcher, stats = fit_tile(...)
    # just prints per-tile R²
```

**New:**
```python
r2_agg = R2Aggregator(wavelengths_nm=wl_nm)
matchers = {}

for rec in tqdm(tile_records, desc="Fitting + applying"):
    if rec.emit_b32_tif is None:
        continue

    matcher, stats = fit_tile(
        s2_tile_path       = rec.s2_tif,
        emit_b32_tile_path = rec.emit_b32_tif,
        **config.spectral_params,
        verbose=False,
    )

    matchers[rec.idx] = matcher
    matcher.save(paths.drive_matchers / f"{paths.pair_id}_tile{rec.idx:03d}_matcher.joblib")

    # Collect R² for aggregation
    r2_agg.add(rec.idx, np.array(stats["r2_per_band"]), stats["r2_mean"])

    out_path = paths.drive_synthetic / Path(rec.s2_tif).name.replace("_s2.tif", "_synth_emit.tif")
    matcher.apply_to_tile(rec.s2_tif, out_path=out_path)

    print(f"  tile {rec.idx:03d}  R² mean={stats['r2_mean']:.4f}")

print(f"\nDone. {len(matchers)} matchers fitted.")
```

---

## Cells 47–50 → Replace with aggregated R² report

**Delete the ad-hoc diagnostic cells.** Replace with:

```python
# ── R² summary and histograms ────────────────────────────────────────────
r2_summary = r2_agg.summary()
print(f"R² across {r2_summary['n_tiles']} tiles:")
print(f"  Mean:   {r2_summary['global_mean']:.4f}")
print(f"  Median: {r2_summary['global_median']:.4f}")
print(f"  Range:  [{r2_summary['global_min']:.4f}, {r2_summary['global_max']:.4f}]")
print(f"  Std:    {r2_summary['global_std']:.4f}")

# Histogram of mean R² per tile
hist_path = plot_r2_histogram(
    r2_agg.r2_mean,
    paths.drive_plots / "r2_histogram.png",
    title=f"R² distribution — {paths.run_id}",
)

# Per-band R² box plot
band_path = plot_r2_per_band(
    r2_agg.r2_per_band,
    r2_agg.wavelengths_nm,
    paths.drive_plots / "r2_per_band.png",
)

# Example tile images
example_pngs = plot_example_tiles(tile_records, paths.drive_plots, n=3, wl_nm=wl_nm)

# Add everything to report
report.add_r2_section(r2_agg, histogram_path=hist_path, per_band_path=band_path)
for png in example_pngs:
    report.add_image(f"Example tile", png)
```

---

## Cell 52 → Finalise report after archiving

After the existing `copy_any(...)` archive calls, add:

```python
# Generate self-contained HTML report
html_path = report.finalise_html(title=f"Run {paths.pair_id}")
print(f"Report (md):   {report.path}")
print(f"Report (html): {html_path}")
```

---

## After all pairs → Write global manifest

When processing multiple scenes in a loop, call this once after the loop:

```python
# Aggregate all per-pair manifests into a single CSV
global_csv = write_global_manifest(DRIVE_ROOT)
print(f"Global manifest: {global_csv}  ({pd.read_csv(global_csv).shape[0]} tiles total)")
```

---

## New folder structure

Each pair gets its own subfolder under the shared output root, named by `pair_id`:

```
{DRIVE_ROOT}/
├── pipeline_config.json                              # shared config
├── global_manifest.csv                               # aggregated across all pairs
│
├── 20230615T123456_T11SQA_20230615/                  # pair_id folder
│   ├── raw/
│   │   ├── emit/                                     # source EMIT NC
│   │   └── s2/                                       # source S2 GeoTIFF
│   ├── alignment/                                    # ENVI cubes, UTM GeoTIFFs, coreg outputs
│   ├── tiles/
│   │   ├── 20230615T123456_T11SQA_20230615_tile000_emit.tif
│   │   ├── 20230615T123456_T11SQA_20230615_tile000_emit_b32.tif
│   │   ├── 20230615T123456_T11SQA_20230615_tile000_s2.tif
│   │   └── ...
│   ├── synthetic/                                    # spectral super-resolution outputs
│   │   └── 20230615T123456_T11SQA_20230615_tile000_synth_emit.tif
│   ├── matchers/                                     # saved .joblib matcher objects
│   ├── plots/
│   ├── metadata/
│   │   ├── tiles/                                    # per-tile JSON metadata
│   │   ├── pipeline_config.json
│   │   └── ...
│   ├── manifest.csv                                  # per-pair tile manifest
│   └── report.md / report.html
│
├── 20230617T091234_T11SQA_20230617/                  # another pair
│   └── ...
```

---

## Summary of what changes

| Old Cell(s) | Action | New Code |
|:-----------:|--------|----------|
| 11 | **Replace** | `PipelineConfig(...)` + save config at shared root |
| 13–14 | **Modify** | Use `config.*` instead of bare variables |
| 22–25 | **Modify** | `make_pair_id()` + `RunPaths.build(pair_id=...)` + `ReportBuilder` |
| 27–33 | **Delete & replace** | Single `align_emit_s2_pair()` call |
| 35–36 | **Modify** | `plot_side_by_side_rgb()` → save + add to report |
| 38 | **Modify** | `**config.tile_params` |
| 40–43 | **Delete** | Remove git pull / reload / re-import cells |
| 44 | **Modify** | Pass `pair_id` to `save_tile_pair()` and `TileRecord` |
| 46 | **Modify** | Add `R2Aggregator`, use `**config.spectral_params`, save to `drive_matchers`/`drive_synthetic` |
| 47–50 | **Delete & replace** | `plot_r2_histogram`, `plot_r2_per_band`, `plot_example_tiles` |
| 52 | **Append** | `report.finalise_html()` |
| NEW | **Add** | `write_global_manifest(DRIVE_ROOT)` after all pairs |
