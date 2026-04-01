# Thesis Draft — Chapters 2–4

> **Status**: First draft, sections 2 and 3 only. Chapter 4 (Experiments and Results) is outlined but not yet drafted.
> **Convention**: `[CITE:label]` marks where a citation is needed. See the reference table at the end.


---


# 2. Theoretical Background

> This chapter introduces the concepts and methods that the proposed solution builds on. It does not describe our specific pipeline — that is in Chapter 3.

## 2.1 Hyperspectral and Multispectral Imaging

Hyperspectral imaging (HSI) systems acquire images in many narrow, contiguous spectral bands, typically covering the visible through shortwave infrared range (400–2500 nm). Each pixel contains a near-continuous reflectance spectrum, which enables identification and characterisation of surface materials based on their spectral signatures [CITE:hsi_general]. However, current spaceborne hyperspectral sensors achieve this spectral resolution at the cost of spatial resolution. The EMIT instrument, for example, provides 285 bands but at approximately 60 m ground sampling distance [CITE:emit_instrument].

Multispectral instruments such as the Sentinel-2 MSI take the opposite tradeoff. They acquire fewer, broader spectral bands (13 for Sentinel-2) but at higher spatial resolution (10–60 m depending on the band) [CITE:sentinel2_mission]. This complementarity — one sensor has spectral detail, the other has spatial detail — motivates the fusion and super-resolution approaches described in this work.

## 2.2 Hyperspectral Image Fusion

Hyperspectral image fusion (HIF) combines a low-resolution hyperspectral image (LR-HSI) with a co-located high-resolution multispectral image (HR-MSI) to produce a high-resolution hyperspectral image (HR-HSI) [CITE:yokoya2017_hif_review]. The problem can be formalised as follows. Let Z_h denote the observed LR-HSI and Z_m the observed HR-MSI. Both are degraded versions of the unknown HR-HSI X:

- Z_h = X * B_s + N_h  (spatial degradation: blurring and downsampling)
- Z_m = R * X + N_m  (spectral degradation: integration over broad bands)

where B_s is a spatial degradation operator, R is the spectral response function of the multispectral sensor, and N_h, N_m represent noise. The goal is to estimate X from Z_h and Z_m.

Existing fusion methods can be grouped into several families based on how they solve this inverse problem.

### 2.2.1 Pansharpening-Based Methods

These methods originate from the pansharpening literature, where a single panchromatic band is used to sharpen multispectral images. They have been adapted for the HIF setting by replacing the panchromatic band with a set of multispectral bands.

**SFIM (Smoothing Filter-based Intensity Modulation)** [CITE:sfim] modulates the upsampled LR-HSI by the ratio between the HR-MSI and its spatially smoothed version. The spatial detail injected into each band is proportional to the local contrast in the corresponding multispectral band. SFIM preserves the original spectral content well but assumes a simple multiplicative relationship between the sensors.

**GLP (Generalized Laplacian Pyramid)** [CITE:glp] uses a Laplacian pyramid decomposition to extract spatial detail at multiple scales from the HR-MSI. These detail coefficients are injected into the upsampled LR-HSI, weighted by coefficients that capture the spectral relationship between the two sensors. GLP belongs to the multiresolution analysis (MRA) family and is widely used as a benchmark in HIF comparisons.

### 2.2.2 Matrix Factorization Methods

**CNMF (Coupled Nonnegative Matrix Factorization)** [CITE:cnmf] jointly factorises the LR-HSI and HR-MSI into a shared set of spectral endmembers and their spatial abundance maps. Non-negativity is enforced on both factors, which is physically consistent with reflectance data. The HR-HSI is reconstructed by combining the high-resolution abundance maps (derived from the HR-MSI) with the spectral endmembers (derived from the LR-HSI).

### 2.2.3 Bayesian Methods

**MAP-SMM (Maximum A Posteriori Stochastic Mixing Model)** [CITE:mapsmm] uses a Bayesian framework in which the unknown HR-HSI is estimated by maximising the posterior probability given both observed images. The prior is derived from the spectral statistics of the LR-HSI. The method models sub-pixel mixing as a stochastic process and uses the HR-MSI to constrain the spatial distribution.

### 2.2.4 Subspace-Based / Convex Optimisation Methods

