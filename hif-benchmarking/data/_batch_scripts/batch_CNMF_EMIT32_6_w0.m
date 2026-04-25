% Auto-generated batch script (worker 0)
% Dataset: EMIT32, Method: CNMF, Scale: 6
% Scenes: 91

cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'CNMF')));

% --- Scene 1/91: 20250830T085101_T35KKT_20250829_tile021 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat', 'file')
    fprintf('\n[0] (1/91) %s\n', '20250830T085101_T35KKT_20250829_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile021.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile021');
end

% --- Scene 2/91: 20250830T085101_T35KKT_20250829_tile032 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat', 'file')
    fprintf('\n[0] (2/91) %s\n', '20250830T085101_T35KKT_20250829_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile032.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile032');
end

% --- Scene 3/91: 20250830T085101_T35KKT_20250829_tile033 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat', 'file')
    fprintf('\n[0] (3/91) %s\n', '20250830T085101_T35KKT_20250829_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile033.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile033');
end

% --- Scene 4/91: 20250830T085101_T35KKT_20250829_tile034 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat', 'file')
    fprintf('\n[0] (4/91) %s\n', '20250830T085101_T35KKT_20250829_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile034.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile034');
end

% --- Scene 5/91: 20250830T085101_T35KKT_20250829_tile043 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat', 'file')
    fprintf('\n[0] (5/91) %s\n', '20250830T085101_T35KKT_20250829_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile043.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile043');
end

% --- Scene 6/91: 20250830T085101_T35KKT_20250829_tile044 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat', 'file')
    fprintf('\n[0] (6/91) %s\n', '20250830T085101_T35KKT_20250829_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile044.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile044');
end

% --- Scene 7/91: 20250830T085101_T35KKT_20250829_tile045 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat', 'file')
    fprintf('\n[0] (7/91) %s\n', '20250830T085101_T35KKT_20250829_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile045.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (7/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile045');
end

% --- Scene 8/91: 20250830T085101_T35KKT_20250829_tile046 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat', 'file')
    fprintf('\n[0] (8/91) %s\n', '20250830T085101_T35KKT_20250829_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile046.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (8/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile046');
end

% --- Scene 9/91: 20250830T085101_T35KKT_20250829_tile054 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat', 'file')
    fprintf('\n[0] (9/91) %s\n', '20250830T085101_T35KKT_20250829_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile054.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (9/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile054');
end

% --- Scene 10/91: 20250830T085101_T35KKT_20250829_tile055 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat', 'file')
    fprintf('\n[0] (10/91) %s\n', '20250830T085101_T35KKT_20250829_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile055.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (10/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile055');
end

% --- Scene 11/91: 20250830T085101_T35KKT_20250829_tile056 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat', 'file')
    fprintf('\n[0] (11/91) %s\n', '20250830T085101_T35KKT_20250829_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile056.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (11/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile056');
end

% --- Scene 12/91: 20250830T085101_T35KKT_20250829_tile057 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat', 'file')
    fprintf('\n[0] (12/91) %s\n', '20250830T085101_T35KKT_20250829_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile057.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (12/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile057');
end

% --- Scene 13/91: 20250830T085101_T35KKT_20250829_tile058 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat', 'file')
    fprintf('\n[0] (13/91) %s\n', '20250830T085101_T35KKT_20250829_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile058.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (13/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile058');
end

% --- Scene 14/91: 20250830T085101_T35KKT_20250829_tile059 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat', 'file')
    fprintf('\n[0] (14/91) %s\n', '20250830T085101_T35KKT_20250829_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile059.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (14/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile059');
end

% --- Scene 15/91: 20250830T085101_T35KKT_20250829_tile065 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat', 'file')
    fprintf('\n[0] (15/91) %s\n', '20250830T085101_T35KKT_20250829_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile065.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (15/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile065');
end

% --- Scene 16/91: 20250830T085101_T35KKT_20250829_tile066 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat', 'file')
    fprintf('\n[0] (16/91) %s\n', '20250830T085101_T35KKT_20250829_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile066.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (16/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile066');
end

% --- Scene 17/91: 20250830T085101_T35KKT_20250829_tile067 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat', 'file')
    fprintf('\n[0] (17/91) %s\n', '20250830T085101_T35KKT_20250829_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile067.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (17/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile067');
end

% --- Scene 18/91: 20250830T085101_T35KKT_20250829_tile068 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat', 'file')
    fprintf('\n[0] (18/91) %s\n', '20250830T085101_T35KKT_20250829_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile068.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (18/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile068');
