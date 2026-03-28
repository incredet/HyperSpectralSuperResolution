# 3. Methodology

## 3.1 Dataset Construction

### 3.1.1 Data Sources

This work uses two satellite instruments as input data. The first is the Earth Surface Mineral Dust Source Investigation (EMIT) imaging spectrometer [CITE:emit_instrument], mounted on the International Space Station. EMIT acquires hyperspectral images with 285 contiguous spectral bands covering the 380–2500 nm range at approximately 60 m ground sampling distance (GSD). We use EMIT Level 2A surface reflectance products, which have undergone atmospheric correction [CITE:emit_l2a].

The second data source is the Sentinel-2 Multi-Spectral Instrument (MSI) [CITE:sentinel2_mission], part of the European Copernicus programme. Sentinel-2 provides multispectral images in 13 bands at 10 m, 20 m, and 60 m spatial resolution. We use the Level 2A bottom-of-atmosphere reflectance product and select a subset of 10 spectral bands available at 10 m and 20 m resolution (B02–B08, B8A, B11, B12), resampled to a common 10 m grid. The 20 m bands (B05, B06, B07, B8A, B11, B12) are resampled to 10 m using bilinear interpolation during the S2 stack construction.

The spatial resolution ratio between the two instruments defines the super-resolution scale factor of 6× (60 m / 10 m).

### 3.1.2 Band Selection

EMIT's full 285-band spectrum includes two wavelength regions affected by atmospheric water vapour absorption: approximately 1310–1455 nm and 1755–1980 nm. These bands contain little useful surface information and are excluded from the subset. From the remaining valid bands, we select 32 bands using the following procedure. First, the EMIT bands closest in wavelength to each of the 10 Sentinel-2 band centres are included as mandatory selections. This ensures that the spectral regression (Section 3.2.3) has direct correspondences between the two sensors. The remaining bands are distributed evenly across the valid spectral range to maintain uniform coverage. This yields a 32-band subset spanning the VNIR–SWIR range while avoiding absorption artefacts.

We conduct experiments in two configurations. The 32-band subset is used for method development and architecture selection. The full 285-band configuration (excluding atmospheric windows) is planned for final experiments, to evaluate whether additional spectral information improves super-resolution performance [CITE:if_needed_spectral_redundancy].

### 3.1.3 Area of Interest Selection

To ensure the dataset covers a diverse range of surface types and geographic conditions, we define 160 areas of interest (AOIs) distributed across six continents. The AOIs span the following land cover categories: cropland, desert, tropical forest, temperate forest, savanna and grassland, urban, wetland, shrubland, alpine, coastal, and other specialised types such as salt flats and volcanic terrain. Each AOI is defined by a geographic coordinate and a descriptive label indicating the dominant land cover.

### 3.1.4 Temporal Pairing

For each AOI, we search for temporally close EMIT and Sentinel-2 acquisitions. An EMIT scene is paired with the Sentinel-2 image acquired within ±3 days that has the lowest cloud cover over the overlapping area. Cloud fraction is evaluated using the Sentinel-2 Scene Classification Layer (SCL). EMIT scenes exceeding 70% cloud cover are excluded. This temporal constraint limits atmospheric and surface-change differences between the two acquisitions while still providing enough candidate pairs for adequate dataset size.

### 3.1.5 Spatial Alignment

Accurate pixel-level alignment between EMIT and Sentinel-2 is essential, as misregistration introduces noise in the training targets.

The alignment pipeline consists of three steps:

**EMIT orthorectification.** The raw EMIT data is delivered in a swath-based coordinate system. We convert each EMIT scene from its native netCDF format to a georeferenced ENVI cube projected into the local UTM zone. This step uses the per-pixel geolocation arrays (latitude, longitude) provided in the EMIT product and applies orthorectification with optional DEM-based parallax correction using the observation geometry (sensor/solar angles) [CITE:hytools_or_emit_ortho].

**Sentinel-2 cropping.** The Sentinel-2 scene is cropped to the spatial extent of the orthorectified EMIT image. This reduces the area processed in the subsequent co-registration step and prevents spurious tie-point matches in regions where only one sensor has data.