**HySure** [CITE:hysure] projects the hyperspectral image into a low-dimensional subspace and formulates the fusion as a convex optimisation problem. The objective function enforces consistency with both observed images while applying total variation regularisation to promote spatial smoothness. The convex formulation guarantees a global optimum.

### 2.2.5 Statistical Regression

An alternative to the above methods is to learn a direct mapping from the multispectral to the hyperspectral domain using regression. For each hyperspectral band, a regression model is fitted to predict its reflectance from the multispectral band values. This approach is conceptually simpler than the methods above and does not require explicit modelling of the spatial degradation operator. However, its accuracy depends on the quality of the training pixels and the expressiveness of the regression model. Polynomial expansion with Ridge regularisation is a common choice that balances flexibility with robustness to overfitting [CITE:regression_fusion_if_available].

## 2.3 Wald's Protocol

When no real HR-HSI ground truth exists — as is the case for spaceborne data — fusion methods cannot be evaluated directly at the target resolution. Wald's protocol [CITE:wald1997] addresses this by evaluating at reduced resolution. The principle is as follows:

1. Start with the original LR-HSI as the ground truth (GT).
2. Degrade both inputs by the same scale factor: blur and downsample the LR-HSI to create a synthetic ultra-low-resolution HSI, and downsample the HR-MSI to match.
3. Apply the fusion method to the degraded pair to produce a fused result at the original LR-HSI resolution.
4. Compare the fused result against the original LR-HSI using quantitative metrics.

This protocol assumes that a method that performs well at reduced resolution will also perform well at the target resolution. While this assumption has limitations — particularly for methods that are sensitive to the absolute spatial frequency content — Wald's protocol is the standard evaluation approach in the HIF literature [CITE:yokoya2017_hif_review].

## 2.4 Quality Metrics

We use five metrics to evaluate both fusion quality (Stage 1) and super-resolution quality (Stage 2). Each metric captures a different aspect of reconstruction quality.

**PSNR (Peak Signal-to-Noise Ratio)** measures pixel-wise reconstruction accuracy in decibels. It is computed per band and averaged. Higher values indicate lower reconstruction error. PSNR is sensitive to large per-pixel errors but does not account for structural or spectral distortions [CITE:metrics_general].

**SSIM (Structural Similarity Index)** [CITE:ssim] measures structural similarity between two images by comparing local statistics of luminance, contrast, and structure. It is computed per band and averaged. SSIM captures perceptual quality better than PSNR alone. Values range from 0 to 1, with 1 indicating perfect similarity.

**SAM (Spectral Angle Mapper)** measures spectral fidelity by computing the angle between the predicted and reference spectral vectors at each pixel, then averaging over the image. SAM is invariant to intensity scaling and directly measures whether the spectral shape is preserved. Lower values (in degrees) are better [CITE:sam_metric].

**ERGAS (Erreur Relative Globale Adimensionnelle de Synthèse)** is a normalised global error metric that accounts for the spatial scale factor. It provides a single summary of the reconstruction quality relative to the target resolution. Lower values are better [CITE:ergas_metric].

**RMSE (Root Mean Squared Error)** measures the average magnitude of per-pixel errors across all bands. Lower values are better. RMSE is straightforward but can be dominated by outlier pixels.

## 2.5 Single-Image Super-Resolution

Single-image super-resolution (SISR) aims to reconstruct a high-resolution image from a single low-resolution input. In the deep learning era, convolutional neural networks (CNNs) have become the dominant approach. The model learns a mapping from LR patches to HR patches using paired training data [CITE:sisr_survey].

### 2.5.1 ESRGAN and RRDB

The Enhanced Super-Resolution Generative Adversarial Network (ESRGAN) [CITE:esrgan] introduced the Residual-in-Residual Dense Block (RRDB) as its generator backbone. Each RRDB block contains multiple densely connected convolutional layers with residual scaling (each residual branch is multiplied by 0.2 before addition). Dense blocks improve feature reuse, while residual scaling stabilises training for deep networks.

The original ESRGAN uses a 4× upsampling factor with two successive 2× nearest-neighbour upsampling steps followed by convolution. For different scale factors, the upsampling path must be adapted.

### 2.5.2 Hyperspectral Super-Resolution

Applying SISR to hyperspectral images introduces additional challenges. The model must preserve spectral fidelity across all bands — a spatially convincing reconstruction is insufficient if it distorts the spectral signature. Existing approaches include SSPSR [CITE:sspsr], which uses spectral grouping and attention mechanisms, MCNet [CITE:mcnet], which combines 2D and 3D convolutions to jointly model spatial and spectral correlations, and ESSAformer [CITE:essaformer], which applies Transformer-based attention to exploit long-range spectral dependencies.


