# Thesis Notes — Key Arguments & Insights

## Wald vs SR Training: Why the best fusion method isn't the best GT for SR

Two separate questions, two separate answers:

- **Wald asks:** "How faithfully can you reconstruct degraded HS data?" → SFIM wins, fair and square.
- **SR training asks:** "Which GT gives the model the most to learn beyond simple interpolation?" → Different answer.

### The circularity problem

SFIM internally bicubic-upsamples EMIT and modulates with S2 ratios (see SFIM.m lines 117, 126 — both `imresize(..., 'bicubic')`). The spatial backbone of SFIM output IS bicubic. If you train SR with SFIM GT and compare against bicubic baseline, the comparison is almost circular — the GT is built on the thing you're comparing against.

### Why SFIM wins Wald

Wald protocol measures self-consistency: degrade and reconstruct. SFIM excels because its interpolation backbone faithfully preserves the original spectral content. But "faithful reconstruction" ≠ "useful GT for SR training."

### What SR training needs

GT with genuine spatial detail at 10m that isn't derived from interpolating 60m data. This points to:
- **CNMF** — spatial structure from spectral unmixing (ranked #2 in Wald)
- **Regression** — spatial detail from S2 natively at 10m
- **HySure** — optimization-based, no interpolation backbone

### Methods by spatial backbone

Interpolation-based (MRA): SFIM, GLP, GSA
Non-interpolation: CNMF, HySure, FUSE, MAPSMM, CSTF, SupResPALM, BayesianSparse, NSSR, LTMR, LTTR, GSOMP, CNNFUS

### Thesis structure suggestion

1. Present all methods in Wald evaluation, let SFIM win
2. Explain why Wald ranking doesn't directly translate to SR training quality
3. Justify GT choice (regression/CNMF) with bicubic-distance analysis
4. This analysis is itself a contribution — relationship between fusion quality metrics and SR training utility isn't widely discussed

### Key references

- Liu (2000) — original SFIM
- Selva et al. (2015) — hyper-sharpening extension (what hif-benchmarking implements)
- Yokoya et al. (2012) — CNMF
- Aburaed et al. (EUSIPCO 2022) — loss function comparison for hyperspectral SISR, supports hybrid L1 + spectral cosine loss

### TODO

- [ ] Run regression through Wald evaluation (run_regression_wald.py)
- [ ] Recompute metrics with regression included
- [ ] Measure PSNR(GT, bicubic) for each GT source across tiles — quantify "room to learn"
- [ ] Pick GT source based on data
- [ ] Add spectral cosine loss (SpectralCosineLoss, weight=0.1)
- [ ] Retrain SR with corrected GT + spectral loss, 50-100k iterations
