% Auto-generated batch script (worker 1)
% Dataset: EMIT32, Method: CNMF, Scale: 6
% Scenes: 70

cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'CNMF')));

% --- Scene 1/70: 20250422T182135_T11SPS_20250419_tile173 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat', 'file')
    fprintf('\n[1] (1/70) %s\n', '20250422T182135_T11SPS_20250419_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile173.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (1/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile173');
end

% --- Scene 2/70: 20250422T182135_T11SPS_20250419_tile174 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile174.mat', 'file')
    fprintf('\n[1] (2/70) %s\n', '20250422T182135_T11SPS_20250419_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile174.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile174.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (2/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile174');
end

% --- Scene 3/70: 20250422T182135_T11SPS_20250419_tile175 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile175.mat', 'file')
    fprintf('\n[1] (3/70) %s\n', '20250422T182135_T11SPS_20250419_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile175.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile175.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (3/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile175');
end

% --- Scene 4/70: 20250422T182135_T11SPS_20250419_tile176 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile176.mat', 'file')
    fprintf('\n[1] (4/70) %s\n', '20250422T182135_T11SPS_20250419_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile176.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile176.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile176.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (4/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile176');
end

% --- Scene 5/70: 20250422T182135_T11SPS_20250419_tile177 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile177.mat', 'file')
    fprintf('\n[1] (5/70) %s\n', '20250422T182135_T11SPS_20250419_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile177.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile177.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile177.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (5/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile177');
end

% --- Scene 6/70: 20250422T182135_T11SPS_20250419_tile178 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile178.mat', 'file')
    fprintf('\n[1] (6/70) %s\n', '20250422T182135_T11SPS_20250419_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile178.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile178.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile178.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (6/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile178');
end

% --- Scene 7/70: 20250422T182135_T11SPS_20250419_tile179 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile179.mat', 'file')
    fprintf('\n[1] (7/70) %s\n', '20250422T182135_T11SPS_20250419_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile179.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile179.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile179.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (7/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile179');
end

% --- Scene 8/70: 20250422T182135_T11SPS_20250419_tile180 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile180.mat', 'file')
    fprintf('\n[1] (8/70) %s\n', '20250422T182135_T11SPS_20250419_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile180.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile180.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile180.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (8/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile180');
end

% --- Scene 9/70: 20250422T182135_T11SPS_20250419_tile181 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile181.mat', 'file')
    fprintf('\n[1] (9/70) %s\n', '20250422T182135_T11SPS_20250419_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile181.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile181.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile181.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (9/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile181');
end

% --- Scene 10/70: 20250422T182135_T11SPS_20250419_tile182 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile182.mat', 'file')
    fprintf('\n[1] (10/70) %s\n', '20250422T182135_T11SPS_20250419_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile182.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile182.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile182.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (10/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile182');
end

% --- Scene 11/70: 20250422T182135_T11SPS_20250419_tile183 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile183.mat', 'file')
    fprintf('\n[1] (11/70) %s\n', '20250422T182135_T11SPS_20250419_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile183.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile183.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (11/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile183');
end

% --- Scene 12/70: 20250422T182135_T11SPS_20250419_tile184 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile184.mat', 'file')
    fprintf('\n[1] (12/70) %s\n', '20250422T182135_T11SPS_20250419_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile184.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile184.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (12/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile184');
end

% --- Scene 13/70: 20250422T182135_T11SPS_20250419_tile185 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile185.mat', 'file')
    fprintf('\n[1] (13/70) %s\n', '20250422T182135_T11SPS_20250419_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile185.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile185.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (13/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile185');
end

% --- Scene 14/70: 20250422T182135_T11SPS_20250419_tile188 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile188.mat', 'file')
    fprintf('\n[1] (14/70) %s\n', '20250422T182135_T11SPS_20250419_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile188.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile188.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (14/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile188');
end

