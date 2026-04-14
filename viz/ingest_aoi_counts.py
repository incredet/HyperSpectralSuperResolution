from __future__ import annotations

import csv
import json
import os
import re
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
AOIS_CSV = REPO_ROOT / "aois.csv"

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
OUT_CSV = FIG_DIR / "aoi_pair_counts.csv"

FOLDER_RE = re.compile(r"^aoi_lat(?P<lat>-?\d+(?:\.\d+)?)_lon(?P<lon>-?\d+(?:\.\d+)?)$")


def index_drive_aois(root: Path) -> dict[tuple[float, float], Path]:
    out: dict[tuple[float, float], Path] = {}
    if not root.exists():
        print(f"!! drive root not found: {root}")
        return out
    for p in root.iterdir():
        if not p.is_dir():
            continue
        m = FOLDER_RE.match(p.name)
        if not m:
            continue
        out[(float(m["lat"]), float(m["lon"]))] = p
    return out


def count_aoi(aoi_dir: Path) -> tuple[int, int]:
    pairs_completed = 0
    tiles_produced = 0

    aoi_manifest = aoi_dir / "global_manifest.csv"
    if aoi_manifest.exists():
        with aoi_manifest.open() as f:
            tiles_produced = max(sum(1 for _ in f) - 1, 0)

    for sub in aoi_dir.iterdir():
        if not sub.is_dir():
            continue
        if (sub / "report.md").exists() or (sub / "manifest.csv").exists():
            pairs_completed += 1

    if pairs_completed == 0:
        reg = aoi_dir / "pair_registry.jsonl"
        if reg.exists():
            pair_ids: set[str] = set()
            with reg.open() as f:
                for line in f:
                    try:
                        obj = json.loads(line)
                    except json.JSONDecodeError:
                        continue
                    if obj.get("status") == "completed":
                        pair_ids.add(obj.get("pair_id", ""))
            pairs_completed = len(pair_ids)

    return pairs_completed, tiles_produced


def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)
    drive_index = index_drive_aois(DRIVE_ROOT)
    print(f"drive root: {DRIVE_ROOT}")
    print(f"found {len(drive_index)} AOI folders on drive")

    rows = []
    with AOIS_CSV.open() as f:
        for r in csv.DictReader(f):
            lat = float(r["lat"])
            lon = float(r["lon"])
            folder = drive_index.get((lat, lon))
            if folder is None:
                for k, v in drive_index.items():
                    if abs(k[0] - lat) < 1e-6 and abs(k[1] - lon) < 1e-6:
                        folder = v
                        break

            folder_exists = folder is not None
            pairs_completed = tiles_produced = 0
            if folder_exists:
                pairs_completed, tiles_produced = count_aoi(folder)

            rows.append({
                "name": r["name"],
                "lat": lat,
                "lon": lon,
                "land_cover": r["land_cover"],
                "description": r.get("description", ""),
                "folder": str(folder) if folder else "",
                "folder_exists": int(folder_exists),
                "pairs_completed": pairs_completed,
                "tiles_produced": tiles_produced,
            })

    with OUT_CSV.open("w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)

    n_total = len(rows)
    n_folder = sum(1 for r in rows if r["folder_exists"])
    n_pairs = sum(1 for r in rows if r["pairs_completed"] > 0)
    n_tiles = sum(r["tiles_produced"] for r in rows)
    print(f"wrote {OUT_CSV}")
    print(f"  total AOIs:          {n_total}")
    print(f"  folders on drive:    {n_folder}")
    print(f"  AOIs with ≥1 pair:   {n_pairs}")
    print(f"  total tiles:         {n_tiles}")


if __name__ == "__main__":
    main()
