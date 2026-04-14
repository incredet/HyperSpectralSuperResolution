from __future__ import annotations

import csv
import json
import os
import re
from datetime import datetime
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
AOIS_CSV = REPO_ROOT / "aois.csv"

DRIVE_ROOT = Path(os.environ.get(
    "DRIVE_ROOT",
    "/content/drive/Shareddrives/HyperResData/EMIT_S-2_Matches/2026-04-02",
))
FIG_DIR = DRIVE_ROOT / "figures"
OUT_CSV = FIG_DIR / "pair_dates.csv"

AOI_RE = re.compile(r"^aoi_lat(?P<lat>-?\d+(?:\.\d+)?)_lon(?P<lon>-?\d+(?:\.\d+)?)$")


def parse_iso(s: str) -> datetime | None:
    if not s:
        return None
    s = s.replace("Z", "+00:00")
    try:
        return datetime.fromisoformat(s)
    except ValueError:
        return None


def load_aoi_index() -> dict[tuple[float, float], dict]:
    idx: dict[tuple[float, float], dict] = {}
    with AOIS_CSV.open() as f:
        for r in csv.DictReader(f):
            idx[(float(r["lat"]), float(r["lon"]))] = {
                "name": r["name"], "land_cover": r["land_cover"],
            }
    return idx


def iter_pair_dirs(aoi_dir: Path):
    for sub in aoi_dir.iterdir():
        if not sub.is_dir():
            continue
        if (sub / "metadata").is_dir():
            yield sub


def harvest_pair(pair_dir: Path) -> dict | None:
    meta = pair_dir / "metadata"
    emit_sum = meta / "emit_summary.json"
    s2_sum = meta / "s2_summary.json"
    if not emit_sum.exists() or not s2_sum.exists():
        return None

    emit_obj = json.loads(emit_sum.read_text())
    s2_obj = json.loads(s2_sum.read_text())

    emit_dt = parse_iso(emit_obj.get("time", {}).get("begin", ""))
    s2_dt = parse_iso(s2_obj.get("datetime", ""))
    if emit_dt is None or s2_dt is None:
        return None

    delta_h = (s2_dt - emit_dt).total_seconds() / 3600.0
    return {
        "pair_id": pair_dir.name,
        "emit_dt": emit_dt.isoformat(),
        "s2_dt": s2_dt.isoformat(),
        "delta_hours": round(delta_h, 4),
        "emit_cloud_pct": emit_obj.get("cloud_cover_umm"),
        "s2_cloud_frac": s2_obj.get("clouds", {}).get("eo:cloud_cover"),
    }


def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)
    aoi_index = load_aoi_index()
    print(f"drive root: {DRIVE_ROOT}")

    rows = []
    n_aoi_dirs = 0
    n_pair_dirs = 0
    for p in sorted(DRIVE_ROOT.iterdir()):
        m = AOI_RE.match(p.name)
        if not p.is_dir() or not m:
            continue
        n_aoi_dirs += 1
        lat, lon = float(m["lat"]), float(m["lon"])
        aoi_meta = aoi_index.get((lat, lon), {"name": "", "land_cover": ""})

        for pair_dir in iter_pair_dirs(p):
            n_pair_dirs += 1
            h = harvest_pair(pair_dir)
            if h is None:
                continue
            rows.append({
                "aoi_name": aoi_meta["name"],
                "aoi_lat": lat, "aoi_lon": lon,
                "land_cover": aoi_meta["land_cover"],
                **h,
            })

    print(f"  AOI folders scanned:  {n_aoi_dirs}")
    print(f"  pair folders scanned: {n_pair_dirs}")
    print(f"  pairs harvested:      {len(rows)}")

    if not rows:
        print("!! no pairs harvested")
        return

    with OUT_CSV.open("w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)

    deltas = [r["delta_hours"] for r in rows]
    dates = sorted(r["emit_dt"] for r in rows)
    print(f"wrote {OUT_CSV}")
    print(f"  date range:           {dates[0][:10]} → {dates[-1][:10]}")
    print(f"  Δt (h) min/med/max:   "
          f"{min(deltas):+.2f} / {sorted(deltas)[len(deltas)//2]:+.2f} / {max(deltas):+.2f}")


if __name__ == "__main__":
    main()
