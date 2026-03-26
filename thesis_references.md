# Thesis References — Running List

Papers and sources referenced during development, organized by topic.
Add new entries as they come up.

---

## Spectral Regression & Pixel Selection

- **TODO**: Find a citable source for CV-based homogeneous pixel filtering in spectral regression/fusion. The technique is standard practice in endmember extraction and unmixing, but a specific citation for the 0.25 threshold is needed. The sensitivity analysis (CV vs R² vs tile yield) can serve as empirical justification.

## Image Fusion / Pansharpening Methods

- **TODO**: Wald's protocol original paper (Wald et al., 1997 — "Fusion of satellite images of different spatial resolutions")
- **TODO**: GLP — Generalized Laplacian Pyramid method citation
- **TODO**: SFIM — Smoothing Filter-based Intensity Modulation citation
- **TODO**: CNMF — Coupled Nonnegative Matrix Factorization citation
- **TODO**: HySure citation
- **TODO**: MAPSMM citation

## Super-Resolution

- **TODO**: ESRGAN / RRDB original paper (Wang et al., 2018)
- **TODO**: BasicSR framework citation

## Satellite Data

- **TODO**: EMIT instrument paper
- **TODO**: Sentinel-2 mission paper

## Evaluation Metrics

- **TODO**: PSNR, SSIM, SAM, ERGAS standard definitions

## Methodology Choices (to justify empirically)

- **CV threshold (0.25)**: Justify via sensitivity analysis — show R² and tile yield across CV values (0.15, 0.20, 0.25, 0.30, 0.35)
- **R² threshold for tile filtering**: Justify via sensitivity analysis — show tile survival and downstream SR performance across thresholds (0.5–0.85)
- **Polynomial degree (2) and Ridge alpha (1.0)**: Standard choices, but could show alternatives briefly
