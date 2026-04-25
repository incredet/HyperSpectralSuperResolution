% Auto-generated batch script (worker 1)
% Dataset: EMIT32, Method: MAPSMM, Scale: 6
% Scenes: 36

cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'MAPSMM')));

% --- Scene 1/36: 20250422T182135_T11SPS_20250419_tile128 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile128.mat', 'file')
    fprintf('\n[1] (1/36) %s\n', '20250422T182135_T11SPS_20250419_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile128.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile128.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (1/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile128');
end

% --- Scene 2/36: 20250422T182135_T11SPS_20250419_tile129 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile129.mat', 'file')
    fprintf('\n[1] (2/36) %s\n', '20250422T182135_T11SPS_20250419_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile129.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile129.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (2/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile129');
end

% --- Scene 3/36: 20250422T182135_T11SPS_20250419_tile130 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile130.mat', 'file')
    fprintf('\n[1] (3/36) %s\n', '20250422T182135_T11SPS_20250419_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile130.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile130.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (3/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile130');
end

% --- Scene 4/36: 20250422T182135_T11SPS_20250419_tile131 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile131.mat', 'file')
    fprintf('\n[1] (4/36) %s\n', '20250422T182135_T11SPS_20250419_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile131.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile131.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (4/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile131');
end

% --- Scene 5/36: 20250422T182135_T11SPS_20250419_tile132 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile132.mat', 'file')
    fprintf('\n[1] (5/36) %s\n', '20250422T182135_T11SPS_20250419_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile132.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile132.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (5/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile132');
end

% --- Scene 6/36: 20250422T182135_T11SPS_20250419_tile138 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile138.mat', 'file')
    fprintf('\n[1] (6/36) %s\n', '20250422T182135_T11SPS_20250419_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile138.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile138.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (6/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile138');
end

% --- Scene 7/36: 20250422T182135_T11SPS_20250419_tile139 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile139.mat', 'file')
    fprintf('\n[1] (7/36) %s\n', '20250422T182135_T11SPS_20250419_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile139.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile139.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (7/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile139');
end

% --- Scene 8/36: 20250422T182135_T11SPS_20250419_tile140 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile140.mat', 'file')
    fprintf('\n[1] (8/36) %s\n', '20250422T182135_T11SPS_20250419_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile140.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile140.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (8/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile140');
end

% --- Scene 9/36: 20250422T182135_T11SPS_20250419_tile141 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile141.mat', 'file')
    fprintf('\n[1] (9/36) %s\n', '20250422T182135_T11SPS_20250419_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile141.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile141.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (9/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile141');
end

% --- Scene 10/36: 20250422T182135_T11SPS_20250419_tile142 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile142.mat', 'file')
    fprintf('\n[1] (10/36) %s\n', '20250422T182135_T11SPS_20250419_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile142.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile142.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile142.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (10/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile142');
end

% --- Scene 11/36: 20250422T182135_T11SPS_20250419_tile143 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile143.mat', 'file')
    fprintf('\n[1] (11/36) %s\n', '20250422T182135_T11SPS_20250419_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile143.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile143.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile143.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (11/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile143');
end

% --- Scene 12/36: 20250422T182135_T11SPS_20250419_tile144 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile144.mat', 'file')
    fprintf('\n[1] (12/36) %s\n', '20250422T182135_T11SPS_20250419_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile144.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile144.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile144.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (12/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile144');
end

% --- Scene 13/36: 20250422T182135_T11SPS_20250419_tile145 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile145.mat', 'file')
    fprintf('\n[1] (13/36) %s\n', '20250422T182135_T11SPS_20250419_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile145.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile145.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (13/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile145');
end

% --- Scene 14/36: 20250422T182135_T11SPS_20250419_tile146 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile146.mat', 'file')
    fprintf('\n[1] (14/36) %s\n', '20250422T182135_T11SPS_20250419_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile146.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile146.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (14/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile146');
end

% --- Scene 15/36: 20250422T182135_T11SPS_20250419_tile147 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile147.mat', 'file')
    fprintf('\n[1] (15/36) %s\n', '20250422T182135_T11SPS_20250419_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile147.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile147.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (15/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile147');
end

% --- Scene 16/36: 20250422T182135_T11SPS_20250419_tile148 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile148.mat', 'file')
    fprintf('\n[1] (16/36) %s\n', '20250422T182135_T11SPS_20250419_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile148.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile148.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (16/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile148');
end

% --- Scene 17/36: 20250422T182135_T11SPS_20250419_tile149 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile149.mat', 'file')
    fprintf('\n[1] (17/36) %s\n', '20250422T182135_T11SPS_20250419_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile149.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile149.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (17/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile149');
end

% --- Scene 18/36: 20250422T182135_T11SPS_20250419_tile150 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile150.mat', 'file')
    fprintf('\n[1] (18/36) %s\n', '20250422T182135_T11SPS_20250419_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile150.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile150.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (18/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile150');
