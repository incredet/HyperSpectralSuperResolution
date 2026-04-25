% Auto-generated batch script (worker 2)
% Dataset: EMIT32_WALD, Method: MAPSMM, Scale: 6
% Scenes: 100

cd('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'methods', 'MAPSMM')));

% --- Scene 1/100: lat31.5_lon37.0_20240823_T37RCQ_t123 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t123.mat', 'file')
    fprintf('\n[2] (1/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t123');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t123.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t123.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t123.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t123,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (1/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t123');
end

% --- Scene 2/100: lat31.5_lon37.0_20240823_T37RCQ_t129 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t129.mat', 'file')
    fprintf('\n[2] (2/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t129');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t129.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t129.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t129.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t129,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (2/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t129');
end

% --- Scene 3/100: lat31.5_lon37.0_20240823_T37RCQ_t146 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t146.mat', 'file')
    fprintf('\n[2] (3/100) %s\n', 'lat31.5_lon37.0_20240823_T37RCQ_t146');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t146.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat31.5_lon37.0_20240823_T37RCQ_t146.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat31.5_lon37.0_20240823_T37RCQ_t146.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat31.5_lon37.0_20240823_T37RCQ_t146,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (3/100) %s — already exists, skipping\n', 'lat31.5_lon37.0_20240823_T37RCQ_t146');
end

% --- Scene 4/100: lat32.0_lon-113.0_20251129_T12SUA_t088 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t088.mat', 'file')
    fprintf('\n[2] (4/100) %s\n', 'lat32.0_lon-113.0_20251129_T12SUA_t088');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t088.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon-113.0_20251129_T12SUA_t088.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t088.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon-113.0_20251129_T12SUA_t088,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (4/100) %s — already exists, skipping\n', 'lat32.0_lon-113.0_20251129_T12SUA_t088');
end

% --- Scene 5/100: lat32.0_lon-113.0_20251129_T12SUA_t119 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t119.mat', 'file')
    fprintf('\n[2] (5/100) %s\n', 'lat32.0_lon-113.0_20251129_T12SUA_t119');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t119.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon-113.0_20251129_T12SUA_t119.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t119.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon-113.0_20251129_T12SUA_t119,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (5/100) %s — already exists, skipping\n', 'lat32.0_lon-113.0_20251129_T12SUA_t119');
end

% --- Scene 6/100: lat32.0_lon-113.0_20251129_T12SUA_t133 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t133.mat', 'file')
    fprintf('\n[2] (6/100) %s\n', 'lat32.0_lon-113.0_20251129_T12SUA_t133');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t133.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon-113.0_20251129_T12SUA_t133.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t133.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon-113.0_20251129_T12SUA_t133,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (6/100) %s — already exists, skipping\n', 'lat32.0_lon-113.0_20251129_T12SUA_t133');
end

% --- Scene 7/100: lat32.0_lon-113.0_20251129_T12SUA_t140 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t140.mat', 'file')
    fprintf('\n[2] (7/100) %s\n', 'lat32.0_lon-113.0_20251129_T12SUA_t140');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t140.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon-113.0_20251129_T12SUA_t140.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t140.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon-113.0_20251129_T12SUA_t140,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (7/100) %s — already exists, skipping\n', 'lat32.0_lon-113.0_20251129_T12SUA_t140');
end

% --- Scene 8/100: lat32.0_lon-113.0_20251129_T12SUA_t163 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t163.mat', 'file')
    fprintf('\n[2] (8/100) %s\n', 'lat32.0_lon-113.0_20251129_T12SUA_t163');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t163.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon-113.0_20251129_T12SUA_t163.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon-113.0_20251129_T12SUA_t163.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon-113.0_20251129_T12SUA_t163,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (8/100) %s — already exists, skipping\n', 'lat32.0_lon-113.0_20251129_T12SUA_t163');
end

% --- Scene 9/100: lat32.0_lon35.8_20240803_T37SBR_t031 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t031.mat', 'file')
    fprintf('\n[2] (9/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t031');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t031.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t031.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t031.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t031,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (9/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t031');
end

% --- Scene 10/100: lat32.0_lon35.8_20240803_T37SBR_t043 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t043.mat', 'file')
    fprintf('\n[2] (10/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t043');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t043.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t043.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t043.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t043,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (10/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t043');
end

% --- Scene 11/100: lat32.0_lon35.8_20240803_T37SBR_t045 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t045.mat', 'file')
    fprintf('\n[2] (11/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t045');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t045.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t045.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t045.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t045,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (11/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t045');
end

% --- Scene 12/100: lat32.0_lon35.8_20240803_T37SBR_t057 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t057.mat', 'file')
    fprintf('\n[2] (12/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t057');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t057.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t057.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t057.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t057,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (12/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t057');
end

% --- Scene 13/100: lat32.0_lon35.8_20240803_T37SBR_t095 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t095.mat', 'file')
    fprintf('\n[2] (13/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t095');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t095.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t095.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t095,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (13/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t095');
end

% --- Scene 14/100: lat32.0_lon35.8_20240803_T37SBR_t130 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t130.mat', 'file')
    fprintf('\n[2] (14/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t130');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t130.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t130.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t130.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t130,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (14/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t130');
end

% --- Scene 15/100: lat32.0_lon35.8_20240803_T37SBR_t131 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t131.mat', 'file')
    fprintf('\n[2] (15/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t131');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t131.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t131.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t131.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t131,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (15/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t131');
end

% --- Scene 16/100: lat32.0_lon35.8_20240803_T37SBR_t133 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t133.mat', 'file')
    fprintf('\n[2] (16/100) %s\n', 'lat32.0_lon35.8_20240803_T37SBR_t133');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t133.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon35.8_20240803_T37SBR_t133.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon35.8_20240803_T37SBR_t133.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon35.8_20240803_T37SBR_t133,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (16/100) %s — already exists, skipping\n', 'lat32.0_lon35.8_20240803_T37SBR_t133');
end

% --- Scene 17/100: lat32.0_lon58.5_20231204_T40SFA_t062 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t062.mat', 'file')
    fprintf('\n[2] (17/100) %s\n', 'lat32.0_lon58.5_20231204_T40SFA_t062');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t062.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon58.5_20231204_T40SFA_t062.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t062.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon58.5_20231204_T40SFA_t062,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (17/100) %s — already exists, skipping\n', 'lat32.0_lon58.5_20231204_T40SFA_t062');
end

% --- Scene 18/100: lat32.0_lon58.5_20231204_T40SFA_t155 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t155.mat', 'file')
    fprintf('\n[2] (18/100) %s\n', 'lat32.0_lon58.5_20231204_T40SFA_t155');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t155.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon58.5_20231204_T40SFA_t155.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t155.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon58.5_20231204_T40SFA_t155,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (18/100) %s — already exists, skipping\n', 'lat32.0_lon58.5_20231204_T40SFA_t155');
end

% --- Scene 19/100: lat32.0_lon58.5_20231204_T40SFA_t191 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t191.mat', 'file')
    fprintf('\n[2] (19/100) %s\n', 'lat32.0_lon58.5_20231204_T40SFA_t191');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t191.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.0_lon58.5_20231204_T40SFA_t191.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.0_lon58.5_20231204_T40SFA_t191.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.0_lon58.5_20231204_T40SFA_t191,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (19/100) %s — already exists, skipping\n', 'lat32.0_lon58.5_20231204_T40SFA_t191');
end

% --- Scene 20/100: lat32.5_lon-106.5_20231204_T13SCR_t109 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon-106.5_20231204_T13SCR_t109.mat', 'file')
    fprintf('\n[2] (20/100) %s\n', 'lat32.5_lon-106.5_20231204_T13SCR_t109');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.5_lon-106.5_20231204_T13SCR_t109.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.5_lon-106.5_20231204_T13SCR_t109.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon-106.5_20231204_T13SCR_t109.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.5_lon-106.5_20231204_T13SCR_t109,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (20/100) %s — already exists, skipping\n', 'lat32.5_lon-106.5_20231204_T13SCR_t109');
end

% --- Scene 21/100: lat32.5_lon44.5_20250801_T38SMB_t102 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t102.mat', 'file')
    fprintf('\n[2] (21/100) %s\n', 'lat32.5_lon44.5_20250801_T38SMB_t102');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t102.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.5_lon44.5_20250801_T38SMB_t102.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t102.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.5_lon44.5_20250801_T38SMB_t102,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (21/100) %s — already exists, skipping\n', 'lat32.5_lon44.5_20250801_T38SMB_t102');
end

% --- Scene 22/100: lat32.5_lon44.5_20250801_T38SMB_t155 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t155.mat', 'file')
    fprintf('\n[2] (22/100) %s\n', 'lat32.5_lon44.5_20250801_T38SMB_t155');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t155.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat32.5_lon44.5_20250801_T38SMB_t155.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat32.5_lon44.5_20250801_T38SMB_t155.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat32.5_lon44.5_20250801_T38SMB_t155,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (22/100) %s — already exists, skipping\n', 'lat32.5_lon44.5_20250801_T38SMB_t155');
end

% --- Scene 23/100: lat33.0_lon-115.5_20260130_T11SPS_t080 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t080.mat', 'file')
    fprintf('\n[2] (23/100) %s\n', 'lat33.0_lon-115.5_20260130_T11SPS_t080');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t080.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-115.5_20260130_T11SPS_t080.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t080.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-115.5_20260130_T11SPS_t080,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (23/100) %s — already exists, skipping\n', 'lat33.0_lon-115.5_20260130_T11SPS_t080');
end

% --- Scene 24/100: lat33.0_lon-115.5_20260130_T11SPS_t081 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t081.mat', 'file')
    fprintf('\n[2] (24/100) %s\n', 'lat33.0_lon-115.5_20260130_T11SPS_t081');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t081.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-115.5_20260130_T11SPS_t081.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t081.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-115.5_20260130_T11SPS_t081,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (24/100) %s — already exists, skipping\n', 'lat33.0_lon-115.5_20260130_T11SPS_t081');
end

% --- Scene 25/100: lat33.0_lon-115.5_20260130_T11SPS_t127 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t127.mat', 'file')
    fprintf('\n[2] (25/100) %s\n', 'lat33.0_lon-115.5_20260130_T11SPS_t127');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t127.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-115.5_20260130_T11SPS_t127.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t127.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-115.5_20260130_T11SPS_t127,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (25/100) %s — already exists, skipping\n', 'lat33.0_lon-115.5_20260130_T11SPS_t127');
end

% --- Scene 26/100: lat33.0_lon-115.5_20260130_T11SPS_t147 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t147.mat', 'file')
    fprintf('\n[2] (26/100) %s\n', 'lat33.0_lon-115.5_20260130_T11SPS_t147');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t147.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-115.5_20260130_T11SPS_t147.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t147.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-115.5_20260130_T11SPS_t147,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (26/100) %s — already exists, skipping\n', 'lat33.0_lon-115.5_20260130_T11SPS_t147');
end

% --- Scene 27/100: lat33.0_lon-115.5_20260130_T11SPS_t245 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t245.mat', 'file')
    fprintf('\n[2] (27/100) %s\n', 'lat33.0_lon-115.5_20260130_T11SPS_t245');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t245.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-115.5_20260130_T11SPS_t245.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-115.5_20260130_T11SPS_t245.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-115.5_20260130_T11SPS_t245,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (27/100) %s — already exists, skipping\n', 'lat33.0_lon-115.5_20260130_T11SPS_t245');
end

% --- Scene 28/100: lat33.0_lon-4.5_20231025_T30SUB_t091 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t091.mat', 'file')
    fprintf('\n[2] (28/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t091');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t091.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t091.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t091.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t091,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (28/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t091');
end

% --- Scene 29/100: lat33.0_lon-4.5_20231025_T30SUB_t095 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t095.mat', 'file')
    fprintf('\n[2] (29/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t095');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t095.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t095.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t095,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (29/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t095');
end

% --- Scene 30/100: lat33.0_lon-4.5_20231025_T30SUB_t101 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t101.mat', 'file')
    fprintf('\n[2] (30/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t101');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t101.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t101.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t101.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t101,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (30/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t101');
end

% --- Scene 31/100: lat33.0_lon-4.5_20231025_T30SUB_t148 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t148.mat', 'file')
    fprintf('\n[2] (31/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t148');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t148.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t148.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t148.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t148,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (31/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t148');
end

% --- Scene 32/100: lat33.0_lon-4.5_20231025_T30SUB_t176 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t176.mat', 'file')
    fprintf('\n[2] (32/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t176');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t176.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t176.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t176.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t176,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (32/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t176');
end

% --- Scene 33/100: lat33.0_lon-4.5_20231025_T30SUB_t198 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t198.mat', 'file')
    fprintf('\n[2] (33/100) %s\n', 'lat33.0_lon-4.5_20231025_T30SUB_t198');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t198.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon-4.5_20231025_T30SUB_t198.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon-4.5_20231025_T30SUB_t198.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon-4.5_20231025_T30SUB_t198,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (33/100) %s — already exists, skipping\n', 'lat33.0_lon-4.5_20231025_T30SUB_t198');
end

% --- Scene 34/100: lat33.0_lon54.0_20240622_T39SYS_t099 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t099.mat', 'file')
    fprintf('\n[2] (34/100) %s\n', 'lat33.0_lon54.0_20240622_T39SYS_t099');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t099.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon54.0_20240622_T39SYS_t099.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t099.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon54.0_20240622_T39SYS_t099,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (34/100) %s — already exists, skipping\n', 'lat33.0_lon54.0_20240622_T39SYS_t099');
end

% --- Scene 35/100: lat33.0_lon54.0_20240622_T39SYS_t115 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t115.mat', 'file')
    fprintf('\n[2] (35/100) %s\n', 'lat33.0_lon54.0_20240622_T39SYS_t115');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t115.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat33.0_lon54.0_20240622_T39SYS_t115.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat33.0_lon54.0_20240622_T39SYS_t115.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat33.0_lon54.0_20240622_T39SYS_t115,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (35/100) %s — already exists, skipping\n', 'lat33.0_lon54.0_20240622_T39SYS_t115');
end

% --- Scene 36/100: lat34.5_lon-118.5_20250801_T11SLU_t046 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t046.mat', 'file')
    fprintf('\n[2] (36/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t046');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t046.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t046.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t046.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t046,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (36/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t046');
end

% --- Scene 37/100: lat34.5_lon-118.5_20250801_T11SLU_t066 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t066.mat', 'file')
    fprintf('\n[2] (37/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t066');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t066.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t066.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t066.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t066,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (37/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t066');
end

% --- Scene 38/100: lat34.5_lon-118.5_20250801_T11SLU_t101 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t101.mat', 'file')
    fprintf('\n[2] (38/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t101');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t101.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t101.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t101.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t101,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (38/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t101');
end

% --- Scene 39/100: lat34.5_lon-118.5_20250801_T11SLU_t106 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t106.mat', 'file')
    fprintf('\n[2] (39/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t106');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t106.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t106.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t106.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t106,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (39/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t106');
end

% --- Scene 40/100: lat34.5_lon-118.5_20250801_T11SLU_t107 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t107.mat', 'file')
    fprintf('\n[2] (40/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t107');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t107.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t107.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t107.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t107,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (40/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t107');
end

% --- Scene 41/100: lat34.5_lon-118.5_20250801_T11SLU_t156 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t156.mat', 'file')
    fprintf('\n[2] (41/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t156');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t156.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t156.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t156.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t156,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (41/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t156');
end

% --- Scene 42/100: lat34.5_lon-118.5_20250801_T11SLU_t162 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t162.mat', 'file')
    fprintf('\n[2] (42/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t162');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t162.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t162.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t162.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t162,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (42/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t162');
end

% --- Scene 43/100: lat34.5_lon-118.5_20250801_T11SLU_t174 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t174.mat', 'file')
    fprintf('\n[2] (43/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t174');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t174.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t174.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t174.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t174,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (43/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t174');
end

% --- Scene 44/100: lat34.5_lon-118.5_20250801_T11SLU_t182 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t182.mat', 'file')
    fprintf('\n[2] (44/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t182');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t182.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t182.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t182.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t182,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (44/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t182');
end

% --- Scene 45/100: lat34.5_lon-118.5_20250801_T11SLU_t215 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t215.mat', 'file')
    fprintf('\n[2] (45/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t215');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t215.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t215.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t215.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t215,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (45/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t215');
end

% --- Scene 46/100: lat34.5_lon-118.5_20250801_T11SLU_t217 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t217.mat', 'file')
    fprintf('\n[2] (46/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t217');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t217.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t217.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t217.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t217,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (46/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t217');
end

% --- Scene 47/100: lat34.5_lon-118.5_20250801_T11SLU_t237 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t237.mat', 'file')
    fprintf('\n[2] (47/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t237');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t237.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t237.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t237.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t237,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (47/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t237');
end

% --- Scene 48/100: lat34.5_lon-118.5_20250801_T11SLU_t243 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t243.mat', 'file')
    fprintf('\n[2] (48/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t243');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t243.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t243.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t243.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t243,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (48/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t243');
end

% --- Scene 49/100: lat34.5_lon-118.5_20250801_T11SLU_t252 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t252.mat', 'file')
    fprintf('\n[2] (49/100) %s\n', 'lat34.5_lon-118.5_20250801_T11SLU_t252');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t252.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon-118.5_20250801_T11SLU_t252.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon-118.5_20250801_T11SLU_t252.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon-118.5_20250801_T11SLU_t252,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (49/100) %s — already exists, skipping\n', 'lat34.5_lon-118.5_20250801_T11SLU_t252');
end

% --- Scene 50/100: lat34.5_lon52.5_20260130_T39SXU_t092 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t092.mat', 'file')
    fprintf('\n[2] (50/100) %s\n', 'lat34.5_lon52.5_20260130_T39SXU_t092');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t092.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon52.5_20260130_T39SXU_t092.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t092.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon52.5_20260130_T39SXU_t092,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (50/100) %s — already exists, skipping\n', 'lat34.5_lon52.5_20260130_T39SXU_t092');
end

% --- Scene 51/100: lat34.5_lon52.5_20260130_T39SXU_t095 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t095.mat', 'file')
    fprintf('\n[2] (51/100) %s\n', 'lat34.5_lon52.5_20260130_T39SXU_t095');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t095.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon52.5_20260130_T39SXU_t095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t095.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon52.5_20260130_T39SXU_t095,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (51/100) %s — already exists, skipping\n', 'lat34.5_lon52.5_20260130_T39SXU_t095');
end

% --- Scene 52/100: lat34.5_lon52.5_20260130_T39SXU_t103 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t103.mat', 'file')
    fprintf('\n[2] (52/100) %s\n', 'lat34.5_lon52.5_20260130_T39SXU_t103');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t103.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat34.5_lon52.5_20260130_T39SXU_t103.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat34.5_lon52.5_20260130_T39SXU_t103.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat34.5_lon52.5_20260130_T39SXU_t103,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (52/100) %s — already exists, skipping\n', 'lat34.5_lon52.5_20260130_T39SXU_t103');
end

% --- Scene 53/100: lat35.5_lon-98.0_20240821_T14SNE_t040 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t040.mat', 'file')
    fprintf('\n[2] (53/100) %s\n', 'lat35.5_lon-98.0_20240821_T14SNE_t040');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t040.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.5_lon-98.0_20240821_T14SNE_t040.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t040.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.5_lon-98.0_20240821_T14SNE_t040,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (53/100) %s — already exists, skipping\n', 'lat35.5_lon-98.0_20240821_T14SNE_t040');
end

% --- Scene 54/100: lat35.5_lon-98.0_20240821_T14SNE_t153 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t153.mat', 'file')
    fprintf('\n[2] (54/100) %s\n', 'lat35.5_lon-98.0_20240821_T14SNE_t153');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t153.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.5_lon-98.0_20240821_T14SNE_t153.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.5_lon-98.0_20240821_T14SNE_t153.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.5_lon-98.0_20240821_T14SNE_t153,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (54/100) %s — already exists, skipping\n', 'lat35.5_lon-98.0_20240821_T14SNE_t153');
end

% --- Scene 55/100: lat35.7_lon51.4_20250602_T39SWV_t009 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t009.mat', 'file')
    fprintf('\n[2] (55/100) %s\n', 'lat35.7_lon51.4_20250602_T39SWV_t009');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t009.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.7_lon51.4_20250602_T39SWV_t009.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t009.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.7_lon51.4_20250602_T39SWV_t009,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (55/100) %s — already exists, skipping\n', 'lat35.7_lon51.4_20250602_T39SWV_t009');
end

% --- Scene 56/100: lat35.7_lon51.4_20250602_T39SWV_t014 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t014.mat', 'file')
    fprintf('\n[2] (56/100) %s\n', 'lat35.7_lon51.4_20250602_T39SWV_t014');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t014.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.7_lon51.4_20250602_T39SWV_t014.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t014.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.7_lon51.4_20250602_T39SWV_t014,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (56/100) %s — already exists, skipping\n', 'lat35.7_lon51.4_20250602_T39SWV_t014');
end

% --- Scene 57/100: lat35.7_lon51.4_20250602_T39SWV_t027 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t027.mat', 'file')
    fprintf('\n[2] (57/100) %s\n', 'lat35.7_lon51.4_20250602_T39SWV_t027');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t027.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.7_lon51.4_20250602_T39SWV_t027.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t027.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.7_lon51.4_20250602_T39SWV_t027,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (57/100) %s — already exists, skipping\n', 'lat35.7_lon51.4_20250602_T39SWV_t027');
end

% --- Scene 58/100: lat35.7_lon51.4_20250602_T39SWV_t105 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t105.mat', 'file')
    fprintf('\n[2] (58/100) %s\n', 'lat35.7_lon51.4_20250602_T39SWV_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat35.7_lon51.4_20250602_T39SWV_t105.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat35.7_lon51.4_20250602_T39SWV_t105.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat35.7_lon51.4_20250602_T39SWV_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (58/100) %s — already exists, skipping\n', 'lat35.7_lon51.4_20250602_T39SWV_t105');
end

% --- Scene 59/100: lat36.0_lon71.0_20231005_T42SXE_t115 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.0_lon71.0_20231005_T42SXE_t115.mat', 'file')
    fprintf('\n[2] (59/100) %s\n', 'lat36.0_lon71.0_20231005_T42SXE_t115');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.0_lon71.0_20231005_T42SXE_t115.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.0_lon71.0_20231005_T42SXE_t115.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.0_lon71.0_20231005_T42SXE_t115.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.0_lon71.0_20231005_T42SXE_t115,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (59/100) %s — already exists, skipping\n', 'lat36.0_lon71.0_20231005_T42SXE_t115');
end

% --- Scene 60/100: lat36.1_lon-112.11_20230623_T12SUF_t144 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t144.mat', 'file')
    fprintf('\n[2] (60/100) %s\n', 'lat36.1_lon-112.11_20230623_T12SUF_t144');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t144.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.1_lon-112.11_20230623_T12SUF_t144.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t144.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.1_lon-112.11_20230623_T12SUF_t144,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (60/100) %s — already exists, skipping\n', 'lat36.1_lon-112.11_20230623_T12SUF_t144');
end

% --- Scene 61/100: lat36.1_lon-112.11_20230623_T12SUF_t161 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t161.mat', 'file')
    fprintf('\n[2] (61/100) %s\n', 'lat36.1_lon-112.11_20230623_T12SUF_t161');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t161.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.1_lon-112.11_20230623_T12SUF_t161.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t161.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.1_lon-112.11_20230623_T12SUF_t161,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (61/100) %s — already exists, skipping\n', 'lat36.1_lon-112.11_20230623_T12SUF_t161');
end

% --- Scene 62/100: lat36.1_lon-112.11_20230623_T12SUF_t183 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t183.mat', 'file')
    fprintf('\n[2] (62/100) %s\n', 'lat36.1_lon-112.11_20230623_T12SUF_t183');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t183.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.1_lon-112.11_20230623_T12SUF_t183.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t183.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.1_lon-112.11_20230623_T12SUF_t183,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (62/100) %s — already exists, skipping\n', 'lat36.1_lon-112.11_20230623_T12SUF_t183');
end

% --- Scene 63/100: lat36.1_lon-112.11_20230623_T12SUF_t195 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t195.mat', 'file')
    fprintf('\n[2] (63/100) %s\n', 'lat36.1_lon-112.11_20230623_T12SUF_t195');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t195.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.1_lon-112.11_20230623_T12SUF_t195.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t195.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.1_lon-112.11_20230623_T12SUF_t195,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (63/100) %s — already exists, skipping\n', 'lat36.1_lon-112.11_20230623_T12SUF_t195');
end

% --- Scene 64/100: lat36.1_lon-112.11_20230623_T12SUF_t200 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t200.mat', 'file')
    fprintf('\n[2] (64/100) %s\n', 'lat36.1_lon-112.11_20230623_T12SUF_t200');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t200.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.1_lon-112.11_20230623_T12SUF_t200.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.1_lon-112.11_20230623_T12SUF_t200.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.1_lon-112.11_20230623_T12SUF_t200,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (64/100) %s — already exists, skipping\n', 'lat36.1_lon-112.11_20230623_T12SUF_t200');
end

% --- Scene 65/100: lat36.5_lon-119.5_20250601_T11SKA_t150 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t150.mat', 'file')
    fprintf('\n[2] (65/100) %s\n', 'lat36.5_lon-119.5_20250601_T11SKA_t150');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t150.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.5_lon-119.5_20250601_T11SKA_t150.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t150.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.5_lon-119.5_20250601_T11SKA_t150,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (65/100) %s — already exists, skipping\n', 'lat36.5_lon-119.5_20250601_T11SKA_t150');
end

% --- Scene 66/100: lat36.5_lon-119.5_20250601_T11SKA_t156 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t156.mat', 'file')
    fprintf('\n[2] (66/100) %s\n', 'lat36.5_lon-119.5_20250601_T11SKA_t156');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t156.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.5_lon-119.5_20250601_T11SKA_t156.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t156.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.5_lon-119.5_20250601_T11SKA_t156,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (66/100) %s — already exists, skipping\n', 'lat36.5_lon-119.5_20250601_T11SKA_t156');
end

% --- Scene 67/100: lat36.5_lon-119.5_20250601_T11SKA_t166 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t166.mat', 'file')
    fprintf('\n[2] (67/100) %s\n', 'lat36.5_lon-119.5_20250601_T11SKA_t166');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t166.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.5_lon-119.5_20250601_T11SKA_t166.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t166.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.5_lon-119.5_20250601_T11SKA_t166,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (67/100) %s — already exists, skipping\n', 'lat36.5_lon-119.5_20250601_T11SKA_t166');
end

% --- Scene 68/100: lat36.5_lon-119.5_20250601_T11SKA_t183 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t183.mat', 'file')
    fprintf('\n[2] (68/100) %s\n', 'lat36.5_lon-119.5_20250601_T11SKA_t183');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t183.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.5_lon-119.5_20250601_T11SKA_t183.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t183.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.5_lon-119.5_20250601_T11SKA_t183,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (68/100) %s — already exists, skipping\n', 'lat36.5_lon-119.5_20250601_T11SKA_t183');
end

% --- Scene 69/100: lat36.5_lon-119.5_20250601_T11SKA_t185 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t185.mat', 'file')
    fprintf('\n[2] (69/100) %s\n', 'lat36.5_lon-119.5_20250601_T11SKA_t185');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t185.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat36.5_lon-119.5_20250601_T11SKA_t185.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat36.5_lon-119.5_20250601_T11SKA_t185.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat36.5_lon-119.5_20250601_T11SKA_t185,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (69/100) %s — already exists, skipping\n', 'lat36.5_lon-119.5_20250601_T11SKA_t185');
end

% --- Scene 70/100: lat37.0_lon-118.5_20250619_T11SLA_t083 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t083.mat', 'file')
    fprintf('\n[2] (70/100) %s\n', 'lat37.0_lon-118.5_20250619_T11SLA_t083');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t083.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-118.5_20250619_T11SLA_t083.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t083.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-118.5_20250619_T11SLA_t083,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (70/100) %s — already exists, skipping\n', 'lat37.0_lon-118.5_20250619_T11SLA_t083');
end

% --- Scene 71/100: lat37.0_lon-118.5_20250619_T11SLA_t104 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t104.mat', 'file')
    fprintf('\n[2] (71/100) %s\n', 'lat37.0_lon-118.5_20250619_T11SLA_t104');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t104.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-118.5_20250619_T11SLA_t104.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t104.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-118.5_20250619_T11SLA_t104,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (71/100) %s — already exists, skipping\n', 'lat37.0_lon-118.5_20250619_T11SLA_t104');
end

% --- Scene 72/100: lat37.0_lon-118.5_20250619_T11SLA_t151 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t151.mat', 'file')
    fprintf('\n[2] (72/100) %s\n', 'lat37.0_lon-118.5_20250619_T11SLA_t151');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t151.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-118.5_20250619_T11SLA_t151.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-118.5_20250619_T11SLA_t151.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-118.5_20250619_T11SLA_t151,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (72/100) %s — already exists, skipping\n', 'lat37.0_lon-118.5_20250619_T11SLA_t151');
end

% --- Scene 73/100: lat37.0_lon-6.3_20240821_T29SQB_t113 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t113.mat', 'file')
    fprintf('\n[2] (73/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t113');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t113.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t113.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t113.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t113,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (73/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t113');
end

% --- Scene 74/100: lat37.0_lon-6.3_20240821_T29SQB_t130 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t130.mat', 'file')
    fprintf('\n[2] (74/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t130');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t130.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t130.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t130.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t130,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (74/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t130');
end

% --- Scene 75/100: lat37.0_lon-6.3_20240821_T29SQB_t138 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t138.mat', 'file')
    fprintf('\n[2] (75/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t138');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t138.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t138.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t138.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t138,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (75/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t138');
end

% --- Scene 76/100: lat37.0_lon-6.3_20240821_T29SQB_t150 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t150.mat', 'file')
    fprintf('\n[2] (76/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t150');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t150.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t150.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t150.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t150,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (76/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t150');
end

% --- Scene 77/100: lat37.0_lon-6.3_20240821_T29SQB_t152 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t152.mat', 'file')
    fprintf('\n[2] (77/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t152');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t152.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t152.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t152.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t152,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (77/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t152');
end

% --- Scene 78/100: lat37.0_lon-6.3_20240821_T29SQB_t195 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t195.mat', 'file')
    fprintf('\n[2] (78/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t195');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t195.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t195.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t195.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t195,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (78/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t195');
end

% --- Scene 79/100: lat37.0_lon-6.3_20240821_T29SQB_t219 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t219.mat', 'file')
    fprintf('\n[2] (79/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t219');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t219.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t219.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t219.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t219,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (79/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t219');
end

% --- Scene 80/100: lat37.0_lon-6.3_20240821_T29SQB_t221 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t221.mat', 'file')
    fprintf('\n[2] (80/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t221');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t221.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t221.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t221.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t221,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (80/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t221');
end

% --- Scene 81/100: lat37.0_lon-6.3_20240821_T29SQB_t239 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t239.mat', 'file')
    fprintf('\n[2] (81/100) %s\n', 'lat37.0_lon-6.3_20240821_T29SQB_t239');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t239.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.0_lon-6.3_20240821_T29SQB_t239.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.0_lon-6.3_20240821_T29SQB_t239.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.0_lon-6.3_20240821_T29SQB_t239,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (81/100) %s — already exists, skipping\n', 'lat37.0_lon-6.3_20240821_T29SQB_t239');
end

% --- Scene 82/100: lat37.5_lon-120.0_20250619_T10SGG_t036 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat37.5_lon-120.0_20250619_T10SGG_t036.mat', 'file')
    fprintf('\n[2] (82/100) %s\n', 'lat37.5_lon-120.0_20250619_T10SGG_t036');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat37.5_lon-120.0_20250619_T10SGG_t036.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat37.5_lon-120.0_20250619_T10SGG_t036.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat37.5_lon-120.0_20250619_T10SGG_t036.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat37.5_lon-120.0_20250619_T10SGG_t036,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (82/100) %s — already exists, skipping\n', 'lat37.5_lon-120.0_20250619_T10SGG_t036');
end

% --- Scene 83/100: lat38.5_lon-8.0_20230407_T29SNC_t058 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t058.mat', 'file')
    fprintf('\n[2] (83/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t058');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t058.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t058.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t058.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t058,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (83/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t058');
end

% --- Scene 84/100: lat38.5_lon-8.0_20230407_T29SNC_t105 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t105.mat', 'file')
    fprintf('\n[2] (84/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t105.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t105.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (84/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t105');
end

% --- Scene 85/100: lat38.5_lon-8.0_20230407_T29SNC_t154 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t154.mat', 'file')
    fprintf('\n[2] (85/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t154');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t154.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t154.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t154.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t154,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (85/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t154');
end

% --- Scene 86/100: lat38.5_lon-8.0_20230407_T29SNC_t155 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t155.mat', 'file')
    fprintf('\n[2] (86/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t155');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t155.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t155.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t155.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t155,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (86/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t155');
end

% --- Scene 87/100: lat38.5_lon-8.0_20230407_T29SNC_t156 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t156.mat', 'file')
    fprintf('\n[2] (87/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t156');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t156.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t156.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t156.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t156,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (87/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t156');
end

% --- Scene 88/100: lat38.5_lon-8.0_20230407_T29SNC_t250 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t250.mat', 'file')
    fprintf('\n[2] (88/100) %s\n', 'lat38.5_lon-8.0_20230407_T29SNC_t250');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t250.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-8.0_20230407_T29SNC_t250.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-8.0_20230407_T29SNC_t250.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-8.0_20230407_T29SNC_t250,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (88/100) %s — already exists, skipping\n', 'lat38.5_lon-8.0_20230407_T29SNC_t250');
end

% --- Scene 89/100: lat38.5_lon-98.5_20230822_T14SNH_t091 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t091.mat', 'file')
    fprintf('\n[2] (89/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t091');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t091.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t091.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t091.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t091,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (89/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t091');
end

% --- Scene 90/100: lat38.5_lon-98.5_20230822_T14SNH_t095 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t095.mat', 'file')
    fprintf('\n[2] (90/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t095');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t095.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t095.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t095,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (90/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t095');
end

% --- Scene 91/100: lat38.5_lon-98.5_20230822_T14SNH_t097 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t097.mat', 'file')
    fprintf('\n[2] (91/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t097');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t097.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t097.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t097.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t097,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (91/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t097');
end

% --- Scene 92/100: lat38.5_lon-98.5_20230822_T14SNH_t191 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t191.mat', 'file')
    fprintf('\n[2] (92/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t191');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t191.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t191.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t191.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t191,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (92/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t191');
end

% --- Scene 93/100: lat38.5_lon-98.5_20230822_T14SNH_t195 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t195.mat', 'file')
    fprintf('\n[2] (93/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t195');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t195.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t195.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t195.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t195,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (93/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t195');
end

% --- Scene 94/100: lat38.5_lon-98.5_20230822_T14SNH_t246 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t246.mat', 'file')
    fprintf('\n[2] (94/100) %s\n', 'lat38.5_lon-98.5_20230822_T14SNH_t246');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t246.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat38.5_lon-98.5_20230822_T14SNH_t246.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat38.5_lon-98.5_20230822_T14SNH_t246.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat38.5_lon-98.5_20230822_T14SNH_t246,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (94/100) %s — already exists, skipping\n', 'lat38.5_lon-98.5_20230822_T14SNH_t246');
end

% --- Scene 95/100: lat39.0_lon-106.0_20231006_T13SCD_t052 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t052.mat', 'file')
    fprintf('\n[2] (95/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t052');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t052.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t052.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t052.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t052,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (95/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t052');
end

% --- Scene 96/100: lat39.0_lon-106.0_20231006_T13SCD_t073 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t073.mat', 'file')
    fprintf('\n[2] (96/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t073');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t073.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t073.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t073.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t073,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (96/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t073');
end

% --- Scene 97/100: lat39.0_lon-106.0_20231006_T13SCD_t091 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t091.mat', 'file')
    fprintf('\n[2] (97/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t091');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t091.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t091.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t091.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t091,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (97/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t091');
end

% --- Scene 98/100: lat39.0_lon-106.0_20231006_T13SCD_t093 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t093.mat', 'file')
    fprintf('\n[2] (98/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t093');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t093.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t093.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t093.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t093,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (98/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t093');
end

% --- Scene 99/100: lat39.0_lon-106.0_20231006_T13SCD_t096 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t096.mat', 'file')
    fprintf('\n[2] (99/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t096');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t096.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t096.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t096.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t096,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (99/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t096');
end

% --- Scene 100/100: lat39.0_lon-106.0_20231006_T13SCD_t106 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t106.mat', 'file')
    fprintf('\n[2] (100/100) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t106');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t106.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t106.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t106.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t106,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[2] (100/100) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t106');
end

fprintf('\n=== Worker 2 finished all 100 scenes ===\n');
exit;