**Sub-pixel co-registration.** Even after orthorectification, residual geometric offsets of several pixels can remain between the two datasets due to differences in the geolocation accuracy of EMIT and Sentinel-2. We correct these offsets using local co-registration with the AROSICS library [CITE:arosics]. AROSICS computes a dense grid of tie-points by matching spectral bands common to both sensors (green ~560 nm, red ~665 nm, and NIR ~842 nm). A local shift model is fitted to the tie-points and applied to warp the Sentinel-2 image onto the EMIT reference grid. We use a grid resolution of 150 m [TODO: verify — check pipeline_defaults, it says 150], a matching window size of 128 × 128 pixels, and a maximum allowed shift of 50 m. Tie-points with reliability below 60% are discarded [CITE:arosics].

### 3.1.6 Tiling

After alignment, each co-registered EMIT–Sentinel-2 pair is divided into non-overlapping tiles. Each tile covers 100 × 100 EMIT pixels (6000 m × 6000 m), which corresponds to 600 × 600 Sentinel-2 pixels at 10 m. Tiles that contain any invalid (nodata) pixels are rejected to ensure complete spatial coverage within every tile.

### 3.1.7 Train/Validation/Test Split

The tiles are split into training (70%), validation (15%), and test (15%) subsets. The split is performed geographically, by AOI, rather than randomly across tiles. This prevents spatial leakage — adjacent tiles from the same scene sharing similar spectral and spatial patterns — from inflating validation and test metrics [CITE:spatial_leakage]. The split is fixed across all experiments to ensure fair comparisons.


## 3.2 Fusion-Based Ground Truth Generation

### 3.2.1 Problem Statement

The super-resolution task requires paired training data: a low-resolution hyperspectral input and a corresponding high-resolution hyperspectral target. However, no satellite instrument currently provides hyperspectral imagery at 10 m resolution with the spectral coverage of EMIT. The high-resolution target must therefore be synthesised.

Hyperspectral image fusion (HIF) addresses this problem by combining the spectral information of a low-resolution hyperspectral image (EMIT at 60 m) with the spatial detail of a high-resolution multispectral image (Sentinel-2 at 10 m) to produce a high-resolution hyperspectral estimate [CITE:yokoya2017_hif_review]. The fused output serves as the ground truth (GT) for training the super-resolution model.

The quality of this synthesised GT directly affects the SR model. A fusion method that introduces spectral distortions or spatial artefacts will propagate those errors into the trained model. We therefore evaluate multiple fusion methods to select the one that produces the most accurate GT. The evaluation procedure is described in Section 3.3.

### 3.2.2 Selected Fusion Methods

We compare six fusion methods from different algorithmic families, plus a naive baseline. The methods were selected to represent the main approaches in the HIF literature and to include both established techniques and our own regression-based approach. All methods except the polynomial regression are implemented in MATLAB using the hif-benchmarking framework [CITE:magalhaes2022_hif_thesis]. The regression method is implemented in Python.

**Bicubic upsampling (baseline).** The EMIT image is upsampled to the Sentinel-2 resolution using bicubic interpolation. This uses no information from Sentinel-2 and serves as a lower bound on fusion quality.

**Smoothing Filter-based Intensity Modulation (SFIM)** [CITE:sfim] is a pansharpening-derived method. It modulates the low-resolution hyperspectral image by the ratio between the high-resolution multispectral image and its spatially smoothed version. SFIM preserves the spectral content of the original HSI while injecting spatial detail proportional to the local contrast in the MSI.

**Generalized Laplacian Pyramid (GLP)** [CITE:glp] decomposes the multispectral image using a Laplacian pyramid to extract spatial detail at multiple scales. These detail coefficients are injected into the upsampled hyperspectral image, weighted by the spectral relationship between the two sensors. GLP belongs to the multiresolution analysis family of pansharpening methods.

**Coupled Nonnegative Matrix Factorization (CNMF)** [CITE:cnmf] jointly factorises the hyperspectral and multispectral images into shared endmembers and abundance maps. The factorisation enforces non-negativity, which is physically meaningful for reflectance data. The high-resolution hyperspectral estimate is reconstructed from the high-resolution abundances and the shared spectral endmembers.

**HySure** [CITE:hysure] formulates the fusion problem as a convex optimisation. It estimates a subspace representation of the hyperspectral image and regularises the solution to enforce both spectral smoothness and spatial consistency with the multispectral image.

