import math
import torch
import torch.nn as nn
import torch.nn.functional as F


class ESSAttn(nn.Module):
    """Polynomial (degree-2) spectral-spatial attention — no softmax."""

    def __init__(self, dim):
        super().__init__()
        self.lnqkv = nn.Linear(dim, dim * 3)
        self.ln = nn.Linear(dim, dim)

    def forward(self, x):
        b, N, C = x.shape
        q, k, v = self.lnqkv(x).split(C, 2)

        q = q - q.mean(dim=2, keepdim=True)
        k = k - k.mean(dim=2, keepdim=True)

        q2 = torch.pow(q, 2)
        k2 = torch.pow(k, 2)
        q2 = F.normalize(q2 / (q2.sum(dim=2, keepdim=True) + 1e-7), dim=-1)
        k2 = F.normalize(k2 / (k2.sum(dim=2, keepdim=True) + 1e-7), dim=-2)

        t1 = v
        t2 = q2 @ (k2.transpose(-2, -1) @ v) / math.sqrt(N)
        return self.ln(t1 + t2)


class PatchEmbed(nn.Module):

    def forward(self, x):
        return x.flatten(2).transpose(1, 2)


class PatchUnEmbed(nn.Module):

    def __init__(self, embed_dim):
        super().__init__()
        self.embed_dim = embed_dim

    def forward(self, x, x_size):
        return x.transpose(1, 2).view(x.shape[0], self.embed_dim, *x_size)


class _ConvAttnBlock(nn.Module):

    def __init__(self, dim):
        super().__init__()
        self.patch_embed = PatchEmbed()
        self.patch_unembed = PatchUnEmbed(embed_dim=dim)
        self.conv = nn.Sequential(
            nn.Conv2d(dim * 2, dim * 2, 1, 1, 0),
            nn.LeakyReLU(0.2, inplace=True),
            nn.Dropout2d(0.2),
            nn.Conv2d(dim * 2, dim * 2, 3, 1, 1),
            nn.LeakyReLU(0.2, inplace=True),
            nn.Dropout2d(0.2),
            nn.Conv2d(dim * 2, dim, 1, 1, 0),
        )
        self.attn = ESSAttn(dim)
        self.norm = nn.LayerNorm(dim)
        self.drop = nn.Dropout2d(0.2)

    def forward(self, x):
        shortcut = x
        x_size = (x.shape[2], x.shape[3])
        x_embed = self.attn(self.norm(self.patch_embed(x)))
        x = self.drop(self.patch_unembed(x_embed, x_size))
        x = self.conv(torch.cat((x, shortcut), dim=1))
        return x + shortcut


class _Upsample(nn.Sequential):

    def __init__(self, scale, num_feat):
        m = []
        if (scale & (scale - 1)) == 0:
            for _ in range(int(math.log(scale, 2))):
                m.append(nn.Conv2d(num_feat, 4 * num_feat, 3, 1, 1))
                m.append(nn.PixelShuffle(2))
        elif scale == 3:
            m.append(nn.Conv2d(num_feat, 9 * num_feat, 3, 1, 1))
            m.append(nn.PixelShuffle(3))
        elif scale == 6:
            m.append(nn.Conv2d(num_feat, 4 * num_feat, 3, 1, 1))
            m.append(nn.PixelShuffle(2))
            m.append(nn.Conv2d(num_feat, 9 * num_feat, 3, 1, 1))
            m.append(nn.PixelShuffle(3))
        else:
            raise ValueError(f'scale {scale} not supported (use 2^n, 3, or 6)')
        super().__init__(*m)


class _Downsample(nn.Sequential):

    def __init__(self, scale, num_feat):
        m = []
        if (scale & (scale - 1)) == 0:
            for _ in range(int(math.log(scale, 2))):
                m.append(nn.Conv2d(num_feat, num_feat // 4, 3, 1, 1))
                m.append(nn.PixelUnshuffle(2))
        elif scale == 3:
            m.append(nn.Conv2d(num_feat, num_feat // 9, 3, 1, 1))
            m.append(nn.PixelUnshuffle(3))
        elif scale == 6:
            m.append(nn.Conv2d(num_feat, num_feat // 9, 3, 1, 1))
            m.append(nn.PixelUnshuffle(3))
            m.append(nn.Conv2d(num_feat, num_feat // 4, 3, 1, 1))
            m.append(nn.PixelUnshuffle(2))
        else:
            raise ValueError(f'scale {scale} not supported (use 2^n, 3, or 6)')
        super().__init__(*m)


class _BlockUp(nn.Module):

    def __init__(self, dim, upscale):
        super().__init__()
        self.convup = _ConvAttnBlock(dim)
        self.convdown = _ConvAttnBlock(dim)
        self.upsample = _Upsample(scale=upscale, num_feat=dim)
        self.downsample = _Downsample(scale=upscale, num_feat=dim)

    def forward(self, x):
        # 5 cycles: up→refine→down→refine, with residual connections
        xup = self.upsample(x)
        x1 = self.convup(xup)
        xdown = self.downsample(x1) + x
        x2 = self.convdown(xdown)
        xup = self.upsample(x2) + x1
        x3 = self.convup(xup)
        xdown = self.downsample(x3) + x2
        x4 = self.convdown(xdown)
        xup = self.upsample(x4) + x3
        x5 = self.convup(xup)
        return x5


class ESSAformer(nn.Module):

    def __init__(self, num_in_ch, num_out_ch, dim=252, upscale=6):
        super().__init__()
        self.conv_first = nn.Conv2d(num_in_ch, dim, 3, 1, 1)
        self.blockup = _BlockUp(dim=dim, upscale=upscale)
        self.conv_last = nn.Conv2d(dim, num_out_ch, 3, 1, 1)

    def forward(self, x):
        x = self.conv_first(x)
        x = self.blockup(x)
        x = self.conv_last(x)
        return x