end

% --- Scene 19/36: 20250422T182135_T11SPS_20250419_tile154 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile154.mat', 'file')
    fprintf('\n[1] (19/36) %s\n', '20250422T182135_T11SPS_20250419_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile154.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile154.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile154.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (19/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile154');
end

% --- Scene 20/36: 20250422T182135_T11SPS_20250419_tile155 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile155.mat', 'file')
    fprintf('\n[1] (20/36) %s\n', '20250422T182135_T11SPS_20250419_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile155.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile155.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (20/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile155');
end

% --- Scene 21/36: 20250422T182135_T11SPS_20250419_tile156 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile156.mat', 'file')
    fprintf('\n[1] (21/36) %s\n', '20250422T182135_T11SPS_20250419_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile156.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile156.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (21/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile156');
end

% --- Scene 22/36: 20250422T182135_T11SPS_20250419_tile157 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile157.mat', 'file')
    fprintf('\n[1] (22/36) %s\n', '20250422T182135_T11SPS_20250419_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile157.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile157.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (22/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile157');
end

% --- Scene 23/36: 20250422T182135_T11SPS_20250419_tile158 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile158.mat', 'file')
    fprintf('\n[1] (23/36) %s\n', '20250422T182135_T11SPS_20250419_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile158.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile158.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (23/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile158');
end

% --- Scene 24/36: 20250422T182135_T11SPS_20250419_tile159 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile159.mat', 'file')
    fprintf('\n[1] (24/36) %s\n', '20250422T182135_T11SPS_20250419_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile159.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile159.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (24/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile159');
end

% --- Scene 25/36: 20250422T182135_T11SPS_20250419_tile160 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile160.mat', 'file')
    fprintf('\n[1] (25/36) %s\n', '20250422T182135_T11SPS_20250419_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile160.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile160.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (25/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile160');
end

% --- Scene 26/36: 20250422T182135_T11SPS_20250419_tile161 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile161.mat', 'file')
    fprintf('\n[1] (26/36) %s\n', '20250422T182135_T11SPS_20250419_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile161.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile161.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (26/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile161');
end

% --- Scene 27/36: 20250422T182135_T11SPS_20250419_tile162 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile162.mat', 'file')
    fprintf('\n[1] (27/36) %s\n', '20250422T182135_T11SPS_20250419_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile162.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile162.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (27/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile162');
end

% --- Scene 28/36: 20250422T182135_T11SPS_20250419_tile163 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile163.mat', 'file')
    fprintf('\n[1] (28/36) %s\n', '20250422T182135_T11SPS_20250419_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile163.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile163.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (28/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile163');
end

% --- Scene 29/36: 20250422T182135_T11SPS_20250419_tile164 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile164.mat', 'file')
    fprintf('\n[1] (29/36) %s\n', '20250422T182135_T11SPS_20250419_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile164.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile164.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (29/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile164');
end

% --- Scene 30/36: 20250422T182135_T11SPS_20250419_tile165 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile165.mat', 'file')
    fprintf('\n[1] (30/36) %s\n', '20250422T182135_T11SPS_20250419_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile165.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile165.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (30/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile165');
end

% --- Scene 31/36: 20250422T182135_T11SPS_20250419_tile166 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile166.mat', 'file')
    fprintf('\n[1] (31/36) %s\n', '20250422T182135_T11SPS_20250419_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile166.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile166.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (31/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile166');
end

% --- Scene 32/36: 20250422T182135_T11SPS_20250419_tile167 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile167.mat', 'file')
    fprintf('\n[1] (32/36) %s\n', '20250422T182135_T11SPS_20250419_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile167.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile167.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile167.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (32/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile167');
end

% --- Scene 33/36: 20250422T182135_T11SPS_20250419_tile168 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile168.mat', 'file')
    fprintf('\n[1] (33/36) %s\n', '20250422T182135_T11SPS_20250419_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile168.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile168.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile168.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (33/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile168');
end

% --- Scene 34/36: 20250422T182135_T11SPS_20250419_tile171 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile171.mat', 'file')
    fprintf('\n[1] (34/36) %s\n', '20250422T182135_T11SPS_20250419_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile171.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile171.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (34/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile171');
end

% --- Scene 35/36: 20250422T182135_T11SPS_20250419_tile172 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile172.mat', 'file')
    fprintf('\n[1] (35/36) %s\n', '20250422T182135_T11SPS_20250419_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile172.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile172.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (35/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile172');
end

% --- Scene 36/36: 20250422T182135_T11SPS_20250419_tile173 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat', 'file')
    fprintf('\n[1] (36/36) %s\n', '20250422T182135_T11SPS_20250419_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile173.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile173.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[1] (36/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile173');
end

fprintf('\n=== Worker 1 finished all 36 scenes ===\n');
exit;