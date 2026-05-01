import math
from functools import partial

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.utils.checkpoint as checkpoint

try:
    from mamba_ssm.ops.selective_scan_interface import selective_scan_fn
except ImportError:
    selective_scan_fn = None

from einops import repeat
from timm.models.layers import DropPath, to_2tuple, trunc_normal_

NEG_INF = -1000000


class _AGCA(nn.Module):

    def __init__(self, in_channel, ratio):
        super().__init__()
        hide = in_channel // ratio
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.conv1 = nn.Conv2d(in_channel, hide, 1, bias=False)
        self.softmax = nn.Softmax(2)
        self.register_buffer('A0', torch.eye(hide))
        self.A2 = nn.Parameter(torch.full((hide, hide), 1e-6))
        self.conv2 = nn.Conv1d(1, 1, 1, bias=False)
        self.conv3 = nn.Conv1d(1, 1, 1, bias=False)
        self.relu = nn.ReLU(inplace=True)
        self.conv4 = nn.Conv2d(hide, in_channel, 1, bias=False)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        y = self.conv1(self.avg_pool(x))
        B, C, _, _ = y.size()
        y = y.flatten(2).transpose(1, 2)
        A1 = self.softmax(self.conv2(y)).expand(B, C, C)
        A = self.A0 * A1 + self.A2
        y = torch.matmul(y, A)
        y = self.relu(self.conv3(y))
        y = y.transpose(1, 2).view(-1, C, 1, 1)
        return x * self.sigmoid(self.conv4(y))


