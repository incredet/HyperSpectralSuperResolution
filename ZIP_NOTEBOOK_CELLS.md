# Pack Zips — Colab Notebook

Minimal notebook that calls `spectral/pack_zips.py` to package
R²-filtered tiles into zip archives for SR training.

Each GT source gets its own zip directory. Only tiles passing both
the base QC (`tiles_clean.csv`) and the GT-specific R² threshold
are included.

---

## Cell 1 — Clone repo + install

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
!pip install -q pandas rasterio
```

---

## Cell 2 — Mount Drive

```python
from google.colab import drive
drive.mount("/content/drive")
```

---

## Cell 3 — Pack CNMF zips (R² ≥ 0.5)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

!python spectral/pack_zips.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --gt-source cnmf \
    --r2-thresh 0.5
```

---

## Cell 4 — Pack SFIM zips (R² ≥ 0.7)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

!python spectral/pack_zips.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --gt-source sfim \
    --r2-thresh 0.7
```

---

## Cell 5 — Pack regression zips (no GT-specific R², tiles_clean.csv is enough)

```python
DRIVE = "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches"
TAG   = "2026-04-02"

!python spectral/pack_zips.py \
    --drive-root {DRIVE} \
    --run-tag {TAG} \
    --gt-source regression
```

---

## Cell 6 — Verify (optional)

```python
from pathlib import Path
import zipfile

drive_base = Path("/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02")

for gt in ["cnmf", "sfim", "regression"]:
    zdir = drive_base / f"zips_{gt}"
    if not zdir.exists():
        continue
    zips = list(zdir.glob("*.zip"))
    n_tiles = 0
    for zp in zips:
        with zipfile.ZipFile(zp) as zf:
            n_tiles += sum(1 for n in zf.namelist() if n.endswith("__emit_b32.tif"))
    print(f"zips_{gt}: {len(zips)} zips, {n_tiles} tile pairs")
```
