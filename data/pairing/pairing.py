 
from __future__ import annotations

import json
from typing import List, Dict, Any, Optional

from datetime import timedelta
from pathlib import Path


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from S2.s2_search import (
    find_best_s2_for_emit_item,
    build_s2_index
)

from EMIT.emit_search import (
    emit_cloud_pct,
    emit_dedupe_latest_revision,
    emit_keep_top_n_per_day,
    emit_item_datetime_utc

)

def pair_emit_to_s2(
    emit_items: List[dict],
    *,
    aoi_geom_wgs84,
    s2_api: str,
    s2_collection: str,
    days: float = 3.0,
    emit_max_cloud_pct: Optional[float] = None,
    emit_top_n_per_day: Optional[int] = None,
    s2_limit: int = 5000,
    **matcher_kwargs,
):
    """
    Returns list of records:
      {emit_item, s2_item, scl_cloud, dbg}
    """
    emit_dedup = emit_dedupe_latest_revision(emit_items)

    if emit_top_n_per_day is not None:
        emit_sel = emit_keep_top_n_per_day(
            emit_dedup,
            n_per_day=int(emit_top_n_per_day),
            max_cloud_pct=emit_max_cloud_pct,
        )
    else:
        # optional cloud filter only
        if emit_max_cloud_pct is not None:
            emit_sel = [it for it in emit_dedup if emit_cloud_pct(it) <= emit_max_cloud_pct]
        else:
            emit_sel = list(emit_dedup)

    dts = [emit_item_datetime_utc(it) for it in emit_sel]
    dts = [dt for dt in dts if dt is not None]
    if not dts:
        return [], {"reason": "no_emit_after_selection"}

    dt_min = min(dts) - timedelta(days=days)
    dt_max = max(dts) + timedelta(days=days)

    s2_index = build_s2_index(
        aoi_geom_wgs84=aoi_geom_wgs84,
        dt_min_utc=dt_min,
        dt_max_utc=dt_max,
        s2_api=s2_api,
        s2_collection=s2_collection,
        limit=s2_limit,
    )

    out = []
    for e in emit_sel:
        s2_item, scl_cloud, dbg = find_best_s2_for_emit_item(
            e,
            s2_index=s2_index,
            days=days,
            **matcher_kwargs,
        )
        out.append({
            "emit_item": e,
            "s2_item": s2_item,
            "scl_cloud": scl_cloud,
            "dbg": dbg,
        })

    return out, {
        "n_emit_in": len(emit_items),
        "n_emit_dedup": len(emit_dedup),
        "n_emit_selected": len(emit_sel),
        "n_s2_indexed": len(s2_index.recs),
        "dt_min": dt_min.isoformat(),
        "dt_max": dt_max.isoformat(),
    }


def _emit_time_batches(emit_items: List[dict], window_days: int) -> List[List[dict]]:
    """Split EMIT items into chronological time windows."""
    items = [(emit_item_datetime_utc(it), it) for it in emit_items]
    items = [(dt, it) for dt, it in items if dt is not None]
    items.sort(key=lambda x: x[0])

    batches: List[List[dict]] = []
    i = 0
    while i < len(items):
        start_dt = items[i][0]
        end_dt = start_dt + timedelta(days=window_days)
        batch = []
        while i < len(items) and items[i][0] < end_dt:
            batch.append(items[i][1])
            i += 1
        batches.append(batch)
    return batches


