from datetime import timedelta
from typing import Optional, List
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