---


# 3. Proposed Solution

> This chapter describes the pipeline we developed. It covers data preparation, ground truth generation via fusion, and the super-resolution model.

## 3.1 Pipeline Overview

The proposed pipeline has two stages. In Stage 1, we generate high-resolution hyperspectral ground truth by fusing EMIT and Sentinel-2 data using multiple fusion methods, then evaluate these methods to select the best one. In Stage 2, we train a deep learning super-resolution model to learn the mapping from low-resolution EMIT tiles to the fused high-resolution ground truth.

[TODO: Insert pipeline overview figure here — data → fusion → GT → train DL → inference]

## 3.2 Data Acquisition

### 3.2.1 Data Sources

We use two satellite instruments. The Earth Surface Mineral Dust Source Investigation (EMIT) [CITE:emit_instrument] is a hyperspectral imaging spectrometer mounted on the International Space Station. It acquires 285 contiguous spectral bands covering 380–2500 nm at approximately 60 m ground sampling distance. We use EMIT Level 2A surface reflectance products [CITE:emit_l2a].

The Sentinel-2 Multi-Spectral Instrument (MSI) [CITE:sentinel2_mission] provides multispectral images as part of the European Copernicus programme. We use the Level 2A bottom-of-atmosphere reflectance product with 10 spectral bands (B02–B08, B8A, B11, B12) resampled to a common 10 m grid. The six 20 m bands (B05, B06, B07, B8A, B11, B12) are resampled to 10 m using bilinear interpolation.

The spatial resolution ratio between the two instruments defines the super-resolution scale factor of 6× (60 m / 10 m).

### 3.2.2 Band Selection

EMIT's full spectrum includes two wavelength regions dominated by atmospheric water vapour absorption (approximately 1310–1455 nm and 1755–1980 nm). These bands contain little useful surface information and are excluded. From the remaining valid bands, we select 32 using the following procedure:

1. Include the EMIT band closest in wavelength to each of the 10 Sentinel-2 band centres. These mandatory bands ensure direct spectral correspondences for the regression fusion (Section 3.4).
2. Distribute the remaining 22 bands evenly across the valid spectral range.
3. Merge, deduplicate, and sort.

This produces a 32-band subset spanning the VNIR–SWIR range with uniform spectral sampling and no absorption artefacts. We use this subset for method development and architecture selection. A second configuration using all 285 bands (excluding the two absorption windows) is used for final experiments to evaluate whether additional spectral information improves super-resolution performance.

### 3.2.3 Area of Interest Selection

We define 160 areas of interest (AOIs) distributed across six continents to ensure diversity in surface types and geographic conditions. The AOIs span cropland, desert, tropical forest, temperate forest, boreal forest, savanna, grassland, urban, wetland, shrubland, alpine, coastal, and other specialised types such as salt flats, volcanic terrain, and mangroves. Each AOI is defined by a geographic coordinate and a land cover label.

### 3.2.4 Temporal Pairing

For each AOI, we search for temporally close acquisitions from both sensors. An EMIT scene is paired with the Sentinel-2 image acquired within ±3 days that has the lowest cloud cover over the overlapping area. Cloud fraction is evaluated using the Sentinel-2 Scene Classification Layer (SCL). EMIT scenes exceeding 70% cloud cover are excluded. This temporal constraint limits atmospheric and phenological differences between acquisitions while providing enough candidate pairs.

## 3.3 Spatial Alignment

Accurate pixel-level alignment between EMIT and Sentinel-2 is essential. Misregistration between the input and target introduces noise in the training data and degrades SR model performance. Our alignment pipeline operates at two levels: a granule-level co-registration that corrects global offsets, followed by a per-tile sub-pixel refinement that compensates for residual local distortions.

### 3.3.1 Granule-Level Alignment

The granule-level pipeline consists of three steps.

**EMIT orthorectification.** EMIT data is delivered in a swath-based coordinate system. We convert each scene from its native netCDF format to a georeferenced ENVI datacube projected into the local UTM zone. This uses the per-pixel geolocation arrays (latitude, longitude) provided in the EMIT product and applies DEM-based parallax correction using the observation geometry (sensor and solar angles) [CITE:hytools_or_emit_ortho].

