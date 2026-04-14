# CLAUDE.md — Project Instructions for HyperSpectralSuperResolution

## Project Overview

Bachelor's thesis project: **Hyperspectral Single-Image Super-Resolution** using EMIT (60m, 285→32 bands) and Sentinel-2 (10m, 10 bands) satellite imagery. The pipeline has two stages:

1. **Fusion method evaluation** — Compare fusion methods (SFIM, GLP, CNMF, HySure, MAPSMM, Regression) using Wald's protocol to determine which produces the best ground truth for SR training. The `hif-benchmarking/` framework handles this.
2. **SR model training** — Train SR models to learn 6× upsampling from EMIT→fused GT. Multiple architectures compared: RRDBNet6x (CNN baseline), ESSAformer (transformer, ICCV 2023), and potentially MambaHSISR (state-space model, TGRS 2025). Pure PyTorch, no BasicSR dependency.

## Key Technical Parameters

- **EMIT**: 285 bands total, 32 selected bands, 380-2500nm, ~60m resolution
- **Sentinel-2 L2A**: 10 bands at 10m/20m, uint16, DN scaled by 10000
- **Scale factor**: 6 (60m/10m)
- **Tile size**: 96 EMIT pixels (96×96 at 60m) = 576 S2 pixels (576×576 at 10m). LR crop = 16×16, GT crop = 96×96
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
├── training/                # Standalone SR training scripts (pure PyTorch, no BasicSR)
│   ├── train.py             # Main training loop: AMP, EMA, WandB, checkpointing, build_model() factory
│   ├── evaluate.py          # Post-training test evaluation with figures + per-tile CSV
│   ├── model.py             # RRDBNet6x, RRDB, ResidualDenseBlock, ChannelAttention
│   ├── essaformer.py        # ESSAformer (ICCV 2023) with 6× PixelShuffle fix
│   ├── mambahsisr.py        # MambaHSISR (TGRS 2025) standalone port, needs mamba-ssm
│   ├── dataset.py           # PairedZipDataset, AOI splitting, zip-based data loading
│   ├── losses.py            # SAMLoss, SSIMLoss, MultiTripletPerceptualLoss, build_losses()
│   ├── viz.py               # Metrics (PSNR, SAM, ERGAS, correlation) + WandB figures
│   ├── configs/             # Experiment configs (one per variant)
│   │   ├── baseline.yaml    # L1 only, no CA (model_type: rrdbnet6x)
│   │   ├── ca.yaml          # L1 + channel attention
│   │   ├── ca_perceptual.yaml  # L1 + CA + MultiTripletPerceptualLoss
│   │   ├── sam_loss.yaml    # L1 + SAM loss
│   │   ├── essaformer.yaml  # ESSAformer L1 baseline
│   │   ├── mambahsisr.yaml  # MambaHSISR L1 baseline (requires mamba-ssm)
│   │   └── default.yaml     # Template
│   └── requirements.txt
├── hif-benchmarking/        # Fusion method evaluation suite (see below)
├── pipeline_config.yaml     # Single source of truth — all pipeline parameters (YAML, no hidden defaults)
├── spectral_diagnosis.py    # Spectral anomaly diagnostic tool
├── NOTEBOOK_CHANGES.md      # Copy-paste guide for Pairs_Extract + Color_Matching notebooks
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
│   ├── run_regression_wald.py  # Run Python regression fusion in Wald space
│   ├── select_wald_tiles.py   # QC-filtered tile selection + stratified subsample for Wald eval
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
│   ├── GT/EMIT32_WALD/      # Ground truth .mat files (96×96×32)
│   ├── HS/EMIT32_WALD/6/    # Degraded HS .mat files (16×16×32)
│   ├── MS/EMIT32_WALD/      # Degraded MS .mat files (96×96×10)
│   ├── SR/{method}/EMIT32_WALD/6/  # Fusion outputs per method
│   ├── eval/                # Summary and ranking CSVs
│   └── meta/                # Per-scene metadata JSONs
└── auxiliary/               # MATLAB libraries (matconvnet, spams)
```

### Data Flow — Wald's Protocol Evaluation

```
r2_all_tiles.csv (from Color_Matching.ipynb) + aois.csv
  │
  ▼  select_wald_tiles.py (from tiles_clean.csv, proportional stratified ~400 tiles)
wald_tile_list.csv
  │
  ▼  tif2mat_wald.py --tile-list wald_tile_list.csv
.mat files: GT (96×96×32), HS (16×16×32), MS (96×96×10)
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

### Data Flow — SR Training

