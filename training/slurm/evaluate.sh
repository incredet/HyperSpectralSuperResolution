#!/bin/bash
#SBATCH --job-name=hssr-eval
#SBATCH --account=GRANT_ID
#SBATCH --partition=plgrid-gpu-a100
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:1
#SBATCH --mem=32G
#SBATCH --time=02:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

# ── Usage ────────────────────────────────────────────────────────
# sbatch slurm/evaluate.sh configs/baseline.yaml experiments/baseline-L1-cnmf/models/best.pth
# sbatch slurm/evaluate.sh configs/mambahsisr.yaml experiments/mambahsisr-L1-cnmf/models/best.pth
# ─────────────────────────────────────────────────────────────────

set -euo pipefail
mkdir -p logs

CONFIG="${1:?Usage: sbatch slurm/evaluate.sh <config.yaml> <checkpoint.pth>}"
CHECKPOINT="${2:?Usage: sbatch slurm/evaluate.sh <config.yaml> <checkpoint.pth>}"

DATA_ROOT="$SCRATCH/hssr/data"
CONDA_ENV="hssr"

source activate $CONDA_ENV 2>/dev/null || conda activate $CONDA_ENV

cd "$(dirname "$0")/.."

python evaluate.py \
    --config "$CONFIG" \
    --checkpoint "$CHECKPOINT"

echo "Done: $(date)"
