# Geometric Alignment Review: EMIT–S2 Pipeline

A focused analysis of reprojection, co-registration, grid alignment, and spatial consistency across the full chain from raw EMIT netCDF through to 10 m synthetic EMIT tiles.

---

## 1. The alignment chain at a glance

```
EMIT netCDF (swath, WGS84 GLT)
  │
  ├─ [optional] DEM parallax correction  (bilinear scatter in GLT space)
  │
  ├─ GLT scatter → ENVI ortho cube (WGS84 geographic, ~60 m)
  │
  └─ gdalwarp -tr 60 60 -te ... → ENVI UTM (60 m, grid anchored to S2 origin)
                                        │
S2 L2A 10 m stack (UTM)                │
  │                                     │
  ├─ crop_s2_stack_to_te (snapped to S2 pixel grid)
  │
  ├─ AROSICS COREG_LOCAL  (tie-point local co-registration, S2 → EMIT)
  │
  ├─ valid_bbox → intersect → snap_bounds_to_grid(60 m)
  │       trim both rasters to common valid extent
  │
  ├─ find_valid_paired_tiles  (pixel-index tiling: EMIT 100×100, S2 600×600)
  │
  └─ fit_tile / align_s2_to_emit_grid  (block-average S2 → 60 m for training)
```

---

## 2. What is done well

**S2-origin grid anchoring.** The gdalwarp target extent (`_compute_te`) snaps the EMIT 60 m grid to the S2 upper-left origin `(s2_x0, s2_y0)` with explicit `ceil`/`floor` operations and an epsilon guard. Combined with `-tr 60 60`, this guarantees that every EMIT pixel covers exactly 6×6 S2 pixels with zero sub-pixel offset — the single most important property for clean training data. The implementation is correct.

**Consistent snapping in `crop_s2_stack_to_te`.** The S2 crop uses `snap_te_to_src_grid=True` by default, rounding the EMIT-derived target extent back to exact S2 pixel boundaries. The `cover_bounds=True` mode then expands the window by at most one pixel on each side rather than rounding inward, so no EMIT data falls outside the S2 footprint. This is well-considered.

**60 m snap in final trimming.** `snap_bounds_to_grid(grid_m=60)` with the same `(x0, y0)` anchor ensures the trimmed output remains phase-locked to both the EMIT and S2 grids. Tiles cut from this trimmed output inherit this alignment.

**Block-average downsampling for regression.** `align_s2_to_emit_grid` uses `reshape(B, H, scale, W, scale).mean(axis=(2,4))` — an exact area-average with no interpolation kernel, which is the physically correct PSF approximation for an ideal 60 m sensor. The fallback to `rasterio reproject(average)` only fires when dimensions are not exact multiples (which the snapping should prevent).

---

## 3. Problems found

### 3.1 DEM correction uses bilinear interpolation across GLT boundaries — can blend disconnected swath pixels

**Location:** `EMIT_proj.py`, lines 1122–1208

The DEM parallax correction computes a fractional shift `(dx_pixels, dy_pixels)` for each output pixel, then looks up the four nearest GLT neighbours and bilinearly blends the corresponding raw sensor values. The problem is that adjacent pixels in the ortho (GLT) grid can map to completely different scan lines or even different orbits if they straddle a swath gap or a bowtie overlap. Bilinear interpolation between such pixels produces physically meaningless blended spectra.

The code does check `valid_glt2` per neighbour and sets the weight to zero for invalid neighbours, but it does **not** check whether the four neighbours are spatially contiguous in the raw sensor grid. Two adjacent GLT pixels could both be valid yet map to raw-sensor rows hundreds of lines apart. Blending them produces a phantom spectrum that doesn't exist in either source pixel.

**Recommendation:** Add a proximity check — if `abs(gy00 - gy11) > 2` or `abs(gx00 - gx11) > 2`, fall back to nearest-neighbour for that output pixel. Alternatively, build a continuity mask before the interpolation loop.

### 3.2 `zoom(emit_b32, (1, scale, scale), order=1)` uses bilinear instead of nearest-neighbour for EMIT upsampling in `fit_tile`

**Location:** `spectral/s2_to_emit.py`, line 460

The docstring says "nearest-neighbour-repeat EMIT to the S2 10 m grid" and the module overview explicitly describes the design as "np.repeat(emit, 6, axis=1/2)". But the code uses `scipy.ndimage.zoom(..., order=1)`, which is bilinear interpolation, not nearest-neighbour.

This has two consequences:

1. **Training targets are spatially smoothed.** A 60 m pixel boundary that should be a sharp step is turned into a 1-pixel-wide ramp. The regression sees gradually blended target values at every EMIT pixel boundary, which softens the learned mapping and blurs the final 10 m product.