def pair_emit_to_s2_batched(
    *,
    emit_items: List[dict],
    aoi_geom_wgs84,
    out_dir: str,
    s2_api: str,
    s2_collection: str,
    days: float = 3.0,

    window_days: int = 14,     
    resume: bool = True,

    # emit selection knobs
    emit_top_n_per_day: Optional[int] = 5,
    emit_max_cloud_pct: Optional[float] = None,

    # s2 indexing knobs
    s2_limit: int = 200,  
    s2_chunk_days: int = 14,      # if your build_s2_index supports it

    # matcher knobs
    sun_deg_max: float = 5.0,
    max_tod_diff_h: float = 1.5,
    tile_m: float = 6000.0,
    top_k_prefilter: int = 50,
    meta_cc_max: Optional[float] = None,
    scl_cloud_max: Optional[float] = None,
) -> Dict[str, Any]:
    """
    Runs pairing in time batches and writes JSON outputs per batch.
    Returns a run summary dict.
    """
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    ckpt_path = out_dir / "checkpoint.json"
    done = set()
    if resume and ckpt_path.exists():
        done = set(json.loads(ckpt_path.read_text()).get("done_batches", []))

    # 1) EMIT: latest revision dedupe
    emit_dedup = emit_dedupe_latest_revision(emit_items)

    # 2) Optional: keep top-N per day (NOT 1/day)
    if emit_top_n_per_day is not None:
        emit_sel = emit_keep_top_n_per_day(
            emit_dedup,
            n_per_day=int(emit_top_n_per_day),
            max_cloud_pct=emit_max_cloud_pct,
        )
    else:
        emit_sel = [it for it in emit_dedup if emit_max_cloud_pct is None or emit_cloud_pct(it) <= emit_max_cloud_pct]

    batches = _emit_time_batches(emit_sel, window_days=window_days)

    run_summary = {
        "n_emit_in": len(emit_items),
        "n_emit_dedup": len(emit_dedup),
        "n_emit_selected": len(emit_sel),
        "window_days": window_days,
        "days_tolerance": days,
        "n_batches": len(batches),
        "batches_done_initial": sorted(list(done)),
        "batches": [],
    }

    # 3) Process batches
    for bi, batch_emit in enumerate(batches):
        batch_id = f"{bi:03d}"
        if batch_id in done:
            continue

        # batch time span
        dts = [emit_item_datetime_utc(it) for it in batch_emit]
        dts = [dt for dt in dts if dt is not None]
        dt_min = min(dts) - timedelta(days=days)
        dt_max = max(dts) + timedelta(days=days)

        # build S2 index for this batch window
        s2_index = build_s2_index(
            aoi_geom_wgs84=aoi_geom_wgs84,
            dt_min_utc=dt_min,
            dt_max_utc=dt_max,
            s2_api=s2_api,
            s2_collection=s2_collection,
            limit=s2_limit,
            # optional if supported:
            # chunk_days=s2_chunk_days,
        )

        out_jsonl = out_dir / f"pairs_batch_{batch_id}.jsonl"
        n_kept = 0
        n_total = 0

        with out_jsonl.open("w", encoding="utf-8") as f:
            for emit_item in batch_emit:
                n_total += 1
                s2_item, s2_cloud, dbg = find_best_s2_for_emit_item(
                    emit_item,
                    s2_index=s2_index,
                    days=days,
                    sun_deg_max=sun_deg_max,
                    max_tod_diff_h=max_tod_diff_h,
                    tile_m=tile_m,
                    top_k_prefilter=top_k_prefilter,
                    meta_cc_max=meta_cc_max,
                    scl_cloud_max=scl_cloud_max,
                )

                rec = {
                    "emit_granuleur": (emit_item.get("umm") or {}).get("GranuleUR"),
                    "emit_dt": (emit_item_datetime_utc(emit_item) or "").isoformat() if emit_item_datetime_utc(emit_item) else None,
                    "emit_cloud_pct": emit_cloud_pct(emit_item),
                    "s2_id": getattr(s2_item, "id", None) if s2_item is not None else None,
                    "s2_cloud_frac": s2_cloud,
                    "debug": dbg,
                }

                if s2_item is not None and s2_cloud is not None:
                    n_kept += 1

                f.write(json.dumps(rec) + "\n")

        done.add(batch_id)
        ckpt_path.write_text(json.dumps({"done_batches": sorted(list(done))}, indent=2))

        batch_summary = {
            "batch_id": batch_id,
            "dt_min": dt_min.isoformat(),
            "dt_max": dt_max.isoformat(),
            "n_emit": len(batch_emit),
            "n_kept": n_kept,
            "pairs_file": str(out_jsonl),
            "n_s2_indexed": len(s2_index.recs),
        }
        (out_dir / f"summary_batch_{batch_id}.json").write_text(json.dumps(batch_summary, indent=2))
        run_summary["batches"].append(batch_summary)

    (out_dir / "run_summary.json").write_text(json.dumps(run_summary, indent=2))
    return run_summary