end

% --- Scene 19/91: 20250830T085101_T35KKT_20250829_tile069 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat', 'file')
    fprintf('\n[0] (19/91) %s\n', '20250830T085101_T35KKT_20250829_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile069.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (19/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile069');
end

% --- Scene 20/91: 20250830T085101_T35KKT_20250829_tile070 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat', 'file')
    fprintf('\n[0] (20/91) %s\n', '20250830T085101_T35KKT_20250829_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile070.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (20/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile070');
end

% --- Scene 21/91: 20250830T085101_T35KKT_20250829_tile071 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat', 'file')
    fprintf('\n[0] (21/91) %s\n', '20250830T085101_T35KKT_20250829_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile071.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (21/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile071');
end

% --- Scene 22/91: 20250830T085101_T35KKT_20250829_tile076 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat', 'file')
    fprintf('\n[0] (22/91) %s\n', '20250830T085101_T35KKT_20250829_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile076.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (22/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile076');
end

% --- Scene 23/91: 20250830T085101_T35KKT_20250829_tile077 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat', 'file')
    fprintf('\n[0] (23/91) %s\n', '20250830T085101_T35KKT_20250829_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile077.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (23/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile077');
end

% --- Scene 24/91: 20250830T085101_T35KKT_20250829_tile078 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat', 'file')
    fprintf('\n[0] (24/91) %s\n', '20250830T085101_T35KKT_20250829_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile078.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (24/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile078');
end

% --- Scene 25/91: 20250830T085101_T35KKT_20250829_tile079 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat', 'file')
    fprintf('\n[0] (25/91) %s\n', '20250830T085101_T35KKT_20250829_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile079.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (25/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile079');
end

% --- Scene 26/91: 20250830T085101_T35KKT_20250829_tile080 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat', 'file')
    fprintf('\n[0] (26/91) %s\n', '20250830T085101_T35KKT_20250829_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile080.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (26/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile080');
end

% --- Scene 27/91: 20250830T085101_T35KKT_20250829_tile081 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat', 'file')
    fprintf('\n[0] (27/91) %s\n', '20250830T085101_T35KKT_20250829_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile081.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (27/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile081');
end

% --- Scene 28/91: 20250830T085101_T35KKT_20250829_tile082 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat', 'file')
    fprintf('\n[0] (28/91) %s\n', '20250830T085101_T35KKT_20250829_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile082.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (28/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile082');
end

% --- Scene 29/91: 20250830T085101_T35KKT_20250829_tile083 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat', 'file')
    fprintf('\n[0] (29/91) %s\n', '20250830T085101_T35KKT_20250829_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile083.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (29/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile083');
end

% --- Scene 30/91: 20250830T085101_T35KKT_20250829_tile087 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat', 'file')
    fprintf('\n[0] (30/91) %s\n', '20250830T085101_T35KKT_20250829_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile087.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (30/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile087');
end

% --- Scene 31/91: 20250830T085101_T35KKT_20250829_tile088 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat', 'file')
    fprintf('\n[0] (31/91) %s\n', '20250830T085101_T35KKT_20250829_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile088.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (31/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile088');
end

% --- Scene 32/91: 20250830T085101_T35KKT_20250829_tile089 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat', 'file')
    fprintf('\n[0] (32/91) %s\n', '20250830T085101_T35KKT_20250829_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile089.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (32/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile089');
end

% --- Scene 33/91: 20250830T085101_T35KKT_20250829_tile090 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat', 'file')
    fprintf('\n[0] (33/91) %s\n', '20250830T085101_T35KKT_20250829_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile090.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (33/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile090');
end

% --- Scene 34/91: 20250830T085101_T35KKT_20250829_tile091 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat', 'file')
    fprintf('\n[0] (34/91) %s\n', '20250830T085101_T35KKT_20250829_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile091.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (34/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile091');
end

% --- Scene 35/91: 20250830T085101_T35KKT_20250829_tile092 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat', 'file')
    fprintf('\n[0] (35/91) %s\n', '20250830T085101_T35KKT_20250829_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile092.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (35/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile092');
end

% --- Scene 36/91: 20250830T085101_T35KKT_20250829_tile093 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat', 'file')
    fprintf('\n[0] (36/91) %s\n', '20250830T085101_T35KKT_20250829_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile093.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (36/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile093');
end

