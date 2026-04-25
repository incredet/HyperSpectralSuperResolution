% SFIM_run — called from batch scripts with workspace variables:
%   hsi_path, msi_path, sri_path     (required)
%   min_r2_threshold                  (optional, default -inf = no filtering)
%
% Saves to sri_path:
%   sri  — fused image (uint16), omitted when R^2 filter rejects the tile
%   r2   — per-band R^2 of the NNLS fit (always saved)

hsi = im2double(load(hsi_path).hsi);
msi = im2double(load(msi_path).msi);

if ~exist('min_r2_threshold', 'var')
    min_r2_threshold = -inf;
end

[sri, r2] = SFIM(hsi, msi, min_r2_threshold);

if isempty(sri)
    fprintf('  SKIP: min R^2 = %.4f (threshold %.2f)\n', min(r2), min_r2_threshold);
    save(sri_path, 'r2');
else
    sri = im2uint16(sri);
    save(sri_path, 'sri', 'r2');
end
