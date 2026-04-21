import argparse
import subprocess
import sys
import time
import yaml
from pathlib import Path


DEFAULT_ARCHS = [
    'exp1_rrdb_192x24',
    'exp1_rrdb_96x24',
    'exp1_cst_dim180',
    'exp1_cst_dim96',
    'exp1_essa_dim252',
    'exp1_essa_dim180',
]


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--configs-dir', default='configs')
    p.add_argument('--archs', nargs='+', default=DEFAULT_ARCHS)
    p.add_argument('--checkpoint-name', default='best.pth',
                   help='filename under {exp}/models/ (e.g. best.pth, iter_100000.pth)')
    p.add_argument('--exp-suffix', default='',
                   help='appended to exp_name when resolving folder (e.g. "-cnmf")')
    p.add_argument('--splits', nargs='+', default=['val', 'test'])
    p.add_argument('--with-vis', action='store_true',
                   help='also generate figures (default: --no-vis for speed)')
    p.add_argument('--zip-dir', default=None,
                   help='override zip_dir in config (useful if Drive path differs on this session)')
    p.add_argument('--split-json', default=None,
                   help='JSON with {train,val,test} AOI lists; forwarded to evaluate.py')
    p.add_argument('--dry-run', action='store_true')
    args = p.parse_args()

    configs_dir = Path(args.configs_dir)
    tasks = []
    for arch in args.archs:
        if args.exp_suffix == "-synthetic-bicubic":
            cfg_path = configs_dir / f'{arch}_synthetic_bicubic.yaml'
        elif args.exp_suffix == "-synthetic" | args.exp_suffix == "-synthetic-synthetic":
            cfg_path = configs_dir / f'{arch}_synthetic.yaml'
        else:
            cfg_path = configs_dir / f'{arch}.yaml'
        if not cfg_path.exists():
            print(f'SKIP {arch}: no config at {cfg_path}', file=sys.stderr)
            continue
        with open(cfg_path) as f:
            cfg = yaml.safe_load(f)
        if args.exp_suffix.startswith("-synthetic"):
            exp_folder = cfg['exp_name']
        else:
            exp_folder = cfg['exp_name'] + args.exp_suffix
        ckpt = Path(cfg['out_dir']) / exp_folder / 'models' / args.checkpoint_name
        if not ckpt.exists():
            print(f'SKIP {arch}: no checkpoint at {ckpt}', file=sys.stderr)
            continue
        for split in args.splits:
            tasks.append((arch, cfg_path, ckpt, split))

    print(f'Queued {len(tasks)} eval tasks ({len(args.archs)} archs x {len(args.splits)} splits).')
    t_all = time.time()
    failed = []
    for i, (arch, cfg_path, ckpt, split) in enumerate(tasks, 1):
        print(f'\n[{i}/{len(tasks)}] {arch}  split={split}  ckpt={ckpt.name}')
        cmd = [sys.executable, 'evaluate.py',
               '--config', str(cfg_path),
               '--checkpoint', str(ckpt),
               '--split', split]
        if not args.with_vis:
            cmd.append('--no-vis')
        if args.zip_dir:
            cmd += ['--zip-dir', args.zip_dir]
        if args.split_json:
            cmd += ['--split-json', args.split_json]
        if args.dry_run:
            print('  DRY:', ' '.join(cmd))
            continue
        t0 = time.time()
        r = subprocess.run(cmd)
        dt = time.time() - t0
        if r.returncode != 0:
            print(f'  FAIL rc={r.returncode} ({dt:.0f}s)', file=sys.stderr)
            failed.append((arch, split))
        else:
            print(f'  done ({dt:.0f}s)')

    print(f'\nTotal: {time.time() - t_all:.0f}s. Failed: {len(failed)}')
    for arch, split in failed:
        print(f'  FAIL  {arch}/{split}', file=sys.stderr)
    sys.exit(1 if failed else 0)


if __name__ == '__main__':
    main()