% --- Scene 37/91: 20250830T085101_T35KKT_20250829_tile094 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat', 'file')
    fprintf('\n[0] (37/91) %s\n', '20250830T085101_T35KKT_20250829_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile094.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (37/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile094');
end

% --- Scene 38/91: 20250830T085101_T35KKT_20250829_tile095 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat', 'file')
    fprintf('\n[0] (38/91) %s\n', '20250830T085101_T35KKT_20250829_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile095.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (38/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile095');
end

% --- Scene 39/91: 20250830T085101_T35KKT_20250829_tile098 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat', 'file')
    fprintf('\n[0] (39/91) %s\n', '20250830T085101_T35KKT_20250829_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile098.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (39/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile098');
end

% --- Scene 40/91: 20250830T085101_T35KKT_20250829_tile099 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat', 'file')
    fprintf('\n[0] (40/91) %s\n', '20250830T085101_T35KKT_20250829_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile099.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (40/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile099');
end

% --- Scene 41/91: 20250830T085101_T35KKT_20250829_tile100 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat', 'file')
    fprintf('\n[0] (41/91) %s\n', '20250830T085101_T35KKT_20250829_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile100.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (41/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile100');
end

% --- Scene 42/91: 20250830T085101_T35KKT_20250829_tile101 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat', 'file')
    fprintf('\n[0] (42/91) %s\n', '20250830T085101_T35KKT_20250829_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile101.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (42/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile101');
end

% --- Scene 43/91: 20250830T085101_T35KKT_20250829_tile102 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat', 'file')
    fprintf('\n[0] (43/91) %s\n', '20250830T085101_T35KKT_20250829_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile102.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (43/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile102');
end

% --- Scene 44/91: 20250830T085101_T35KKT_20250829_tile103 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat', 'file')
    fprintf('\n[0] (44/91) %s\n', '20250830T085101_T35KKT_20250829_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile103.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (44/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile103');
end

% --- Scene 45/91: 20250830T085101_T35KKT_20250829_tile104 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat', 'file')
    fprintf('\n[0] (45/91) %s\n', '20250830T085101_T35KKT_20250829_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile104.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (45/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile104');
end

% --- Scene 46/91: 20250830T085101_T35KKT_20250829_tile105 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat', 'file')
    fprintf('\n[0] (46/91) %s\n', '20250830T085101_T35KKT_20250829_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile105.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (46/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile105');
end

% --- Scene 47/91: 20250830T085101_T35KKT_20250829_tile106 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat', 'file')
    fprintf('\n[0] (47/91) %s\n', '20250830T085101_T35KKT_20250829_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile106.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (47/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile106');
end

% --- Scene 48/91: 20250830T085101_T35KKT_20250829_tile107 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat', 'file')
    fprintf('\n[0] (48/91) %s\n', '20250830T085101_T35KKT_20250829_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile107.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (48/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile107');
end

% --- Scene 49/91: 20250830T085101_T35KKT_20250829_tile109 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat', 'file')
    fprintf('\n[0] (49/91) %s\n', '20250830T085101_T35KKT_20250829_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile109.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (49/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile109');
end

% --- Scene 50/91: 20250830T085101_T35KKT_20250829_tile110 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat', 'file')
    fprintf('\n[0] (50/91) %s\n', '20250830T085101_T35KKT_20250829_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile110.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (50/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile110');
end

% --- Scene 51/91: 20250830T085101_T35KKT_20250829_tile111 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat', 'file')
    fprintf('\n[0] (51/91) %s\n', '20250830T085101_T35KKT_20250829_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile111.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (51/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile111');
end

% --- Scene 52/91: 20250830T085101_T35KKT_20250829_tile112 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat', 'file')
    fprintf('\n[0] (52/91) %s\n', '20250830T085101_T35KKT_20250829_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile112.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (52/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile112');
end

% --- Scene 53/91: 20250830T085101_T35KKT_20250829_tile113 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat', 'file')
    fprintf('\n[0] (53/91) %s\n', '20250830T085101_T35KKT_20250829_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile113.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (53/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile113');
end

% --- Scene 54/91: 20250830T085101_T35KKT_20250829_tile114 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat', 'file')
    fprintf('\n[0] (54/91) %s\n', '20250830T085101_T35KKT_20250829_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile114.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (54/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile114');
end

% --- Scene 55/91: 20250830T085101_T35KKT_20250829_tile115 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat', 'file')
    fprintf('\n[0] (55/91) %s\n', '20250830T085101_T35KKT_20250829_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile115.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (55/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile115');
