import argparse
import csv
from collections import Counter
from pathlib import Path
import sys
import yaml


ARCH_LABEL = {
    'exp1_rrdb_192x24': 'RRDB-192',
    'exp1_rrdb_96x24':  'RRDB-96',
    'exp1_cst_dim180':  'CST-180',
    'exp1_cst_dim96':   'CST-96',
    'exp1_essa_dim252': 'ESSA-252',
    'exp1_essa_dim180': 'ESSA-180',
}


def count_params(cfg):
    import torch  # noqa: F401
    mt = cfg.get('model_type', 'rrdbnet6x')
    bands = cfg['num_bands']
    if mt == 'rrdbnet6x':
        from model import RRDBNet6x
        net = RRDBNet6x(bands, bands,
                        cfg['num_feat'], cfg['num_block'], cfg['num_grow_ch'],
                        channel_attention=cfg.get('channel_attention', False))
    elif mt == 'essaformer':
        from essaformer import ESSAformer
        net = ESSAformer(bands, bands, dim=cfg.get('dim', 252), upscale=cfg['scale'])
    elif mt == 'cst':
        from cst import CST
        net = CST(inp_channels=bands, out_channels=bands,
                  dim=cfg.get('dim', 90),
                  depths=tuple(cfg.get('depths', [6] * 6)),
                  num_heads=tuple(cfg.get('num_heads', [6] * 6)),
                  mlp_ratio=cfg.get('mlp_ratio', 2),
                  drop_path_rate=cfg.get('drop_path_rate', 0.1),
                  scale=cfg['scale'])
    else:
        return None
    return sum(p.numel() for p in net.parameters())


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--configs-dir', default='configs')
    p.add_argument('--archs', nargs='+', default=list(ARCH_LABEL.keys()))
    p.add_argument('--splits', nargs='+', default=['val', 'test'])
    p.add_argument('--exp-suffix', default='',
                   help='appended to exp_name when resolving folder (e.g. "-cnmf")')
    p.add_argument('--output', required=True, help='master CSV path')
    p.add_argument('--no-params', action='store_true',
                   help='skip parameter counting (faster, no torch needed)')
    args = p.parse_args()

    configs_dir = Path(args.configs_dir)
    all_rows = []
    params_by_arch = {}
    missing = []

    for arch in args.archs:
        cfg_path = configs_dir / f'{arch}.yaml'
        if not cfg_path.exists():
            print(f'SKIP {arch}: no config')
            continue
        with open(cfg_path) as f:
            cfg = yaml.safe_load(f)

        if not args.no_params:
            try:
                params_by_arch[arch] = count_params(cfg)
            except Exception as e:
                print(f'  params count failed for {arch}: {e}')
                params_by_arch[arch] = None

        exp_dir = Path(cfg['out_dir']) / (cfg['exp_name'] + args.exp_suffix)
        for split in args.splits:
            csv_path = exp_dir / f'eval_{split}' / f'{split}_metrics.csv'
            if not csv_path.exists():
                missing.append((arch, split, csv_path))
                continue
            with open(csv_path) as f:
                for r in csv.DictReader(f):
                    tile = r['tile']
                    aoi = r.get('aoi', '')
                    pm = params_by_arch.get(arch)
                    row = {
                        'arch': ARCH_LABEL.get(arch, arch),
                        'config': arch,
                        'split': split,
                        'tile': tile,
                        'aoi': aoi,
                        'params_M': round(pm / 1e6, 2) if pm else '',
                    }
                    for k, v in r.items():
                        if k == 'tile':
                            continue
                        row[k] = v
                    all_rows.append(row)

    if missing:
        print('Missing eval CSVs:')
        for arch, split, path in missing:
            print(f'  {arch}/{split}  {path}')

    if not all_rows:
        print('No rows collected. Run sweep_eval.py first.')
        sys.exit(1)

    out = Path(args.output)
    out.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = list(all_rows[0].keys())
    with open(out, 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        w.writerows(all_rows)

    print(f'\nWrote {len(all_rows)} rows to {out}')
    print('Per arch x split:')
    for (a, s), c in sorted(Counter((r['arch'], r['split']) for r in all_rows).items()):
        pm = next((r['params_M'] for r in all_rows if r['arch'] == a), '')
        print(f'  {a:10s} {s:5s}  {c:5d} tiles   params={pm}M')


if __name__ == '__main__':
    main()
