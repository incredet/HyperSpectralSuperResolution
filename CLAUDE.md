# CLAUDE.md — Project Instructions for HyperSpectralSuperResolution

## Project Overview

Bachelor's thesis project: **Hyperspectral Single-Image Super-Resolution** using EMIT (60m, 285→32 bands) and Sentinel-2 (10m, 10 bands) satellite imagery. The pipeline has two stages:

1. **Fusion method evaluation** — Compare fusion methods (SFIM, GLP, CNMF, HySure, MAPSMM, Regression) using Wald's protocol to determine which produces the best ground truth for SR training. The `hif-benchmarking/` framework handles this.
2. **SR model training** — Train RRDBNet6x (modified ESRGAN) to learn 6× upsampling from EMIT→fused GT. Runs in Google Colab with BasicSR framework.

The user (Irynka) works primarily in **Colab notebooks** for training and uses this repo for the data pipeline and evaluation code. When helping with notebook code, **provide copy-paste instructions — do NOT edit notebooks directly** unless explicitly asked.

## Key Technical Parameters

- **EMIT**: 285 bands total, 32 selected bands, 380-2500nm, ~60m resolution
- **Sentinel-2 L2A**: 10 bands at 10m/20m, uint16, DN scaled by 10000
- **Scale factor**: 6 (60m/10m)
- **Tile size**: 120 EMIT pixels = 7200m = 720 S2 pixels. LR patches = 20×20
- **Regression**: polynomial Ridge, degree=2, alpha=1.0, homogeneous pixels CV<0.25, bilinear EMIT upsampling (scipy zoom order=1)
- **Normalization**: S2 and EMIT DN values / 10000 → reflectance [0, ~1.0]

## Repository Structure

```
HyperSpectralSuperResolution/
├── data/                    # Data sourcing modules
│   ├── EMIT/                # emit_search.py, emit_utils.py
│   ├── S2/                  # s2_search.py, s2_utils.py
│   └── pairing/             # pairing.py, pairs_utils.py
├── geometry/                # Spatial alignment & projection
│   ├── EMIT_proj.py         # EMIT netCDF→ENVI conversion (74.9 KB)
│   ├── alignment.py         # Consolidated EMIT-S2 alignment pipeline
│   ├── arosics_coreg.py     # AROSICS co-registration wrapper
│   ├── crop_utils.py        # Valid-pixel detection, bbox, grid snapping
│   └── dem_utils.py         # DEM utilities
├── spectral/                # Spectral regression
│   └── s2_to_emit.py        # S2→EMIT Ridge regression (42.4 KB) — CORE FILE
├── tiles_helpers/           # Tile slicing & management
│   └── utils.py             # Tile management (36.8 KB)
├── viz/                     # Visualization
│   └── plots.py             # True-color & diagnostic plotting
├── documentation/           # Pipeline config & reporting
│   ├── config.py            # PipelineConfig dataclass
│   ├── pairs_artifacts.py   # Pair metadata tracking
│   └── report_builder.py    # Report generation
├── hif-benchmarking/        # Fusion method evaluation suite (see below)
├── pipeline_defaults.json   # Central config for all pipeline parameters
├── spectral_diagnosis.py    # Spectral anomaly diagnostic tool
├── aois.csv                 # Areas of Interest
├── Pairs_EMIT_S2_demo_3-5.ipynb   # Pairing demo notebook
├── SR_EMIT_S2_BasicSR.ipynb       # Main SR training notebook (Colab)
└── SR_overfit_test.ipynb           # Overfit validation notebook (Colab)
```

### hif-benchmarking/ Subfolder

Nested benchmarking framework for comparing hyperspectral image fusion methods. Contains 50+ method implementations (mostly MATLAB).

```
hif-benchmarking/
├── main/
│   ├── tif2mat_wald.py      # Prepare Wald protocol data from GeoTIFF tiles
│   ├── run_batch.py         # Run MATLAB fusion methods in parallel batches
│   ├── run_regression_wald.py  # Run Python regression fusion (to be created)
│   ├── metrics_wald.py      # Compute 7 metrics: PSNR, SSIM, SAM, ERGAS, RMSE, UIQI, SCC
│   ├── produce_glp.py       # Pure-Python GLP implementation
│   ├── produce_sfim.py      # Pure-Python SFIM implementation
│   ├── mat2tif.py           # .mat → GeoTIFF conversion
│   ├── tif2mat.py           # GeoTIFF → .mat conversion
│   └── run.py               # Legacy single-scene runner
├── methods/                 # 50+ fusion method implementations
│   ├── SFIM/, GLP/, CNMF/, HySure/, FUSE/, MAPSMM/  # Active MATLAB methods
│   ├── CSTF/, NSSR/, LTMR/, LTTR/                    # Additional methods
│   └── _*/                  # Disabled/experimental methods (prefixed with _)
├── data/
│   ├── GT/EMIT32_WALD/      # Ground truth .mat files (120×120×32)
│   ├── HS/EMIT32_WALD/6/    # Degraded HS .mat files (20×20×32)
│   ├── MS/EMIT32_WALD/      # Degraded MS .mat files (120×120×10)
│   ├── SR/{method}/EMIT32_WALD/6/  # Fusion outputs per method
│   ├── eval/                # Summary and ranking CSVs
│   └── meta/                # Per-scene metadata JSONs
└── auxiliary/               # MATLAB libraries (matconvnet, spams)
```

