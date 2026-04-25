% Auto-generated batch script (worker 1)
% Dataset: EMIT32_WALD, Method: SFIM, Scale: 6
% Scenes: 100

cd('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'methods', 'SFIM')));

% --- Scene 1/100: lat13.0_lon14.0_20231029_T33PUQ_t066 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t066.mat', 'file')
    fprintf('\n[1] (1/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t066');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t066.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t066.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t066.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t066,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (1/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t066');
end

% --- Scene 2/100: lat13.0_lon14.0_20231029_T33PUQ_t070 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t070.mat', 'file')
    fprintf('\n[1] (2/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t070');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t070.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t070.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t070.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t070,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (2/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t070');
end

% --- Scene 3/100: lat13.0_lon14.0_20231029_T33PUQ_t086 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t086.mat', 'file')
    fprintf('\n[1] (3/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t086');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t086.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t086.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t086.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t086,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (3/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t086');
end

% --- Scene 4/100: lat13.0_lon14.0_20231029_T33PUQ_t089 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t089.mat', 'file')
    fprintf('\n[1] (4/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t089');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t089.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t089.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t089.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t089,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (4/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t089');
end

% --- Scene 5/100: lat13.0_lon14.0_20231029_T33PUQ_t091 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t091.mat', 'file')
    fprintf('\n[1] (5/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t091');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t091.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t091.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t091.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t091,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (5/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t091');
end

% --- Scene 6/100: lat13.0_lon14.0_20231029_T33PUQ_t114 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t114.mat', 'file')
    fprintf('\n[1] (6/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t114');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t114.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t114.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t114.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t114,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (6/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t114');
end

% --- Scene 7/100: lat13.0_lon14.0_20231029_T33PUQ_t126 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t126.mat', 'file')
    fprintf('\n[1] (7/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t126');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t126.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t126.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t126.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t126,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (7/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t126');
end

% --- Scene 8/100: lat13.5_lon40.7_20250330_T37PFQ_t029 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t029.mat', 'file')
    fprintf('\n[1] (8/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t029');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t029.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t029.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t029.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t029,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (8/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t029');
end

% --- Scene 9/100: lat13.5_lon40.7_20250330_T37PFQ_t033 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t033.mat', 'file')
    fprintf('\n[1] (9/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t033');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t033.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t033.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t033.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t033,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (9/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t033');
end

% --- Scene 10/100: lat13.5_lon40.7_20250330_T37PFQ_t072 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t072.mat', 'file')
    fprintf('\n[1] (10/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t072');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t072.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t072.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t072.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t072,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (10/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t072');
end

% --- Scene 11/100: lat13.5_lon40.7_20250330_T37PFQ_t102 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t102.mat', 'file')
    fprintf('\n[1] (11/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t102');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t102.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t102.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t102.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t102,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (11/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t102');
end

% --- Scene 12/100: lat13.5_lon40.7_20250330_T37PFQ_t103 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t103.mat', 'file')
    fprintf('\n[1] (12/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t103');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t103.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t103.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t103.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t103,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (12/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t103');
end

% --- Scene 13/100: lat13.5_lon40.7_20250330_T37PFQ_t132 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t132.mat', 'file')
    fprintf('\n[1] (13/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t132');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t132.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t132.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t132.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t132,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (13/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t132');
end

% --- Scene 14/100: lat13.5_lon40.7_20250330_T37PFQ_t134 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t134.mat', 'file')
    fprintf('\n[1] (14/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t134');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t134.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t134.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t134.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t134,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (14/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t134');
end

% --- Scene 15/100: lat13.5_lon40.7_20250330_T37PFQ_t135 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t135.mat', 'file')
    fprintf('\n[1] (15/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t135');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t135.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t135.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t135.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t135,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (15/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t135');
end

% --- Scene 16/100: lat13.5_lon40.7_20250330_T37PFQ_t212 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t212.mat', 'file')
    fprintf('\n[1] (16/100) %s\n', 'lat13.5_lon40.7_20250330_T37PFQ_t212');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t212.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.5_lon40.7_20250330_T37PFQ_t212.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat13.5_lon40.7_20250330_T37PFQ_t212.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.5_lon40.7_20250330_T37PFQ_t212,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (16/100) %s — already exists, skipping\n', 'lat13.5_lon40.7_20250330_T37PFQ_t212');
end

% --- Scene 17/100: lat14.5_lon33.5_20251024_T36PWB_t069 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t069.mat', 'file')
    fprintf('\n[1] (17/100) %s\n', 'lat14.5_lon33.5_20251024_T36PWB_t069');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t069.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat14.5_lon33.5_20251024_T36PWB_t069.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t069.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat14.5_lon33.5_20251024_T36PWB_t069,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (17/100) %s — already exists, skipping\n', 'lat14.5_lon33.5_20251024_T36PWB_t069');
end

% --- Scene 18/100: lat14.5_lon33.5_20251024_T36PWB_t085 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t085.mat', 'file')
    fprintf('\n[1] (18/100) %s\n', 'lat14.5_lon33.5_20251024_T36PWB_t085');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t085.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat14.5_lon33.5_20251024_T36PWB_t085.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t085.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat14.5_lon33.5_20251024_T36PWB_t085,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (18/100) %s — already exists, skipping\n', 'lat14.5_lon33.5_20251024_T36PWB_t085');
end

% --- Scene 19/100: lat14.5_lon33.5_20251024_T36PWB_t097 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t097.mat', 'file')
    fprintf('\n[1] (19/100) %s\n', 'lat14.5_lon33.5_20251024_T36PWB_t097');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t097.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat14.5_lon33.5_20251024_T36PWB_t097.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat14.5_lon33.5_20251024_T36PWB_t097.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat14.5_lon33.5_20251024_T36PWB_t097,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (19/100) %s — already exists, skipping\n', 'lat14.5_lon33.5_20251024_T36PWB_t097');
end

% --- Scene 20/100: lat17.0_lon95.5_20251224_T46QGD_t163 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t163.mat', 'file')
    fprintf('\n[1] (20/100) %s\n', 'lat17.0_lon95.5_20251224_T46QGD_t163');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t163.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat17.0_lon95.5_20251224_T46QGD_t163.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t163.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat17.0_lon95.5_20251224_T46QGD_t163,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (20/100) %s — already exists, skipping\n', 'lat17.0_lon95.5_20251224_T46QGD_t163');
end

% --- Scene 21/100: lat17.0_lon95.5_20251224_T46QGD_t200 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t200.mat', 'file')
    fprintf('\n[1] (21/100) %s\n', 'lat17.0_lon95.5_20251224_T46QGD_t200');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t200.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat17.0_lon95.5_20251224_T46QGD_t200.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t200.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat17.0_lon95.5_20251224_T46QGD_t200,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (21/100) %s — already exists, skipping\n', 'lat17.0_lon95.5_20251224_T46QGD_t200');
end

% --- Scene 22/100: lat17.0_lon95.5_20251224_T46QGD_t278 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t278.mat', 'file')
    fprintf('\n[1] (22/100) %s\n', 'lat17.0_lon95.5_20251224_T46QGD_t278');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t278.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat17.0_lon95.5_20251224_T46QGD_t278.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat17.0_lon95.5_20251224_T46QGD_t278.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat17.0_lon95.5_20251224_T46QGD_t278,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (22/100) %s — already exists, skipping\n', 'lat17.0_lon95.5_20251224_T46QGD_t278');
end

% --- Scene 23/100: lat18.0_lon33.0_20231202_T36QWF_t104 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t104.mat', 'file')
    fprintf('\n[1] (23/100) %s\n', 'lat18.0_lon33.0_20231202_T36QWF_t104');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t104.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat18.0_lon33.0_20231202_T36QWF_t104.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t104.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat18.0_lon33.0_20231202_T36QWF_t104,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (23/100) %s — already exists, skipping\n', 'lat18.0_lon33.0_20231202_T36QWF_t104');
end

% --- Scene 24/100: lat18.0_lon33.0_20231202_T36QWF_t106 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t106.mat', 'file')
    fprintf('\n[1] (24/100) %s\n', 'lat18.0_lon33.0_20231202_T36QWF_t106');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t106.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat18.0_lon33.0_20231202_T36QWF_t106.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat18.0_lon33.0_20231202_T36QWF_t106.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat18.0_lon33.0_20231202_T36QWF_t106,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (24/100) %s — already exists, skipping\n', 'lat18.0_lon33.0_20231202_T36QWF_t106');
end

% --- Scene 25/100: lat19.4_lon-99.1_20260221_T14QMG_t039 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t039.mat', 'file')
    fprintf('\n[1] (25/100) %s\n', 'lat19.4_lon-99.1_20260221_T14QMG_t039');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t039.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat19.4_lon-99.1_20260221_T14QMG_t039.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t039.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat19.4_lon-99.1_20260221_T14QMG_t039,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (25/100) %s — already exists, skipping\n', 'lat19.4_lon-99.1_20260221_T14QMG_t039');
end

% --- Scene 26/100: lat19.4_lon-99.1_20260221_T14QMG_t045 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t045.mat', 'file')
    fprintf('\n[1] (26/100) %s\n', 'lat19.4_lon-99.1_20260221_T14QMG_t045');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t045.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat19.4_lon-99.1_20260221_T14QMG_t045.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t045.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat19.4_lon-99.1_20260221_T14QMG_t045,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (26/100) %s — already exists, skipping\n', 'lat19.4_lon-99.1_20260221_T14QMG_t045');
end

% --- Scene 27/100: lat19.4_lon-99.1_20260221_T14QMG_t071 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t071.mat', 'file')
    fprintf('\n[1] (27/100) %s\n', 'lat19.4_lon-99.1_20260221_T14QMG_t071');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t071.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat19.4_lon-99.1_20260221_T14QMG_t071.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat19.4_lon-99.1_20260221_T14QMG_t071.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat19.4_lon-99.1_20260221_T14QMG_t071,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (27/100) %s — already exists, skipping\n', 'lat19.4_lon-99.1_20260221_T14QMG_t071');
end

% --- Scene 28/100: lat21.0_lon17.5_20231203_T33QYD_t072 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t072.mat', 'file')
    fprintf('\n[1] (28/100) %s\n', 'lat21.0_lon17.5_20231203_T33QYD_t072');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t072.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat21.0_lon17.5_20231203_T33QYD_t072.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t072.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat21.0_lon17.5_20231203_T33QYD_t072,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (28/100) %s — already exists, skipping\n', 'lat21.0_lon17.5_20231203_T33QYD_t072');
end

% --- Scene 29/100: lat21.0_lon17.5_20231203_T33QYD_t169 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t169.mat', 'file')
    fprintf('\n[1] (29/100) %s\n', 'lat21.0_lon17.5_20231203_T33QYD_t169');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t169.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat21.0_lon17.5_20231203_T33QYD_t169.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat21.0_lon17.5_20231203_T33QYD_t169.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat21.0_lon17.5_20231203_T33QYD_t169,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (29/100) %s — already exists, skipping\n', 'lat21.0_lon17.5_20231203_T33QYD_t169');
end

% --- Scene 30/100: lat22.5_lon78.0_20250129_T43QHE_t056 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t056.mat', 'file')
    fprintf('\n[1] (30/100) %s\n', 'lat22.5_lon78.0_20250129_T43QHE_t056');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t056.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat22.5_lon78.0_20250129_T43QHE_t056.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t056.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat22.5_lon78.0_20250129_T43QHE_t056,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (30/100) %s — already exists, skipping\n', 'lat22.5_lon78.0_20250129_T43QHE_t056');
end

% --- Scene 31/100: lat22.5_lon78.0_20250129_T43QHE_t057 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t057.mat', 'file')
    fprintf('\n[1] (31/100) %s\n', 'lat22.5_lon78.0_20250129_T43QHE_t057');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t057.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat22.5_lon78.0_20250129_T43QHE_t057.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t057.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat22.5_lon78.0_20250129_T43QHE_t057,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (31/100) %s — already exists, skipping\n', 'lat22.5_lon78.0_20250129_T43QHE_t057');
end

% --- Scene 32/100: lat22.5_lon78.0_20250129_T43QHE_t082 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t082.mat', 'file')
    fprintf('\n[1] (32/100) %s\n', 'lat22.5_lon78.0_20250129_T43QHE_t082');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t082.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat22.5_lon78.0_20250129_T43QHE_t082.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t082.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat22.5_lon78.0_20250129_T43QHE_t082,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (32/100) %s — already exists, skipping\n', 'lat22.5_lon78.0_20250129_T43QHE_t082');
end

% --- Scene 33/100: lat22.5_lon78.0_20250129_T43QHE_t118 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t118.mat', 'file')
    fprintf('\n[1] (33/100) %s\n', 'lat22.5_lon78.0_20250129_T43QHE_t118');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t118.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat22.5_lon78.0_20250129_T43QHE_t118.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat22.5_lon78.0_20250129_T43QHE_t118.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat22.5_lon78.0_20250129_T43QHE_t118,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (33/100) %s — already exists, skipping\n', 'lat22.5_lon78.0_20250129_T43QHE_t118');
end

% --- Scene 34/100: lat23.0_lon88.0_20231227_T45QXF_t036 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t036.mat', 'file')
    fprintf('\n[1] (34/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t036');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t036.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t036.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t036.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t036,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (34/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t036');
end

% --- Scene 35/100: lat23.0_lon88.0_20231227_T45QXF_t046 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t046.mat', 'file')
    fprintf('\n[1] (35/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t046');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t046.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t046.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t046.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t046,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (35/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t046');
end

% --- Scene 36/100: lat23.0_lon88.0_20231227_T45QXF_t068 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t068.mat', 'file')
    fprintf('\n[1] (36/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t068');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t068.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t068.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t068.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t068,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (36/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t068');
end

% --- Scene 37/100: lat23.0_lon88.0_20231227_T45QXF_t075 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t075.mat', 'file')
    fprintf('\n[1] (37/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t075');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t075.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t075.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t075.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t075,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (37/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t075');
end

% --- Scene 38/100: lat23.0_lon88.0_20231227_T45QXF_t101 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t101.mat', 'file')
    fprintf('\n[1] (38/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t101');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t101.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t101.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t101.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t101,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (38/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t101');
end

% --- Scene 39/100: lat23.0_lon88.0_20231227_T45QXF_t110 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t110.mat', 'file')
    fprintf('\n[1] (39/100) %s\n', 'lat23.0_lon88.0_20231227_T45QXF_t110');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t110.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.0_lon88.0_20231227_T45QXF_t110.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.0_lon88.0_20231227_T45QXF_t110.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.0_lon88.0_20231227_T45QXF_t110,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (39/100) %s — already exists, skipping\n', 'lat23.0_lon88.0_20231227_T45QXF_t110');
end

% --- Scene 40/100: lat23.5_lon58.5_20231226_T40QFL_t021 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t021.mat', 'file')
    fprintf('\n[1] (40/100) %s\n', 'lat23.5_lon58.5_20231226_T40QFL_t021');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t021.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon58.5_20231226_T40QFL_t021.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t021.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon58.5_20231226_T40QFL_t021,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (40/100) %s — already exists, skipping\n', 'lat23.5_lon58.5_20231226_T40QFL_t021');
end

% --- Scene 41/100: lat23.5_lon58.5_20231226_T40QFL_t129 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t129.mat', 'file')
    fprintf('\n[1] (41/100) %s\n', 'lat23.5_lon58.5_20231226_T40QFL_t129');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t129.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon58.5_20231226_T40QFL_t129.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t129.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon58.5_20231226_T40QFL_t129,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (41/100) %s — already exists, skipping\n', 'lat23.5_lon58.5_20231226_T40QFL_t129');
end

% --- Scene 42/100: lat23.5_lon58.5_20231226_T40QFL_t173 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t173.mat', 'file')
    fprintf('\n[1] (42/100) %s\n', 'lat23.5_lon58.5_20231226_T40QFL_t173');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t173.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon58.5_20231226_T40QFL_t173.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t173.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon58.5_20231226_T40QFL_t173,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (42/100) %s — already exists, skipping\n', 'lat23.5_lon58.5_20231226_T40QFL_t173');
end

% --- Scene 43/100: lat23.5_lon58.5_20231226_T40QFL_t182 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t182.mat', 'file')
    fprintf('\n[1] (43/100) %s\n', 'lat23.5_lon58.5_20231226_T40QFL_t182');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t182.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon58.5_20231226_T40QFL_t182.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon58.5_20231226_T40QFL_t182.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon58.5_20231226_T40QFL_t182,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (43/100) %s — already exists, skipping\n', 'lat23.5_lon58.5_20231226_T40QFL_t182');
end

% --- Scene 44/100: lat23.5_lon69.5_20231003_T42QWL_t009 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t009.mat', 'file')
    fprintf('\n[1] (44/100) %s\n', 'lat23.5_lon69.5_20231003_T42QWL_t009');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t009.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon69.5_20231003_T42QWL_t009.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t009.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon69.5_20231003_T42QWL_t009,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (44/100) %s — already exists, skipping\n', 'lat23.5_lon69.5_20231003_T42QWL_t009');
end

% --- Scene 45/100: lat23.5_lon69.5_20231003_T42QWL_t019 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t019.mat', 'file')
    fprintf('\n[1] (45/100) %s\n', 'lat23.5_lon69.5_20231003_T42QWL_t019');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t019.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat23.5_lon69.5_20231003_T42QWL_t019.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat23.5_lon69.5_20231003_T42QWL_t019.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat23.5_lon69.5_20231003_T42QWL_t019,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (45/100) %s — already exists, skipping\n', 'lat23.5_lon69.5_20231003_T42QWL_t019');
end

% --- Scene 46/100: lat26.0_lon-99.5_20230627_T14RMP_t013 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t013.mat', 'file')
    fprintf('\n[1] (46/100) %s\n', 'lat26.0_lon-99.5_20230627_T14RMP_t013');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t013.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.0_lon-99.5_20230627_T14RMP_t013.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t013.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.0_lon-99.5_20230627_T14RMP_t013,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (46/100) %s — already exists, skipping\n', 'lat26.0_lon-99.5_20230627_T14RMP_t013');
end

% --- Scene 47/100: lat26.0_lon-99.5_20230627_T14RMP_t028 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t028.mat', 'file')
    fprintf('\n[1] (47/100) %s\n', 'lat26.0_lon-99.5_20230627_T14RMP_t028');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t028.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.0_lon-99.5_20230627_T14RMP_t028.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.0_lon-99.5_20230627_T14RMP_t028.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.0_lon-99.5_20230627_T14RMP_t028,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (47/100) %s — already exists, skipping\n', 'lat26.0_lon-99.5_20230627_T14RMP_t028');
end

% --- Scene 48/100: lat26.5_lon71.0_20250131_T42RYQ_t013 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t013.mat', 'file')
    fprintf('\n[1] (48/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t013');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t013.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t013.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t013.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t013,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (48/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t013');
end

% --- Scene 49/100: lat26.5_lon71.0_20250131_T42RYQ_t025 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t025.mat', 'file')
    fprintf('\n[1] (49/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t025');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t025.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t025.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t025.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t025,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (49/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t025');
end

% --- Scene 50/100: lat26.5_lon71.0_20250131_T42RYQ_t050 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t050.mat', 'file')
    fprintf('\n[1] (50/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t050');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t050.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t050.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t050.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t050,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (50/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t050');
end

% --- Scene 51/100: lat26.5_lon71.0_20250131_T42RYQ_t056 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t056.mat', 'file')
    fprintf('\n[1] (51/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t056');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t056.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t056.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t056.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t056,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (51/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t056');
end

% --- Scene 52/100: lat26.5_lon71.0_20250131_T42RYQ_t059 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t059.mat', 'file')
    fprintf('\n[1] (52/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t059');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t059.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t059.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t059.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t059,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (52/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t059');
end

% --- Scene 53/100: lat26.5_lon71.0_20250131_T42RYQ_t067 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t067.mat', 'file')
    fprintf('\n[1] (53/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t067');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t067.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t067.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t067.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t067,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (53/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t067');
end

% --- Scene 54/100: lat26.5_lon71.0_20250131_T42RYQ_t089 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t089.mat', 'file')
    fprintf('\n[1] (54/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t089');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t089.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t089.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t089.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t089,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (54/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t089');
end

% --- Scene 55/100: lat26.5_lon71.0_20250131_T42RYQ_t100 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t100.mat', 'file')
    fprintf('\n[1] (55/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t100');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t100.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t100.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t100.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t100,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (55/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t100');
end

% --- Scene 56/100: lat26.5_lon71.0_20250131_T42RYQ_t135 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t135.mat', 'file')
    fprintf('\n[1] (56/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t135');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t135.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t135.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t135.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t135,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (56/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t135');
end

% --- Scene 57/100: lat26.5_lon71.0_20250131_T42RYQ_t158 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t158.mat', 'file')
    fprintf('\n[1] (57/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t158');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t158.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t158.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t158.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t158,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (57/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t158');
end

% --- Scene 58/100: lat26.5_lon71.0_20250131_T42RYQ_t178 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t178.mat', 'file')
    fprintf('\n[1] (58/100) %s\n', 'lat26.5_lon71.0_20250131_T42RYQ_t178');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t178.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat26.5_lon71.0_20250131_T42RYQ_t178.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat26.5_lon71.0_20250131_T42RYQ_t178.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat26.5_lon71.0_20250131_T42RYQ_t178,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (58/100) %s — already exists, skipping\n', 'lat26.5_lon71.0_20250131_T42RYQ_t178');
end

% --- Scene 59/100: lat27.0_lon13.5_20241001_T33RUL_t077 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t077.mat', 'file')
    fprintf('\n[1] (59/100) %s\n', 'lat27.0_lon13.5_20241001_T33RUL_t077');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t077.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat27.0_lon13.5_20241001_T33RUL_t077.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t077.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat27.0_lon13.5_20241001_T33RUL_t077,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (59/100) %s — already exists, skipping\n', 'lat27.0_lon13.5_20241001_T33RUL_t077');
end

% --- Scene 60/100: lat27.0_lon13.5_20241001_T33RUL_t199 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t199.mat', 'file')
    fprintf('\n[1] (60/100) %s\n', 'lat27.0_lon13.5_20241001_T33RUL_t199');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t199.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat27.0_lon13.5_20241001_T33RUL_t199.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat27.0_lon13.5_20241001_T33RUL_t199.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat27.0_lon13.5_20241001_T33RUL_t199,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (60/100) %s — already exists, skipping\n', 'lat27.0_lon13.5_20241001_T33RUL_t199');
end

% --- Scene 61/100: lat27.5_lon112.0_20241201_T49RFL_t084 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat27.5_lon112.0_20241201_T49RFL_t084.mat', 'file')
    fprintf('\n[1] (61/100) %s\n', 'lat27.5_lon112.0_20241201_T49RFL_t084');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat27.5_lon112.0_20241201_T49RFL_t084.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat27.5_lon112.0_20241201_T49RFL_t084.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat27.5_lon112.0_20241201_T49RFL_t084.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat27.5_lon112.0_20241201_T49RFL_t084,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (61/100) %s — already exists, skipping\n', 'lat27.5_lon112.0_20241201_T49RFL_t084');
end

% --- Scene 62/100: lat28.6_lon77.2_20250531_T43RGM_t159 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat28.6_lon77.2_20250531_T43RGM_t159.mat', 'file')
    fprintf('\n[1] (62/100) %s\n', 'lat28.6_lon77.2_20250531_T43RGM_t159');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat28.6_lon77.2_20250531_T43RGM_t159.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat28.6_lon77.2_20250531_T43RGM_t159.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat28.6_lon77.2_20250531_T43RGM_t159.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat28.6_lon77.2_20250531_T43RGM_t159,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (62/100) %s — already exists, skipping\n', 'lat28.6_lon77.2_20250531_T43RGM_t159');
end

% --- Scene 63/100: lat29.5_lon34.0_20250731_T36RXT_t063 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t063.mat', 'file')
    fprintf('\n[1] (63/100) %s\n', 'lat29.5_lon34.0_20250731_T36RXT_t063');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t063.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat29.5_lon34.0_20250731_T36RXT_t063.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t063.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat29.5_lon34.0_20250731_T36RXT_t063,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (63/100) %s — already exists, skipping\n', 'lat29.5_lon34.0_20250731_T36RXT_t063');
end

% --- Scene 64/100: lat29.5_lon34.0_20250731_T36RXT_t121 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t121.mat', 'file')
    fprintf('\n[1] (64/100) %s\n', 'lat29.5_lon34.0_20250731_T36RXT_t121');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t121.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat29.5_lon34.0_20250731_T36RXT_t121.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t121.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat29.5_lon34.0_20250731_T36RXT_t121,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (64/100) %s — already exists, skipping\n', 'lat29.5_lon34.0_20250731_T36RXT_t121');
end

% --- Scene 65/100: lat29.5_lon34.0_20250731_T36RXT_t125 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t125.mat', 'file')
    fprintf('\n[1] (65/100) %s\n', 'lat29.5_lon34.0_20250731_T36RXT_t125');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t125.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat29.5_lon34.0_20250731_T36RXT_t125.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t125.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat29.5_lon34.0_20250731_T36RXT_t125,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (65/100) %s — already exists, skipping\n', 'lat29.5_lon34.0_20250731_T36RXT_t125');
end

% --- Scene 66/100: lat29.5_lon34.0_20250731_T36RXT_t139 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t139.mat', 'file')
    fprintf('\n[1] (66/100) %s\n', 'lat29.5_lon34.0_20250731_T36RXT_t139');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t139.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat29.5_lon34.0_20250731_T36RXT_t139.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t139.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat29.5_lon34.0_20250731_T36RXT_t139,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (66/100) %s — already exists, skipping\n', 'lat29.5_lon34.0_20250731_T36RXT_t139');
end

% --- Scene 67/100: lat29.5_lon34.0_20250731_T36RXT_t210 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t210.mat', 'file')
    fprintf('\n[1] (67/100) %s\n', 'lat29.5_lon34.0_20250731_T36RXT_t210');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t210.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat29.5_lon34.0_20250731_T36RXT_t210.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat29.5_lon34.0_20250731_T36RXT_t210.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat29.5_lon34.0_20250731_T36RXT_t210,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (67/100) %s — already exists, skipping\n', 'lat29.5_lon34.0_20250731_T36RXT_t210');
end

% --- Scene 68/100: lat30.05_lon2.88_20231203_T31RDP_t085 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t085.mat', 'file')
    fprintf('\n[1] (68/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t085');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t085.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t085.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t085.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t085,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (68/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t085');
end

% --- Scene 69/100: lat30.05_lon2.88_20231203_T31RDP_t086 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t086.mat', 'file')
    fprintf('\n[1] (69/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t086');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t086.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t086.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t086.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t086,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (69/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t086');
end

% --- Scene 70/100: lat30.05_lon2.88_20231203_T31RDP_t127 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t127.mat', 'file')
    fprintf('\n[1] (70/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t127');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t127.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t127.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t127.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t127,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (70/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t127');
end

% --- Scene 71/100: lat30.05_lon2.88_20231203_T31RDP_t174 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t174.mat', 'file')
    fprintf('\n[1] (71/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t174');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t174.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t174.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t174.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t174,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (71/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t174');
end

% --- Scene 72/100: lat30.05_lon2.88_20231203_T31RDP_t186 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t186.mat', 'file')
    fprintf('\n[1] (72/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t186');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t186.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t186.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t186.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t186,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (72/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t186');
end

% --- Scene 73/100: lat30.05_lon2.88_20231203_T31RDP_t221 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t221.mat', 'file')
    fprintf('\n[1] (73/100) %s\n', 'lat30.05_lon2.88_20231203_T31RDP_t221');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t221.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon2.88_20231203_T31RDP_t221.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon2.88_20231203_T31RDP_t221.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon2.88_20231203_T31RDP_t221,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (73/100) %s — already exists, skipping\n', 'lat30.05_lon2.88_20231203_T31RDP_t221');
end

% --- Scene 74/100: lat30.05_lon31.25_20230626_T36RUU_t078 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t078.mat', 'file')
    fprintf('\n[1] (74/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t078');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t078.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t078.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t078.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t078,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (74/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t078');
end

% --- Scene 75/100: lat30.05_lon31.25_20230626_T36RUU_t081 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t081.mat', 'file')
    fprintf('\n[1] (75/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t081');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t081.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t081.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t081.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t081,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (75/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t081');
end

% --- Scene 76/100: lat30.05_lon31.25_20230626_T36RUU_t094 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t094.mat', 'file')
    fprintf('\n[1] (76/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t094');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t094.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t094.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t094.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t094,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (76/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t094');
end

% --- Scene 77/100: lat30.05_lon31.25_20230626_T36RUU_t101 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t101.mat', 'file')
    fprintf('\n[1] (77/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t101');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t101.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t101.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t101.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t101,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (77/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t101');
end

% --- Scene 78/100: lat30.05_lon31.25_20230626_T36RUU_t113 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t113.mat', 'file')
    fprintf('\n[1] (78/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t113');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t113.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t113.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t113.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t113,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (78/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t113');
end

% --- Scene 79/100: lat30.05_lon31.25_20230626_T36RUU_t151 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t151.mat', 'file')
    fprintf('\n[1] (79/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t151');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t151.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t151.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t151.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t151,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (79/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t151');
end

% --- Scene 80/100: lat30.05_lon31.25_20230626_T36RUU_t207 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t207.mat', 'file')
    fprintf('\n[1] (80/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t207');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t207.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t207.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t207.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t207,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (80/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t207');
end

% --- Scene 81/100: lat30.05_lon31.25_20230626_T36RUU_t209 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t209.mat', 'file')
    fprintf('\n[1] (81/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t209');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t209.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t209.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t209.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t209,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (81/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t209');
end

% --- Scene 82/100: lat30.05_lon31.25_20230626_T36RUU_t239 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t239.mat', 'file')
    fprintf('\n[1] (82/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t239');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t239.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t239.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t239.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t239,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (82/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t239');
end

% --- Scene 83/100: lat30.05_lon31.25_20230626_T36RUU_t242 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t242.mat', 'file')
    fprintf('\n[1] (83/100) %s\n', 'lat30.05_lon31.25_20230626_T36RUU_t242');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t242.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.05_lon31.25_20230626_T36RUU_t242.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.05_lon31.25_20230626_T36RUU_t242.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.05_lon31.25_20230626_T36RUU_t242,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (83/100) %s — already exists, skipping\n', 'lat30.05_lon31.25_20230626_T36RUU_t242');
end

% --- Scene 84/100: lat30.0_lon-9.5_20230804_T29RMP_t024 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t024.mat', 'file')
    fprintf('\n[1] (84/100) %s\n', 'lat30.0_lon-9.5_20230804_T29RMP_t024');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t024.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.0_lon-9.5_20230804_T29RMP_t024.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t024.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.0_lon-9.5_20230804_T29RMP_t024,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (84/100) %s — already exists, skipping\n', 'lat30.0_lon-9.5_20230804_T29RMP_t024');
end

% --- Scene 85/100: lat30.0_lon-9.5_20230804_T29RMP_t052 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t052.mat', 'file')
    fprintf('\n[1] (85/100) %s\n', 'lat30.0_lon-9.5_20230804_T29RMP_t052');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t052.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.0_lon-9.5_20230804_T29RMP_t052.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t052.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.0_lon-9.5_20230804_T29RMP_t052,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (85/100) %s — already exists, skipping\n', 'lat30.0_lon-9.5_20230804_T29RMP_t052');
end

% --- Scene 86/100: lat30.0_lon-9.5_20230804_T29RMP_t083 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t083.mat', 'file')
    fprintf('\n[1] (86/100) %s\n', 'lat30.0_lon-9.5_20230804_T29RMP_t083');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t083.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.0_lon-9.5_20230804_T29RMP_t083.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.0_lon-9.5_20230804_T29RMP_t083.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.0_lon-9.5_20230804_T29RMP_t083,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (86/100) %s — already exists, skipping\n', 'lat30.0_lon-9.5_20230804_T29RMP_t083');
end

% --- Scene 87/100: lat30.5_lon74.5_20231203_T43RDP_t019 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t019.mat', 'file')
    fprintf('\n[1] (87/100) %s\n', 'lat30.5_lon74.5_20231203_T43RDP_t019');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t019.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.5_lon74.5_20231203_T43RDP_t019.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t019.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.5_lon74.5_20231203_T43RDP_t019,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (87/100) %s — already exists, skipping\n', 'lat30.5_lon74.5_20231203_T43RDP_t019');
end

% --- Scene 88/100: lat30.5_lon74.5_20231203_T43RDP_t026 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t026.mat', 'file')
    fprintf('\n[1] (88/100) %s\n', 'lat30.5_lon74.5_20231203_T43RDP_t026');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t026.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.5_lon74.5_20231203_T43RDP_t026.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t026.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.5_lon74.5_20231203_T43RDP_t026,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (88/100) %s — already exists, skipping\n', 'lat30.5_lon74.5_20231203_T43RDP_t026');
end

% --- Scene 89/100: lat30.5_lon74.5_20231203_T43RDP_t043 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t043.mat', 'file')
    fprintf('\n[1] (89/100) %s\n', 'lat30.5_lon74.5_20231203_T43RDP_t043');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t043.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.5_lon74.5_20231203_T43RDP_t043.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t043.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.5_lon74.5_20231203_T43RDP_t043,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (89/100) %s — already exists, skipping\n', 'lat30.5_lon74.5_20231203_T43RDP_t043');
end

% --- Scene 90/100: lat30.5_lon74.5_20231203_T43RDP_t078 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t078.mat', 'file')
    fprintf('\n[1] (90/100) %s\n', 'lat30.5_lon74.5_20231203_T43RDP_t078');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t078.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.5_lon74.5_20231203_T43RDP_t078.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.5_lon74.5_20231203_T43RDP_t078.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.5_lon74.5_20231203_T43RDP_t078,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (90/100) %s — already exists, skipping\n', 'lat30.5_lon74.5_20231203_T43RDP_t078');
end

% --- Scene 91/100: lat30.87_lon31.32_20250623_T36RUV_t139 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat30.87_lon31.32_20250623_T36RUV_t139.mat', 'file')
    fprintf('\n[1] (91/100) %s\n', 'lat30.87_lon31.32_20250623_T36RUV_t139');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat30.87_lon31.32_20250623_T36RUV_t139.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat30.87_lon31.32_20250623_T36RUV_t139.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat30.87_lon31.32_20250623_T36RUV_t139.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat30.87_lon31.32_20250623_T36RUV_t139,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (91/100) %s — already exists, skipping\n', 'lat30.87_lon31.32_20250623_T36RUV_t139');
end

% --- Scene 92/100: lat31.0_lon47.0_20240403_T38RPV_t141 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t141.mat', 'file')
    fprintf('\n[1] (92/100) %s\n', 'lat31.0_lon47.0_20240403_T38RPV_t141');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t141.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.0_lon47.0_20240403_T38RPV_t141.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t141.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.0_lon47.0_20240403_T38RPV_t141,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (92/100) %s — already exists, skipping\n', 'lat31.0_lon47.0_20240403_T38RPV_t141');
end

% --- Scene 93/100: lat31.0_lon47.0_20240403_T38RPV_t161 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t161.mat', 'file')
    fprintf('\n[1] (93/100) %s\n', 'lat31.0_lon47.0_20240403_T38RPV_t161');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t161.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.0_lon47.0_20240403_T38RPV_t161.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t161.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.0_lon47.0_20240403_T38RPV_t161,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (93/100) %s — already exists, skipping\n', 'lat31.0_lon47.0_20240403_T38RPV_t161');
end

% --- Scene 94/100: lat31.0_lon47.0_20240403_T38RPV_t166 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t166.mat', 'file')
    fprintf('\n[1] (94/100) %s\n', 'lat31.0_lon47.0_20240403_T38RPV_t166');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t166.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.0_lon47.0_20240403_T38RPV_t166.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.0_lon47.0_20240403_T38RPV_t166.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.0_lon47.0_20240403_T38RPV_t166,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (94/100) %s — already exists, skipping\n', 'lat31.0_lon47.0_20240403_T38RPV_t166');
end

% --- Scene 95/100: lat31.5_lon-100.0_20241001_T14RMV_t024 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t024.mat', 'file')
    fprintf('\n[1] (95/100) %s\n', 'lat31.5_lon-100.0_20241001_T14RMV_t024');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t024.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon-100.0_20241001_T14RMV_t024.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t024.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon-100.0_20241001_T14RMV_t024,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (95/100) %s — already exists, skipping\n', 'lat31.5_lon-100.0_20241001_T14RMV_t024');
end

% --- Scene 96/100: lat31.5_lon-100.0_20241001_T14RMV_t041 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t041.mat', 'file')
    fprintf('\n[1] (96/100) %s\n', 'lat31.5_lon-100.0_20241001_T14RMV_t041');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t041.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon-100.0_20241001_T14RMV_t041.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon-100.0_20241001_T14RMV_t041.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon-100.0_20241001_T14RMV_t041,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (96/100) %s — already exists, skipping\n', 'lat31.5_lon-100.0_20241001_T14RMV_t041');
end

% --- Scene 97/100: lat31.5_lon37.0_20240823_T37RCQ_t025 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t025.mat', 'file')
    fprintf('\n[1] (97/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t025');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t025.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t025.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t025.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t025,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (97/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t025');
end

% --- Scene 98/100: lat31.5_lon37.0_20240823_T37RCQ_t062 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t062.mat', 'file')
    fprintf('\n[1] (98/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t062');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t062.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t062.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t062.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t062,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (98/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t062');
end

% --- Scene 99/100: lat31.5_lon37.0_20240823_T37RCQ_t105 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t105.mat', 'file')
    fprintf('\n[1] (99/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t105.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t105.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (99/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t105');
end

% --- Scene 100/100: lat31.5_lon37.0_20240823_T37RCQ_t110 ---
if ~exist('data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t110.mat', 'file')
    fprintf('\n[1] (100/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t110');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t110.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t110.mat';
    sri_path = 'data/SR/SFIM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t110.mat';
    try
        SFIM_run;
        elapsed = toc;
        fid = fopen('data/SR/SFIM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t110,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[1] (100/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t110');
end

fprintf('\n=== Worker 1 finished all 100 scenes ===\n');
exit;