```
Drive: EMIT_S-2_Matches/{date}/zips_{gt_source}/
  │
  ├── {aoi}__{pair_id}.zip    (one zip per scene)
  │   ├── {tile}__emit_b32.tif          (32 bands, 96×96, 60m) → LR
  │   └── {tile}__{gt_source}.tif       (32 bands, 576×576, 10m) → GT
  │
  ▼  AOI-level split (70/15/15 train/val/test, seed=42)
  │
  ▼  PairedZipDataset reads TIFs from zips on-the-fly
  │   Normalize: uint16 / 10000 → float32 reflectance [0, ~1.0]
  │   Random crop in LR space → scale to GT space
  │
  ▼  SR model: 16×16 → 96×96 (RRDBNet6x or ESSAformer, selected via model_type config)
  │
  ▼  Super-resolved EMIT at 10m resolution
```

## Critical Code Details

### Model Architecture Selection

`train.py` uses a `build_model(cfg, device)` factory controlled by the `model_type` config key (defaults to `rrdbnet6x`). Both `train.py` and `evaluate.py` support all model types. All models share the same interface: `(B, 32, 16, 16) → (B, 32, 96, 96)`.

| Model | Params | Config key | Upsampling |
|-------|--------|-----------|------------|
| RRDBNet6x | 62.9M | `rrdbnet6x` | nearest-neighbor 2×→3× |
| ESSAformer | 13.6M | `essaformer` | PixelShuffle 2×→3× |
| MambaHSISR | 29.8M | `mambahsisr` | PixelShuffle 2×→3× |

### RRDBNet6x Architecture (model.py)

- 2× nearest-neighbor + 3× nearest-neighbor = 6× total upsampling
- **No skip connection** — `return out` (deliberate choice: avoids bicubic circularity in the thesis argument). Do NOT add a skip connection.
- Internal RRDB scaling `* 0.2` in ResidualDenseBlock and RRDB blocks is standard ESRGAN — do NOT change
- Current baseline config: **196/24** (NUM_FEAT=196, NUM_BLOCK=24), GT_SIZE=96, BATCH_SIZE=64, LR=2e-4, grad_clip max_norm=5.0
- AMP (mixed precision) available via `amp: true` in config, but **not beneficial on A100** — TF32 already fast, AMP adds casting overhead with small inputs (16×16×32). Keep `amp: false` on A100.
- Planned extensions: perceptual loss, channel attention (but NOT skip connections)

### ESSAformer Architecture (essaformer.py)

