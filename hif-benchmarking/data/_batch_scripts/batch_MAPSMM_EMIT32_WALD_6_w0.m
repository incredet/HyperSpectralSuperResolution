% Auto-generated batch script (worker 0)
% Dataset: EMIT32_WALD, Method: MAPSMM, Scale: 6
% Scenes: 100

cd('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'methods', 'MAPSMM')));

% --- Scene 1/100: lat-13.5_lon131.0_20230902_T52LGL_t029 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t029.mat', 'file')
    fprintf('\n[0] (1/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t029');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t029.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t029.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t029.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t029,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (1/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t029');
end

% --- Scene 2/100: lat-13.5_lon131.0_20230902_T52LGL_t068 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t068.mat', 'file')
    fprintf('\n[0] (2/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t068');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t068.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t068.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t068.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t068,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (2/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t068');
end

% --- Scene 3/100: lat-13.5_lon131.0_20230902_T52LGL_t106 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t106.mat', 'file')
    fprintf('\n[0] (3/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t106');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t106.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t106.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t106.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t106,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (3/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t106');
end

% --- Scene 4/100: lat-13.5_lon131.0_20230902_T52LGL_t175 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t175.mat', 'file')
    fprintf('\n[0] (4/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t175');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t175.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t175.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t175.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t175,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (4/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t175');
end

% --- Scene 5/100: lat-13.5_lon131.0_20230902_T52LGL_t188 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t188.mat', 'file')
    fprintf('\n[0] (5/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t188');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t188.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t188.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t188.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t188,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (5/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t188');
end

% --- Scene 6/100: lat-13.5_lon131.0_20230902_T52LGL_t202 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t202.mat', 'file')
    fprintf('\n[0] (6/100) %s\n', 'lat-13.5_lon131.0_20230902_T52LGL_t202');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t202.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-13.5_lon131.0_20230902_T52LGL_t202.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-13.5_lon131.0_20230902_T52LGL_t202.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-13.5_lon131.0_20230902_T52LGL_t202,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (6/100) %s — already exists, skipping\n', 'lat-13.5_lon131.0_20230902_T52LGL_t202');
end

% --- Scene 7/100: lat-15.0_lon26.0_20240502_T35LLD_t046 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t046.mat', 'file')
    fprintf('\n[0] (7/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t046');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t046.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t046.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t046.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t046,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (7/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t046');
end

% --- Scene 8/100: lat-15.0_lon26.0_20240502_T35LLD_t094 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t094.mat', 'file')
    fprintf('\n[0] (8/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t094');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t094.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t094.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t094.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t094,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (8/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t094');
end

% --- Scene 9/100: lat-15.0_lon26.0_20240502_T35LLD_t128 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t128.mat', 'file')
    fprintf('\n[0] (9/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t128');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t128.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t128.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t128.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t128,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (9/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t128');
end

% --- Scene 10/100: lat-15.0_lon26.0_20240502_T35LLD_t154 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t154.mat', 'file')
    fprintf('\n[0] (10/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t154');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t154.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t154.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t154.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t154,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (10/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t154');
end

% --- Scene 11/100: lat-15.0_lon26.0_20240502_T35LLD_t166 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t166.mat', 'file')
    fprintf('\n[0] (11/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t166');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t166.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t166.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t166.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t166,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (11/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t166');
end

% --- Scene 12/100: lat-15.0_lon26.0_20240502_T35LLD_t177 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t177.mat', 'file')
    fprintf('\n[0] (12/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t177');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t177.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t177.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t177.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t177,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (12/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t177');
end

% --- Scene 13/100: lat-15.0_lon26.0_20240502_T35LLD_t192 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t192.mat', 'file')
    fprintf('\n[0] (13/100) %s\n', 'lat-15.0_lon26.0_20240502_T35LLD_t192');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t192.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-15.0_lon26.0_20240502_T35LLD_t192.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-15.0_lon26.0_20240502_T35LLD_t192.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-15.0_lon26.0_20240502_T35LLD_t192,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (13/100) %s — already exists, skipping\n', 'lat-15.0_lon26.0_20240502_T35LLD_t192');
end

% --- Scene 14/100: lat-21.0_lon14.5_20250124_T33KVS_t060 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t060.mat', 'file')
    fprintf('\n[0] (14/100) %s\n', 'lat-21.0_lon14.5_20250124_T33KVS_t060');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t060.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-21.0_lon14.5_20250124_T33KVS_t060.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t060.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-21.0_lon14.5_20250124_T33KVS_t060,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (14/100) %s — already exists, skipping\n', 'lat-21.0_lon14.5_20250124_T33KVS_t060');
end

% --- Scene 15/100: lat-21.0_lon14.5_20250124_T33KVS_t103 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t103.mat', 'file')
    fprintf('\n[0] (15/100) %s\n', 'lat-21.0_lon14.5_20250124_T33KVS_t103');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t103.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-21.0_lon14.5_20250124_T33KVS_t103.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t103.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-21.0_lon14.5_20250124_T33KVS_t103,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (15/100) %s — already exists, skipping\n', 'lat-21.0_lon14.5_20250124_T33KVS_t103');
end

% --- Scene 16/100: lat-21.0_lon14.5_20250124_T33KVS_t110 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t110.mat', 'file')
    fprintf('\n[0] (16/100) %s\n', 'lat-21.0_lon14.5_20250124_T33KVS_t110');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t110.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-21.0_lon14.5_20250124_T33KVS_t110.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t110.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-21.0_lon14.5_20250124_T33KVS_t110,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (16/100) %s — already exists, skipping\n', 'lat-21.0_lon14.5_20250124_T33KVS_t110');
end

% --- Scene 17/100: lat-21.0_lon14.5_20250124_T33KVS_t121 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t121.mat', 'file')
    fprintf('\n[0] (17/100) %s\n', 'lat-21.0_lon14.5_20250124_T33KVS_t121');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t121.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-21.0_lon14.5_20250124_T33KVS_t121.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t121.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-21.0_lon14.5_20250124_T33KVS_t121,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (17/100) %s — already exists, skipping\n', 'lat-21.0_lon14.5_20250124_T33KVS_t121');
end

% --- Scene 18/100: lat-21.0_lon14.5_20250124_T33KVS_t137 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t137.mat', 'file')
    fprintf('\n[0] (18/100) %s\n', 'lat-21.0_lon14.5_20250124_T33KVS_t137');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t137.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-21.0_lon14.5_20250124_T33KVS_t137.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-21.0_lon14.5_20250124_T33KVS_t137.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-21.0_lon14.5_20250124_T33KVS_t137,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (18/100) %s — already exists, skipping\n', 'lat-21.0_lon14.5_20250124_T33KVS_t137');
end

% --- Scene 19/100: lat-22.5_lon-68.5_20251030_T19KER_t066 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t066.mat', 'file')
    fprintf('\n[0] (19/100) %s\n', 'lat-22.5_lon-68.5_20251030_T19KER_t066');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t066.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-22.5_lon-68.5_20251030_T19KER_t066.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t066.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-22.5_lon-68.5_20251030_T19KER_t066,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (19/100) %s — already exists, skipping\n', 'lat-22.5_lon-68.5_20251030_T19KER_t066');
end

% --- Scene 20/100: lat-22.5_lon-68.5_20251030_T19KER_t077 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t077.mat', 'file')
    fprintf('\n[0] (20/100) %s\n', 'lat-22.5_lon-68.5_20251030_T19KER_t077');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t077.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-22.5_lon-68.5_20251030_T19KER_t077.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t077.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-22.5_lon-68.5_20251030_T19KER_t077,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (20/100) %s — already exists, skipping\n', 'lat-22.5_lon-68.5_20251030_T19KER_t077');
end

% --- Scene 21/100: lat-22.5_lon-68.5_20251030_T19KER_t090 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t090.mat', 'file')
    fprintf('\n[0] (21/100) %s\n', 'lat-22.5_lon-68.5_20251030_T19KER_t090');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t090.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-22.5_lon-68.5_20251030_T19KER_t090.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t090.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-22.5_lon-68.5_20251030_T19KER_t090,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (21/100) %s — already exists, skipping\n', 'lat-22.5_lon-68.5_20251030_T19KER_t090');
end

% --- Scene 22/100: lat-22.5_lon-68.5_20251030_T19KER_t163 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t163.mat', 'file')
    fprintf('\n[0] (22/100) %s\n', 'lat-22.5_lon-68.5_20251030_T19KER_t163');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t163.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-22.5_lon-68.5_20251030_T19KER_t163.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-22.5_lon-68.5_20251030_T19KER_t163.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-22.5_lon-68.5_20251030_T19KER_t163,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (22/100) %s — already exists, skipping\n', 'lat-22.5_lon-68.5_20251030_T19KER_t163');
end

% --- Scene 23/100: lat-23.0_lon119.5_20240128_T50KQV_t086 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon119.5_20240128_T50KQV_t086.mat', 'file')
    fprintf('\n[0] (23/100) %s\n', 'lat-23.0_lon119.5_20240128_T50KQV_t086');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.0_lon119.5_20240128_T50KQV_t086.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.0_lon119.5_20240128_T50KQV_t086.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon119.5_20240128_T50KQV_t086.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.0_lon119.5_20240128_T50KQV_t086,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (23/100) %s — already exists, skipping\n', 'lat-23.0_lon119.5_20240128_T50KQV_t086');
end

% --- Scene 24/100: lat-23.0_lon23.5_20240902_T34KGV_t060 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t060.mat', 'file')
    fprintf('\n[0] (24/100) %s\n', 'lat-23.0_lon23.5_20240902_T34KGV_t060');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t060.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.0_lon23.5_20240902_T34KGV_t060.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t060.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.0_lon23.5_20240902_T34KGV_t060,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (24/100) %s — already exists, skipping\n', 'lat-23.0_lon23.5_20240902_T34KGV_t060');
end

% --- Scene 25/100: lat-23.0_lon23.5_20240902_T34KGV_t178 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t178.mat', 'file')
    fprintf('\n[0] (25/100) %s\n', 'lat-23.0_lon23.5_20240902_T34KGV_t178');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t178.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.0_lon23.5_20240902_T34KGV_t178.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t178.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.0_lon23.5_20240902_T34KGV_t178,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (25/100) %s — already exists, skipping\n', 'lat-23.0_lon23.5_20240902_T34KGV_t178');
end

% --- Scene 26/100: lat-23.0_lon23.5_20240902_T34KGV_t259 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t259.mat', 'file')
    fprintf('\n[0] (26/100) %s\n', 'lat-23.0_lon23.5_20240902_T34KGV_t259');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t259.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.0_lon23.5_20240902_T34KGV_t259.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t259.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.0_lon23.5_20240902_T34KGV_t259,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (26/100) %s — already exists, skipping\n', 'lat-23.0_lon23.5_20240902_T34KGV_t259');
end

% --- Scene 27/100: lat-23.0_lon23.5_20240902_T34KGV_t262 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t262.mat', 'file')
    fprintf('\n[0] (27/100) %s\n', 'lat-23.0_lon23.5_20240902_T34KGV_t262');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t262.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.0_lon23.5_20240902_T34KGV_t262.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.0_lon23.5_20240902_T34KGV_t262.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.0_lon23.5_20240902_T34KGV_t262,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (27/100) %s — already exists, skipping\n', 'lat-23.0_lon23.5_20240902_T34KGV_t262');
end

% --- Scene 28/100: lat-23.5_lon-68.2_20251231_T19KEP_t043 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-23.5_lon-68.2_20251231_T19KEP_t043.mat', 'file')
    fprintf('\n[0] (28/100) %s\n', 'lat-23.5_lon-68.2_20251231_T19KEP_t043');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-23.5_lon-68.2_20251231_T19KEP_t043.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-23.5_lon-68.2_20251231_T19KEP_t043.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-23.5_lon-68.2_20251231_T19KEP_t043.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-23.5_lon-68.2_20251231_T19KEP_t043,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (28/100) %s — already exists, skipping\n', 'lat-23.5_lon-68.2_20251231_T19KEP_t043');
end

% --- Scene 29/100: lat-24.0_lon-69.5_20251124_T19KDP_t023 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t023.mat', 'file')
    fprintf('\n[0] (29/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t023');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t023.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t023.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t023.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t023,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (29/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t023');
end

% --- Scene 30/100: lat-24.0_lon-69.5_20251124_T19KDP_t029 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t029.mat', 'file')
    fprintf('\n[0] (30/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t029');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t029.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t029.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t029.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t029,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (30/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t029');
end

% --- Scene 31/100: lat-24.0_lon-69.5_20251124_T19KDP_t040 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t040.mat', 'file')
    fprintf('\n[0] (31/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t040');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t040.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t040.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t040.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t040,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (31/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t040');
end

% --- Scene 32/100: lat-24.0_lon-69.5_20251124_T19KDP_t123 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t123.mat', 'file')
    fprintf('\n[0] (32/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t123');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t123.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t123.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t123.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t123,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (32/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t123');
end

% --- Scene 33/100: lat-24.0_lon-69.5_20251124_T19KDP_t231 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t231.mat', 'file')
    fprintf('\n[0] (33/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t231');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t231.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t231.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t231.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t231,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (33/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t231');
end

% --- Scene 34/100: lat-24.0_lon-69.5_20251124_T19KDP_t247 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t247.mat', 'file')
    fprintf('\n[0] (34/100) %s\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t247');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t247.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.0_lon-69.5_20251124_T19KDP_t247.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.0_lon-69.5_20251124_T19KDP_t247.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.0_lon-69.5_20251124_T19KDP_t247,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (34/100) %s — already exists, skipping\n', 'lat-24.0_lon-69.5_20251124_T19KDP_t247');
end

% --- Scene 35/100: lat-24.5_lon-70.5_20240902_T19JCN_t088 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-24.5_lon-70.5_20240902_T19JCN_t088.mat', 'file')
    fprintf('\n[0] (35/100) %s\n', 'lat-24.5_lon-70.5_20240902_T19JCN_t088');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-24.5_lon-70.5_20240902_T19JCN_t088.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-24.5_lon-70.5_20240902_T19JCN_t088.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-24.5_lon-70.5_20240902_T19JCN_t088.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-24.5_lon-70.5_20240902_T19JCN_t088,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (35/100) %s — already exists, skipping\n', 'lat-24.5_lon-70.5_20240902_T19JCN_t088');
end

% --- Scene 36/100: lat-25.0_lon149.0_20240925_T55JFN_t019 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t019.mat', 'file')
    fprintf('\n[0] (36/100) %s\n', 'lat-25.0_lon149.0_20240925_T55JFN_t019');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t019.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-25.0_lon149.0_20240925_T55JFN_t019.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t019.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-25.0_lon149.0_20240925_T55JFN_t019,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (36/100) %s — already exists, skipping\n', 'lat-25.0_lon149.0_20240925_T55JFN_t019');
end

% --- Scene 37/100: lat-25.0_lon149.0_20240925_T55JFN_t028 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t028.mat', 'file')
    fprintf('\n[0] (37/100) %s\n', 'lat-25.0_lon149.0_20240925_T55JFN_t028');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t028.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-25.0_lon149.0_20240925_T55JFN_t028.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t028.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-25.0_lon149.0_20240925_T55JFN_t028,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (37/100) %s — already exists, skipping\n', 'lat-25.0_lon149.0_20240925_T55JFN_t028');
end

% --- Scene 38/100: lat-25.0_lon149.0_20240925_T55JFN_t095 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t095.mat', 'file')
    fprintf('\n[0] (38/100) %s\n', 'lat-25.0_lon149.0_20240925_T55JFN_t095');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t095.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-25.0_lon149.0_20240925_T55JFN_t095.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon149.0_20240925_T55JFN_t095.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-25.0_lon149.0_20240925_T55JFN_t095,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (38/100) %s — already exists, skipping\n', 'lat-25.0_lon149.0_20240925_T55JFN_t095');
end

% --- Scene 39/100: lat-25.0_lon29.5_20250924_T35JQN_t185 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon29.5_20250924_T35JQN_t185.mat', 'file')
    fprintf('\n[0] (39/100) %s\n', 'lat-25.0_lon29.5_20250924_T35JQN_t185');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-25.0_lon29.5_20250924_T35JQN_t185.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-25.0_lon29.5_20250924_T35JQN_t185.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-25.0_lon29.5_20250924_T35JQN_t185.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-25.0_lon29.5_20250924_T35JQN_t185,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (39/100) %s — already exists, skipping\n', 'lat-25.0_lon29.5_20250924_T35JQN_t185');
end

% --- Scene 40/100: lat-26.0_lon134.0_20231105_T53JLM_t025 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t025.mat', 'file')
    fprintf('\n[0] (40/100) %s\n', 'lat-26.0_lon134.0_20231105_T53JLM_t025');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t025.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-26.0_lon134.0_20231105_T53JLM_t025.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t025.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-26.0_lon134.0_20231105_T53JLM_t025,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (40/100) %s — already exists, skipping\n', 'lat-26.0_lon134.0_20231105_T53JLM_t025');
end

% --- Scene 41/100: lat-26.0_lon134.0_20231105_T53JLM_t070 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t070.mat', 'file')
    fprintf('\n[0] (41/100) %s\n', 'lat-26.0_lon134.0_20231105_T53JLM_t070');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t070.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-26.0_lon134.0_20231105_T53JLM_t070.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-26.0_lon134.0_20231105_T53JLM_t070.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-26.0_lon134.0_20231105_T53JLM_t070,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (41/100) %s — already exists, skipping\n', 'lat-26.0_lon134.0_20231105_T53JLM_t070');
end

% --- Scene 42/100: lat-27.0_lon27.5_20240703_T35JNL_t059 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-27.0_lon27.5_20240703_T35JNL_t059.mat', 'file')
    fprintf('\n[0] (42/100) %s\n', 'lat-27.0_lon27.5_20240703_T35JNL_t059');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-27.0_lon27.5_20240703_T35JNL_t059.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-27.0_lon27.5_20240703_T35JNL_t059.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-27.0_lon27.5_20240703_T35JNL_t059.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-27.0_lon27.5_20240703_T35JNL_t059,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (42/100) %s — already exists, skipping\n', 'lat-27.0_lon27.5_20240703_T35JNL_t059');
end

% --- Scene 43/100: lat-29.5_lon142.0_20250123_T54JWN_t010 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t010.mat', 'file')
    fprintf('\n[0] (43/100) %s\n', 'lat-29.5_lon142.0_20250123_T54JWN_t010');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t010.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon142.0_20250123_T54JWN_t010.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t010.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon142.0_20250123_T54JWN_t010,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (43/100) %s — already exists, skipping\n', 'lat-29.5_lon142.0_20250123_T54JWN_t010');
end

% --- Scene 44/100: lat-29.5_lon142.0_20250123_T54JWN_t015 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t015.mat', 'file')
    fprintf('\n[0] (44/100) %s\n', 'lat-29.5_lon142.0_20250123_T54JWN_t015');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t015.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon142.0_20250123_T54JWN_t015.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t015.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon142.0_20250123_T54JWN_t015,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (44/100) %s — already exists, skipping\n', 'lat-29.5_lon142.0_20250123_T54JWN_t015');
end

% --- Scene 45/100: lat-29.5_lon142.0_20250123_T54JWN_t052 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t052.mat', 'file')
    fprintf('\n[0] (45/100) %s\n', 'lat-29.5_lon142.0_20250123_T54JWN_t052');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t052.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon142.0_20250123_T54JWN_t052.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t052.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon142.0_20250123_T54JWN_t052,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (45/100) %s — already exists, skipping\n', 'lat-29.5_lon142.0_20250123_T54JWN_t052');
end

% --- Scene 46/100: lat-29.5_lon142.0_20250123_T54JWN_t064 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t064.mat', 'file')
    fprintf('\n[0] (46/100) %s\n', 'lat-29.5_lon142.0_20250123_T54JWN_t064');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t064.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon142.0_20250123_T54JWN_t064.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon142.0_20250123_T54JWN_t064.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon142.0_20250123_T54JWN_t064,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (46/100) %s — already exists, skipping\n', 'lat-29.5_lon142.0_20250123_T54JWN_t064');
end

% --- Scene 47/100: lat-29.5_lon28.5_20250902_T35JPH_t199 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t199.mat', 'file')
    fprintf('\n[0] (47/100) %s\n', 'lat-29.5_lon28.5_20250902_T35JPH_t199');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t199.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon28.5_20250902_T35JPH_t199.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t199.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon28.5_20250902_T35JPH_t199,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (47/100) %s — already exists, skipping\n', 'lat-29.5_lon28.5_20250902_T35JPH_t199');
end

% --- Scene 48/100: lat-29.5_lon28.5_20250902_T35JPH_t223 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t223.mat', 'file')
    fprintf('\n[0] (48/100) %s\n', 'lat-29.5_lon28.5_20250902_T35JPH_t223');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t223.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon28.5_20250902_T35JPH_t223.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t223.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon28.5_20250902_T35JPH_t223,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (48/100) %s — already exists, skipping\n', 'lat-29.5_lon28.5_20250902_T35JPH_t223');
end

% --- Scene 49/100: lat-29.5_lon28.5_20250902_T35JPH_t273 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t273.mat', 'file')
    fprintf('\n[0] (49/100) %s\n', 'lat-29.5_lon28.5_20250902_T35JPH_t273');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t273.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon28.5_20250902_T35JPH_t273.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon28.5_20250902_T35JPH_t273.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon28.5_20250902_T35JPH_t273,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (49/100) %s — already exists, skipping\n', 'lat-29.5_lon28.5_20250902_T35JPH_t273');
end

% --- Scene 50/100: lat-29.5_lon29.0_20250902_T35JPH_t106 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t106.mat', 'file')
    fprintf('\n[0] (50/100) %s\n', 'lat-29.5_lon29.0_20250902_T35JPH_t106');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t106.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon29.0_20250902_T35JPH_t106.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t106.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon29.0_20250902_T35JPH_t106,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (50/100) %s — already exists, skipping\n', 'lat-29.5_lon29.0_20250902_T35JPH_t106');
end

% --- Scene 51/100: lat-29.5_lon29.0_20250902_T35JPH_t284 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t284.mat', 'file')
    fprintf('\n[0] (51/100) %s\n', 'lat-29.5_lon29.0_20250902_T35JPH_t284');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t284.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon29.0_20250902_T35JPH_t284.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.0_20250902_T35JPH_t284.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon29.0_20250902_T35JPH_t284,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (51/100) %s — already exists, skipping\n', 'lat-29.5_lon29.0_20250902_T35JPH_t284');
end

% --- Scene 52/100: lat-29.5_lon29.5_20240526_T35JQH_t110 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t110.mat', 'file')
    fprintf('\n[0] (52/100) %s\n', 'lat-29.5_lon29.5_20240526_T35JQH_t110');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t110.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon29.5_20240526_T35JQH_t110.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t110.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon29.5_20240526_T35JQH_t110,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (52/100) %s — already exists, skipping\n', 'lat-29.5_lon29.5_20240526_T35JQH_t110');
end

% --- Scene 53/100: lat-29.5_lon29.5_20240526_T35JQH_t153 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t153.mat', 'file')
    fprintf('\n[0] (53/100) %s\n', 'lat-29.5_lon29.5_20240526_T35JQH_t153');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t153.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon29.5_20240526_T35JQH_t153.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t153.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon29.5_20240526_T35JQH_t153,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (53/100) %s — already exists, skipping\n', 'lat-29.5_lon29.5_20240526_T35JQH_t153');
end

% --- Scene 54/100: lat-29.5_lon29.5_20240526_T35JQH_t154 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t154.mat', 'file')
    fprintf('\n[0] (54/100) %s\n', 'lat-29.5_lon29.5_20240526_T35JQH_t154');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t154.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-29.5_lon29.5_20240526_T35JQH_t154.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-29.5_lon29.5_20240526_T35JQH_t154.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-29.5_lon29.5_20240526_T35JQH_t154,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (54/100) %s — already exists, skipping\n', 'lat-29.5_lon29.5_20240526_T35JQH_t154');
end

% --- Scene 55/100: lat-30.0_lon115.5_20260102_T50JLM_t062 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t062.mat', 'file')
    fprintf('\n[0] (55/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t062');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t062.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t062.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t062.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t062,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (55/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t062');
end

% --- Scene 56/100: lat-30.0_lon115.5_20260102_T50JLM_t097 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t097.mat', 'file')
    fprintf('\n[0] (56/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t097');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t097.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t097.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t097.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t097,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (56/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t097');
end

% --- Scene 57/100: lat-30.0_lon115.5_20260102_T50JLM_t118 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t118.mat', 'file')
    fprintf('\n[0] (57/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t118');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t118.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t118.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t118.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t118,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (57/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t118');
end

% --- Scene 58/100: lat-30.0_lon115.5_20260102_T50JLM_t137 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t137.mat', 'file')
    fprintf('\n[0] (58/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t137');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t137.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t137.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t137.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t137,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (58/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t137');
end

% --- Scene 59/100: lat-30.0_lon115.5_20260102_T50JLM_t202 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t202.mat', 'file')
    fprintf('\n[0] (59/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t202');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t202.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t202.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t202.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t202,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (59/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t202');
end

% --- Scene 60/100: lat-30.0_lon115.5_20260102_T50JLM_t207 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t207.mat', 'file')
    fprintf('\n[0] (60/100) %s\n', 'lat-30.0_lon115.5_20260102_T50JLM_t207');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t207.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-30.0_lon115.5_20260102_T50JLM_t207.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-30.0_lon115.5_20260102_T50JLM_t207.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-30.0_lon115.5_20260102_T50JLM_t207,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (60/100) %s — already exists, skipping\n', 'lat-30.0_lon115.5_20260102_T50JLM_t207');
end

% --- Scene 61/100: lat-31.5_lon117.5_20260303_T50JNL_t043 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t043.mat', 'file')
    fprintf('\n[0] (61/100) %s\n', 'lat-31.5_lon117.5_20260303_T50JNL_t043');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t043.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-31.5_lon117.5_20260303_T50JNL_t043.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t043.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-31.5_lon117.5_20260303_T50JNL_t043,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (61/100) %s — already exists, skipping\n', 'lat-31.5_lon117.5_20260303_T50JNL_t043');
end

% --- Scene 62/100: lat-31.5_lon117.5_20260303_T50JNL_t123 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t123.mat', 'file')
    fprintf('\n[0] (62/100) %s\n', 'lat-31.5_lon117.5_20260303_T50JNL_t123');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t123.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-31.5_lon117.5_20260303_T50JNL_t123.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t123.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-31.5_lon117.5_20260303_T50JNL_t123,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (62/100) %s — already exists, skipping\n', 'lat-31.5_lon117.5_20260303_T50JNL_t123');
end

% --- Scene 63/100: lat-31.5_lon117.5_20260303_T50JNL_t165 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t165.mat', 'file')
    fprintf('\n[0] (63/100) %s\n', 'lat-31.5_lon117.5_20260303_T50JNL_t165');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t165.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-31.5_lon117.5_20260303_T50JNL_t165.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-31.5_lon117.5_20260303_T50JNL_t165.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-31.5_lon117.5_20260303_T50JNL_t165,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (63/100) %s — already exists, skipping\n', 'lat-31.5_lon117.5_20260303_T50JNL_t165');
end

% --- Scene 64/100: lat-32.0_lon-59.5_20240325_T21HTE_t128 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t128.mat', 'file')
    fprintf('\n[0] (64/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t128');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t128.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t128.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t128.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t128,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (64/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t128');
end

% --- Scene 65/100: lat-32.0_lon-59.5_20240325_T21HTE_t145 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t145.mat', 'file')
    fprintf('\n[0] (65/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t145');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t145.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t145.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t145.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t145,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (65/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t145');
end

% --- Scene 66/100: lat-32.0_lon-59.5_20240325_T21HTE_t160 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t160.mat', 'file')
    fprintf('\n[0] (66/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t160');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t160.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t160.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t160.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t160,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (66/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t160');
end

% --- Scene 67/100: lat-32.0_lon-59.5_20240325_T21HTE_t194 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t194.mat', 'file')
    fprintf('\n[0] (67/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t194');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t194.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t194.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t194.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t194,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (67/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t194');
end

% --- Scene 68/100: lat-32.0_lon-59.5_20240325_T21HTE_t231 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t231.mat', 'file')
    fprintf('\n[0] (68/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t231');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t231.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t231.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t231.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t231,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (68/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t231');
end

% --- Scene 69/100: lat-32.0_lon-59.5_20240325_T21HTE_t256 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t256.mat', 'file')
    fprintf('\n[0] (69/100) %s\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t256');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t256.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-32.0_lon-59.5_20240325_T21HTE_t256.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-32.0_lon-59.5_20240325_T21HTE_t256.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-32.0_lon-59.5_20240325_T21HTE_t256,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (69/100) %s — already exists, skipping\n', 'lat-32.0_lon-59.5_20240325_T21HTE_t256');
end

% --- Scene 70/100: lat-33.5_lon19.5_20250123_T34HCJ_t027 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t027.mat', 'file')
    fprintf('\n[0] (70/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t027');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t027.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t027.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t027.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t027,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (70/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t027');
end

% --- Scene 71/100: lat-33.5_lon19.5_20250123_T34HCJ_t115 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t115.mat', 'file')
    fprintf('\n[0] (71/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t115');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t115.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t115.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t115.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t115,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (71/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t115');
end

% --- Scene 72/100: lat-33.5_lon19.5_20250123_T34HCJ_t148 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t148.mat', 'file')
    fprintf('\n[0] (72/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t148');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t148.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t148.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t148.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t148,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (72/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t148');
end

% --- Scene 73/100: lat-33.5_lon19.5_20250123_T34HCJ_t199 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t199.mat', 'file')
    fprintf('\n[0] (73/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t199');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t199.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t199.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t199.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t199,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (73/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t199');
end

% --- Scene 74/100: lat-33.5_lon19.5_20250123_T34HCJ_t201 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t201.mat', 'file')
    fprintf('\n[0] (74/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t201');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t201.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t201.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t201.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t201,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (74/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t201');
end

% --- Scene 75/100: lat-33.5_lon19.5_20250123_T34HCJ_t210 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t210.mat', 'file')
    fprintf('\n[0] (75/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t210');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t210.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t210.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t210.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t210,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (75/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t210');
end

% --- Scene 76/100: lat-33.5_lon19.5_20250123_T34HCJ_t214 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t214.mat', 'file')
    fprintf('\n[0] (76/100) %s\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t214');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t214.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-33.5_lon19.5_20250123_T34HCJ_t214.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-33.5_lon19.5_20250123_T34HCJ_t214.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-33.5_lon19.5_20250123_T34HCJ_t214,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (76/100) %s — already exists, skipping\n', 'lat-33.5_lon19.5_20250123_T34HCJ_t214');
end

% --- Scene 77/100: lat-37.0_lon149.0_20250104_T55HFU_t127 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-37.0_lon149.0_20250104_T55HFU_t127.mat', 'file')
    fprintf('\n[0] (77/100) %s\n', 'lat-37.0_lon149.0_20250104_T55HFU_t127');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-37.0_lon149.0_20250104_T55HFU_t127.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-37.0_lon149.0_20250104_T55HFU_t127.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-37.0_lon149.0_20250104_T55HFU_t127.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-37.0_lon149.0_20250104_T55HFU_t127,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (77/100) %s — already exists, skipping\n', 'lat-37.0_lon149.0_20250104_T55HFU_t127');
end

% --- Scene 78/100: lat-40.0_lon-72.0_20260305_T18GYA_t173 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t173.mat', 'file')
    fprintf('\n[0] (78/100) %s\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t173');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t173.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-40.0_lon-72.0_20260305_T18GYA_t173.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t173.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-40.0_lon-72.0_20260305_T18GYA_t173,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (78/100) %s — already exists, skipping\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t173');
end

% --- Scene 79/100: lat-40.0_lon-72.0_20260305_T18GYA_t222 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t222.mat', 'file')
    fprintf('\n[0] (79/100) %s\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t222');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t222.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-40.0_lon-72.0_20260305_T18GYA_t222.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t222.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-40.0_lon-72.0_20260305_T18GYA_t222,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (79/100) %s — already exists, skipping\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t222');
end

% --- Scene 80/100: lat-40.0_lon-72.0_20260305_T18GYA_t239 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t239.mat', 'file')
    fprintf('\n[0] (80/100) %s\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t239');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t239.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-40.0_lon-72.0_20260305_T18GYA_t239.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t239.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-40.0_lon-72.0_20260305_T18GYA_t239,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (80/100) %s — already exists, skipping\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t239');
end

% --- Scene 81/100: lat-40.0_lon-72.0_20260305_T18GYA_t297 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t297.mat', 'file')
    fprintf('\n[0] (81/100) %s\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t297');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t297.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-40.0_lon-72.0_20260305_T18GYA_t297.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-40.0_lon-72.0_20260305_T18GYA_t297.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-40.0_lon-72.0_20260305_T18GYA_t297,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (81/100) %s — already exists, skipping\n', 'lat-40.0_lon-72.0_20260305_T18GYA_t297');
end

% --- Scene 82/100: lat-47.0_lon-69.0_20260106_T19GDJ_t089 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t089.mat', 'file')
    fprintf('\n[0] (82/100) %s\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t089');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t089.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-47.0_lon-69.0_20260106_T19GDJ_t089.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t089.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-47.0_lon-69.0_20260106_T19GDJ_t089,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (82/100) %s — already exists, skipping\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t089');
end

% --- Scene 83/100: lat-47.0_lon-69.0_20260106_T19GDJ_t132 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t132.mat', 'file')
    fprintf('\n[0] (83/100) %s\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t132');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t132.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-47.0_lon-69.0_20260106_T19GDJ_t132.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t132.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-47.0_lon-69.0_20260106_T19GDJ_t132,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (83/100) %s — already exists, skipping\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t132');
end

% --- Scene 84/100: lat-47.0_lon-69.0_20260106_T19GDJ_t214 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t214.mat', 'file')
    fprintf('\n[0] (84/100) %s\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t214');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t214.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-47.0_lon-69.0_20260106_T19GDJ_t214.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t214.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-47.0_lon-69.0_20260106_T19GDJ_t214,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (84/100) %s — already exists, skipping\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t214');
end

% --- Scene 85/100: lat-47.0_lon-69.0_20260106_T19GDJ_t231 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t231.mat', 'file')
    fprintf('\n[0] (85/100) %s\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t231');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t231.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-47.0_lon-69.0_20260106_T19GDJ_t231.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-47.0_lon-69.0_20260106_T19GDJ_t231.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-47.0_lon-69.0_20260106_T19GDJ_t231,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (85/100) %s — already exists, skipping\n', 'lat-47.0_lon-69.0_20260106_T19GDJ_t231');
end

% --- Scene 86/100: lat-5.5_lon-37.5_20240629_T24MXV_t137 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t137.mat', 'file')
    fprintf('\n[0] (86/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t137');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t137.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t137.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t137.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t137,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (86/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t137');
end

% --- Scene 87/100: lat-5.5_lon-37.5_20240629_T24MXV_t150 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t150.mat', 'file')
    fprintf('\n[0] (87/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t150');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t150.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t150.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t150.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t150,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (87/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t150');
end

% --- Scene 88/100: lat-5.5_lon-37.5_20240629_T24MXV_t181 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t181.mat', 'file')
    fprintf('\n[0] (88/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t181');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t181.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t181.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t181.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t181,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (88/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t181');
end

% --- Scene 89/100: lat-5.5_lon-37.5_20240629_T24MXV_t211 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t211.mat', 'file')
    fprintf('\n[0] (89/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t211');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t211.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t211.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t211.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t211,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (89/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t211');
end

% --- Scene 90/100: lat-5.5_lon-37.5_20240629_T24MXV_t212 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t212.mat', 'file')
    fprintf('\n[0] (90/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t212');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t212.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t212.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t212.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t212,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (90/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t212');
end

% --- Scene 91/100: lat-5.5_lon-37.5_20240629_T24MXV_t218 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t218.mat', 'file')
    fprintf('\n[0] (91/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t218');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t218.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t218.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t218.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t218,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (91/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t218');
end

% --- Scene 92/100: lat-5.5_lon-37.5_20240629_T24MXV_t226 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t226.mat', 'file')
    fprintf('\n[0] (92/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t226');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t226.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t226.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t226.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t226,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (92/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t226');
end

% --- Scene 93/100: lat-5.5_lon-37.5_20240629_T24MXV_t295 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t295.mat', 'file')
    fprintf('\n[0] (93/100) %s\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t295');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t295.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-5.5_lon-37.5_20240629_T24MXV_t295.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-5.5_lon-37.5_20240629_T24MXV_t295.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-5.5_lon-37.5_20240629_T24MXV_t295,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (93/100) %s — already exists, skipping\n', 'lat-5.5_lon-37.5_20240629_T24MXV_t295');
end

% --- Scene 94/100: lat-50.0_lon-71.0_20240120_T19FCE_t105 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t105.mat', 'file')
    fprintf('\n[0] (94/100) %s\n', 'lat-50.0_lon-71.0_20240120_T19FCE_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-50.0_lon-71.0_20240120_T19FCE_t105.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t105.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-50.0_lon-71.0_20240120_T19FCE_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (94/100) %s — already exists, skipping\n', 'lat-50.0_lon-71.0_20240120_T19FCE_t105');
end

% --- Scene 95/100: lat-50.0_lon-71.0_20240120_T19FCE_t251 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t251.mat', 'file')
    fprintf('\n[0] (95/100) %s\n', 'lat-50.0_lon-71.0_20240120_T19FCE_t251');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t251.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat-50.0_lon-71.0_20240120_T19FCE_t251.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat-50.0_lon-71.0_20240120_T19FCE_t251.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat-50.0_lon-71.0_20240120_T19FCE_t251,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (95/100) %s — already exists, skipping\n', 'lat-50.0_lon-71.0_20240120_T19FCE_t251');
end

% --- Scene 96/100: lat13.0_lon14.0_20231029_T33PUQ_t033 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t033.mat', 'file')
    fprintf('\n[0] (96/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t033');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t033.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t033.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t033.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t033,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (96/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t033');
end

% --- Scene 97/100: lat13.0_lon14.0_20231029_T33PUQ_t052 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t052.mat', 'file')
    fprintf('\n[0] (97/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t052');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t052.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t052.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t052.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t052,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (97/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t052');
end

% --- Scene 98/100: lat13.0_lon14.0_20231029_T33PUQ_t053 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t053.mat', 'file')
    fprintf('\n[0] (98/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t053');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t053.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t053.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t053.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t053,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (98/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t053');
end

% --- Scene 99/100: lat13.0_lon14.0_20231029_T33PUQ_t054 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t054.mat', 'file')
    fprintf('\n[0] (99/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t054');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t054.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t054.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t054.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t054,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (99/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t054');
end

% --- Scene 100/100: lat13.0_lon14.0_20231029_T33PUQ_t058 ---
if ~exist('data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t058.mat', 'file')
    fprintf('\n[0] (100/100) %s\n', 'lat13.0_lon14.0_20231029_T33PUQ_t058');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t058.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat13.0_lon14.0_20231029_T33PUQ_t058.mat';
    sri_path = 'data/SR/MAPSMM/EMIT32_WALD/6/lat13.0_lon14.0_20231029_T33PUQ_t058.mat';
    try
        MAPSMM_run;
        elapsed = toc;
        fid = fopen('data/SR/MAPSMM/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat13.0_lon14.0_20231029_T33PUQ_t058,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[0] (100/100) %s — already exists, skipping\n', 'lat13.0_lon14.0_20231029_T33PUQ_t058');
end

fprintf('\n=== Worker 0 finished all 100 scenes ===\n');
exit;