2. **Nodata bleeding.** If an EMIT pixel is nodata (`65535` as uint16, or `-9999` as float), bilinear interpolation with its valid neighbours creates intermediate values (e.g., ~30000) that look like real data but are noise. The valid-pixel mask is built *after* the zoom, so it cannot catch these hybrid values.

**Fix:** Replace with `zoom(..., order=0)` (nearest-neighbour) or, better, `np.repeat(np.repeat(emit_b32, scale, axis=1), scale, axis=2)` which is what the docstring actually describes. This would also be faster.

Note that `fit_tiles_batch` (line 570) has the **same bug**.

### 3.3 Tile indexing assumes perfect grid lock between EMIT and S2 without verifying it

**Location:** `tiles_helpers/utils.py`, lines 75–79

```python
emit_win = Window(col, row, emit_tile_size, emit_tile_size)
s2_win   = Window(col * scale, row * scale, s2_tile, s2_tile)
```

This assumes the S2 raster is exactly `emit_width * scale` by `emit_height * scale` pixels. If the trimming left a residual (e.g., the S2 raster is 5999 pixels wide instead of 6000), then `s2_win` for the last column of tiles will extend past the S2 raster boundary. Rasterio's `.read(window=...)` will silently zero-fill the out-of-bounds region, creating tiles with a right/bottom strip of zeros that pass the `max_black_frac` check (if frac is > 0).

There is no explicit assertion that `s2_ds.width == emit_ds.width * scale` and `s2_ds.height == emit_ds.height * scale`. This should be verified before entering the tile loop.

### 3.4 AROSICS co-registration uses EMIT nodata = 65535 on float32 data

**Location:** `arosics_coreg.py`, line 51 (`nodata_emit=65535`)

The EMIT UTM GeoTIFF written by `nc_to_envi` → `gdalwarp` uses `NO_DATA_VALUE = -9999.0` (set at line 903 of EMIT_proj.py: `-srcnodata -9999 -dstnodata -9999`). But the default EMIT nodata passed to AROSICS is `65535`, which is a uint16 sentinel that doesn't appear in the float32 warp output. This means AROSICS treats the actual nodata pixels (−9999) as valid image data with extreme negative reflectance, corrupting the tie-point correlation surface.

In the notebook (Cell 32), the caller passes `nodata_emit=65535` explicitly, which doubles down on the mismatch. The correct value should be `-9999` (or whatever the `gdalwarp` output uses).

**Why this may have gone unnoticed:** If the EMIT footprint is much larger than the S2 scene, the nodata ring lives outside the overlap region and AROSICS never encounters it. But for scenes where the S2 tile extends slightly beyond the EMIT swath (common at the edges), the -9999 pixels enter the correlation and degrade tie-point quality. This manifests as occasional unexplained co-registration failures or large residual shifts.

### 3.5 Co-registration resampling is cubic — introduces ringing at nodata borders

**Location:** `arosics_coreg.py`, lines 54–55 (`resamp_calc="cubic"`, `resamp_deshift="cubic"`)

AROSICS uses cubic resampling by default when shifting the S2 image to match EMIT. Cubic interpolation has a negative-lobe kernel (Catmull-Rom or similar) that creates ringing artefacts at sharp transitions — most importantly at the nodata border and at cloud-to-clear boundaries. These overshoot/undershoot artefacts are small in magnitude (a few DN) but systematic, and they're baked into every tile extracted from the co-registered image.

For training a spectral regression, even a consistent 1–2% overshoot at edges biases the model. Bilinear (`resamp_calc="bilinear"`) would be a safer choice, or cubic with a nodata-aware mask applied post-shift.

### 3.6 `valid_bbox_in_map_coords` uses per-band min/max scan rather than all-band

**Location:** `crop_utils.py`, line 82

The function reads only the dataset mask (`ds.dataset_mask()`), which is the logical OR of all per-band masks. But the EMIT ENVI raster has 285 bands with nodata = -9999 that may be set on *some* bands but not all (e.g., in water-absorption windows, some bands are flagged while adjacent spatial pixels are valid). The dataset-level mask reports a pixel as valid if *any* band is valid, which means the valid bounding box can extend into regions where most bands are nodata. The trimmed output then contains pixels that are only partially valid across bands — these enter the regression with missing-band artefacts.

### 3.7 The gdalwarp uses cubic resampling from geographic to UTM — introduces spatial smoothing before co-registration

**Location:** `EMIT_proj.py`, line 905 (`-r cubic`)

