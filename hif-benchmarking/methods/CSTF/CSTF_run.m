% hsi_path="data/HS/CAVE/4/balloons_ms.mat";msi_path="data/MS/CAVE/balloons_ms.mat";sri_path="data/SR/CSTF/CAVE/4/balloons_ms.mat";CSTF_run;
% Optional: srf_path="data/srf_R.mat"  — pre-computed spectral response matrix

hsi = im2double(load(hsi_path).hsi);
msi = im2double(load(msi_path).msi);

fprintf('  CSTF_run: hsi range=[%g, %g] mean=%g NaN=%d\n', min(hsi(:)), max(hsi(:)), mean(hsi(:)), sum(isnan(hsi(:))));
fprintf('  CSTF_run: msi range=[%g, %g] mean=%g NaN=%d\n', min(msi(:)), max(msi(:)), mean(msi(:)), sum(isnan(msi(:))));

%% Load pre-computed spectral response matrix if available
Pre_R = [];
if exist('srf_path', 'var') && ~isempty(srf_path)
    srf_data = load(srf_path);
    Pre_R = srf_data.R;
    fprintf('  CSTF_run: loaded pre-computed R from %s (%d x %d)\n', ...
        srf_path, size(Pre_R, 1), size(Pre_R, 2));
end

%% Strip all-zero HS bands before CSTF (VCA and sparse_tucker2 fail on zero bands)
[~, ~, nb] = size(hsi);
band_max = squeeze(max(max(hsi, [], 1), [], 2));   % (nb, 1)
keep = band_max > 0;                                % logical mask
n_zero = sum(~keep);
if n_zero > 0
    fprintf('  CSTF_run: stripping %d all-zero HS bands: [%s]\n', n_zero, ...
        num2str(find(~keep)'));
    hsi_trim = hsi(:, :, keep);
    if ~isempty(Pre_R)
        Pre_R = Pre_R(:, keep);
        fprintf('  CSTF_run: trimmed Pre_R to (%d x %d)\n', size(Pre_R, 1), size(Pre_R, 2));
    end
else
    hsi_trim = hsi;
end

sri_trim = CSTF_wrapper(hsi_trim, msi, Pre_R);

%% Re-insert zero bands
if n_zero > 0
    [r, c, ~] = size(sri_trim);
    sri = zeros(r, c, nb);
    sri(:, :, keep) = sri_trim;
    fprintf('  CSTF_run: re-inserted %d zero bands → (%d,%d,%d)\n', n_zero, r, c, nb);
else
    sri = sri_trim;
end

fprintf('  CSTF_run: sri BEFORE im2uint16: range=[%g, %g] mean=%g NaN=%d Inf=%d\n', ...
    min(sri(:)), max(sri(:)), mean(sri(:),'omitnan'), sum(isnan(sri(:))), sum(isinf(sri(:))));

sri = im2uint16(sri);

fprintf('  CSTF_run: sri AFTER im2uint16: range=[%d, %d] mean=%g\n', ...
    min(sri(:)), max(sri(:)), mean(double(sri(:))));

save(sri_path, 'sri');