**MAP-SMM (Maximum A Posteriori Stochastic Mixing Model)** [CITE:mapsmm] uses a Bayesian framework. It models the relationship between the low-resolution HSI and high-resolution MSI through a stochastic mixing model and solves for the MAP estimate of the fused image using the EMIT data as a spectral prior.

### 3.2.3 Polynomial Regression Fusion

In addition to the established methods above, we implement a spectral regression approach. For each of the 32 EMIT bands, an independent regression model is fitted to predict the EMIT reflectance from the 10 Sentinel-2 bands. The model uses second-order polynomial feature expansion, which maps the 10 input features to 65 terms (including interactions and squared terms), followed by Ridge regression with regularisation parameter α = 1.0.

**Training pixel selection.** Not all pixels are equally suitable for fitting the regression. In areas where the Sentinel-2 pixel contains a mixture of distinct surface types within the corresponding 60 m EMIT footprint, the spectral relationship between the sensors becomes ambiguous. We filter training pixels using a block homogeneity criterion. For each 6 × 6 block of Sentinel-2 pixels (one EMIT pixel footprint), we compute the coefficient of variation (CV = standard deviation / mean) of the most spatially variable S2 band. Blocks with CV > 0.25 are excluded from training. This selects spectrally homogeneous regions where the S2-to-EMIT relationship is well-defined.

**EMIT upsampling for training.** To create pixel-level correspondences at the 10 m grid, the EMIT image is upsampled to the Sentinel-2 resolution using nearest-neighbour replication. Each 60 m EMIT pixel is repeated into a 6 × 6 block, associating every 10 m S2 pixel with the reflectance value of its parent EMIT pixel. This exposes the model to the full sub-pixel spectral variability at 10 m during training, which reduces extrapolation artefacts at inference time.

**Batch fitting.** To improve robustness, pixels from multiple tiles within the same AOI are pooled before fitting. This increases the training sample size and exposes the regression to a wider range of spectral conditions.

**Inference.** The fitted models are applied to each Sentinel-2 tile at its native 10 m resolution. The output is a 32-band synthetic hyperspectral image at 10 m resolution. Reflectance values are stored as uint16 digital numbers scaled by a factor of 10,000.


---

## Citation Placeholders — Sources to Find

| Placeholder | What to cite |
|---|---|
| `[CITE:emit_instrument]` | Green et al., 2022 — EMIT instrument description paper |
| `[CITE:emit_l2a]` | EMIT L2A product documentation or data paper |
| `[CITE:sentinel2_mission]` | Drusch et al., 2012 — Sentinel-2 mission paper |
| `[CITE:arosics]` | Scheffler et al., 2017 — AROSICS: An automated and robust open-source image co-registration software for multi-sensor satellite data |
| `[CITE:hytools_or_emit_ortho]` | HyTools library or EMIT orthorectification documentation |
| `[CITE:spatial_leakage]` | A reference on spatial autocorrelation / leakage in geospatial ML — e.g., Roberts et al., 2017 or Ploton et al., 2020 |
| `[CITE:yokoya2017_hif_review]` | Yokoya et al., 2017 — Hyperspectral and multispectral data fusion: A comparative review |
| `[CITE:magalhaes2022_hif_thesis]` | Magalhães, 2022 — Hyperspectral Image Fusion: A Comprehensive Review (the thesis in your repo) |
| `[CITE:sfim]` | Liu, 2000 — Smoothing Filter-based Intensity Modulation |
| `[CITE:glp]` | Aiazzi et al., 2006 — MTF-tailored multiscale fusion of high-resolution MS and Pan imagery |
| `[CITE:cnmf]` | Yokoya et al., 2012 — Coupled Nonnegative Matrix Factorization |
| `[CITE:hysure]` | Simões et al., 2015 — A convex formulation for hyperspectral image superresolution via subspace-based regularization |
| `[CITE:mapsmm]` | Eismann & Hardie, 2005 — MAP estimation for hyperspectral image resolution enhancement using an auxiliary sensor |
| `[CITE:if_needed_spectral_redundancy]` | Optional — only if you discuss 32 vs 285 band tradeoffs in related work |