end

% --- Scene 56/91: 20250830T085101_T35KKT_20250829_tile116 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat', 'file')
    fprintf('\n[0] (56/91) %s\n', '20250830T085101_T35KKT_20250829_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile116.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (56/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile116');
end

% --- Scene 57/91: 20250830T085101_T35KKT_20250829_tile117 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat', 'file')
    fprintf('\n[0] (57/91) %s\n', '20250830T085101_T35KKT_20250829_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile117.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (57/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile117');
end

% --- Scene 58/91: 20250830T085101_T35KKT_20250829_tile118 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat', 'file')
    fprintf('\n[0] (58/91) %s\n', '20250830T085101_T35KKT_20250829_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile118.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (58/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile118');
end

% --- Scene 59/91: 20250830T085101_T35KKT_20250829_tile119 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat', 'file')
    fprintf('\n[0] (59/91) %s\n', '20250830T085101_T35KKT_20250829_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile119.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (59/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile119');
end

% --- Scene 60/91: 20250830T085101_T35KKT_20250829_tile121 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat', 'file')
    fprintf('\n[0] (60/91) %s\n', '20250830T085101_T35KKT_20250829_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile121.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (60/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile121');
end

% --- Scene 61/91: 20250830T085101_T35KKT_20250829_tile122 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat', 'file')
    fprintf('\n[0] (61/91) %s\n', '20250830T085101_T35KKT_20250829_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile122.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (61/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile122');
end

% --- Scene 62/91: 20250830T085101_T35KKT_20250829_tile123 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat', 'file')
    fprintf('\n[0] (62/91) %s\n', '20250830T085101_T35KKT_20250829_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile123.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (62/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile123');
end

% --- Scene 63/91: 20250830T085101_T35KKT_20250829_tile124 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat', 'file')
    fprintf('\n[0] (63/91) %s\n', '20250830T085101_T35KKT_20250829_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile124.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (63/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile124');
end

% --- Scene 64/91: 20250830T085101_T35KKT_20250829_tile125 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat', 'file')
    fprintf('\n[0] (64/91) %s\n', '20250830T085101_T35KKT_20250829_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile125.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (64/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile125');
end

% --- Scene 65/91: 20250830T085101_T35KKT_20250829_tile126 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat', 'file')
    fprintf('\n[0] (65/91) %s\n', '20250830T085101_T35KKT_20250829_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile126.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (65/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile126');
end

% --- Scene 66/91: 20250830T085101_T35KKT_20250829_tile127 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat', 'file')
    fprintf('\n[0] (66/91) %s\n', '20250830T085101_T35KKT_20250829_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile127.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (66/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile127');
end

% --- Scene 67/91: 20250830T085101_T35KKT_20250829_tile128 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat', 'file')
    fprintf('\n[0] (67/91) %s\n', '20250830T085101_T35KKT_20250829_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile128.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (67/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile128');
end

% --- Scene 68/91: 20250830T085101_T35KKT_20250829_tile129 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat', 'file')
    fprintf('\n[0] (68/91) %s\n', '20250830T085101_T35KKT_20250829_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile129.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (68/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile129');
end

% --- Scene 69/91: 20250830T085101_T35KKT_20250829_tile130 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat', 'file')
    fprintf('\n[0] (69/91) %s\n', '20250830T085101_T35KKT_20250829_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile130.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (69/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile130');
end

% --- Scene 70/91: 20250830T085101_T35KKT_20250829_tile134 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat', 'file')
    fprintf('\n[0] (70/91) %s\n', '20250830T085101_T35KKT_20250829_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile134.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (70/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile134');
end

% --- Scene 71/91: 20250830T085101_T35KKT_20250829_tile135 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat', 'file')
    fprintf('\n[0] (71/91) %s\n', '20250830T085101_T35KKT_20250829_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile135.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (71/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile135');
end

% --- Scene 72/91: 20250830T085101_T35KKT_20250829_tile136 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat', 'file')
    fprintf('\n[0] (72/91) %s\n', '20250830T085101_T35KKT_20250829_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile136.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (72/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile136');
end

% --- Scene 73/91: 20250830T085101_T35KKT_20250829_tile137 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat', 'file')
    fprintf('\n[0] (73/91) %s\n', '20250830T085101_T35KKT_20250829_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile137.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (73/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile137');
end

