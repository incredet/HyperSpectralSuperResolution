# CNMF Fusion — Colab Notebook

Minimal notebook that calls `spectral/run_cnmf.py`. All algorithm
parameters come from `pipeline_config.yaml`; only Colab/Drive paths
and parallelism settings live in the notebook.

---

## Cell 1 — Markdown

```markdown
# EMIT / Sentinel-2 — CNMF Fusion (GT Generation)

Calls `spectral/run_cnmf.py` to run CNMF fusion on QC-clean tiles.

**Inputs**: `tiles_clean.csv` (from `Tile_QC.ipynb`), analytical R matrix
**Outputs**: fused GeoTIFFs in `{pair_dir}/CNMF/`, per-tile R² CSV
```

---

## Cell 2 — Clone repo

```python
import os, textwrap
from google.colab import userdata

os.environ["GH_USER"] = userdata.get("GH_USER")
os.environ["GH_TOKEN"] = userdata.get("GH_TOKEN")

askpass_path = "/tmp/gh_askpass.sh"
with open(askpass_path, "w") as f:
    f.write(textwrap.dedent("""\
        #!/bin/sh
        case "$1" in
          *Username*) echo "$GH_USER" ;;
          *Password*) echo "$GH_TOKEN" ;;
          *) echo "" ;;
        esac
    """))
os.chmod(askpass_path, 0o700)
os.environ["GIT_ASKPASS"] = askpass_path
os.environ["GIT_TERMINAL_PROMPT"] = "0"

!git clone https://github.com/incredet/HyperSpectralSuperResolution.git
%cd /content/HyperSpectralSuperResolution/
```

---

## Cell 3 — Install

```python
!pip install -q numpy scipy scikit-learn rasterio matplotlib tqdm joblib opencv-python-headless earthaccess threadpoolctl pyyaml
```

---

## Cell 4 — Mount Drive

```python
from google.colab import drive
drive.mount("/content/drive")
```

---

## Cell 5 — Run CNMF (all tiles)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

!python spectral/run_cnmf.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --workers 4 \
    --blas-threads 2
```

---

## Cell 5 — Run CNMF (parallel variant — copy notebook, change start/stop)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

# ── Edit these per notebook ──
START = 0
STOP  = 500

!python spectral/run_cnmf.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --start {START} \
    --stop {STOP} \
    --workers 4 \
    --blas-threads 2
```

---

## Cell 6 — Merge partial CSVs (run once after all notebooks finish)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

!python spectral/run_cnmf.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --merge-only
```

---

## Cell 7 — Quick diagnostics (optional, after merge)

```python
import pandas as pd
from pathlib import Path

drive_base = Path("/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02")
df = pd.read_csv(drive_base / "r2_cnmf_tiles.csv")
ok = df[df["status"] == "OK"]

print(f"Total: {len(df)}, OK: {len(ok)}")
print(f"R² mean={ok['r2_cnmf_mean'].mean():.4f}, "
      f"median={ok['r2_cnmf_mean'].median():.4f}")
print(f"\nStatus counts:")
print(df["status"].value_counts().to_string())
```