**Sentinel-2 cropping.** The Sentinel-2 scene is cropped to the spatial extent of the orthorectified EMIT image. This reduces the area processed in co-registration and prevents spurious tie-point matches in nodata regions.

**Sub-pixel co-registration.** After orthorectification, residual geometric offsets of up to several pixels can remain due to differences in geolocation accuracy between the two sensors. We correct these using local co-registration with the AROSICS library [CITE:arosics]. AROSICS computes a dense grid of tie-points by matching spectral bands common to both sensors (green ~560 nm, red ~665 nm, and NIR ~842 nm). A local shift model is fitted to the tie-points and applied to warp the Sentinel-2 image onto the EMIT reference grid. The parameters are: grid resolution of 150 m, matching window of 128 × 128 pixels, maximum allowed shift of 50 m, and minimum tie-point reliability of 60%.

### 3.3.2 Tiling

After granule-level alignment, each co-registered EMIT–Sentinel-2 pair is divided into non-overlapping tiles. Each tile covers 100 × 100 EMIT pixels (6000 m × 6000 m), corresponding to 600 × 600 Sentinel-2 pixels at 10 m. Tiles that contain any invalid (nodata) pixels are rejected.

### 3.3.3 Per-Tile Sub-Pixel Refinement

The granule-level co-registration corrects the dominant offset but cannot account for spatially varying distortions that differ across the scene (e.g., terrain-induced parallax residuals, sensor jitter). We therefore apply an additional per-tile alignment step after tiling.

For each tile, we estimate the residual shift between the EMIT and Sentinel-2 images using phase cross-correlation [CITE:phase_cross_correlation]. Three RGB channels (red ~650 nm, green ~550 nm, blue ~470 nm) are extracted from both sensors. The Sentinel-2 RGB is block-averaged to match the EMIT resolution, and the shift is estimated independently for each channel using sub-pixel phase cross-correlation with an upsampling factor of 100 (yielding 0.01 EMIT-pixel precision). The final shift is computed as a weighted average across the three channels.

If the estimated shift exceeds 1.0 EMIT pixel (60 m), it is considered unreliable and the tile is left unchanged. Otherwise, the shift is scaled to the Sentinel-2 resolution (multiplied by 6) and applied to all S2 bands using cubic spline interpolation. The tile dimensions are preserved. The shift magnitude and application status are stored as metadata in the output GeoTIFF tags.

## 3.4 Ground Truth Generation via Regression Fusion

We implement a spectral regression approach to generate the high-resolution hyperspectral ground truth. For each of the 32 EMIT bands, an independent model predicts the EMIT reflectance from the 10 Sentinel-2 bands. The model uses second-order polynomial feature expansion (mapping 10 inputs to 65 terms, including interactions and squared terms), followed by Ridge regression with regularisation parameter α = 1.0.

### 3.4.1 Training Pixel Selection

Not all pixels are equally suitable for fitting. Where the 60 m EMIT footprint contains a mixture of distinct surface types, the spectral relationship between the sensors becomes ambiguous. We filter training pixels using a block homogeneity criterion. For each 6 × 6 block of Sentinel-2 pixels (one EMIT pixel), we compute the coefficient of variation (CV = σ / μ) of the most spatially variable S2 band. Blocks with CV > 0.25 are excluded. This selects spectrally homogeneous areas where the S2-to-EMIT relationship is well-defined.

### 3.4.2 Training Correspondences

To create pixel-level correspondences at the 10 m grid, the EMIT image is upsampled using nearest-neighbour replication. Each 60 m pixel is repeated into a 6 × 6 block, pairing every 10 m S2 pixel with the reflectance of its parent EMIT pixel. This many-to-one pairing exposes the model to the full sub-pixel spectral variability present in the S2 data, which reduces extrapolation artefacts at inference time.

### 3.4.3 Batch Fitting and Inference

To improve robustness, training pixels are pooled from multiple tiles within the same scene before fitting. This increases the sample size and spectral diversity. The fitted models are then applied to each S2 tile at its native 10 m resolution. The output is a 32-band synthetic hyperspectral image at 10 m. Reflectance values are stored as uint16 digital numbers scaled by 10,000.

### 3.4.4 Quality Filtering