% --- Scene 15/70: 20250422T182135_T11SPS_20250419_tile189 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile189.mat', 'file')
    fprintf('\n[1] (15/70) %s\n', '20250422T182135_T11SPS_20250419_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile189.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile189.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (15/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile189');
end

% --- Scene 16/70: 20250422T182135_T11SPS_20250419_tile190 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile190.mat', 'file')
    fprintf('\n[1] (16/70) %s\n', '20250422T182135_T11SPS_20250419_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile190.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile190.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (16/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile190');
end

% --- Scene 17/70: 20250422T182135_T11SPS_20250419_tile191 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile191.mat', 'file')
    fprintf('\n[1] (17/70) %s\n', '20250422T182135_T11SPS_20250419_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile191.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile191.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (17/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile191');
end

% --- Scene 18/70: 20250422T182135_T11SPS_20250419_tile192 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile192.mat', 'file')
    fprintf('\n[1] (18/70) %s\n', '20250422T182135_T11SPS_20250419_tile192');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile192.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile192.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile192.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile192,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (18/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile192');
end

% --- Scene 19/70: 20250422T182135_T11SPS_20250419_tile193 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile193.mat', 'file')
    fprintf('\n[1] (19/70) %s\n', '20250422T182135_T11SPS_20250419_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile193.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile193.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile193.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (19/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile193');
end

% --- Scene 20/70: 20250422T182135_T11SPS_20250419_tile194 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile194.mat', 'file')
    fprintf('\n[1] (20/70) %s\n', '20250422T182135_T11SPS_20250419_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile194.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile194.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile194.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (20/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile194');
end

% --- Scene 21/70: 20250422T182135_T11SPS_20250419_tile195 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile195.mat', 'file')
    fprintf('\n[1] (21/70) %s\n', '20250422T182135_T11SPS_20250419_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile195.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile195.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile195.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (21/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile195');
end

% --- Scene 22/70: 20250422T182135_T11SPS_20250419_tile196 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile196.mat', 'file')
    fprintf('\n[1] (22/70) %s\n', '20250422T182135_T11SPS_20250419_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile196.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile196.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile196.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (22/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile196');
end

% --- Scene 23/70: 20250422T182135_T11SPS_20250419_tile197 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile197.mat', 'file')
    fprintf('\n[1] (23/70) %s\n', '20250422T182135_T11SPS_20250419_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile197.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile197.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile197.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (23/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile197');
end

% --- Scene 24/70: 20250422T182135_T11SPS_20250419_tile198 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile198.mat', 'file')
    fprintf('\n[1] (24/70) %s\n', '20250422T182135_T11SPS_20250419_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile198.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile198.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile198.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (24/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile198');
end

% --- Scene 25/70: 20250422T182135_T11SPS_20250419_tile199 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile199.mat', 'file')
    fprintf('\n[1] (25/70) %s\n', '20250422T182135_T11SPS_20250419_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile199.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile199.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile199.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (25/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile199');
end

% --- Scene 26/70: 20250422T182135_T11SPS_20250419_tile200 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile200.mat', 'file')
    fprintf('\n[1] (26/70) %s\n', '20250422T182135_T11SPS_20250419_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile200.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile200.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile200.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (26/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile200');
end

% --- Scene 27/70: 20250422T182135_T11SPS_20250419_tile201 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile201.mat', 'file')
    fprintf('\n[1] (27/70) %s\n', '20250422T182135_T11SPS_20250419_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile201.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile201.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile201.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (27/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile201');
end

% --- Scene 28/70: 20250422T182135_T11SPS_20250419_tile206 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile206.mat', 'file')
    fprintf('\n[1] (28/70) %s\n', '20250422T182135_T11SPS_20250419_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile206.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile206.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile206.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (28/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile206');
end

% --- Scene 29/70: 20250422T182135_T11SPS_20250419_tile207 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile207.mat', 'file')
    fprintf('\n[1] (29/70) %s\n', '20250422T182135_T11SPS_20250419_tile207');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile207.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile207.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile207.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile207,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (29/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile207');
end

% --- Scene 30/70: 20250422T182135_T11SPS_20250419_tile208 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile208.mat', 'file')
    fprintf('\n[1] (30/70) %s\n', '20250422T182135_T11SPS_20250419_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile208.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile208.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile208.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (30/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile208');
end

% --- Scene 31/70: 20250422T182135_T11SPS_20250419_tile209 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile209.mat', 'file')
    fprintf('\n[1] (31/70) %s\n', '20250422T182135_T11SPS_20250419_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile209.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile209.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile209.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (31/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile209');
end

% --- Scene 32/70: 20250422T182135_T11SPS_20250419_tile210 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile210.mat', 'file')
    fprintf('\n[1] (32/70) %s\n', '20250422T182135_T11SPS_20250419_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile210.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile210.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile210.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (32/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile210');
end

% --- Scene 33/70: 20250422T182135_T11SPS_20250419_tile211 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile211.mat', 'file')
    fprintf('\n[1] (33/70) %s\n', '20250422T182135_T11SPS_20250419_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile211.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile211.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile211.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (33/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile211');
end

% --- Scene 34/70: 20250422T182135_T11SPS_20250419_tile212 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile212.mat', 'file')
    fprintf('\n[1] (34/70) %s\n', '20250422T182135_T11SPS_20250419_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile212.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile212.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile212.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (34/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile212');
end

% --- Scene 35/70: 20250422T182135_T11SPS_20250419_tile213 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile213.mat', 'file')
    fprintf('\n[1] (35/70) %s\n', '20250422T182135_T11SPS_20250419_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile213.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile213.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile213.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (35/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile213');
end

% --- Scene 36/70: 20250422T182135_T11SPS_20250419_tile214 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile214.mat', 'file')
    fprintf('\n[1] (36/70) %s\n', '20250422T182135_T11SPS_20250419_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile214.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile214.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile214.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (36/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile214');
end

% --- Scene 37/70: 20250422T182135_T11SPS_20250419_tile215 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile215.mat', 'file')
    fprintf('\n[1] (37/70) %s\n', '20250422T182135_T11SPS_20250419_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile215.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile215.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile215.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (37/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile215');
end

% --- Scene 38/70: 20250422T182135_T11SPS_20250419_tile216 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile216.mat', 'file')
    fprintf('\n[1] (38/70) %s\n', '20250422T182135_T11SPS_20250419_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile216.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile216.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile216.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (38/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile216');
end

% --- Scene 39/70: 20250422T182135_T11SPS_20250419_tile217 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile217.mat', 'file')
    fprintf('\n[1] (39/70) %s\n', '20250422T182135_T11SPS_20250419_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile217.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile217.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile217.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (39/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile217');
end

% --- Scene 40/70: 20250422T182135_T11SPS_20250419_tile224 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile224.mat', 'file')
    fprintf('\n[1] (40/70) %s\n', '20250422T182135_T11SPS_20250419_tile224');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile224.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile224.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile224.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile224,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (40/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile224');
end

% --- Scene 41/70: 20250422T182135_T11SPS_20250419_tile225 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile225.mat', 'file')
    fprintf('\n[1] (41/70) %s\n', '20250422T182135_T11SPS_20250419_tile225');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile225.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile225.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile225.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile225,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (41/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile225');
end

% --- Scene 42/70: 20250422T182135_T11SPS_20250419_tile226 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile226.mat', 'file')
    fprintf('\n[1] (42/70) %s\n', '20250422T182135_T11SPS_20250419_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile226.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile226.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile226.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (42/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile226');
end

% --- Scene 43/70: 20250422T182135_T11SPS_20250419_tile227 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile227.mat', 'file')
    fprintf('\n[1] (43/70) %s\n', '20250422T182135_T11SPS_20250419_tile227');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile227.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile227.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile227.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile227,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (43/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile227');
end

% --- Scene 44/70: 20250422T182135_T11SPS_20250419_tile228 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile228.mat', 'file')
    fprintf('\n[1] (44/70) %s\n', '20250422T182135_T11SPS_20250419_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile228.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile228.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile228.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (44/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile228');
end

% --- Scene 45/70: 20250422T182135_T11SPS_20250419_tile229 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile229.mat', 'file')
    fprintf('\n[1] (45/70) %s\n', '20250422T182135_T11SPS_20250419_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile229.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile229.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile229.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (45/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile229');
end

% --- Scene 46/70: 20250422T182135_T11SPS_20250419_tile230 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile230.mat', 'file')
    fprintf('\n[1] (46/70) %s\n', '20250422T182135_T11SPS_20250419_tile230');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile230.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile230.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile230.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile230,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (46/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile230');
end

% --- Scene 47/70: 20250422T182135_T11SPS_20250419_tile231 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile231.mat', 'file')
    fprintf('\n[1] (47/70) %s\n', '20250422T182135_T11SPS_20250419_tile231');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile231.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile231.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile231.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile231,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (47/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile231');
end

% --- Scene 48/70: 20250422T182135_T11SPS_20250419_tile232 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile232.mat', 'file')
    fprintf('\n[1] (48/70) %s\n', '20250422T182135_T11SPS_20250419_tile232');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile232.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile232.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile232.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile232,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (48/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile232');
end

% --- Scene 49/70: 20250422T182135_T11SPS_20250419_tile233 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile233.mat', 'file')
    fprintf('\n[1] (49/70) %s\n', '20250422T182135_T11SPS_20250419_tile233');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile233.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile233.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile233.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile233,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (49/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile233');
end

% --- Scene 50/70: 20250422T182135_T11SPS_20250419_tile242 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile242.mat', 'file')
    fprintf('\n[1] (50/70) %s\n', '20250422T182135_T11SPS_20250419_tile242');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile242.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile242.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile242.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile242,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (50/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile242');
end

% --- Scene 51/70: 20250422T182135_T11SPS_20250419_tile243 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile243.mat', 'file')
    fprintf('\n[1] (51/70) %s\n', '20250422T182135_T11SPS_20250419_tile243');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile243.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile243.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile243.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile243,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (51/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile243');
end

% --- Scene 52/70: 20250422T182135_T11SPS_20250419_tile244 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile244.mat', 'file')
    fprintf('\n[1] (52/70) %s\n', '20250422T182135_T11SPS_20250419_tile244');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile244.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile244.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile244.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile244,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (52/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile244');
end

% --- Scene 53/70: 20250422T182135_T11SPS_20250419_tile245 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile245.mat', 'file')
    fprintf('\n[1] (53/70) %s\n', '20250422T182135_T11SPS_20250419_tile245');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile245.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile245.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile245.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile245,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (53/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile245');
end

% --- Scene 54/70: 20250422T182135_T11SPS_20250419_tile246 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile246.mat', 'file')
    fprintf('\n[1] (54/70) %s\n', '20250422T182135_T11SPS_20250419_tile246');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile246.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile246.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile246.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile246,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (54/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile246');
end

% --- Scene 55/70: 20250422T182135_T11SPS_20250419_tile247 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile247.mat', 'file')
    fprintf('\n[1] (55/70) %s\n', '20250422T182135_T11SPS_20250419_tile247');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile247.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile247.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile247.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile247,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (55/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile247');
end

% --- Scene 56/70: 20250422T182135_T11SPS_20250419_tile248 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile248.mat', 'file')
    fprintf('\n[1] (56/70) %s\n', '20250422T182135_T11SPS_20250419_tile248');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile248.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile248.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile248.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile248,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (56/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile248');
end

% --- Scene 57/70: 20250422T182135_T11SPS_20250419_tile249 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile249.mat', 'file')
    fprintf('\n[1] (57/70) %s\n', '20250422T182135_T11SPS_20250419_tile249');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile249.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile249.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile249.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile249,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (57/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile249');
end

% --- Scene 58/70: 20250422T182135_T11SPS_20250419_tile250 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile250.mat', 'file')
    fprintf('\n[1] (58/70) %s\n', '20250422T182135_T11SPS_20250419_tile250');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile250.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile250.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile250.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile250,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (58/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile250');
end

% --- Scene 59/70: 20250422T182135_T11SPS_20250419_tile260 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile260.mat', 'file')
    fprintf('\n[1] (59/70) %s\n', '20250422T182135_T11SPS_20250419_tile260');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile260.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile260.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile260.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile260,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (59/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile260');
end

% --- Scene 60/70: 20250422T182135_T11SPS_20250419_tile261 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile261.mat', 'file')
    fprintf('\n[1] (60/70) %s\n', '20250422T182135_T11SPS_20250419_tile261');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile261.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile261.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile261.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile261,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (60/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile261');
end

% --- Scene 61/70: 20250422T182135_T11SPS_20250419_tile262 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile262.mat', 'file')
    fprintf('\n[1] (61/70) %s\n', '20250422T182135_T11SPS_20250419_tile262');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile262.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile262.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile262.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile262,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (61/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile262');
end

% --- Scene 62/70: 20250422T182135_T11SPS_20250419_tile263 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile263.mat', 'file')
    fprintf('\n[1] (62/70) %s\n', '20250422T182135_T11SPS_20250419_tile263');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile263.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile263.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile263.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile263,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (62/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile263');
end

% --- Scene 63/70: 20250422T182135_T11SPS_20250419_tile264 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile264.mat', 'file')
    fprintf('\n[1] (63/70) %s\n', '20250422T182135_T11SPS_20250419_tile264');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile264.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile264.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile264.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile264,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (63/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile264');
end

% --- Scene 64/70: 20250422T182135_T11SPS_20250419_tile265 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile265.mat', 'file')
    fprintf('\n[1] (64/70) %s\n', '20250422T182135_T11SPS_20250419_tile265');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile265.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile265.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile265.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile265,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (64/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile265');
end

% --- Scene 65/70: 20250422T182135_T11SPS_20250419_tile266 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile266.mat', 'file')
    fprintf('\n[1] (65/70) %s\n', '20250422T182135_T11SPS_20250419_tile266');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile266.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile266.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile266.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile266,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (65/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile266');
end

% --- Scene 66/70: 20250422T182135_T11SPS_20250419_tile278 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile278.mat', 'file')
    fprintf('\n[1] (66/70) %s\n', '20250422T182135_T11SPS_20250419_tile278');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile278.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile278.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile278.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile278,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (66/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile278');
end

% --- Scene 67/70: 20250422T182135_T11SPS_20250419_tile279 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile279.mat', 'file')
    fprintf('\n[1] (67/70) %s\n', '20250422T182135_T11SPS_20250419_tile279');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile279.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile279.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile279.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile279,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (67/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile279');
end

% --- Scene 68/70: 20250422T182135_T11SPS_20250419_tile280 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile280.mat', 'file')
    fprintf('\n[1] (68/70) %s\n', '20250422T182135_T11SPS_20250419_tile280');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile280.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile280.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile280.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile280,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (68/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile280');
end

% --- Scene 69/70: 20250422T182135_T11SPS_20250419_tile281 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile281.mat', 'file')
    fprintf('\n[1] (69/70) %s\n', '20250422T182135_T11SPS_20250419_tile281');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile281.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile281.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile281.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile281,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (69/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile281');
end

% --- Scene 70/70: 20250422T182135_T11SPS_20250419_tile282 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile282.mat', 'file')
    fprintf('\n[1] (70/70) %s\n', '20250422T182135_T11SPS_20250419_tile282');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile282.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile282.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250422T182135_T11SPS_20250419_tile282.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile282,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (70/70) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile282');
end

fprintf('\n=== Worker 1 finished all 70 scenes ===\n');
exit;