#!/bin/bash
# ── One-time server setup for Athena (PLGrid/Cyfronet) ──────────
# Run this interactively (NOT as SLURM job) after first login.
#
# Prerequisites:
#   - PLGrid grant active
#   - SSH access to Athena
#   - rclone configured with Google Drive (see Step 2 below)
#
# Usage:
#   bash slurm/setup_server.sh
# ─────────────────────────────────────────────────────────────────

set -euo pipefail

echo "============================================"
echo "  HSSR Server Setup — Athena (PLGrid)"
echo "============================================"

# ── Step 0: Check environment ────────────────────────────────────
echo ""
echo "[Step 0] Checking environment..."
echo "  User:    $(whoami)"
echo "  Home:    $HOME"
echo "  Scratch: ${SCRATCH:-NOT SET}"

if [ -z "${SCRATCH:-}" ]; then
    echo "  ERROR: \$SCRATCH is not set. On Athena it should be set automatically."
    echo "  Try: export SCRATCH=/net/tscratch/people/$(whoami)"
    exit 1
fi

# ── Step 1: Directory structure ──────────────────────────────────
echo ""
echo "[Step 1] Creating directory structure..."

DATA_ROOT="$SCRATCH/hssr/data"
EXP_ROOT="$SCRATCH/hssr/experiments"

mkdir -p "$DATA_ROOT"
mkdir -p "$EXP_ROOT"
mkdir -p "$HOME/hssr/logs"     # logs in $HOME for persistence

echo "  Data:        $DATA_ROOT"
echo "  Experiments: $EXP_ROOT"
echo "  Logs:        $HOME/hssr/logs"

# ── Step 2: rclone (for Google Drive transfer) ───────────────────
echo ""
echo "[Step 2] rclone setup..."

if command -v rclone &>/dev/null; then
    echo "  rclone found: $(rclone version | head -1)"
elif module avail rclone 2>&1 | grep -q rclone; then
    echo "  rclone available as module. Loading..."
    module load rclone
else
    echo "  rclone not found. Install to ~/.local/bin:"
    echo "    curl -O https://downloads.rclone.org/current/rclone-current-linux-amd64.zip"
    echo "    unzip rclone-current-linux-amd64.zip"
    echo "    cp rclone-*/rclone ~/.local/bin/"
    echo "    rm -rf rclone-*"
    echo ""
    echo "  Then configure Google Drive:"
    echo "    rclone config"
    echo "    # Name: gdrive"
    echo "    # Type: drive"
    echo "    # Scope: drive.readonly"
    echo "    # For headless auth: use --auth-no-open-browser and paste URL in local browser"
fi

echo ""
echo "  After rclone is configured, transfer data with:"
echo "    DRIVE='gdrive:HyperResData/EMIT_S-2_Matches/2026-04-02'"
echo "    rclone copy \$DRIVE/zips_cnmf   $DATA_ROOT/zips_cnmf   --transfers 8 --progress"
echo "    rclone copy \$DRIVE/zips_sfim   $DATA_ROOT/zips_sfim   --transfers 8 --progress"
echo "    rclone copy \$DRIVE/zips_regression $DATA_ROOT/zips_regression --transfers 8 --progress"

# ── Step 3: Conda environment ────────────────────────────────────
echo ""
echo "[Step 3] Conda environment..."

if command -v conda &>/dev/null; then
    echo "  conda found: $(conda --version)"
elif module avail anaconda 2>&1 | grep -qi anaconda; then
    echo "  Loading anaconda module..."
    module load anaconda3
fi

if conda env list 2>/dev/null | grep -q hssr; then
    echo "  Environment 'hssr' already exists."
else
    echo "  Creating 'hssr' environment..."
    conda create -n hssr python=3.10 -y
    echo "  Installing packages..."
    conda activate hssr

    # PyTorch with CUDA 12.1 (check Athena's CUDA version with nvidia-smi)
    pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121

    # Project dependencies
    pip install numpy rasterio scipy pyyaml wandb matplotlib tqdm

    # MambaHSISR dependencies (compile on the GPU node if needed)
    pip install einops timm
    echo ""
    echo "  NOTE: mamba-ssm and causal-conv1d require CUDA compilation."
    echo "  Install them in an interactive GPU session:"
    echo "    srun --partition=plgrid-gpu-a100 --gres=gpu:1 --time=01:00:00 --pty bash"
    echo "    conda activate hssr"
    echo "    pip install mamba-ssm==1.0.1 causal-conv1d==1.0.0"
fi

# ── Step 4: Clone repo ───────────────────────────────────────────
echo ""
echo "[Step 4] Repository..."
REPO_DIR="$HOME/hssr/HyperSpectralSuperResolution"
if [ -d "$REPO_DIR" ]; then
    echo "  Repo exists at $REPO_DIR"
    echo "  Run 'cd $REPO_DIR && git pull' to update"
else
    echo "  Cloning repo..."
    git clone https://github.com/incredet/HyperSpectralSuperResolution.git "$REPO_DIR"
fi

# ── Step 5: WandB login ──────────────────────────────────────────
echo ""
echo "[Step 5] Weights & Biases..."
echo "  Run 'wandb login' and paste your API key."
echo "  Get it from: https://wandb.ai/authorize"

# ── Summary ──────────────────────────────────────────────────────
echo ""
echo "============================================"
echo "  Setup complete! Next steps:"
echo "============================================"
echo ""
echo "  1. Configure rclone (if not done): rclone config"
echo "  2. Transfer data:"
echo "       DRIVE='gdrive:HyperResData/EMIT_S-2_Matches/2026-04-02'"
echo "       rclone copy \$DRIVE/zips_cnmf $DATA_ROOT/zips_cnmf --transfers 8 -P"
echo "       rclone copy \$DRIVE/zips_sfim $DATA_ROOT/zips_sfim --transfers 8 -P"
echo "       rclone copy \$DRIVE/zips_regression $DATA_ROOT/zips_regression --transfers 8 -P"
echo ""
echo "  3. Convert to patched npy (submit as CPU jobs):"
echo "       cd $REPO_DIR/training"
echo "       sbatch slurm/prep_data.sh cnmf"
echo "       sbatch slurm/prep_data.sh sfim"
echo "       sbatch slurm/prep_data.sh regression"
echo "       sbatch slurm/prep_data.sh synthetic"
echo ""
echo "  4. Train (submit as GPU jobs):"
echo "       sbatch slurm/train.sh configs/baseline.yaml zips_cnmf_patched"
echo "       sbatch slurm/train.sh configs/mambahsisr.yaml zips_cnmf_patched"
echo "       sbatch slurm/train.sh configs/essaformer.yaml zips_cnmf_patched"
echo ""
echo "  5. Install mamba-ssm (needs interactive GPU session first)."
echo ""
