import torch
import torch.nn as nn
import torch.nn.functional as F


class ChannelAttention(nn.Module):

    def __init__(self, num_feat, reduction=16):
        super().__init__()
        self.fc = nn.Sequential(
            nn.AdaptiveAvgPool2d(1),
            nn.Flatten(),
            nn.Linear(num_feat, num_feat // reduction),
            nn.ReLU(inplace=True),
            nn.Linear(num_feat // reduction, num_feat),
            nn.Sigmoid(),
        )

    def forward(self, x):
        return x * self.fc(x).unsqueeze(-1).unsqueeze(-1)


class ResidualDenseBlock(nn.Module):

    def __init__(self, num_feat=64, num_grow_ch=32):
        super().__init__()
        self.conv1 = nn.Conv2d(num_feat, num_grow_ch, 3, 1, 1)
        self.conv2 = nn.Conv2d(num_feat + num_grow_ch, num_grow_ch, 3, 1, 1)
        self.conv3 = nn.Conv2d(num_feat + 2 * num_grow_ch, num_grow_ch, 3, 1, 1)
        self.conv4 = nn.Conv2d(num_feat + 3 * num_grow_ch, num_grow_ch, 3, 1, 1)
        self.conv5 = nn.Conv2d(num_feat + 4 * num_grow_ch, num_feat, 3, 1, 1)
        self.lrelu = nn.LeakyReLU(0.2, inplace=True)

        for conv in [self.conv1, self.conv2, self.conv3, self.conv4, self.conv5]:
            nn.init.kaiming_normal_(conv.weight, a=0, mode='fan_in', nonlinearity='leaky_relu')
            conv.weight.data *= 0.1
            nn.init.zeros_(conv.bias)

    def forward(self, x):
        x1 = self.lrelu(self.conv1(x))
        x2 = self.lrelu(self.conv2(torch.cat((x, x1), 1)))
        x3 = self.lrelu(self.conv3(torch.cat((x, x1, x2), 1)))
        x4 = self.lrelu(self.conv4(torch.cat((x, x1, x2, x3), 1)))
        x5 = self.conv5(torch.cat((x, x1, x2, x3, x4), 1))
        return x5 * 0.2 + x


class RRDB(nn.Module):

    def __init__(self, num_feat, num_grow_ch=32, channel_attention=False):
        super().__init__()
        self.rdb1 = ResidualDenseBlock(num_feat, num_grow_ch)
        self.rdb2 = ResidualDenseBlock(num_feat, num_grow_ch)
        self.rdb3 = ResidualDenseBlock(num_feat, num_grow_ch)
        self.ca = ChannelAttention(num_feat) if channel_attention else None

    def forward(self, x):
        out = self.rdb1(x)
        out = self.rdb2(out)
        out = self.rdb3(out)
        if self.ca:
            out = self.ca(out)
        return out * 0.2 + x


class RRDBNet6x(nn.Module):

    def __init__(self, num_in_ch, num_out_ch, num_feat=64, num_block=23,
                 num_grow_ch=32, channel_attention=False):
        super().__init__()
        self.conv_first = nn.Conv2d(num_in_ch, num_feat, 3, 1, 1)
        self.body = nn.ModuleList([
            RRDB(num_feat, num_grow_ch, channel_attention) for _ in range(num_block)
        ])
        self.conv_body = nn.Conv2d(num_feat, num_feat, 3, 1, 1)
        self.conv_up1 = nn.Conv2d(num_feat, num_feat, 3, 1, 1)
        self.conv_up2 = nn.Conv2d(num_feat, num_feat, 3, 1, 1)
        self.conv_hr = nn.Conv2d(num_feat, num_feat, 3, 1, 1)
        self.conv_last = nn.Conv2d(num_feat, num_out_ch, 3, 1, 1)
        self.lrelu = nn.LeakyReLU(0.2, inplace=True)

    def forward(self, x):
        feat = self.conv_first(x)
        body_feat = feat
        for block in self.body:
            body_feat = block(body_feat)
        feat = feat + self.conv_body(body_feat)

        feat = self.lrelu(self.conv_up1(F.interpolate(feat, scale_factor=2, mode='nearest')))
        feat = self.lrelu(self.conv_up2(F.interpolate(feat, scale_factor=3, mode='nearest')))
        out = self.conv_last(self.lrelu(self.conv_hr(feat)))
        return out


def build_model(cfg, device='cpu'):
    model_type = cfg.get('model_type', 'rrdbnet6x')
    bands = cfg['num_bands']
    if model_type == 'rrdbnet6x':
        net = RRDBNet6x(bands, bands,
                        cfg['num_feat'], cfg['num_block'], cfg['num_grow_ch'],
                        channel_attention=cfg.get('channel_attention', False))
    elif model_type == 'essaformer':
        from essaformer import ESSAformer
        net = ESSAformer(bands, bands, dim=cfg.get('dim', 252), upscale=cfg['scale'])
    elif model_type == 'mambahsisr':
        from mambahsisr import MambaHSISR
        net = MambaHSISR(bands, bands,
                         img_size=cfg['gt_size'] // cfg['scale'],
                         embed_dim=cfg.get('embed_dim', 180),
                         depths=tuple(cfg.get('depths', [5, 5, 5])),
                         d_state=cfg.get('d_state', 16),
                         resi_connection=cfg.get('resi_connection', '1conv'),
                         upscale=cfg['scale'])
    elif model_type == 'cst':
        from cst import CST
        net = CST(inp_channels=bands, out_channels=bands,
                  dim=cfg.get('dim', 90),
                  depths=tuple(cfg.get('depths', [6, 6, 6, 6, 6, 6])),
                  num_heads=tuple(cfg.get('num_heads', [6, 6, 6, 6, 6, 6])),
                  mlp_ratio=cfg.get('mlp_ratio', 2),
                  drop_path_rate=cfg.get('drop_path_rate', 0.1),
                  scale=cfg['scale'])
    else:
        raise ValueError(f'Unknown model_type: {model_type}')
    return net.to(device)


def load_checkpoint(net, path):
    state = torch.load(path, map_location='cpu', weights_only=False)
    key = 'params_ema' if 'params_ema' in state else 'params' if 'params' in state else None
    net.load_state_dict(state[key] if key else state)
    return 'EMA' if key == 'params_ema' else 'regular'
