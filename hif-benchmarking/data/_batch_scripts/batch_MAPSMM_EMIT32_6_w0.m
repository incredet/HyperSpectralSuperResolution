% Auto-generated batch script (worker 0)
% Dataset: EMIT32, Method: MAPSMM, Scale: 6
% Scenes: 36

cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'MAPSMM')));

% --- Scene 1/36: 20250422T182135_T11SPS_20250419_tile041 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile041.mat', 'file')
    fprintf('\n[0] (1/36) %s\n', '20250422T182135_T11SPS_20250419_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile041.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile041.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile041.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile041');
end

% --- Scene 2/36: 20250422T182135_T11SPS_20250419_tile042 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile042.mat', 'file')
    fprintf('\n[0] (2/36) %s\n', '20250422T182135_T11SPS_20250419_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile042.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile042.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile042.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile042');
end

% --- Scene 3/36: 20250422T182135_T11SPS_20250419_tile057 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile057.mat', 'file')
    fprintf('\n[0] (3/36) %s\n', '20250422T182135_T11SPS_20250419_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile057.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile057.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile057');
end

% --- Scene 4/36: 20250422T182135_T11SPS_20250419_tile058 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile058.mat', 'file')
    fprintf('\n[0] (4/36) %s\n', '20250422T182135_T11SPS_20250419_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile058.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile058.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile058');
end

% --- Scene 5/36: 20250422T182135_T11SPS_20250419_tile059 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile059.mat', 'file')
    fprintf('\n[0] (5/36) %s\n', '20250422T182135_T11SPS_20250419_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile059.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile059.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile059');
end

% --- Scene 6/36: 20250422T182135_T11SPS_20250419_tile060 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile060.mat', 'file')
    fprintf('\n[0] (6/36) %s\n', '20250422T182135_T11SPS_20250419_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile060.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile060.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile060');
end

% --- Scene 7/36: 20250422T182135_T11SPS_20250419_tile073 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile073.mat', 'file')
    fprintf('\n[0] (7/36) %s\n', '20250422T182135_T11SPS_20250419_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile073.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile073.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (7/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile073');
end

% --- Scene 8/36: 20250422T182135_T11SPS_20250419_tile074 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile074.mat', 'file')
    fprintf('\n[0] (8/36) %s\n', '20250422T182135_T11SPS_20250419_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile074.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile074.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (8/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile074');
end

% --- Scene 9/36: 20250422T182135_T11SPS_20250419_tile075 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile075.mat', 'file')
    fprintf('\n[0] (9/36) %s\n', '20250422T182135_T11SPS_20250419_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile075.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile075.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (9/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile075');
end

% --- Scene 10/36: 20250422T182135_T11SPS_20250419_tile076 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile076.mat', 'file')
    fprintf('\n[0] (10/36) %s\n', '20250422T182135_T11SPS_20250419_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile076.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile076.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (10/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile076');
end

% --- Scene 11/36: 20250422T182135_T11SPS_20250419_tile077 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile077.mat', 'file')
    fprintf('\n[0] (11/36) %s\n', '20250422T182135_T11SPS_20250419_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile077.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile077.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (11/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile077');
end

% --- Scene 12/36: 20250422T182135_T11SPS_20250419_tile078 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile078.mat', 'file')
    fprintf('\n[0] (12/36) %s\n', '20250422T182135_T11SPS_20250419_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile078.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile078.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (12/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile078');
end

% --- Scene 13/36: 20250422T182135_T11SPS_20250419_tile089 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile089.mat', 'file')
    fprintf('\n[0] (13/36) %s\n', '20250422T182135_T11SPS_20250419_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile089.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile089.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (13/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile089');
end

% --- Scene 14/36: 20250422T182135_T11SPS_20250419_tile090 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile090.mat', 'file')
    fprintf('\n[0] (14/36) %s\n', '20250422T182135_T11SPS_20250419_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile090.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile090.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (14/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile090');
end

% --- Scene 15/36: 20250422T182135_T11SPS_20250419_tile091 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile091.mat', 'file')
    fprintf('\n[0] (15/36) %s\n', '20250422T182135_T11SPS_20250419_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile091.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile091.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (15/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile091');
end

% --- Scene 16/36: 20250422T182135_T11SPS_20250419_tile092 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile092.mat', 'file')
    fprintf('\n[0] (16/36) %s\n', '20250422T182135_T11SPS_20250419_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile092.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile092.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (16/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile092');
end

% --- Scene 17/36: 20250422T182135_T11SPS_20250419_tile093 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile093.mat', 'file')
    fprintf('\n[0] (17/36) %s\n', '20250422T182135_T11SPS_20250419_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile093.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile093.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (17/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile093');
end

% --- Scene 18/36: 20250422T182135_T11SPS_20250419_tile094 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile094.mat', 'file')
    fprintf('\n[0] (18/36) %s\n', '20250422T182135_T11SPS_20250419_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile094.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile094.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (18/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile094');
end