- Ported from ICCV 2023 paper (Zhang et al.), adapted for 6× scale
- Polynomial (degree-2) spectral-spatial attention (ESSAttn) — no softmax, efficient
- 5-cycle up/down refinement in `_BlockUp`: upsample→refine→downsample→refine with residuals
- PixelShuffle 2×→3× for upsampling, PixelUnshuffle 3×→2× for downsampling
- **dim must be divisible by 36** for 6× PixelUnshuffle (9×4). Use 252 (default), 180, or 288. NOT 256.
- Dropout2d(0.2) in attention blocks — standard for this architecture, do NOT remove
- No external dependencies beyond PyTorch (original's `timm` import was unused, removed)

### MambaHSISR Architecture (mambahsisr.py)

- Ported from TGRS 2025 paper (Xu et al.), adapted for 6× scale
- Selective State Space Model (Mamba) with dual scanning: `_SS2D_spatial` (H×W tokens) and `_SS2D_spectral` (channel tokens with spatial features)
- **Requires CUDA packages**: `mamba-ssm==1.0.1`, `causal-conv1d==1.0.0`, `einops`, `timm` — install on server, NOT Colab
- `img_size` param must match LR spatial size (16 for our 16×16 tiles) — controls `spatial_dim = img_size²` in SS2D spectral block
- PixelShuffle 2×→3× for 6× upsampling (same chain as ESSAformer)
- Overlapping tile inference for inputs larger than `n_subs`; direct path for our 16×16 tiles
- Device-agnostic: original `.cuda()` calls replaced with `register_buffer`/`device=x.device`
- 29.8M params with embed_dim=180, depths=[5,5,5] (MSFE module dominates: 5×5 conv per block)
- Config keys: `embed_dim` (default 180), `depths` (default [5,5,5])

### PairedZipDataset

- Reads LR/GT tiles directly from zip files via `rasterio.MemoryFile` (avoids extracting thousands of small files)
- Random crop alignment: compute crop in LR space first (`top_lq`), then `top_gt = top_lq * scale`
- gt_size must be divisible by scale=6 (use 120, 144, 192 etc. Never 128)
- AOI-level train/val/test split (entire AOIs held out, not random tiles)
- Augmentation: horizontal flip + vertical flip + 90° rotation (train only)

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
- HSI degradation: Gaussian blur (sigma = scale/2.35482, i.e. FWHM = scale pixels) + decimation. For scale=6, sigma ≈ 2.548. This matches the GLP and FUSE internal blur conventions for consistent Wald evaluation.
- MSI degradation: block averaging
- Normalizes to [0,1] by dividing by global_max (stored in metadata JSON)
- Discovery: scans **two levels deep** (aoi_*/pair_id/tiles/) — was fixed from one-level scan
- Dimensions: GT=96×96, HS_degraded=16×16, MS_degraded=96×96

## Existing Evaluation Results

From `data/eval/EMIT32_WALD_6_ranking.csv` (6 scenes, previous tile size):
1. **GLP** — avg rank 1.71, PSNR=40.14, SSIM=0.935
2. **MAPSMM** — avg rank 2.29, PSNR=39.55
3. **CNMF** — avg rank 3.00, PSNR=37.21
4. **HySure** — avg rank 3.57, PSNR=36.67
5. **FUSE** — avg rank 4.43, PSNR=36.85

Regression method: run via `run_regression_wald.py` (Python, no MATLAB needed).

## Training Status & Key Findings

- **Current baseline**: 196/24 model (NUM_FEAT=196, NUM_BLOCK=24), no skip connection, CNMF GT, GT_SIZE=96, BATCH_SIZE=64
- **GT source**: CNMF (switched from regression/SFIM — see project memory for justification). Configs support `gt_source: cnmf`, `regression`, or `sfim`
- **Previous results**: 128/16 model reached 40.1 dB val PSNR at 6k iters (regression GT, with skip). Current no-skip baseline needs full training run.
- **Overfit tests confirmed**: model can learn (45+ dB on memorized tiles)
- **Scripts migrated**: standalone pure PyTorch training in `training/` — no BasicSR dependency
- **Colab performance (A100 80GB)**: batch_size=64, num_workers=12, amp=false → ~0.5 it/s. Larger batches (96, 128, 192) reduce throughput per sample. AMP hurts rather than helps on A100 with small input tiles.
- **Data**: 94 GB zips on Shared Drive. Copy to local `/content/data/` in Colab for fast I/O. Checkpoints write to Drive for persistence.

## Planned Ablation: Synthetic vs Real Training Data

Experiment to demonstrate the value of the EMIT+S2 pairing pipeline over standard single-sensor synthetic training.

- **Model A** (real pipeline): trained on real EMIT (16×16) → CNMF GT (96×96). Uses real cross-sensor pairs.
- **Model B** (synthetic baseline): trained on degraded EMIT (blur σ≈2.55 + decimate 96×96→16×16) → real EMIT (96×96). Single-sensor Wald-style training — the realistic alternative when no high-res sensor data is available.
- **Evaluation**: no-reference comparison against bicubic-upsampled EMIT as universal baseline. Visual comparison (3 columns: bicubic, Model B, Model A) + spectral consistency (SAM vs real EMIT) + sharpness metric (average gradient magnitude). Model A should show real 10m spatial detail from S2 via CNMF; Model B can only recover spatial frequencies within EMIT's native 60m.
- **Architecture**: MambaHSISR (fastest to train, SOTA — stronger "even SOTA can't overcome the domain gap" argument).
- **Why not PSNR?**: The two models produce outputs in different resolution domains (10m-like vs 60m-like), so there is no shared reference image for full-reference metrics. No-reference evaluation + visual figures are more honest and arguably more convincing for this comparison.

## Common Pitfalls — Read Before Making Changes

1. **Crop alignment**: Always compute crop position in LR space first, then multiply by scale for GT. Random GT-space crops cause sub-pixel misalignment.
2. **gt_size divisibility**: Must be divisible by scale=6. Use 120, 144, 192 etc. Never 128.
3. **loss_weight**: Keep at 1.0. Setting to 5.0 inflates reported loss 5× without improving training.
4. **Gradient clipping**: max_norm=5.0 works well. 1.0 is too tight for large models.
7. **.mat file keys**: GT files use key `'hsi'`, MS files use `'msi'`, fusion output files use `'sri'`. metrics_wald.py expects exactly these keys.
8. **Normalization in Wald protocol**: tif2mat_wald.py normalizes to [0,1] using global_max. The regression wrapper must work in this same [0,1] space (no DN/10000 conversion needed since inputs are already normalized).
9. **RRDB internal scaling**: The `* 0.2` multipliers inside ResidualDenseBlock and RRDB are standard ESRGAN practice for training stability. Do NOT remove or change them.
10. **AMP on A100**: Mixed precision does not help with this model/input size. TF32 is already fast. AMP adds overhead from float16 casting on small 16×16 inputs. Keep `amp: false`.
11. **Batch size**: batch_size=64 gives best throughput on A100. Larger batches (96, 128, 192) reduce samples/sec despite fitting in VRAM.

## Environment & Dependencies

### Local (this repo)
- Python 3.10+
- rasterio, numpy, scipy, scikit-learn, joblib
- shapely, pyproj, pystac-client
- MATLAB (for CNMF, HySure, MAPSMM, FUSE — not needed for GLP, SFIM, Regression)

### SR training (standalone scripts, pure PyTorch)
- PyTorch, rasterio, numpy, wandb
- Data: zip files from `HyperResData/EMIT_S-2_Matches/{date}/zips_{gt_source}/`
- No BasicSR dependency

## File Naming Conventions

- `{tile_id}_emit_b32.tif` — 32-band EMIT tile at 60m
- `{tile_id}_s2.tif` — 10-band Sentinel-2 tile at 10m
- `{tile_id}_regression_synth.tif` — 32-band regression-fused tile at 10m (uint16, DN×10000)
- `{tile_id}_sfim.tif` — 32-band SFIM-fused tile at 10m
- `.mat` files in hif-benchmarking use scene names derived from tile IDs

## Useful Commands

```bash
# SR training (from training/ directory)
python train.py --config configs/baseline.yaml --zip-dir /path/to/zips_cnmf --out-dir ./experiments
python train.py --config configs/essaformer.yaml --zip-dir /path/to/zips_cnmf --out-dir ./experiments
python train.py --config configs/mambahsisr.yaml --zip-dir /path/to/zips_cnmf --out-dir ./experiments  # requires mamba-ssm

# Resume from checkpoint
python train.py --config configs/baseline.yaml --resume experiments/baseline-L1/models/iter_5000.pth --zip-dir /path/to/zips_cnmf

# Evaluate on test set (saves per-tile CSV + figures)
python evaluate.py --config configs/baseline.yaml --checkpoint experiments/baseline-L1/models/best.pth
python evaluate.py --config configs/essaformer.yaml --checkpoint experiments/essaformer-L1/models/best.pth
python evaluate.py --config configs/mambahsisr.yaml --checkpoint experiments/mambahsisr-L1/models/best.pth
python evaluate.py --config configs/baseline.yaml --checkpoint experiments/baseline-L1/models/best.pth --no-vis  # metrics only
```

```bash
# Wald evaluation pipeline (from hif-benchmarking/ directory)
# Step 0: Select tiles (QC-filtered + proportional stratified subsample)
python main/select_wald_tiles.py \
    --tiles-csv /path/to/tiles_clean.csv \
    --aois-csv /path/to/aois.csv \
    --drive-root /path/to/data \
    --max-total 400 \
    --output wald_tile_list.csv

# Step 1: Prepare .mat files from selected tiles
python main/tif2mat_wald.py --tile-list wald_tile_list.csv --bench-root . --dataset EMIT32_WALD --scale 6

# Step 2: Run fusion methods
python main/run_batch.py --dataset EMIT32_WALD --scale 6 --methods SFIM GLP CNMF HySure MAPSMM
python main/run_regression_wald.py --dataset EMIT32_WALD --scale 6

# Step 3: Evaluate
python main/metrics_wald.py --dataset EMIT32_WALD --scale 6

# Pure-Python fusion (no MATLAB needed)
python main/produce_glp.py --dataset EMIT32_WALD --scale 6
python main/produce_sfim.py --dataset EMIT32_WALD --scale 6
```

## SHSR Architecture Survey Findings

Most "single-image HSI SR" papers are NOT truly single-input. Code inspection of 8 repos revealed:
- **Genuinely single-input** (`forward(self, x)` only): ESSAformer, Bi-3DQRNN, EigenSR, MambaHSISR
- **Require auxiliary bicubic-upsampled input** (`forward(self, x, lms)`): SSPSR, MSDformer — these use bicubic skip connections
- **Require RGB input**: CESST (hardcodes R/G/B channel extraction)
- **Require spectral context**: SFCSR (`forward(self, x, y, localFeats, i)` — band-by-band with 3-band window)

All inspected repos used PixelShuffle for upsampling with support only for 2^n and 3× — none support 6× natively. Our 6× fix (chain PixelShuffle 2×→3×) applies to all of them.

Benchmark reference: https://github.com/junjun-jiang/Hyperspectral-Image-Super-Resolution-Benchmark

### MambaHSISR (TGRS 2025) — integrated
- Mamba/state-space model, genuinely SHSR, 32-band config available
- Standalone port in `training/mambahsisr.py`, integrated into `build_model()` factory
- Requires `mamba-ssm` CUDA package (compilation needed) — install on server, not Colab
- Source: https://gitee.com/xu_yinghao/MambaHSISR

## What NOT To Do

- Do not add a skip connection to RRDBNet6x — decision is final (bicubic circularity argument)
- Do not change RRDB internal `* 0.2` scaling factors
- Do not use gt_size values not divisible by 6
- Do not use ESSAformer dim values not divisible by 36 (PixelUnshuffle constraint for 6×)
- Do not run glob per-tile on Google Drive (extremely slow)
