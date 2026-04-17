#!/bin/bash
#SBATCH --job-name=hssr-prep
#SBATCH --account=GRANT_ID
#SBATCH --partition=plgrid-gpu-a100  # Athena is GPU-only (CPU jobs get suspended)
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:1                 # required even for CPU-bound prep
#SBATCH --mem=32G
#SBATCH --time=06:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

# ── Data preparation: convert tif zips → patched npy zips ────────
# Run once per GT source after rclone transfer.
#
# Usage:
#   sbatch slurm/prep_data.sh cnmf
#   sbatch slurm/prep_data.sh sfim
#   sbatch slurm/prep_data.sh regression
#   sbatch slurm/prep_data.sh synthetic   # creates synthetic from cnmf zips
# ─────────────────────────────────────────────────────────────────

set -euo pipefail
mkdir -p logs

GT_SOURCE="${1:?Usage: sbatch slurm/prep_data.sh <cnmf|sfim|regression|synthetic>}"

DATA_ROOT="$SCRATCH/hssr/data"
CONDA_ENV="hssr"

source activate $CONDA_ENV 2>/dev/null || conda activate $CONDA_ENV

cd "$(dirname "$0")/.."

if [ "$GT_SOURCE" = "synthetic" ]; then
    echo "Generating synthetic degraded data from CNMF zips..."
    python make_synthetic.py \
        --src "${DATA_ROOT}/zips_cnmf" \
        --dst "${DATA_ROOT}/zips_synthetic" \
        --scale 6
else
    echo "Converting ${GT_SOURCE} tif zips to patched npy..."
    python convert_to_npy.py \
        --src "${DATA_ROOT}/zips_${GT_SOURCE}" \
        --dst "${DATA_ROOT}/zips_${GT_SOURCE}_patched" \
        --gt-source "$GT_SOURCE"
fi

echo "Done: $(date)"