% --- Scene 74/91: 20250830T085101_T35KKT_20250829_tile138 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat', 'file')
    fprintf('\n[0] (74/91) %s\n', '20250830T085101_T35KKT_20250829_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile138.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (74/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile138');
end

% --- Scene 75/91: 20250830T085101_T35KKT_20250829_tile139 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat', 'file')
    fprintf('\n[0] (75/91) %s\n', '20250830T085101_T35KKT_20250829_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile139.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (75/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile139');
end

% --- Scene 76/91: 20250830T085101_T35KKT_20250829_tile140 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat', 'file')
    fprintf('\n[0] (76/91) %s\n', '20250830T085101_T35KKT_20250829_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile140.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (76/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile140');
end

% --- Scene 77/91: 20250830T085101_T35KKT_20250829_tile141 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat', 'file')
    fprintf('\n[0] (77/91) %s\n', '20250830T085101_T35KKT_20250829_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile141.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (77/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile141');
end

% --- Scene 78/91: 20250830T085101_T35KKT_20250829_tile147 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat', 'file')
    fprintf('\n[0] (78/91) %s\n', '20250830T085101_T35KKT_20250829_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile147.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (78/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile147');
end

% --- Scene 79/91: 20250830T085101_T35KKT_20250829_tile148 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat', 'file')
    fprintf('\n[0] (79/91) %s\n', '20250830T085101_T35KKT_20250829_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile148.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (79/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile148');
end

% --- Scene 80/91: 20250830T085101_T35KKT_20250829_tile149 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat', 'file')
    fprintf('\n[0] (80/91) %s\n', '20250830T085101_T35KKT_20250829_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile149.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (80/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile149');
end

% --- Scene 81/91: 20250830T085101_T35KKT_20250829_tile150 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat', 'file')
    fprintf('\n[0] (81/91) %s\n', '20250830T085101_T35KKT_20250829_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile150.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (81/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile150');
end

% --- Scene 82/91: 20250830T085101_T35KKT_20250829_tile151 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat', 'file')
    fprintf('\n[0] (82/91) %s\n', '20250830T085101_T35KKT_20250829_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile151.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (82/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile151');
end

% --- Scene 83/91: 20250830T085101_T35KKT_20250829_tile152 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat', 'file')
    fprintf('\n[0] (83/91) %s\n', '20250830T085101_T35KKT_20250829_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile152.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (83/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile152');
end

% --- Scene 84/91: 20250830T085101_T35KKT_20250829_tile160 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat', 'file')
    fprintf('\n[0] (84/91) %s\n', '20250830T085101_T35KKT_20250829_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile160.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (84/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile160');
end

% --- Scene 85/91: 20250830T085101_T35KKT_20250829_tile161 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat', 'file')
    fprintf('\n[0] (85/91) %s\n', '20250830T085101_T35KKT_20250829_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile161.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (85/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile161');
end

% --- Scene 86/91: 20250830T085101_T35KKT_20250829_tile162 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat', 'file')
    fprintf('\n[0] (86/91) %s\n', '20250830T085101_T35KKT_20250829_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile162.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (86/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile162');
end

% --- Scene 87/91: 20250830T085101_T35KKT_20250829_tile163 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat', 'file')
    fprintf('\n[0] (87/91) %s\n', '20250830T085101_T35KKT_20250829_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile163.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (87/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile163');
end

% --- Scene 88/91: 20250830T085101_T35KKT_20250829_tile173 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat', 'file')
    fprintf('\n[0] (88/91) %s\n', '20250830T085101_T35KKT_20250829_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile173.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (88/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile173');
end

% --- Scene 89/91: 20250830T085101_T35KKT_20250829_tile174 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat', 'file')
    fprintf('\n[0] (89/91) %s\n', '20250830T085101_T35KKT_20250829_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile174.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (89/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile174');
end

% --- Scene 90/91: 20250830T085101_T35KKT_20250829_tile175 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat', 'file')
    fprintf('\n[0] (90/91) %s\n', '20250830T085101_T35KKT_20250829_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile175.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (90/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile175');
end

% --- Scene 91/91: 20250830T085101_T35KKT_20250829_tile186 ---
if ~exist('data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat', 'file')
    fprintf('\n[0] (91/91) %s\n', '20250830T085101_T35KKT_20250829_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile186.mat';
    sri_path = 'data/SR/CNMF/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    CNMF_run;
    elapsed = toc;
    fid = fopen('data/SR/CNMF/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (91/91) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile186');
end

fprintf('\n=== Worker 0 finished all 91 scenes ===\n');
exit;