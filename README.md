# Hyperspectral Single-Image Super-Resolution

## Data + checkpoints

[LINK](https://drive.google.com/drive/folders/1svmna-JG6qsLnhVgx9-va3eVjmfqZqcd?usp=sharing)

| | |
|---|---|
| `aoi_split.json`, `tiles_clean.csv` | AOI split + clean tile list |
| `checkpoints/` | best checkpoint for each model per exp |
| `samples/aoi_lat42.5_lon-106.5/` | one full AOI (raw and fused tiles, metadata) for notebooks 01–05 |
| `samples/{cnmf, sfim, synthetic_bicubic, synthetic_cnmf}/` | one-AOI training zips for notebook 07 |
| `samples/*_patched/` | same zips pre-patched |
| `test_previews/rrdb_{cnmf, sfim, syn_emit, syn_cnmf}/` | ~30 test-tile PNGs per GT source |

(Full dataset on request)

## Notebooks

Run in order. All paths point at Drive.

| | | |
|---|---|---|
| 01 | `01_pairs_extract.ipynb` | EMIT/S2 search, download, co-register, tile |
| 02 | `02_color_matching.ipynb` | S2->EMIT polynomial Ridge regression |
| 03 | `03_tile_qc.ipynb` | clean tile list (clouds, no-data, saturation) |
| 04 | `04_sfim_fusion.ipynb` | SFIM fusion |
| 05 | `05_cnmf_fusion.ipynb` | CNMF fusion |
| 06 | `06_pack_data.ipynb` | pack `.npy` zips per AOI |
| 07 | `07_train_sr.ipynb` | training (set `CONFIG = '<name>'`) |
| 08 | `08_inference_demo.ipynb` | load checkpoint + run on one tile |

## Experiments

### Experiment 1. Architecture comparison

| Config | GT | Checkpoint |
|---|---|---|
| `exp1_rrdb_96x24`  | CNMF | `exp1-rrdb-96x24-cnmf.pth`  |
| `exp1_rrdb_192x24` | CNMF | `exp1-rrdb-192x24-cnmf.pth` |
| `exp1_essa_dim180` | CNMF | `exp1-essa-dim180-cnmf.pth` |
| `exp1_essa_dim252` | CNMF | `exp1-essa-dim252-cnmf.pth` |
| `exp1_cst_dim96`   | CNMF | `exp1-cst-dim96-cnmf.pth`   |
| `exp1_cst_dim180`  | CNMF | `exp1-cst-dim180-cnmf.pth`  |

### Experiment 2. GT comparison

| Config | GT | Checkpoint |
|---|---|---|
| `exp2_rrdb_192x24_sfim` | SFIM | `exp2-rrdb-192x24-sfim.pth` |
| `exp3_rrdb_192x24_synthetic_bicubic` | bicubic-degraded EMIT  | `exp3-rrdb-192x24-synthetic-bicubic.pth` |
| `exp3_rrdb_192x24_synthetic_cnmf`    | bicubic-downsampled CNMF | `exp3-rrdb-192x24-synthetic-cnmf.pth` |

## Layout

| | |
|---|---|
| `data/` | EMIT/S2 search + download |
| `geometry/` | EMIT projection, AROSICS co-reg |
| `spectral/` | regression, CNMF, SFIM, `.npy` packing |
| `tiles_helpers/` | tiles utils, slicing |
| `viz/` | figure scripts |
| `training/` | training + models + model figures |
| `hif-benchmarking/` | Wald-protocol fusion eval |
| `documentation/` | pipeline config + metadata |
| `scripts/` | utilities |
| `notebooks/` | 01–08 pipeline notebook|

## Run

Quickest path: notebook 08 with the sample data + any checkpoint.

To retrain: notebook 07, set `CONFIG`. To regenerate fused tiles: 01–06 (full dataset needed).

`requirements.txt`.

Wald's evaluation needs MATLAB. Rest is pure python.