Not all tiles yield a high-quality regression fit. We compute the coefficient of determination (R²) between the regression output and the original EMIT reflectance (upsampled via nearest-neighbour for comparison) across all 32 bands. Tiles with R² below 0.75 are excluded from the training dataset. This removes tiles where the regression was unable to learn a reliable spectral mapping — typically due to cloud contamination, extreme heterogeneity, or sensor artefacts.

## 3.5 Super-Resolution Model

### 3.5.1 Architecture

We adapt the RRDB (Residual-in-Residual Dense Block) architecture from ESRGAN [CITE:esrgan] for 6× hyperspectral super-resolution. The standard ESRGAN performs 4× upsampling with two 2× steps. We modify the upsampling path to achieve 6× with a 2× nearest-neighbour upsample followed by a 3× nearest-neighbour upsample, each followed by a convolutional layer and LeakyReLU activation.

A bicubic skip connection adds the bicubically upsampled input to the network output. The final convolutional layer is initialised to zero, so the model output equals the bicubic upsampling at the start of training. The model then learns to predict the residual — the spatial detail that the bicubic baseline lacks.

The primary configuration uses 128 channels and 16 RRDB blocks (24.5 M parameters). Internal residual scaling of 0.2 within each RRDB is retained from the original ESRGAN design to stabilise training.

### 3.5.2 Other Models for Comparison

To contextualise the performance of our adapted RRDB, we compare against:

- **Bicubic upsampling** — a non-learned baseline.
- **SSPSR** [CITE:sspsr] — a CNN with spectral grouping and attention (2020).
- **MCNet** [CITE:mcnet] — a mixed 2D/3D CNN for joint spatial-spectral processing (2020).
- **ESSAformer** [CITE:essaformer] — a Transformer-based architecture with spectral attention (2023).

All models are trained on the same data split with the same ground truth.

### 3.5.3 Training Setup

The training data consists of LR–GT pairs:
- **LR input**: EMIT tile at 60 m (32 bands, 100 × 100 pixels), normalised to [0, 1] by dividing by 10,000.
- **GT target**: regression-fused tile at 10 m (32 bands, 600 × 600 pixels), normalised identically.

During training, random patches of 96 × 96 GT pixels (16 × 16 LR pixels) are cropped from each tile. The crop position is computed in LR space first, then multiplied by the scale factor to obtain the GT crop coordinates. This ensures exact pixel alignment between the LR and GT patches.

Training details:
- Loss function: L1 (pixel-wise mean absolute error). We also experiment with L1 + λ · SAM loss (Section 4.x).
- Optimiser: Adam, learning rate 2 × 10⁻⁴.
- Gradient clipping: max_norm = 5.0.
- Data augmentation: random horizontal and vertical flips, random 90° rotations.
- Hardware: [TODO: specify GPU].
- Framework: BasicSR [CITE:basicsr].

### 3.5.4 Train/Validation/Test Split

Tiles are split into training (70%), validation (15%), and test (15%) subsets. The split is geographic — entire AOIs are assigned to one subset — to prevent spatial leakage [CITE:spatial_leakage]. The split is fixed across all experiments. The test set covers all land cover categories present in the training set, plus additional categories to evaluate generalisation.


---


# 4. Experiments and Results

> Outline only — to be drafted after Chapters 2 and 3 are finalised.

## 4.1 Fusion Evaluation (Stage 1)

- Wald's protocol setup: 96 × 96 EMIT tiles degraded by 6× → 16 × 16 LR-HSI + 96 × 96 LR-MSI
- Degradation: Gaussian blur (σ = 2.0) + decimation for HSI, block averaging for MSI
- Tile selection: R² ≥ 0.75 filter + stratified subsample (~40–60 tiles)
- Results: summary table (all methods × 5 metrics), ranking table
- Per-band PSNR plot (PSNR vs wavelength for each method)
- Per-land-cover breakdown (metrics grouped by AOI land cover type)
- Visual comparison: false-colour composites for 2–3 representative tiles
- Spectral signature plots: 3–5 selected pixels (vegetation, water, urban), full spectrum for each method vs GT
- Selection of best fusion method → GT for Stage 2

## 4.2 Super-Resolution Evaluation (Stage 2)

- Metrics on held-out test tiles (mean ± std across tiles)
- Comparison table: all models × 5 metrics
- Per-band PSNR plot for each model
- Visual comparison: false-colour composites, zoom into edges/fine structures
- Difference maps: |prediction − GT| for each model
- Spectral signature comparison: EMIT (LR), fusion GT, and each model's prediction at same pixel locations