### Data Flow — Wald's Protocol Evaluation

```
GeoTIFF tiles (on Drive)
  │
  ▼  tif2mat_wald.py
.mat files: GT (120×120×32), HS (20×20×32), MS (120×120×10)
  │
  ├──▶ run_batch.py (MATLAB methods: SFIM, GLP, CNMF, HySure, MAPSMM)
  │      → data/SR/{method}/EMIT32_WALD/6/{scene}.mat (key: 'sri')
  │
  ├──▶ run_regression_wald.py (Python regression fusion)
  │      → data/SR/Regression/EMIT32_WALD/6/{scene}.mat (key: 'sri')
  │
  ▼  metrics_wald.py
data/eval/EMIT32_WALD_6_summary.csv  — all methods × all scenes
data/eval/EMIT32_WALD_6_ranking.csv  — mean metrics + rank per method
```

### Data Flow — SR Training (Colab)

```
Drive: EMIT_S-2_Matches/{date}/aoi_*/pair/tiles/
  │
  ├── {tile}_emit_b32.tif    (32 bands, 120×120, 60m)  → LR input
  ├── {tile}_s2.tif           (10 bands, 720×720, 10m)
  └── {tile}_regression_synth.tif (32 bands, 720×720, 10m) → GT candidate
  │
  ▼  R² filtering (compute_tile_r2, threshold=0.75)
  │
  ▼  Convert to .npy (C,H,W float32, reflectance [0,1])
  │
  ├── LR: (32, 120, 120) from EMIT-b32 / 10000
  └── GT: (32, 720, 720) from regression_synth / 10000 (or SFIM GT)
  │
  ▼  BasicSR training with PairedNpyDataset
  │   RRDBNet6x: 20×20 → 120×120 (2× then 3× nearest-neighbor upsampling)
  │
  ▼  Super-resolved EMIT at 10m resolution
```

## Critical Code Details

### RRDBNet6x Architecture (in Colab notebook)

- 2× nearest-neighbor + 3× nearest-neighbor = 6× total upsampling
- Bicubic skip connection: `return out + base` — **NOT** `out * 0.1 + base` or `out + 0.5 * base`
- `nn.init.zeros_` on conv_last so initial output = pure bicubic
- Internal RRDB scaling `* 0.2` in ResidualDenseBlock and RRDB blocks is standard ESRGAN — do NOT change
- Validated model sizes:
  - 64/8 (small, for quick overfit tests)
  - **128/16** (24.5M params, primary thesis model) — LR=2e-4, grad_clip max_norm=5.0
  - 256/23 (87.7M params) — failed to generalize, not recommended

### PairedNpyDataset (in Colab notebook)

- Random crop alignment fix: compute crop in LR space first (`top_lq`), then `top_gt = top_lq * scale`
- gt_size must be divisible by scale (use 120, NOT 128 — 128/6=21.33 causes size mismatch)
- For overfit tests: disable random crops, use full tiles

### spectral/s2_to_emit.py — Regression Fusion

The core regression pipeline. Key functions:
- `fit_tile()` — fits per-tile polynomial Ridge from S2→EMIT using homogeneous pixels
- `fit_tiles_batch()` — pools pixels from multiple tiles for more robust fit
- `S2ToEMITRegressor.apply_to_tile()` — inference on an S2 tile at 10m
- `S2ToEMITRegressor.predict()` — core prediction: poly_expand → scale → W@X+b
- `_block_homogeneity_mask()` — CV<0.25 filter on scale×scale blocks
- `compute_tile_r2()` (in notebook) — compares regression_synth to EMIT-b32 via NN upsample

### tif2mat_wald.py — Wald Protocol Data Preparation

- Reads GeoTIFF tiles from Drive, degrades by scale factor, saves as .mat
- HSI degradation: Gaussian blur (sigma=2.0) + decimation
- MSI degradation: block averaging
- Normalizes to [0,1] by dividing by global_max (stored in metadata JSON)
- Discovery: scans **two levels deep** (aoi_*/pair_id/tiles/) — was fixed from one-level scan
- Dimensions: GT=120×120, HS_degraded=20×20, MS_degraded=120×120