class _CAB(nn.Module):

    def __init__(self, num_feat, compress_ratio=3):
        super().__init__()
        self.cab = nn.Sequential(
            nn.Conv2d(num_feat, num_feat // compress_ratio, 3, 1, 1),
            nn.GELU(),
            nn.Conv2d(num_feat // compress_ratio, num_feat, 3, 1, 1),
            _AGCA(num_feat, ratio=4),
        )

    def forward(self, x):
        return self.cab(x)


class _Mlp(nn.Module):

    def __init__(self, in_features, hidden_features=None, out_features=None, drop=0.):
        super().__init__()
        hidden_features = hidden_features or in_features
        out_features = out_features or in_features
        self.fc1 = nn.Linear(in_features, hidden_features)
        self.act = nn.GELU()
        self.fc2 = nn.Linear(hidden_features, out_features)
        self.drop = nn.Dropout(drop)

    def forward(self, x):
        return self.drop(self.fc2(self.drop(self.act(self.fc1(x)))))


class _DynamicPosBias(nn.Module):

    def __init__(self, dim, num_heads):
        super().__init__()
        self.num_heads = num_heads
        pd = dim // 4
        self.pos_proj = nn.Linear(2, pd)
        self.pos1 = nn.Sequential(nn.LayerNorm(pd), nn.ReLU(True), nn.Linear(pd, pd))
        self.pos2 = nn.Sequential(nn.LayerNorm(pd), nn.ReLU(True), nn.Linear(pd, pd))
        self.pos3 = nn.Sequential(nn.LayerNorm(pd), nn.ReLU(True), nn.Linear(pd, num_heads))

    def forward(self, biases):
        return self.pos3(self.pos2(self.pos1(self.pos_proj(biases))))


class _MultiScaleFeatureExtraction(nn.Module):

    def __init__(self, dim):
        super().__init__()
        self.conv1 = nn.Conv2d(dim, dim, 1, padding=0)
        self.conv3 = nn.Conv2d(dim, dim, 3, padding=1)
        self.conv5 = nn.Conv2d(dim, dim, 5, padding=2)
        self.relu = nn.LeakyReLU(0.2, inplace=True)
        self.bn1 = nn.BatchNorm2d(dim)
        self.bn3 = nn.BatchNorm2d(dim)
        self.bn5 = nn.BatchNorm2d(dim)

    def forward(self, x):
        return (self.bn1(self.relu(self.conv1(x)))
                + self.bn3(self.relu(self.conv3(x)))
                + self.bn5(self.relu(self.conv5(x))))


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


class _PatchEmbed(nn.Module):

    def __init__(self, img_size=16, patch_size=1, in_chans=0, embed_dim=96,
                 norm_layer=None):
        super().__init__()
        img_size = to_2tuple(img_size)
        patch_size = to_2tuple(patch_size)
        self.patches_resolution = [img_size[0] // patch_size[0],
                                   img_size[1] // patch_size[1]]
        self.num_patches = self.patches_resolution[0] * self.patches_resolution[1]
        self.embed_dim = embed_dim
        self.norm = norm_layer(embed_dim) if norm_layer else None

    def forward(self, x):
        x = x.flatten(2).transpose(1, 2)
        if self.norm:
            x = self.norm(x)
        return x


class _PatchUnEmbed(nn.Module):

    def __init__(self, img_size=16, patch_size=1, in_chans=0, embed_dim=96,
                 norm_layer=None):
        super().__init__()
        self.embed_dim = embed_dim

    def forward(self, x, x_size):
        return x.transpose(1, 2).view(x.shape[0], self.embed_dim, *x_size)


def _ss2d_init_dt(dt_rank, d_inner, dt_scale=1.0, dt_init="random",
                  dt_min=0.001, dt_max=0.1, dt_init_floor=1e-4, **kw):
    dt_proj = nn.Linear(dt_rank, d_inner, bias=True, **kw)
    std = dt_rank ** -0.5 * dt_scale
    if dt_init == "constant":
        nn.init.constant_(dt_proj.weight, std)
    else:
        nn.init.uniform_(dt_proj.weight, -std, std)
    dt = torch.exp(
        torch.rand(d_inner, **kw) * (math.log(dt_max) - math.log(dt_min))
        + math.log(dt_min)
    ).clamp(min=dt_init_floor)
    with torch.no_grad():
        dt_proj.bias.copy_(dt + torch.log(-torch.expm1(-dt)))
    dt_proj.bias._no_reinit = True
    return dt_proj


def _ss2d_a_log_init(d_state, d_inner, copies=1, merge=True):
    A = repeat(torch.arange(1, d_state + 1, dtype=torch.float32),
               "n -> d n", d=d_inner).contiguous()
    A_log = torch.log(A)
    if copies > 1:
        A_log = repeat(A_log, "d n -> r d n", r=copies)
        if merge:
            A_log = A_log.flatten(0, 1)
    A_log = nn.Parameter(A_log)
    A_log._no_weight_decay = True
    return A_log


def _ss2d_d_init(d_inner, copies=1, merge=True):
    D = torch.ones(d_inner)
    if copies > 1:
        D = repeat(D, "n1 -> r n1", r=copies)
        if merge:
            D = D.flatten(0, 1)
    D = nn.Parameter(D)
    D._no_weight_decay = True
    return D


class _SS2D_spatial(nn.Module):

    def __init__(self, d_model, d_state=16, d_conv=3, expand=2.,
                 dt_rank="auto", dt_min=0.001, dt_max=0.1, dt_init="random",
                 dt_scale=1.0, dt_init_floor=1e-4, dropout=0., conv_bias=True,
                 bias=False, **kw):
        super().__init__()
        self.d_model = d_model
        self.d_state = d_state
        self.expand = expand
        self.d_inner = int(expand * d_model)
        self.dt_rank = math.ceil(d_model / 16) if dt_rank == "auto" else dt_rank

        self.in_proj = nn.Linear(d_model, self.d_inner * 2, bias=bias)
        self.conv2d = nn.Conv2d(self.d_inner, self.d_inner, groups=self.d_inner,
                                bias=conv_bias, kernel_size=d_conv,
                                padding=(d_conv - 1) // 2)
        self.act = nn.SiLU()

        K = 4
        self.x_proj_weight = nn.Parameter(torch.stack([
            nn.Linear(self.d_inner, self.dt_rank + d_state * 2, bias=False).weight
            for _ in range(K)], dim=0))
        dt_projs = [_ss2d_init_dt(self.dt_rank, self.d_inner, dt_scale, dt_init,
                                  dt_min, dt_max, dt_init_floor) for _ in range(K)]
        self.dt_projs_weight = nn.Parameter(torch.stack([t.weight for t in dt_projs]))
        self.dt_projs_bias = nn.Parameter(torch.stack([t.bias for t in dt_projs]))
        self.A_logs = _ss2d_a_log_init(d_state, self.d_inner, copies=K, merge=True)
        self.Ds = _ss2d_d_init(self.d_inner, copies=K, merge=True)

        self.out_norm = nn.LayerNorm(self.d_inner)
        self.out_proj = nn.Linear(self.d_inner, d_model, bias=bias)
        self.dropout = nn.Dropout(dropout) if dropout > 0. else None

    def forward_core(self, x):
        assert selective_scan_fn is not None, \
            "mamba-ssm not installed. Run: pip install mamba-ssm==1.0.1 causal-conv1d==1.0.0"
        B, C, H, W = x.shape
        L = H * W
        K = 4
        x_hwwh = torch.stack([
            x.view(B, -1, L),
            x.transpose(2, 3).contiguous().view(B, -1, L)
        ], dim=1).view(B, 2, -1, L)
        xs = torch.cat([x_hwwh, torch.flip(x_hwwh, dims=[-1])], dim=1)

        x_dbl = torch.einsum("b k d l, k c d -> b k c l",
                              xs.view(B, K, -1, L), self.x_proj_weight)
        dts, Bs, Cs = torch.split(x_dbl,
                                   [self.dt_rank, self.d_state, self.d_state], dim=2)
        dts = torch.einsum("b k r l, k d r -> b k d l",
                            dts.view(B, K, -1, L), self.dt_projs_weight)

        xs = xs.float().view(B, -1, L)
        dts = dts.contiguous().float().view(B, -1, L)
        Bs = Bs.float().view(B, K, -1, L)
        Cs = Cs.float().view(B, K, -1, L)

        out_y = selective_scan_fn(
            xs, dts,
            -torch.exp(self.A_logs.float()).view(-1, self.d_state),
            Bs, Cs,
            self.Ds.float().view(-1),
            z=None,
            delta_bias=self.dt_projs_bias.float().view(-1),
            delta_softplus=True, return_last_state=False,
        ).view(B, K, -1, L)

        inv_y = torch.flip(out_y[:, 2:4], dims=[-1]).view(B, 2, -1, L)
        wh_y = out_y[:, 1].view(B, -1, W, H).transpose(2, 3).contiguous().view(B, -1, L)
        invwh_y = inv_y[:, 1].view(B, -1, W, H).transpose(2, 3).contiguous().view(B, -1, L)
        return out_y[:, 0], inv_y[:, 0], wh_y, invwh_y

    def forward(self, x, **kw):
        B, H, W, C = x.shape
        xz = self.in_proj(x)
        x_, z = xz.chunk(2, dim=-1)
        x_ = self.act(self.conv2d(x_.permute(0, 3, 1, 2).contiguous()))
        y1, y2, y3, y4 = self.forward_core(x_)
        y = (y1 + y2 + y3 + y4).transpose(1, 2).contiguous().view(B, H, W, -1)
        y = self.out_norm(y) * F.silu(z)
        out = self.out_proj(y)
        return self.dropout(out) if self.dropout else out


class _SS2D_spectral(nn.Module):

    def __init__(self, d_model, spatial_dim=256, d_state=16, d_conv=3, expand=2.,
                 dt_rank="auto", dt_min=0.001, dt_max=0.1, dt_init="random",
                 dt_scale=1.0, dt_init_floor=1e-4, dropout=0., conv_bias=True,
                 bias=False, **kw):
        super().__init__()
        self.d_model = d_model
        self.d_state = d_state
        self.expand = expand
        self.d_inner = int(expand * d_model)
        self.dt_rank = math.ceil(d_model / 16) if dt_rank == "auto" else dt_rank

        self.in_proj = nn.Linear(d_model, self.d_inner * 2, bias=bias)
        self.conv2d = nn.Conv2d(self.d_inner, self.d_inner, groups=self.d_inner,
                                bias=conv_bias, kernel_size=d_conv,
                                padding=(d_conv - 1) // 2)
        self.act = nn.SiLU()

        K = 4
        # NOTE: projections are over spatial_dim (not d_inner) for spectral scan
        self.x_proj_weight = nn.Parameter(torch.stack([
            nn.Linear(spatial_dim, self.dt_rank + d_state * 2, bias=False).weight
            for _ in range(K)], dim=0))
        dt_projs = [_ss2d_init_dt(self.dt_rank, spatial_dim, dt_scale, dt_init,
                                  dt_min, dt_max, dt_init_floor) for _ in range(K)]
        self.dt_projs_weight = nn.Parameter(torch.stack([t.weight for t in dt_projs]))
        self.dt_projs_bias = nn.Parameter(torch.stack([t.bias for t in dt_projs]))
        self.A_logs = _ss2d_a_log_init(d_state, spatial_dim, copies=K, merge=True)
        self.Ds = _ss2d_d_init(spatial_dim, copies=K, merge=True)

        self.out_norm = nn.LayerNorm(self.d_inner)
        self.out_proj = nn.Linear(self.d_inner, d_model, bias=bias)
        self.dropout = nn.Dropout(dropout) if dropout > 0. else None

    def forward_core(self, x):
        assert selective_scan_fn is not None, \
            "mamba-ssm not installed. Run: pip install mamba-ssm==1.0.1 causal-conv1d==1.0.0"
        B, C, H, W = x.shape
        L = H * W
        K = 4
        x_hwwh = torch.stack([
            x.view(B, -1, L),
            x.transpose(2, 3).contiguous().view(B, -1, L)
        ], dim=1).view(B, 2, -1, L)
        xs = torch.cat([x_hwwh, torch.flip(x_hwwh, dims=[-1])], dim=1)

        x_dbl = torch.einsum("b k d l, k c l -> b k c d",
                              xs.view(B, K, C, -1), self.x_proj_weight)
        dts, Bs, Cs = torch.split(x_dbl,
                                   [self.dt_rank, self.d_state, self.d_state], dim=2)
        dts = torch.einsum("b k r l, k d r -> b k d l",
                            dts.view(B, K, self.dt_rank, -1), self.dt_projs_weight)

        xs = xs.float().view(B, -1, C)
        dts = dts.contiguous().float().view(B, -1, C)
        Bs = Bs.float().view(B, K, -1, C)
        Cs = Cs.float().view(B, K, -1, C)

        out_y = selective_scan_fn(
            xs, dts,
            -torch.exp(self.A_logs.float()).view(-1, self.d_state),
            Bs, Cs,
            self.Ds.float().view(-1),
            z=None,
            delta_bias=self.dt_projs_bias.float().view(-1),
            delta_softplus=True, return_last_state=False,
        ).view(B, K, -1, L)

        inv_y = torch.flip(out_y[:, 1], dims=[-1]).view(B, 1, -1, L)
        wh_y = out_y[:, 0].view(B, -1, W, H).transpose(2, 3).contiguous().view(B, -1, L)
        invwh_y = inv_y[:, 0].view(B, -1, W, H).transpose(2, 3).contiguous().view(B, -1, L)
        return out_y[:, 0], inv_y[:, 0], wh_y, invwh_y

    def forward(self, x, **kw):
        B, H, W, C = x.shape
        xz = self.in_proj(x)
        x_, z = xz.chunk(2, dim=-1)
        x_ = self.act(self.conv2d(x_.permute(0, 3, 1, 2).contiguous()))
        y1, y2, y3, y4 = self.forward_core(x_)
        y = (y1 + y2 + y3 + y4).transpose(1, 2).contiguous().view(B, H, W, -1)
        y = self.out_norm(y) * F.silu(z)
        out = self.out_proj(y)
        return self.dropout(out) if self.dropout else out


class _VSSBlock_spa(nn.Module):

    def __init__(self, hidden_dim, drop_path=0.,
                 norm_layer=partial(nn.LayerNorm, eps=1e-6),
                 attn_drop_rate=0, d_state=16, expand=2., **kw):
        super().__init__()
        self.ln_1 = norm_layer(hidden_dim)
        self.self_attention = _SS2D_spatial(
            d_model=hidden_dim, d_state=d_state, expand=expand,
            dropout=attn_drop_rate)
        self.drop_path = DropPath(drop_path)
        self.skip_scale = nn.Parameter(torch.ones(hidden_dim))
        self.conv_blk = _CAB(hidden_dim)
        self.ln_2 = nn.LayerNorm(hidden_dim)
        self.skip_scale2 = nn.Parameter(torch.ones(hidden_dim))
        self.msfe = _MultiScaleFeatureExtraction(hidden_dim)

    def forward(self, x, x_size):
        B, L, C = x.shape
        x = x.view(B, *x_size, C)
        x = x * self.skip_scale + self.drop_path(self.self_attention(self.ln_1(x)))
        x = self.msfe(x.permute(0, 3, 1, 2)).permute(0, 2, 3, 1)
        x = (x * self.skip_scale2
             + self.conv_blk(self.ln_2(x).permute(0, 3, 1, 2)).permute(0, 2, 3, 1))
        return x.view(B, -1, C)


class _VSSBlock_spe(nn.Module):

    def __init__(self, hidden_dim, spatial_dim=256, drop_path=0.,
                 norm_layer=partial(nn.LayerNorm, eps=1e-6),
                 attn_drop_rate=0, d_state=16, expand=2., **kw):
        super().__init__()
        self.ln_1 = norm_layer(hidden_dim)
        self.self_attention = _SS2D_spectral(
            d_model=hidden_dim, spatial_dim=spatial_dim, d_state=d_state,
            expand=expand, dropout=attn_drop_rate)
        self.drop_path = DropPath(drop_path)
        self.skip_scale = nn.Parameter(torch.ones(hidden_dim))
        self.conv_blk = _CAB(hidden_dim)
        self.ln_2 = nn.LayerNorm(hidden_dim)
        self.skip_scale2 = nn.Parameter(torch.ones(hidden_dim))
        self.msfe = _MultiScaleFeatureExtraction(hidden_dim)

    def forward(self, x, x_size):
        B, L, C = x.shape
        x = x.view(B, *x_size, C)
        x = x * self.skip_scale + self.drop_path(self.self_attention(self.ln_1(x)))
        x = self.msfe(x.permute(0, 3, 1, 2)).permute(0, 2, 3, 1)
        x = (x * self.skip_scale2
             + self.conv_blk(self.ln_2(x).permute(0, 3, 1, 2)).permute(0, 2, 3, 1))
        return x.view(B, -1, C)


class _BasicLayer(nn.Module):

    def __init__(self, dim, input_resolution, depth, d_state=16, mlp_ratio=2.,
                 drop_path=0., norm_layer=nn.LayerNorm, use_checkpoint=False,
                 **kw):
        super().__init__()
        self.use_checkpoint = use_checkpoint
        self.blocks = nn.ModuleList([
            _VSSBlock_spa(
                hidden_dim=dim,
                drop_path=drop_path[i] if isinstance(drop_path, list) else drop_path,
                d_state=d_state, expand=mlp_ratio)
            for i in range(depth)
        ])

    def forward(self, x, x_size):
        for blk in self.blocks:
            x = checkpoint.checkpoint(blk, x, x_size) if self.use_checkpoint else blk(x, x_size)
        return x


class _ResidualGroup(nn.Module):

    def __init__(self, dim, input_resolution, depth, d_state=16, mlp_ratio=2.,
                 drop_path=0., norm_layer=nn.LayerNorm, use_checkpoint=False,
                 img_size=16, patch_size=1, resi_connection='1conv', **kw):
        super().__init__()
        self.residual_group = _BasicLayer(
            dim=dim, input_resolution=input_resolution, depth=depth,
            d_state=d_state, mlp_ratio=mlp_ratio, drop_path=drop_path,
            norm_layer=norm_layer, use_checkpoint=use_checkpoint)
        if resi_connection == '1conv':
            self.conv = nn.Conv2d(dim, dim, 3, 1, 1)
        else:
            self.conv = nn.Sequential(
                nn.Conv2d(dim, dim // 4, 3, 1, 1), nn.LeakyReLU(0.2, True),
                nn.Conv2d(dim // 4, dim // 4, 1, 1, 0), nn.LeakyReLU(0.2, True),
                nn.Conv2d(dim // 4, dim, 3, 1, 1))
        self.patch_embed = _PatchEmbed(img_size, patch_size, in_chans=0,
                                        embed_dim=dim, norm_layer=None)
        self.patch_unembed = _PatchUnEmbed(img_size, patch_size, in_chans=0,
                                            embed_dim=dim)

    def forward(self, x, x_size):
        return self.patch_embed(self.conv(
            self.patch_unembed(self.residual_group(x, x_size), x_size))) + x


class MambaHSISR(nn.Module):

    def __init__(self, num_in_ch, num_out_ch, img_size=16, embed_dim=180,
                 depths=(5, 5, 5), d_state=16, mlp_ratio=2., drop_rate=0.,
                 drop_path_rate=0.1, norm_layer=nn.LayerNorm, patch_size=1,
                 upscale=6, resi_connection='1conv', upsampler='pixelshuffle',
                 use_checkpoint=False):
        super().__init__()
        num_feat = 128
        self.img_range = 1.
        self.upscale = upscale
        self.upsampler = upsampler

        # tile overlap params for large-image inference
        if upscale == 6:
            self.n_subs = 16
            self.n_ovls = 8
        elif upscale == 4:
            self.n_subs = 16
            self.n_ovls = 8
        elif upscale == 2:
            self.n_subs = 32
            self.n_ovls = 8
        else:
            self.n_subs = 16
            self.n_ovls = 8

        self.mean = torch.zeros(1, 1, 1, 1)

        # 1. shallow feature extraction
        self.conv_first = nn.Conv2d(num_in_ch, embed_dim, 3, 1, 1)

        # 2. deep feature extraction
        self.num_layers = len(depths)
        self.embed_dim = embed_dim
        img_size_t = to_2tuple(img_size)
        patch_size_t = to_2tuple(patch_size)
        patches_resolution = [img_size_t[0] // patch_size_t[0],
                              img_size_t[1] // patch_size_t[1]]

        self.patch_embed = _PatchEmbed(img_size, patch_size, in_chans=embed_dim,
                                        embed_dim=embed_dim, norm_layer=norm_layer)
        self.patch_unembed = _PatchUnEmbed(img_size, patch_size, in_chans=embed_dim,
                                            embed_dim=embed_dim)
        self.pos_drop = nn.Dropout(p=drop_rate)

        dpr = [x.item() for x in torch.linspace(0, drop_path_rate, sum(depths))]
        self.layers = nn.ModuleList()
        for i in range(self.num_layers):
            self.layers.append(_ResidualGroup(
                dim=embed_dim,
                input_resolution=tuple(patches_resolution),
                depth=depths[i], d_state=d_state, mlp_ratio=mlp_ratio,
                drop_path=dpr[sum(depths[:i]):sum(depths[:i + 1])],
                norm_layer=norm_layer, use_checkpoint=use_checkpoint,
                img_size=img_size, patch_size=patch_size,
                resi_connection=resi_connection))
        self.norm = norm_layer(embed_dim)

        if resi_connection == '1conv':
            self.conv_after_body = nn.Conv2d(embed_dim, embed_dim, 3, 1, 1)
        else:
            self.conv_after_body = nn.Sequential(
                nn.Conv2d(embed_dim, embed_dim // 4, 3, 1, 1), nn.LeakyReLU(0.2, True),
                nn.Conv2d(embed_dim // 4, embed_dim // 4, 1, 1, 0), nn.LeakyReLU(0.2, True),
                nn.Conv2d(embed_dim // 4, embed_dim, 3, 1, 1))

        # 3. upsample + reconstruction
        self.conv_before_upsample = nn.Sequential(
            nn.Conv2d(embed_dim, num_feat, 3, 1, 1), nn.LeakyReLU(inplace=True))
        self.upsample = _Upsample(upscale, num_feat)
        self.conv_last = nn.Conv2d(num_feat, num_out_ch, 3, 1, 1)

        # spectral Mamba block (applied once after all spatial layers)
        spatial_dim = patches_resolution[0] * patches_resolution[1]
        self.VSSBlock_spe = _VSSBlock_spe(
            hidden_dim=embed_dim, spatial_dim=spatial_dim, drop_path=1,
            norm_layer=nn.LayerNorm, d_state=d_state, expand=mlp_ratio)

        self.apply(self._init_weights)

    def _init_weights(self, m):
        if isinstance(m, nn.Linear):
            trunc_normal_(m.weight, std=.02)
            if m.bias is not None:
                nn.init.constant_(m.bias, 0)
        elif isinstance(m, nn.LayerNorm):
            nn.init.constant_(m.bias, 0)
            nn.init.constant_(m.weight, 1.0)

    def forward_features(self, x):
        x_size = (x.shape[2], x.shape[3])
        x = self.pos_drop(self.patch_embed(x))
        for layer in self.layers:
            x = layer(x, x_size)
        x = self.norm(self.VSSBlock_spe(x, x_size) + x)
        return self.patch_unembed(x, x_size)

    def forward_group(self, x):
        self.mean = self.mean.type_as(x)
        x = (x - self.mean) * self.img_range
        x = self.conv_first(x)
        x = self.conv_after_body(self.forward_features(x)) + x
        x = self.conv_last(self.upsample(self.conv_before_upsample(x)))
        return x / self.img_range + self.mean

    def forward(self, x):
        b, c, h, w = x.shape
        if w <= self.n_subs:
            return self.forward_group(x)
        # overlapping tile inference for large inputs
        out_h, out_w = h * self.upscale, w * self.upscale
        y = torch.zeros(b, c, out_h, out_w, device=x.device)
        cnt = torch.zeros(out_h, out_w, device=x.device)
        step = self.n_subs - self.n_ovls
        for i in range(0, h - self.n_subs + 1, step):
            for j in range(0, w - self.n_subs + 1, step):
                xi = x[:, :, i:i + self.n_subs, j:j + self.n_subs]
                yi = self.forward_group(xi)
                oh, ow = i * self.upscale, j * self.upscale
                y[:, :, oh:oh + yi.shape[2], ow:ow + yi.shape[3]] += yi
                cnt[oh:oh + yi.shape[2], ow:ow + yi.shape[3]] += 1
        cnt[cnt == 0] = 1
        return y / cnt[None, None, :, :]