## 4.3 Ablation Studies

### 4.3.1 Effect of GT Quality
- Train same architecture on 2–3 best fusion GTs from Stage 1
- Compare SR metrics → does better fusion → better SR?

### 4.3.2 Loss Function Comparison
- L1 only vs L2 only vs L1 + λ · SAM
- Does spectral loss improve SAM without hurting PSNR?

### 4.3.3 32-Band vs 285-Band Comparison
- Same architecture trained on both configurations
- Does more spectral information help or does higher dimensionality hurt?

## 4.4 Application Validation
- Land cover classification on SR output vs fusion GT vs original EMIT
- Does SR preserve enough spectral fidelity for a downstream task?

## 4.5 Limitations
- GT is approximate (fusion output, not real HR-HSI)
- Temporal mismatch between EMIT and S2 acquisitions (up to ±3 days)
- Wald's protocol assumption (performance at reduced resolution ≈ performance at target resolution)


---


## Citation Placeholders — Sources to Find

| Placeholder | What to cite |
|---|---|
| `[CITE:hsi_general]` | General HSI textbook or survey, e.g., Goetz et al. (1985) or Chang (2003) |
| `[CITE:emit_instrument]` | Green et al., 2022 — EMIT instrument description |
| `[CITE:emit_l2a]` | EMIT L2A product documentation or data paper |
| `[CITE:sentinel2_mission]` | Drusch et al., 2012 — Sentinel-2 mission requirements paper |
| `[CITE:yokoya2017_hif_review]` | Yokoya et al., 2017 — Hyperspectral and multispectral data fusion: A comparative review |
| `[CITE:sfim]` | Liu, 2000 — Smoothing Filter-based Intensity Modulation |
| `[CITE:glp]` | Aiazzi et al., 2006 — MTF-tailored multiscale fusion |
| `[CITE:cnmf]` | Yokoya et al., 2012 — Coupled Nonnegative Matrix Factorization |
| `[CITE:hysure]` | Simões et al., 2015 — A convex formulation for HSI superresolution |
| `[CITE:mapsmm]` | Eismann & Hardie, 2005 — MAP estimation for HSI resolution enhancement |
| `[CITE:regression_fusion_if_available]` | Optional — polynomial regression for spectral mapping, if a specific paper exists |
| `[CITE:wald1997]` | Wald et al., 1997 — Fusion of satellite images of different spatial resolutions |
| `[CITE:metrics_general]` | Standard image quality metrics reference |
| `[CITE:ssim]` | Wang et al., 2004 — Image quality assessment: from error visibility to structural similarity |
| `[CITE:sam_metric]` | Kruse et al., 1993 — The Spectral Image Processing System (SIPS) |
| `[CITE:ergas_metric]` | Wald, 2002 — Data Fusion: Definitions and Architectures |
| `[CITE:sisr_survey]` | Survey on deep learning SISR, e.g., Wang et al. (2020) or Anwar et al. (2020) |
| `[CITE:esrgan]` | Wang et al., 2018 — ESRGAN: Enhanced Super-Resolution Generative Adversarial Networks |
| `[CITE:sspsr]` | Jiang et al., 2020 — Learning Spatial-Spectral Prior for Super-Resolution of Hyperspectral Imagery |
| `[CITE:mcnet]` | Li et al., 2020 — Mixed 2D/3D Convolutional Network for Hyperspectral Image Super-Resolution |
| `[CITE:essaformer]` | Zhang et al., 2023 — ESSAformer: Efficient Transformer for Hyperspectral Image Super-resolution |
| `[CITE:basicsr]` | BasicSR framework — Wang et al., 2022 (GitHub / documentation) |
| `[CITE:arosics]` | Scheffler et al., 2017 — AROSICS: Automated and Robust Open-Source Image Co-Registration Software |
| `[CITE:hytools_or_emit_ortho]` | HyTools library or EMIT orthorectification documentation |
| `[CITE:spatial_leakage]` | Roberts et al., 2017 or Ploton et al., 2020 — spatial autocorrelation in geospatial ML |
| `[CITE:phase_cross_correlation]` | Guizar-Sicairos et al., 2008 — Efficient subpixel image registration algorithms |
| `[CITE:magalhaes2022_hif_thesis]` | Magalhães, 2022 — Hyperspectral Image Fusion: A Comprehensive Review |