## Existing Evaluation Results

From `data/eval/EMIT32_WALD_6_ranking.csv` (6 scenes, previous tile size):
1. **GLP** — avg rank 1.71, PSNR=40.14, SSIM=0.935
2. **MAPSMM** — avg rank 2.29, PSNR=39.55
3. **CNMF** — avg rank 3.00, PSNR=37.21
4. **HySure** — avg rank 3.57, PSNR=36.67
5. **FUSE** — avg rank 4.43, PSNR=36.85

Regression method not yet evaluated in this framework. To be added via `run_regression_wald.py`.

## Training Status & Key Findings

- **128/16 model** (primary): reached 40.1 dB validation PSNR at 6k iters with regression GT. Should run for 100k+ iterations.
- **Overfit tests confirmed**: small model (64/8) reached 45 dB, big model (128/16) reached 47.6 dB on single tiles
- **256/23 model failed**: loss spikes and PSNR oscillation, even with max_norm=10.0. Not worth pursuing for thesis.
- **GT source toggle**: notebook supports `GT_SOURCE = 'regression'` or `'sfim'` with R² filtering (threshold=0.75)

## Common Pitfalls — Read Before Making Changes

1. **Python module caching in Colab**: After code changes, restart runtime. `inspect.getsource` can show correct code while cached module runs stale version.
2. **Crop alignment**: Always compute crop position in LR space first, then multiply by scale for GT. Random GT-space crops cause sub-pixel misalignment.
3. **gt_size divisibility**: Must be divisible by scale=6. Use 120, 192, 360 etc. Never 128.
4. **loss_weight**: Keep at 1.0. Setting to 5.0 inflates reported loss 5× without improving training.
5. **Drive I/O**: Avoid per-tile glob calls on Drive. Scan directories once, build lookup dicts.
6. **Gradient clipping**: 128/16 model needs max_norm=5.0 (1.0 is too tight for 24.5M params). Bigger models had trouble with any clip value.
7. **.mat file keys**: GT files use key `'hsi'`, MS files use `'msi'`, fusion output files use `'sri'`. metrics_wald.py expects exactly these keys.
8. **Normalization in Wald protocol**: tif2mat_wald.py normalizes to [0,1] using global_max. The regression wrapper must work in this same [0,1] space (no DN/10000 conversion needed since inputs are already normalized).
9. **RRDB internal scaling**: The `* 0.2` multipliers inside ResidualDenseBlock and RRDB are standard ESRGAN practice for training stability. Do NOT remove or change them.

## Environment & Dependencies

### Local (this repo)
- Python 3.10+
- rasterio, numpy, scipy, scikit-learn, joblib
- shapely, pyproj, pystac-client
- MATLAB (for CNMF, HySure, MAPSMM, FUSE — not needed for GLP, SFIM, Regression)

### Colab (SR training)
- PyTorch, BasicSR (`basicsr` package)
- Custom registered: `RRDBNet6x` architecture, `PairedNpyDataset` dataset
- Data on Google Shared Drive: `HyperResData/EMIT_S-2_Matches/{date}/`
- wandb (optional logging)

## File Naming Conventions

- `{tile_id}_emit_b32.tif` — 32-band EMIT tile at 60m
- `{tile_id}_s2.tif` — 10-band Sentinel-2 tile at 10m
- `{tile_id}_regression_synth.tif` — 32-band regression-fused tile at 10m (uint16, DN×10000)
- `{tile_id}_sfim.tif` — 32-band SFIM-fused tile at 10m
- `.mat` files in hif-benchmarking use scene names derived from tile IDs

## Useful Commands

```bash
# Wald evaluation pipeline (from hif-benchmarking/ directory)
python main/tif2mat_wald.py --drive-root /path/to/data --bench-root . --dataset EMIT32_WALD --scale 6
python main/run_batch.py --dataset EMIT32_WALD --scale 6 --methods SFIM GLP CNMF HySure MAPSMM
python main/run_regression_wald.py --dataset EMIT32_WALD --scale 6
python main/metrics_wald.py --dataset EMIT32_WALD --scale 6

# Pure-Python fusion (no MATLAB needed)
python main/produce_glp.py --dataset EMIT32_WALD --scale 6
python main/produce_sfim.py --dataset EMIT32_WALD --scale 6
```

## What NOT To Do

- Do not edit Colab notebooks directly — provide copy-paste code blocks
- Do not change RRDB internal `* 0.2` scaling factors
- Do not use gt_size values not divisible by 6
- Do not use `out * 0.1 + base` or `out + 0.5 * base` in RRDBNet6x forward — must be `out + base`
- Do not run glob per-tile on Google Drive (extremely slow)
- Do not attempt 256/23 model for thesis — stick with 128/16
- Do not skip runtime restart after code changes in Colab
