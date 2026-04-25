function [out, r2] = SFIM(hs, ms, min_r2)
%--------------------------------------------------------------------------
% Smoothing filter-based intensity modulation (SFIM) adapted for
% hyperspectral and multispectral data fusion via hypersharpening
%
% USAGE
%       [out, r2] = SFIM(hs, ms)
%       [out, r2] = SFIM(hs, ms, min_r2)
%
% INPUT
%       hs     : Low-spatial-resolution HS image (rows2,cols2,bands2)
%       ms     : MS image (rows1,cols1,bands1)
%       min_r2 : (optional) Minimum per-band R^2 threshold. If the worst
%                band's R^2 falls below this, out is returned empty and
%                the expensive modulation loop is skipped.
%
% OUTPUT
%       out : High-spatial-resolution HS image (rows1,cols1,bands2),
%             or empty [] if min_r2 filtering rejects the tile.
%       r2  : Per-band R^2 of the NNLS fit (1, bands2).
%
% REFERENCE
% [1] J. G. Liu, "Smoothing filter-based intensity modulation: a spectral
% preserve image fusion technique for improving spatial details," Int. J.
% Remote Sens. vol. 21, no. 18, pp. 3461-3472, Dec. 2000.
% [2] M. Selva, B. Aiazzi, F. Butera, L. Chiarantini, and S. Baronti,
% "Hypersharpening: A first approach on SIM-GA data," IEEE J. Sel. Topics
% Appl. Earth Observ. Remote Sens., vol. 8, no. 6, pp. 3008-3024, Jun.
% 2015.
%--------------------------------------------------------------------------

if nargin < 3
    min_r2 = -inf;  % no filtering by default
end

mode = 3;

[rows1,cols1,bands1] = size(ms);
[rows2,cols2,bands2] = size(hs);

out = zeros(rows1,cols1,bands2);

w = rows1/rows2;

% masking mode
if mode == 3
    masking = 0;
elseif mode == 4
    masking = 1;
    mask2 = imresize(mask,w,'nearest');
else
    disp('Please check the usage of SFIM.m');
end

low_res_ms = zeros(rows2,cols2,bands1);

for b = 1:bands1
    tmp = imresize(reshape(ms(:,:,b),rows1,cols1),[rows2 cols2],'bicubic');
    low_res_ms(:,:,b) = tmp;
end
% original implementation (mean filtering)
%low_res_ms = permute(reshape(mean(reshape(permute(reshape(mean(reshape(ms,w,[],bands1),1),rows2,[],bands1),[2 1 3]),w,[],bands1),1),cols2,rows2,bands1),[2 1 3]);

% find coefficients
X = zeros(bands1+1,bands2);
A = [reshape(low_res_ms,rows2*cols2,bands1) ones(rows2*cols2,1)];
switch mode
    case 1
        A = zeros(bands1,bands2);
        for i = 1:bands1
            tmp2 = reshape(low_res_ms(:,:,i),rows2,cols2);
            if masking == 1
                tmp2 = tmp2(mask);
            end
            for j = 1:bands2
                tmp1 = reshape(hs(:,:,j),rows2,cols2);
                if masking == 1
                    tmp1 = tmp1(mask);
                end
                cc = corrcoef(tmp1(:),tmp2(:));
                A(i,j) = cc(1,2);
            end
        end
        [~,indices] = max(A,[],1);
    case 2
        B = (A'*A)\A'; 
        Y = reshape(hs,rows2*cols2,[]);
        X = B*Y;
    case 3
        X = nls_coef(reshape(hs,rows2*cols2,[]),A);
end

% ── Per-band R^2 of the NNLS regression ───────────────────────────────
% Only computed for modes 2 and 3 where A is the predictor matrix and
% X holds regression coefficients.  For mode 1 (band selection), R^2
% is not meaningful — set to NaN and skip filtering.
if mode == 2 || mode == 3
    Y_hs = reshape(hs, rows2*cols2, bands2);
    Y_pred = A * X;
    SS_res = sum((Y_hs - Y_pred).^2, 1);       % (1, bands2)
    SS_tot = sum((Y_hs - mean(Y_hs, 1)).^2, 1); % (1, bands2)
    r2 = ones(1, bands2);                        % default 1.0 for constant bands
    nonconstant = SS_tot > 0;
    r2(nonconstant) = 1 - SS_res(nonconstant) ./ SS_tot(nonconstant);

    if min(r2) < min_r2
        out = [];
        return
    end
else
    r2 = nan(1, bands2);
end

A2 = [reshape(ms,rows1*cols1,bands1) ones(rows1*cols1,1)];
for i = 1:bands2
    tmp1 = reshape(hs(:,:,i),rows2,cols2);
    tmp1 = imresize(tmp1,w,'bicubic');
    switch mode 
        case 1
            tmp2 = reshape(ms(:,:,indices(i)),rows1,cols1);
            tmp3 = reshape(low_res_ms(:,:,indices(i)),rows2,cols2);
        case {2,3}
            tmp2 = reshape(A2*X(:,i),rows1,cols1);
            tmp3 = reshape(A*X(:,i),rows2,cols2);
    end
    tmp3 = imresize(tmp3,w,'bicubic');
    tmp4 = tmp1;
    eps_val = 1e-6;
    if masking == 1
        ratio = tmp2(mask2) ./ max(tmp3(mask2), eps_val);
        ratio = min(ratio, 2.0);
        tmp4(mask2) = tmp1(mask2) .* ratio;
    else
        ratio = tmp2 ./ max(tmp3, eps_val);
        ratio = min(ratio, 2.0);
        tmp4 = tmp1 .* ratio;
    end
    out(:,:,i) = tmp4;
end