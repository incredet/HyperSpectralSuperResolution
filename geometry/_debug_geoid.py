"""Quick diagnostic: check pyproj geoid grid availability."""
import pyproj
from pyproj import Transformer, CRS
import numpy as np

print(f"pyproj version: {pyproj.__version__}")
print(f"PROJ version:   {pyproj.proj_version_str}")
print(f"data dir:       {pyproj.datadir.get_data_dir()}")
print()

# Check what grids are available
try:
    from pyproj.sync import get_transform_grid_list
    grids = get_transform_grid_list()
    egm_grids = [g for g in grids if 'egm' in g.get('name', '').lower()
                 or 'egm' in str(g.get('url', '')).lower()]
    print(f"Total grids available: {len(grids)}")
    print(f"EGM-related grids: {len(egm_grids)}")
    for g in egm_grids[:5]:
        print(f"  {g.get('name', '?')} - {g.get('url', '?')}")
except ImportError:
    print("pyproj.sync not available (older version)")
print()

# Test the transform
print("--- Test 1: EPSG:4326+3855 → EPSG:4979 ---")
try:
    t = Transformer.from_crs("EPSG:4326+3855", "EPSG:4979", always_xy=True)
    print(f"  Transformer: {t}")
    # Grand Canyon: lon=-112.1, lat=36.1 — expected geoid ≈ -26 m
    _, _, z = t.transform(-112.1, 36.1, 0.0)
    print(f"  Grand Canyon (lon=-112.1, lat=36.1, H=0): z_ellip = {z:.4f} m")
    print(f"  (expected ≈ -26 m if EGM2008 grid is working)")
except Exception as e:
    print(f"  FAILED: {e}")
print()

# Test alternative approaches
print("--- Test 2: Direct PROJ pipeline with vgridshift ---")
try:
    t2 = Transformer.from_pipeline(
        "+proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1"
    )
    _, _, z2 = t2.transform(-112.1, 36.1, 0.0)
    print(f"  z = {z2:.4f} m")
except Exception as e:
    print(f"  FAILED: {e}")
print()

print("--- Test 3: Using egm96 instead (more commonly bundled) ---")
try:
    t3 = Transformer.from_pipeline(
        "+proj=vgridshift +grids=us_nga_egm96_15.tif +multiplier=1"
    )
    _, _, z3 = t3.transform(-112.1, 36.1, 0.0)
    print(f"  z = {z3:.4f} m (EGM96, close but not identical to EGM2008)")
except Exception as e:
    print(f"  FAILED: {e}")
print()

print("--- Test 4: Check EPSG:3855 definition ---")
try:
    c = CRS.from_epsg(3855)
    print(f"  CRS: {c}")
    print(f"  Name: {c.name}")
except Exception as e:
    print(f"  FAILED: {e}")
print()

print("--- Test 5: List available grid files on disk ---")
import os
data_dir = pyproj.datadir.get_data_dir()
grid_files = [f for f in os.listdir(data_dir) if 'egm' in f.lower() or f.endswith('.tif') or f.endswith('.gtx')]
print(f"  Grid files in {data_dir}:")
for f in sorted(grid_files)[:20]:
    print(f"    {f}")
if not grid_files:
    print("    (none found)")