The `_run_gdalwarp` step reprojects the GLT-projected ortho image (WGS84 geographic) to UTM at 60 m. It uses `-r cubic` resampling. Since the geographic pixels are approximately 60 m but not exactly (they're in degrees, so pixel size in metres varies with latitude), gdalwarp must resample. Cubic interpolation at this stage spatially smooths the EMIT data before it's ever compared to S2.

This creates a subtle inconsistency: the "60 m" EMIT pixel is actually a weighted average of roughly 3×3 neighbouring geographic pixels (the cubic kernel footprint), while the S2 pixel is a direct measurement. The effective PSF of the EMIT data in the UTM grid is wider than the nominal 60 m, which softens the correlation with S2 and reduces the effective co-registration accuracy.

Using `-r near` (nearest-neighbour) would preserve the original per-pixel values. The argument for cubic is that it reduces aliasing, but at 60 m ground sampling with a ~60 m input, there's negligible aliasing to suppress.

### 3.8 No CRS consistency check between EMIT and S2 after gdalwarp

**Location:** Notebook cells 31–33

After gdalwarp projects EMIT to UTM and `crop_s2_stack_to_te` crops S2, there is no assertion that the two rasters share the same CRS, pixel size, and grid origin. The pipeline assumes this by construction, but if the S2 scene spans two UTM zones (possible for scenes near zone boundaries), `s2_crs` might differ from the EMIT warp CRS. AROSICS would then co-register images in different projections, producing systematic misalignment that scales with distance from the zone seam.

### 3.9 DEM parallax uses a constant `m_per_deg_y = 110_540` — should vary with latitude

**Location:** `EMIT_proj.py`, line 1080

The east-west metre-per-degree factor correctly varies with `cos(lat)`, but the north-south factor is hardcoded as 110,540 m/degree. In reality this value ranges from ~110,574 m at the equator to ~111,694 m at the poles (the Earth is an oblate spheroid). At high latitudes the error exceeds 1%, which for a 500 m elevation difference and a 30° view zenith could shift a pixel by ~0.3 m — small, but systematic across the scene and cumulative with other alignment errors. A geodetic formula or WGS84 ellipsoid lookup would be more rigorous.

### 3.10 `align_grids=True` in AROSICS combined with `out_gsd=[10, 10]` may re-grid the output

**Location:** `arosics_coreg.py`, lines 114–115

`align_grids=True` tells AROSICS to align the output to the reference image's grid origin. But the reference is the EMIT 60 m UTM raster, while the output GSD is `[10, 10]`. AROSICS will anchor the 10 m output grid to the EMIT 60 m grid origin — which is fine since the S2 origin is already aligned to it. However, if there's a sub-pixel discrepancy between the EMIT grid origin and the original S2 grid origin (due to rounding in `_compute_te`), `align_grids=True` will silently shift the S2 output by up to half an EMIT pixel (30 m). This would be catastrophic for tile-level alignment.

The safer approach is `align_grids=False` with an explicit target transform derived from the S2 source grid.

---

## 4. Summary

| # | Issue | Severity | Impact on final tiles |
|---|-------|----------|-----------------------|
| 3.1 | DEM bilinear blends across GLT discontinuities | Medium | Phantom spectra at swath edges |
| 3.2 | `zoom(order=1)` instead of nearest-neighbour for training targets | **High** | Blurred regression targets, nodata bleeding |
| 3.3 | No assertion that S2 size = EMIT size × scale | Medium | Silent zero-fill in edge tiles |
| 3.4 | EMIT nodata 65535 vs actual -9999 in co-registration | **High** | Corrupted tie-points, failed/degraded co-reg |
| 3.5 | Cubic resampling ringing at nodata/cloud borders | Low–Med | Systematic bias in border pixels |
| 3.6 | Dataset-mask valid bbox includes partially-valid pixels | Low | Some bands nodata in "valid" tiles |
| 3.7 | Cubic resampling in geographic→UTM warp widens PSF | Low–Med | Softer EMIT, reduced co-reg precision |
| 3.8 | No CRS check between EMIT UTM and S2 | Medium | Zone-boundary scenes misaligned |
| 3.9 | Constant `m_per_deg_y` in DEM correction | Low | ~0.3 m systematic shift at high lat |
| 3.10 | `align_grids=True` may introduce sub-pixel grid shift | Medium–High | Up to 30 m shift if origins differ |

The most impactful fixes are **3.2** (change `zoom(order=1)` to `order=0` or `np.repeat`) and **3.4** (set `nodata_emit=-9999` in the co-registration call). These two alone would improve training data quality and co-registration reliability significantly.
