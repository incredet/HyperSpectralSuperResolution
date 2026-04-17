#!/bin/bash
#SBATCH --job-name=hssr
#SBATCH --account=GRANT_ID          # ← your PLGrid grant ID
#SBATCH --partition=plgrid-gpu-a100
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --mem=128G
#SBATCH --time=48:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

# ── Usage ────────────────────────────────────────────────────────
# sbatch slurm/train.sh configs/baseline.yaml zips_cnmf_patched
# sbatch slurm/train.sh configs/mambahsisr.yaml zips_cnmf_patched
# sbatch slurm/train.sh configs/mambahsisr.yaml zips_synthetic --resume experiments/mambahsisr-L1-synthetic/models/iter_50000.pth
#
# $1 = config file (required)
# $2 = zip directory name under $DATA_ROOT (required)
# $3 = gt_source override (optional, e.g. "sfim", "synthetic")
# $4 = --resume checkpoint path (optional)
# ─────────────────────────────────────────────────────────────────

set -euo pipefail
mkdir -p logs

CONFIG="${1:?Usage: sbatch slurm/train.sh <config.yaml> <zip_dir_name> [--resume path]}"
ZIP_NAME="${2:?Usage: sbatch slurm/train.sh <config.yaml> <zip_dir_name>}"

# ── Paths (edit these once after server setup) ───────────────────
DATA_ROOT="$SCRATCH/hssr/data"
OUT_ROOT="$SCRATCH/hssr/experiments"
CONDA_ENV="hssr"
# ─────────────────────────────────────────────────────────────────

source activate $CONDA_ENV 2>/dev/null || conda activate $CONDA_ENV

ZIP_DIR="${DATA_ROOT}/${ZIP_NAME}"

echo "=========================================="
echo "Job:       $SLURM_JOB_ID"
echo "Node:      $(hostname)"
echo "GPU:       $(nvidia-smi --query-gpu=name --format=csv,noheader)"
echo "Config:    $CONFIG"
echo "Data:      $ZIP_DIR"
echo "Output:    $OUT_ROOT"
echo "=========================================="

GT_SOURCE_FLAG=""
if [ -n "${3:-}" ] && [ "${3}" != "--resume" ]; then
    GT_SOURCE_FLAG="--gt-source ${3}"
    echo "GT source: ${3}"
fi

RESUME_FLAG=""
if [ "${3:-}" = "--resume" ] && [ -n "${4:-}" ]; then
    RESUME_FLAG="--resume ${4}"
    echo "Resuming:  ${4}"
elif [ "${4:-}" = "--resume" ] && [ -n "${5:-}" ]; then
    RESUME_FLAG="--resume ${5}"
    echo "Resuming:  ${5}"
fi

cd "$(dirname "$0")/.."

python train.py \
    --config "$CONFIG" \
    --zip-dir "$ZIP_DIR" \
    --out-dir "$OUT_ROOT" \
    $GT_SOURCE_FLAG \
    $RESUME_FLAG

# Copy checkpoints to persistent storage ($SCRATCH auto-deletes after 30 days)
PERSIST="$HOME/hssr/checkpoints/$(basename $CONFIG .yaml)"
mkdir -p "$PERSIST"
cp -v "$OUT_ROOT"/*/models/best.pth "$PERSIST/" 2>/dev/null || true
cp -v "$OUT_ROOT"/*/models/iter_*.pth "$PERSIST/" 2>/dev/null || true
echo "Checkpoints backed up to: $PERSIST"

echo "Done: $(date)"