% --- Scene 19/36: 20250422T182135_T11SPS_20250419_tile095 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile095.mat', 'file')
    fprintf('\n[0] (19/36) %s\n', '20250422T182135_T11SPS_20250419_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile095.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (19/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile095');
end

% --- Scene 20/36: 20250422T182135_T11SPS_20250419_tile096 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile096.mat', 'file')
    fprintf('\n[0] (20/36) %s\n', '20250422T182135_T11SPS_20250419_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile096.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile096.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile096.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (20/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile096');
end

% --- Scene 21/36: 20250422T182135_T11SPS_20250419_tile105 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile105.mat', 'file')
    fprintf('\n[0] (21/36) %s\n', '20250422T182135_T11SPS_20250419_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile105.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile105.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (21/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile105');
end

% --- Scene 22/36: 20250422T182135_T11SPS_20250419_tile106 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile106.mat', 'file')
    fprintf('\n[0] (22/36) %s\n', '20250422T182135_T11SPS_20250419_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile106.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile106.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (22/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile106');
end

% --- Scene 23/36: 20250422T182135_T11SPS_20250419_tile107 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile107.mat', 'file')
    fprintf('\n[0] (23/36) %s\n', '20250422T182135_T11SPS_20250419_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile107.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile107.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (23/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile107');
end

% --- Scene 24/36: 20250422T182135_T11SPS_20250419_tile108 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile108.mat', 'file')
    fprintf('\n[0] (24/36) %s\n', '20250422T182135_T11SPS_20250419_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile108.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile108.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile108.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (24/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile108');
end

% --- Scene 25/36: 20250422T182135_T11SPS_20250419_tile109 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile109.mat', 'file')
    fprintf('\n[0] (25/36) %s\n', '20250422T182135_T11SPS_20250419_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile109.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile109.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (25/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile109');
end

% --- Scene 26/36: 20250422T182135_T11SPS_20250419_tile110 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile110.mat', 'file')
    fprintf('\n[0] (26/36) %s\n', '20250422T182135_T11SPS_20250419_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile110.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile110.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (26/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile110');
end

% --- Scene 27/36: 20250422T182135_T11SPS_20250419_tile111 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile111.mat', 'file')
    fprintf('\n[0] (27/36) %s\n', '20250422T182135_T11SPS_20250419_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile111.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile111.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (27/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile111');
end

% --- Scene 28/36: 20250422T182135_T11SPS_20250419_tile112 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile112.mat', 'file')
    fprintf('\n[0] (28/36) %s\n', '20250422T182135_T11SPS_20250419_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile112.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile112.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (28/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile112');
end

% --- Scene 29/36: 20250422T182135_T11SPS_20250419_tile113 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile113.mat', 'file')
    fprintf('\n[0] (29/36) %s\n', '20250422T182135_T11SPS_20250419_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile113.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile113.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (29/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile113');
end

% --- Scene 30/36: 20250422T182135_T11SPS_20250419_tile114 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile114.mat', 'file')
    fprintf('\n[0] (30/36) %s\n', '20250422T182135_T11SPS_20250419_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile114.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile114.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (30/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile114');
end

% --- Scene 31/36: 20250422T182135_T11SPS_20250419_tile122 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile122.mat', 'file')
    fprintf('\n[0] (31/36) %s\n', '20250422T182135_T11SPS_20250419_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile122.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile122.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (31/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile122');
end

% --- Scene 32/36: 20250422T182135_T11SPS_20250419_tile123 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile123.mat', 'file')
    fprintf('\n[0] (32/36) %s\n', '20250422T182135_T11SPS_20250419_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile123.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile123.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (32/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile123');
end

% --- Scene 33/36: 20250422T182135_T11SPS_20250419_tile124 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile124.mat', 'file')
    fprintf('\n[0] (33/36) %s\n', '20250422T182135_T11SPS_20250419_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile124.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile124.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (33/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile124');
end

% --- Scene 34/36: 20250422T182135_T11SPS_20250419_tile125 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile125.mat', 'file')
    fprintf('\n[0] (34/36) %s\n', '20250422T182135_T11SPS_20250419_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile125.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile125.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (34/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile125');
end

% --- Scene 35/36: 20250422T182135_T11SPS_20250419_tile126 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile126.mat', 'file')
    fprintf('\n[0] (35/36) %s\n', '20250422T182135_T11SPS_20250419_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile126.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile126.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (35/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile126');
end

% --- Scene 36/36: 20250422T182135_T11SPS_20250419_tile127 ---
if ~exist('data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile127.mat', 'file')
    fprintf('\n[0] (36/36) %s\n', '20250422T182135_T11SPS_20250419_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250422T182135_T11SPS_20250419_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250422T182135_T11SPS_20250419_tile127.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32/6/20250422T182135_T11SPS_20250419_tile127.mat';
    MAPSMM_run;
    elapsed = toc;
    fid = fopen('data/SR/MAPSMM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250422T182135_T11SPS_20250419_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (36/36) %s — already exists, skipping\n', '20250422T182135_T11SPS_20250419_tile127');
end

fprintf('\n=== Worker 0 finished all 36 scenes ===\n');
exit;