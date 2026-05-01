import random
import torch
import torch.nn as nn
import torch.nn.functional as F


class SAMLoss(nn.Module):
    # Stabilized SAM: sqrt(2(1-cos)) has bounded gradients at small angles.

    def __init__(self):
        super().__init__()

    def forward(self, pred, target):
        dot = torch.sum(pred * target, dim=1)
        norm_pred = torch.norm(pred, dim=1).clamp(min=1e-8)
        norm_gt = torch.norm(target, dim=1).clamp(min=1e-8)
        cos_sim = (dot / (norm_pred * norm_gt)).clamp(-1, 1)
        return torch.sqrt(2.0 * (1.0 - cos_sim) + 1e-8).mean()


class SSIMLoss(nn.Module):

    def __init__(self, window_size=11):
        super().__init__()
        self.window_size = window_size
        self.C1 = 0.01 ** 2
        self.C2 = 0.03 ** 2

        sigma = 1.5
        coords = torch.arange(window_size, dtype=torch.float32) - window_size // 2
        g = torch.exp(-coords ** 2 / (2 * sigma ** 2))
        g = g / g.sum()
        window = g.unsqueeze(1) * g.unsqueeze(0)
        self.register_buffer('window', window.unsqueeze(0).unsqueeze(0))

    def forward(self, pred, target):
        B, C, H, W = pred.shape
        window = self.window.expand(C, -1, -1, -1)
        pad = self.window_size // 2

        mu_pred = F.conv2d(pred, window, padding=pad, groups=C)
        mu_target = F.conv2d(target, window, padding=pad, groups=C)

        mu_pred_sq = mu_pred ** 2
        mu_target_sq = mu_target ** 2
        mu_cross = mu_pred * mu_target

        sigma_pred_sq = F.conv2d(pred ** 2, window, padding=pad, groups=C) - mu_pred_sq
        sigma_target_sq = F.conv2d(target ** 2, window, padding=pad, groups=C) - mu_target_sq
        sigma_cross = F.conv2d(pred * target, window, padding=pad, groups=C) - mu_cross

        sigma_pred_sq = sigma_pred_sq.clamp(min=0)
        sigma_target_sq = sigma_target_sq.clamp(min=0)

        ssim_map = ((2 * mu_cross + self.C1) * (2 * sigma_cross + self.C2)) / \
                   ((mu_pred_sq + mu_target_sq + self.C1) * (sigma_pred_sq + sigma_target_sq + self.C2))

        return 1 - ssim_map.mean()


class MultiTripletPerceptualLoss(nn.Module):
    # Perceptual loss with random band sampling for full spectral coverage.

    def __init__(self, num_bands=32, triplets_per_step=3):
        super().__init__()
        self.triplets_per_step = triplets_per_step
        self.valid_bands = list(range(num_bands))

        import torchvision
        vgg = torchvision.models.vgg19(weights='DEFAULT').features.eval()
        self.slice1 = vgg[:9]     # relu2_2
        self.slice2 = vgg[9:27]   # relu4_4

        for p in self.parameters():
            p.requires_grad = False

        self.register_buffer('mean', torch.tensor([0.485, 0.456, 0.406]).view(1, 3, 1, 1))
        self.register_buffer('std', torch.tensor([0.229, 0.224, 0.225]).view(1, 3, 1, 1))

    def _to_rgb(self, x, bands):
        rgb = torch.stack([x[:, b] for b in bands], dim=1).clamp(0, 1)
        return (rgb - self.mean) / self.std

    def forward(self, pred, target):
        loss = 0.0
        for _ in range(self.triplets_per_step):
            bands = random.sample(self.valid_bands, 3)
            pred_rgb = self._to_rgb(pred, bands)
            target_rgb = self._to_rgb(target, bands)

            pf1 = self.slice1(pred_rgb)
            pf2 = self.slice2(pf1)
            with torch.no_grad():
                tf1 = self.slice1(target_rgb)
                tf2 = self.slice2(tf1)

            loss += F.l1_loss(pf1, tf1) + F.l1_loss(pf2, tf2)

        return loss / self.triplets_per_step


def build_losses(loss_cfg, device):
    fns = {}

    if 'pixel' in loss_cfg:
        p = loss_cfg['pixel']
        fn = nn.L1Loss() if p['type'] == 'L1' else nn.MSELoss()
        fns['pixel'] = (fn, p['weight'])

    if 'sam' in loss_cfg:
        fns['sam'] = (SAMLoss().to(device), loss_cfg['sam']['weight'])

    if 'ssim' in loss_cfg:
        fns['ssim'] = (SSIMLoss().to(device), loss_cfg['ssim']['weight'])

    if 'perceptual' in loss_cfg:
        pcfg = loss_cfg['perceptual']
        num_bands = pcfg.get('num_bands', 32)
        triplets = pcfg.get('triplets_per_step', 3)
        fns['perceptual'] = (
            MultiTripletPerceptualLoss(num_bands, triplets).to(device).eval(),
            pcfg['weight'],
        )

    return fns
