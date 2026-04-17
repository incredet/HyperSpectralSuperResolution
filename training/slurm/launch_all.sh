#!/bin/bash
# ── Launch all experiments ───────────────────────────────────────
# Review and uncomment the experiments you want to run.
# Each sbatch returns a job ID — use `squeue -u $USER` to monitor.
#
# Estimated GPU hours per run (500k iters, ~0.5 it/s):
#   RRDBNet6x:  ~280h
#   ESSAformer: ~280h
#   MambaHSISR: ~280h  (may vary)
#
# Total budget: 5000 A100-hours
# ─────────────────────────────────────────────────────────────────

set -euo pipefail
cd "$(dirname "$0")/.."

echo "Submitting experiments..."
echo ""

# ── 1. Architecture comparison (all on CNMF GT) ─────────────────
echo "=== Architecture comparison (CNMF GT) ==="

sbatch slurm/train.sh configs/baseline.yaml zips_cnmf_patched
echo "  → RRDBNet6x + L1 + CNMF"

sbatch slurm/train.sh configs/essaformer.yaml zips_cnmf_patched
echo "  → ESSAformer + L1 + CNMF"

sbatch slurm/train.sh configs/mambahsisr.yaml zips_cnmf_patched
echo "  → MambaHSISR + L1 + CNMF"

# ── 2. GT source comparison (MambaHSISR on each GT) ─────────────
# NOTE: CNMF already covered above. Only SFIM + Regression here.
echo ""
echo "=== GT source comparison (MambaHSISR) ==="

sbatch slurm/train.sh configs/mambahsisr.yaml zips_sfim_patched sfim
echo "  → MambaHSISR + L1 + SFIM"

sbatch slurm/train.sh configs/mambahsisr.yaml zips_regression_patched regression
echo "  → MambaHSISR + L1 + Regression"

# ── 3. Synthetic vs Real (Model B) ──────────────────────────────
echo ""
echo "=== Synthetic baseline (Model B) ==="

sbatch slurm/train.sh configs/mambahsisr.yaml zips_synthetic synthetic
echo "  → MambaHSISR + L1 + Synthetic degraded"

# ── 4. Ablations (RRDBNet6x on CNMF) ────────────────────────────
# Uncomment as needed — these are lower priority.
echo ""
echo "=== Ablations (optional) ==="

# sbatch slurm/train.sh configs/ca.yaml zips_cnmf_patched
# echo "  → RRDBNet6x + L1 + CA + CNMF"

# sbatch slurm/train.sh configs/sam_loss.yaml zips_cnmf_patched
# echo "  → RRDBNet6x + L1 + SAM + CNMF"

# sbatch slurm/train.sh configs/ca_perceptual.yaml zips_cnmf_patched
# echo "  → RRDBNet6x + L1 + CA + Perceptual + CNMF"

echo ""
echo "Done. Monitor with: squeue -u \$USER"
echo "Logs in: logs/"
