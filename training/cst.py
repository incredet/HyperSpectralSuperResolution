import math
import torch
import torch.nn as nn
import torch.nn.functional as F

from timm.models.layers import DropPath
from einops import rearrange


def default_conv(in_channels, out_channels, kernel_size, stride=1,
                 bias=True, dilation=1, groups=1):
    if dilation == 1:
        return nn.Conv2d(in_channels, out_channels, kernel_size,
                         padding=kernel_size // 2, bias=bias, groups=groups)
    elif dilation == 2:
        return nn.Conv2d(in_channels, out_channels, kernel_size,
                         padding=2, bias=bias, dilation=dilation, groups=groups)
    else:
        padding = int((kernel_size - 1) / 2) * dilation
        return nn.Conv2d(in_channels, out_channels, kernel_size,
                         stride, padding=padding, bias=bias,
                         dilation=dilation, groups=groups)


class CALayer(nn.Module):
    def __init__(self, channel, reduction=16):
        super().__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.conv_du = nn.Sequential(
            nn.Conv2d(channel, channel // reduction, 1, bias=True),
            nn.ReLU(inplace=True),
            nn.Conv2d(channel // reduction, channel, 1, bias=True),
            nn.Sigmoid(),
        )

    def forward(self, x):
        return x * self.conv_du(self.avg_pool(x))


class Upsampler(nn.Sequential):
    def __init__(self, conv, scale, n_feats, bn=False, act=False, bias=True):
        m = []
        if scale == 6:
            # 2× then 3× PixelShuffle
            m.append(conv(n_feats, 4 * n_feats, 3, bias=bias))
            m.append(nn.PixelShuffle(2))
            m.append(conv(n_feats, 9 * n_feats, 3, bias=bias))
            m.append(nn.PixelShuffle(3))
        elif (scale & (scale - 1)) == 0:  # 2^n
            for _ in range(int(math.log(scale, 2))):
                m.append(conv(n_feats, 4 * n_feats, 3, bias=bias))
                m.append(nn.PixelShuffle(2))
                if bn:
                    m.append(nn.BatchNorm2d(n_feats))
                if act == 'relu':
                    m.append(nn.ReLU(True))
                elif act == 'prelu':
                    m.append(nn.PReLU(n_feats))
        elif scale == 3:
            m.append(conv(n_feats, 9 * n_feats, 3, bias=bias))
            m.append(nn.PixelShuffle(3))
            if bn:
                m.append(nn.BatchNorm2d(n_feats))
            if act == 'relu':
                m.append(nn.ReLU(True))
            elif act == 'prelu':
                m.append(nn.PReLU(n_feats))
        else:
            raise NotImplementedError(f'Upsampler: scale={scale} not supported')
        super().__init__(*m)


class ResAttentionBlock(nn.Module):
    def __init__(self, conv, n_feats, kernel_size, bias=True,
                 bn=False, act=nn.ReLU(True), res_scale=1):
        super().__init__()
        m = []
        for i in range(2):
            m.append(conv(n_feats, n_feats, kernel_size, bias=bias))
            if bn:
                m.append(nn.BatchNorm2d(n_feats))
            if i == 0:
                m.append(act)
        m.append(CALayer(n_feats, 16))
        self.body = nn.Sequential(*m)
        self.res_scale = res_scale

    def forward(self, x):
        return self.body(x).mul(self.res_scale) + x


def img2windows(img, H_sp, W_sp):
    B, C, H, W = img.shape
    img_reshape = img.view(B, C, H // H_sp, H_sp, W // W_sp, W_sp)
    return img_reshape.permute(0, 2, 4, 3, 5, 1).contiguous().reshape(
        -1, H_sp * W_sp, C)


def windows2img(img_splits_hw, H_sp, W_sp, H, W):
    B = int(img_splits_hw.shape[0] / (H * W / H_sp / W_sp))
    img = img_splits_hw.view(B, H // H_sp, W // W_sp, H_sp, W_sp, -1)
    return img.permute(0, 1, 3, 2, 4, 5).contiguous().view(B, H, W, -1)


class DynamicPosBias(nn.Module):
    def __init__(self, dim, num_heads, residual=False):
        super().__init__()
        self.residual = residual
        self.num_heads = num_heads
        self.pos_dim = dim // 4
        self.pos_proj = nn.Linear(2, self.pos_dim)
        self.pos1 = nn.Sequential(
            nn.LayerNorm(self.pos_dim), nn.ReLU(inplace=True),
            nn.Linear(self.pos_dim, self.pos_dim))
        self.pos2 = nn.Sequential(
            nn.LayerNorm(self.pos_dim), nn.ReLU(inplace=True),
            nn.Linear(self.pos_dim, self.pos_dim))
        self.pos3 = nn.Sequential(
            nn.LayerNorm(self.pos_dim), nn.ReLU(inplace=True),
            nn.Linear(self.pos_dim, self.num_heads))

    def forward(self, biases):
        if self.residual:
            pos = self.pos_proj(biases)
            pos = pos + self.pos1(pos)
            pos = pos + self.pos2(pos)
            return self.pos3(pos)
        return self.pos3(self.pos2(self.pos1(self.pos_proj(biases))))


class Attention_regular(nn.Module):
    def __init__(self, dim, resolution, idx, split_size=[2, 4],
                 dim_out=None, num_heads=6, attn_drop=0.,
                 qk_scale=None, position_bias=True):
        super().__init__()
        self.dim = dim
        self.dim_out = dim_out or dim
        self.resolution = resolution
        self.split_size = split_size
        self.num_heads = num_heads
        self.idx = idx
        self.position_bias = position_bias

        head_dim = dim // num_heads
        self.scale = qk_scale or head_dim ** -0.5

        if idx == -1:
            H_sp, W_sp = resolution, resolution
        elif idx == 0:
            H_sp, W_sp = split_size[0], split_size[1]
        elif idx == 1:
            W_sp, H_sp = split_size[0], split_size[1]
        else:
            raise ValueError(f'Invalid idx={idx}')
        self.H_sp = H_sp
        self.W_sp = W_sp

        if self.position_bias:
            self.pos = DynamicPosBias(self.dim // 4, self.num_heads, residual=False)
            position_bias_h = torch.arange(1 - self.H_sp, self.H_sp)
            position_bias_w = torch.arange(1 - self.W_sp, self.W_sp)
            biases = torch.stack(torch.meshgrid(
                [position_bias_h, position_bias_w], indexing='ij'))
            biases = biases.flatten(1).transpose(0, 1).contiguous().float()
            self.register_buffer('rpe_biases', biases)

            coords_h = torch.arange(self.H_sp)
            coords_w = torch.arange(self.W_sp)
            coords = torch.stack(torch.meshgrid(
                [coords_h, coords_w], indexing='ij'))
            coords_flatten = torch.flatten(coords, 1)
            relative_coords = coords_flatten[:, :, None] - coords_flatten[:, None, :]
            relative_coords = relative_coords.permute(1, 2, 0).contiguous()
            relative_coords[:, :, 0] += self.H_sp - 1
            relative_coords[:, :, 1] += self.W_sp - 1
            relative_coords[:, :, 0] *= 2 * self.W_sp - 1
            relative_position_index = relative_coords.sum(-1)
            self.register_buffer('relative_position_index', relative_position_index)

        self.attn_drop = nn.Dropout(attn_drop)
        self.pool = nn.AdaptiveAvgPool2d((self.H_sp, self.W_sp))
        self.pool2 = nn.AdaptiveMaxPool2d((self.H_sp, self.W_sp))

    def im2win(self, x, H, W):
        B, N, C = x.shape
        x = x.transpose(-2, -1).contiguous().view(B, C, H, W)
        x = img2windows(x, self.H_sp, self.W_sp)
        return x.reshape(-1, self.H_sp * self.W_sp,
                         self.num_heads, C // self.num_heads
                         ).permute(0, 2, 1, 3).contiguous()

    def forward(self, qkv, H, W, mask=None):
        q, k, v = qkv[0], qkv[1], qkv[2]
        B, L, C = q.shape
        assert L == H * W, "flatten img_tokens has wrong size"

        q1 = q.transpose(-2, -1).view(B, C, H, W)
        q1 = self.pool(q1[:, :C // 2, :, :])
        q2 = q.transpose(-2, -1).view(B, C, H, W)
        q2 = self.pool2(q2[:, C // 2:, :, :])
        q = torch.cat([q1, q2], dim=1)
        q = q.reshape(B, self.num_heads, C // self.num_heads,
                       self.H_sp, self.W_sp).flatten(3).transpose(-2, -1)
        q = q.repeat(H * W // (self.H_sp * self.W_sp), 1, 1, 1)
        k = self.im2win(k, H, W)
        v = self.im2win(v, H, W)

        q = q * self.scale
        attn = q @ k.transpose(-2, -1)

        if self.position_bias:
            pos = self.pos(self.rpe_biases)
            rpb = pos[self.relative_position_index.view(-1)].view(
                self.H_sp * self.W_sp, self.H_sp * self.W_sp, -1)
            attn = attn + rpb.permute(2, 0, 1).contiguous().unsqueeze(0)

        N = attn.shape[3]
        if mask is not None:
            nW = mask.shape[0]
            attn = attn.view(B, nW, self.num_heads, N, N) + \
                   mask.unsqueeze(1).unsqueeze(0)
            attn = attn.view(-1, self.num_heads, N, N)

        attn = F.softmax(attn, dim=-1, dtype=attn.dtype)
        attn = self.attn_drop(attn)

        x = (attn @ v).transpose(1, 2).reshape(-1, self.H_sp * self.W_sp, C)
        return windows2img(x, self.H_sp, self.W_sp, H, W)


class CSA(nn.Module):
    def __init__(self, dim, input_resolution, num_heads,
                 split_size=[2, 4], shift_size=[1, 2],
                 qkv_bias=True, qk_scale=None,
                 attn_drop=0., proj_drop=0.):
        super().__init__()
        self.dim = dim
        self.num_heads = num_heads
        self.input_resolution = input_resolution
        self.split_size = split_size
        self.shift_size = shift_size

        self.qkv = nn.Linear(dim, dim * 3, bias=qkv_bias)

        assert 0 <= self.shift_size[0] < self.split_size[0], "shift_size must in 0-split_size0"
        assert 0 <= self.shift_size[1] < self.split_size[1], "shift_size must in 0-split_size1"

        self.proj = nn.Linear(dim, dim)
        self.attn_drop = nn.Dropout(attn_drop)

        self.attns = nn.ModuleList([
            Attention_regular(
                dim, resolution=input_resolution, idx=i,
                split_size=split_size, num_heads=num_heads // 2,
                dim_out=dim // 2, qk_scale=qk_scale,
                attn_drop=attn_drop, position_bias=True)
            for i in range(2)])

        self.get_v = nn.Conv2d(dim, dim, 3, 1, 1, groups=dim)

        if shift_size[0] > 0 or shift_size[1] > 0:
            attn_mask = self.calculate_mask(
                input_resolution[0], input_resolution[1])
            self.register_buffer('attn_mask_0', attn_mask[0])
            self.register_buffer('attn_mask_1', attn_mask[1])
        else:
            self.register_buffer('attn_mask_0', None)
            self.register_buffer('attn_mask_1', None)

    def calculate_mask(self, H, W):
        img_mask_0 = torch.zeros([1, H, W, 1])
        img_mask_1 = torch.zeros([1, H, W, 1])
        h_slices_0 = (slice(0, -self.split_size[0]),
                      slice(-self.split_size[0], -self.shift_size[0]),
                      slice(-self.shift_size[0], None))
        w_slices_0 = (slice(0, -self.split_size[1]),
                      slice(-self.split_size[1], -self.shift_size[1]),
                      slice(-self.shift_size[1], None))
        h_slices_1 = (slice(0, -self.split_size[1]),
                      slice(-self.split_size[1], -self.shift_size[1]),
                      slice(-self.shift_size[1], None))
        w_slices_1 = (slice(0, -self.split_size[0]),
                      slice(-self.split_size[0], -self.shift_size[0]),
                      slice(-self.shift_size[0], None))
        cnt = 0
        for h in h_slices_0:
            for w in w_slices_0:
                img_mask_0[:, h, w, :] = cnt
                cnt += 1
        cnt = 0
        for h in h_slices_1:
            for w in w_slices_1:
                img_mask_1[:, h, w, :] = cnt
                cnt += 1

        img_mask_0 = img_mask_0.view(
            1, H // self.split_size[0], self.split_size[0],
            W // self.split_size[1], self.split_size[1], 1)
        img_mask_0 = img_mask_0.permute(0, 1, 3, 2, 4, 5).contiguous().view(
            -1, self.split_size[0], self.split_size[1], 1)
        mask_windows_0 = img_mask_0.view(-1, self.split_size[0] * self.split_size[1])
        attn_mask_0 = mask_windows_0.unsqueeze(1) - mask_windows_0.unsqueeze(2)
        attn_mask_0 = attn_mask_0.masked_fill(attn_mask_0 != 0, -100.0).masked_fill(
            attn_mask_0 == 0, 0.0)

        img_mask_1 = img_mask_1.view(
            1, H // self.split_size[1], self.split_size[1],
            W // self.split_size[0], self.split_size[0], 1)
        img_mask_1 = img_mask_1.permute(0, 1, 3, 2, 4, 5).contiguous().view(
            -1, self.split_size[0], self.split_size[1], 1)
        mask_windows_1 = img_mask_1.view(-1, self.split_size[1] * self.split_size[0])
        attn_mask_1 = mask_windows_1.unsqueeze(1) - mask_windows_1.unsqueeze(2)
        attn_mask_1 = attn_mask_1.masked_fill(attn_mask_1 != 0, -100.0).masked_fill(
            attn_mask_1 == 0, 0.0)

        return attn_mask_0, attn_mask_1

    def forward(self, x, x_size):
        H, W = x_size
        B, L, C = x.shape
        assert L == H * W, "flatten img_tokens has wrong size"

        qkv = self.qkv(x).reshape(B, -1, 3, C).permute(2, 0, 1, 3)
        v = qkv[2].transpose(-2, -1).contiguous().view(B, C, H, W)

        if self.shift_size[0] > 0 or self.shift_size[1] > 0:
            qkv = qkv.view(3, B, H, W, C)
            qkv_0 = torch.roll(
                qkv[:, :, :, :, :C // 2],
                shifts=(-self.shift_size[0], -self.shift_size[1]), dims=(2, 3))
            qkv_0 = qkv_0.view(3, B, L, C // 2)
            qkv_1 = torch.roll(
                qkv[:, :, :, :, C // 2:],
                shifts=(-self.shift_size[1], -self.shift_size[0]), dims=(2, 3))
            qkv_1 = qkv_1.view(3, B, L, C // 2)

            if self.input_resolution[0] != H or self.input_resolution[1] != W:
                mask_tmp = self.calculate_mask(H, W)
                x1_shift = self.attns[0](qkv_0, H, W, mask=mask_tmp[0].to(x.device))
                x2_shift = self.attns[1](qkv_1, H, W, mask=mask_tmp[1].to(x.device))
            else:
                x1_shift = self.attns[0](qkv_0, H, W, mask=self.attn_mask_0)
                x2_shift = self.attns[1](qkv_1, H, W, mask=self.attn_mask_1)

            x1 = torch.roll(x1_shift,
                            shifts=(self.shift_size[0], self.shift_size[1]),
                            dims=(1, 2))
            x2 = torch.roll(x2_shift,
                            shifts=(self.shift_size[1], self.shift_size[0]),
                            dims=(1, 2))
            attened_x = torch.cat([
                x1.view(B, L, C // 2), x2.view(B, L, C // 2)], dim=2)
        else:
            x1 = self.attns[0](qkv[:, :, :, :C // 2], H, W).view(B, L, C // 2)
            x2 = self.attns[1](qkv[:, :, :, C // 2:], H, W).view(B, L, C // 2)
            attened_x = torch.cat([x1, x2], dim=2)

        lcm = self.get_v(v).permute(0, 2, 3, 1).contiguous().view(B, L, C)
        attened_x = self.proj(attened_x + lcm)
        return x + attened_x


class BSConvU(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size=3, stride=1,
                 padding=1, dilation=1, bias=True, padding_mode='zeros'):
        super().__init__()
        self.pw = nn.Conv2d(in_channels, out_channels, 1, 1, 0, 1, 1, False)
        self.dw = nn.Conv2d(out_channels, out_channels, kernel_size, stride,
                            padding, dilation, out_channels, bias, padding_mode)

    def forward(self, x):
        return self.dw(self.pw(x))


class CSE(nn.Module):
    def __init__(self, dim, num_heads, bias, k=0.5, sr_ratio=2):
        super().__init__()
        self.num_heads = num_heads
        self.k = int(k * dim)
        self.temperature = nn.Parameter(torch.ones(num_heads, 1, 1))
        self.sr_ratio = sr_ratio
        self.v = nn.Conv2d(dim, self.k, 1, bias=bias)
        self.qk = BSConvU(dim, 2 * self.k, kernel_size=sr_ratio,
                          stride=sr_ratio, padding=0)
        self.project_out = nn.Conv2d(self.k, dim, 1, bias=bias)
        self.norm = nn.LayerNorm(dim)

    def forward(self, x):
        b, c, h, w = x.shape
        qk = self.qk(x)
        q, k = qk.chunk(2, dim=1)
        v = self.v(x)
        q = q.reshape(b, self.num_heads, self.k // self.num_heads, -1)
        k = k.reshape(b, self.num_heads, self.k // self.num_heads, -1)
        v = v.reshape(b, self.num_heads, self.k // self.num_heads, -1)

        q = F.normalize(q, dim=-1)
        k = F.normalize(k, dim=-1)
        attn = (q @ k.transpose(-2, -1)) * self.temperature
        attn = attn.softmax(dim=-1)

        out = attn @ v
        out = rearrange(out, 'b head c (h w) -> b (head c) h w',
                        head=self.num_heads, h=h, w=w)
        return self.project_out(out)


class FeedForward(nn.Module):
    def __init__(self, dim, ffn_expansion_factor=2.66, bias=False):
        super().__init__()
        hidden = int(dim * ffn_expansion_factor)
        self.bsconv = BSConvU(dim, hidden * 2, 3, 1, 1, bias=bias)
        self.project_out = nn.Conv2d(hidden, dim, 1, bias=bias)

    def forward(self, x):
        x1, x2 = self.bsconv(x).chunk(2, dim=1)
        return self.project_out(F.gelu(x1) * x2)


class CSMA(nn.Module):
    def __init__(self, dim, input_resolution=[32, 32], num_heads=6,
                 drop_path=0.0, split_size=[7, 7], shift_size=[0, 0],
                 mlp_ratio=4., qkv_bias=True, qk_scale=None,
                 drop=0., attn_drop=0., bias=False):
        super().__init__()
        self.dim = dim
        self.input_resolution = input_resolution
        self.num_heads = num_heads

        self.norm1 = nn.LayerNorm(dim)
        self.norm2 = nn.LayerNorm(dim)
        self.drop_path = DropPath(drop_path) if drop_path > 0. else nn.Identity()
        self.ffn = FeedForward(dim)

        self.attns = CSA(dim, input_resolution=input_resolution,
                         num_heads=num_heads, split_size=split_size,
                         shift_size=shift_size, qkv_bias=qkv_bias,
                         attn_drop=attn_drop, proj_drop=drop)
        self.spectral_attn = CSE(dim, num_heads, bias)

    def forward(self, x):
        B, C, H, W = x.shape
        x = x.flatten(2).transpose(1, 2)
        shortcut = x
        x = self.norm1(x)
        x = self.attns(x, (H, W))

        x = x.view(B, H * W, C).transpose(1, 2).view(B, C, H, W)
        x = self.spectral_attn(x)

        x = x.flatten(2).transpose(1, 2)
        x = shortcut + self.drop_path(x)
        x = x + self.drop_path(
            self.ffn(self.norm2(x).transpose(1, 2).view(B, C, H, W)
                     ).flatten(2).transpose(1, 2))
        return x.transpose(1, 2).view(B, C, H, W)


class Cstage(nn.Module):
    def __init__(self, dim=90, split_size=(2, 16), depth=6, num_head=6,
                 mlp_ratio=2, qkv_bias=True, qk_scale=None,
                 drop_path=0.1, bias=False):
        super().__init__()
        self.layers1 = nn.ModuleList()
        self.layers2 = ResAttentionBlock(default_conv, dim, 1, res_scale=0.1)
        self.depth = depth
        for i in range(depth):
            self.layers1.append(CSMA(
                dim=dim, input_resolution=(32, 32), num_heads=num_head,
                drop_path=drop_path[i], split_size=list(split_size),
                shift_size=([0, 0] if i % 2 == 0
                            else [split_size[0] // 2, split_size[1] // 2]),
                mlp_ratio=mlp_ratio, attn_drop=0,
                qkv_bias=qkv_bias, qk_scale=qk_scale, bias=bias))
        self.conv = nn.Conv2d(dim, dim, 1)

    def forward(self, x):
        x1 = x
        for i in range(self.depth):
            x1 = self.layers1[i](x1)
        return x + self.conv(x1) + self.layers2(x)

class CST(nn.Module):

    def __init__(self, inp_channels=32, out_channels=32, dim=90,
                 depths=(6, 6, 6, 6, 6, 6), num_heads=(6, 6, 6, 6, 6, 6),
                 mlp_ratio=2, qkv_bias=True, qk_scale=None,
                 bias=False, drop_path_rate=0.1, scale=6):
        super().__init__()
        self.scale = scale
        self.conv_first = nn.Conv2d(inp_channels, dim, 3, 1, 1)
        self.num_layers = list(depths)
        self.layers = nn.ModuleList()

        dpr = [x.item() for x in torch.linspace(0, drop_path_rate, sum(depths))]
        for i in range(len(self.num_layers)):
            self.layers.append(Cstage(
                dim=dim, depth=depths[i], num_head=num_heads[i],
                mlp_ratio=mlp_ratio, qkv_bias=qkv_bias, qk_scale=qk_scale,
                drop_path=dpr[sum(depths[:i]):sum(depths[:i + 1])],
                bias=bias))

        self.skip_conv = default_conv(inp_channels, dim, 3)
        self.upsample = Upsampler(default_conv, scale, dim)
        self.tail = default_conv(dim, out_channels, 3)
        self.conv = default_conv(dim, dim, 3)

    def forward(self, inp_img):
        lms = F.interpolate(inp_img, scale_factor=self.scale,
                            mode='bicubic', align_corners=False)
        f1 = self.conv_first(inp_img)
        x = f1
        for i in range(len(self.num_layers)):
            x = self.layers[i](x)
        x = self.conv(x + f1)
        x = self.upsample(x)
        x = x + self.skip_conv(lms)
        return self.tail(x)

if __name__ == '__main__':
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    model = CST(inp_channels=32, out_channels=32, dim=90, scale=6).to(device)
    n = sum(p.numel() for p in model.parameters()) / 1e6
    x = torch.randn(1, 32, 16, 16, device=device)
    y = model(x)
    print(f'CST  dim=90   params={n:.1f}M   {x.shape} -> {y.shape}')

    model2 = CST(inp_channels=32, out_channels=32, dim=180, scale=6).to(device)
    n2 = sum(p.numel() for p in model2.parameters()) / 1e6
    y2 = model2(x)
    print(f'CST  dim=180  params={n2:.1f}M   {x.shape} -> {y2.shape}')
