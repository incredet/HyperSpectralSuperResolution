function Out = CSTF_wrapper(HSI,MSI,Pre_R)
%--------------------------------------------------------------------------
% Wrapper for the CSTF method [1].
%
% USAGE
%       Out = CSTF_wrapper(HSI,MSI)
%       Out = CSTF_wrapper(HSI,MSI,Pre_R)
%
% INPUT
%       HSI   : Low-spatial-resolution HS image (rows2,cols2,bands2)
%       MSI   : MS image (rows1,cols1,bands1)
%       Pre_R : (optional) Pre-computed spectral response matrix (bands1,bands2).
%               If provided, skips internal estR() estimation.
%
% OUTPUT
%       Out   : High-spatial-resolution HS image (rows1,cols1,bands2)
%
% REFERENCES
%       [1] Li, S., Dian, R., Fang, L., & Bioucas-Dias, J. M. (2018).
%           Fusing hyperspectral and multispectral images via coupled
%           sparse tensor factorization. IEEE TIP, 27(8), 4118-4130.
%--------------------------------------------------------------------------

[m,n,L] = size(HSI);
[M,N,l] = size(MSI);

sz = [M N];
sf = M/m;
s0 = sf/2;

% Gaussian PSF: sigma = sf/2.35482 (FWHM = sf pixels), matching Wald degradation
sig = sf / 2.35482;
ksz = round(sf/2)*2 + 1;  % odd kernel size
BW = fspecial('gaussian', [ksz 1], sig);
BW1 = psf2otf(BW,[M 1]);
BH = fspecial('gaussian', [ksz 1], sig);
BH1 = psf2otf(BH,[N 1]);

par1.W=M;
par1.H=N;
par1.S=L;
par1.lambda=1e-5;

if nargin >= 3 && ~isempty(Pre_R)
    fprintf('  CSTF: using pre-computed R (%d x %d)\n', size(Pre_R,1), size(Pre_R,2));
    F = Pre_R;
else
    [R,~] = estR(HSI,MSI);
    for b = 1:l
        msi2 = reshape(MSI(:,:,b),M,N);
        msi2 = msi2 - R(b,end);
        msi2(msi2<0) = 0;
        MSI(:,:,b) = msi2;
    end
    F = R(:,1:end-1);
end

Out = CSTF_FUS(HSI,MSI,F,BW1,BH1,sf,par1,s0,nan);
