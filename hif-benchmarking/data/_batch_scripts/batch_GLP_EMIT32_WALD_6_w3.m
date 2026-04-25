% Auto-generated batch script (worker 3)
% Dataset: EMIT32_WALD, Method: GLP, Scale: 6
% Scenes: 99

cd('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'methods', 'GLP')));

% --- Scene 1/99: lat39.0_lon-106.0_20231006_T13SCD_t114 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t114.mat', 'file')
    fprintf('\n[3] (1/99) %s\n', 'lat39.0_lon-106.0_20231006_T13SCD_t114');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t114.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.0_lon-106.0_20231006_T13SCD_t114.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat39.0_lon-106.0_20231006_T13SCD_t114.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.0_lon-106.0_20231006_T13SCD_t114,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (1/99) %s — already exists, skipping\n', 'lat39.0_lon-106.0_20231006_T13SCD_t114');
end

% --- Scene 2/99: lat39.5_lon-104.0_20230606_T13SED_t077 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat39.5_lon-104.0_20230606_T13SED_t077.mat', 'file')
    fprintf('\n[3] (2/99) %s\n', 'lat39.5_lon-104.0_20230606_T13SED_t077');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat39.5_lon-104.0_20230606_T13SED_t077.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat39.5_lon-104.0_20230606_T13SED_t077.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat39.5_lon-104.0_20230606_T13SED_t077.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat39.5_lon-104.0_20230606_T13SED_t077,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (2/99) %s — already exists, skipping\n', 'lat39.5_lon-104.0_20230606_T13SED_t077');
end

% --- Scene 3/99: lat40.0_lon116.5_20250403_T50TMK_t162 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t162.mat', 'file')
    fprintf('\n[3] (3/99) %s\n', 'lat40.0_lon116.5_20250403_T50TMK_t162');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t162.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat40.0_lon116.5_20250403_T50TMK_t162.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t162.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat40.0_lon116.5_20250403_T50TMK_t162,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (3/99) %s — already exists, skipping\n', 'lat40.0_lon116.5_20250403_T50TMK_t162');
end

% --- Scene 4/99: lat40.0_lon116.5_20250403_T50TMK_t225 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t225.mat', 'file')
    fprintf('\n[3] (4/99) %s\n', 'lat40.0_lon116.5_20250403_T50TMK_t225');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t225.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat40.0_lon116.5_20250403_T50TMK_t225.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t225.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat40.0_lon116.5_20250403_T50TMK_t225,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (4/99) %s — already exists, skipping\n', 'lat40.0_lon116.5_20250403_T50TMK_t225');
end

% --- Scene 5/99: lat40.0_lon116.5_20250403_T50TMK_t246 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t246.mat', 'file')
    fprintf('\n[3] (5/99) %s\n', 'lat40.0_lon116.5_20250403_T50TMK_t246');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t246.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat40.0_lon116.5_20250403_T50TMK_t246.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t246.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat40.0_lon116.5_20250403_T50TMK_t246,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (5/99) %s — already exists, skipping\n', 'lat40.0_lon116.5_20250403_T50TMK_t246');
end

% --- Scene 6/99: lat40.0_lon116.5_20250403_T50TMK_t261 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t261.mat', 'file')
    fprintf('\n[3] (6/99) %s\n', 'lat40.0_lon116.5_20250403_T50TMK_t261');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t261.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat40.0_lon116.5_20250403_T50TMK_t261.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t261.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat40.0_lon116.5_20250403_T50TMK_t261,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (6/99) %s — already exists, skipping\n', 'lat40.0_lon116.5_20250403_T50TMK_t261');
end

% --- Scene 7/99: lat40.0_lon116.5_20250403_T50TMK_t262 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t262.mat', 'file')
    fprintf('\n[3] (7/99) %s\n', 'lat40.0_lon116.5_20250403_T50TMK_t262');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t262.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat40.0_lon116.5_20250403_T50TMK_t262.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat40.0_lon116.5_20250403_T50TMK_t262.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat40.0_lon116.5_20250403_T50TMK_t262,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (7/99) %s — already exists, skipping\n', 'lat40.0_lon116.5_20250403_T50TMK_t262');
end

% --- Scene 8/99: lat41.0_lon-124.0_20250603_T10TDL_t042 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat41.0_lon-124.0_20250603_T10TDL_t042.mat', 'file')
    fprintf('\n[3] (8/99) %s\n', 'lat41.0_lon-124.0_20250603_T10TDL_t042');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat41.0_lon-124.0_20250603_T10TDL_t042.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat41.0_lon-124.0_20250603_T10TDL_t042.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat41.0_lon-124.0_20250603_T10TDL_t042.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat41.0_lon-124.0_20250603_T10TDL_t042,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (8/99) %s — already exists, skipping\n', 'lat41.0_lon-124.0_20250603_T10TDL_t042');
end

% --- Scene 9/99: lat42.0_lon-101.0_20231006_T14TLM_t037 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t037.mat', 'file')
    fprintf('\n[3] (9/99) %s\n', 'lat42.0_lon-101.0_20231006_T14TLM_t037');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t037.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon-101.0_20231006_T14TLM_t037.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t037.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon-101.0_20231006_T14TLM_t037,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (9/99) %s — already exists, skipping\n', 'lat42.0_lon-101.0_20231006_T14TLM_t037');
end

% --- Scene 10/99: lat42.0_lon-101.0_20231006_T14TLM_t040 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t040.mat', 'file')
    fprintf('\n[3] (10/99) %s\n', 'lat42.0_lon-101.0_20231006_T14TLM_t040');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t040.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon-101.0_20231006_T14TLM_t040.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t040.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon-101.0_20231006_T14TLM_t040,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (10/99) %s — already exists, skipping\n', 'lat42.0_lon-101.0_20231006_T14TLM_t040');
end

% --- Scene 11/99: lat42.0_lon-101.0_20231006_T14TLM_t142 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t142.mat', 'file')
    fprintf('\n[3] (11/99) %s\n', 'lat42.0_lon-101.0_20231006_T14TLM_t142');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t142.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon-101.0_20231006_T14TLM_t142.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon-101.0_20231006_T14TLM_t142.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon-101.0_20231006_T14TLM_t142,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (11/99) %s — already exists, skipping\n', 'lat42.0_lon-101.0_20231006_T14TLM_t142');
end

% --- Scene 12/99: lat42.0_lon115.0_20230623_T50TLM_t158 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon115.0_20230623_T50TLM_t158.mat', 'file')
    fprintf('\n[3] (12/99) %s\n', 'lat42.0_lon115.0_20230623_T50TLM_t158');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon115.0_20230623_T50TLM_t158.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon115.0_20230623_T50TLM_t158.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon115.0_20230623_T50TLM_t158.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon115.0_20230623_T50TLM_t158,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (12/99) %s — already exists, skipping\n', 'lat42.0_lon115.0_20230623_T50TLM_t158');
end

% --- Scene 13/99: lat42.0_lon13.5_20230822_T33TUG_t103 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t103.mat', 'file')
    fprintf('\n[3] (13/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t103');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t103.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t103.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t103.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t103,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (13/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t103');
end

% --- Scene 14/99: lat42.0_lon13.5_20230822_T33TUG_t140 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t140.mat', 'file')
    fprintf('\n[3] (14/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t140');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t140.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t140.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t140.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t140,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (14/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t140');
end

% --- Scene 15/99: lat42.0_lon13.5_20230822_T33TUG_t147 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t147.mat', 'file')
    fprintf('\n[3] (15/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t147');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t147.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t147.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t147.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t147,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (15/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t147');
end

% --- Scene 16/99: lat42.0_lon13.5_20230822_T33TUG_t199 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t199.mat', 'file')
    fprintf('\n[3] (16/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t199');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t199.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t199.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t199.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t199,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (16/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t199');
end

% --- Scene 17/99: lat42.0_lon13.5_20230822_T33TUG_t214 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t214.mat', 'file')
    fprintf('\n[3] (17/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t214');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t214.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t214.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t214.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t214,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (17/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t214');
end

% --- Scene 18/99: lat42.0_lon13.5_20230822_T33TUG_t219 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t219.mat', 'file')
    fprintf('\n[3] (18/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t219');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t219.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t219.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t219.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t219,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (18/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t219');
end

% --- Scene 19/99: lat42.0_lon13.5_20230822_T33TUG_t234 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t234.mat', 'file')
    fprintf('\n[3] (19/99) %s\n', 'lat42.0_lon13.5_20230822_T33TUG_t234');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t234.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.0_lon13.5_20230822_T33TUG_t234.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.0_lon13.5_20230822_T33TUG_t234.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.0_lon13.5_20230822_T33TUG_t234,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (19/99) %s — already exists, skipping\n', 'lat42.0_lon13.5_20230822_T33TUG_t234');
end

% --- Scene 20/99: lat42.5_lon-106.5_20250818_T13TCH_t083 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t083.mat', 'file')
    fprintf('\n[3] (20/99) %s\n', 'lat42.5_lon-106.5_20250818_T13TCH_t083');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t083.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.5_lon-106.5_20250818_T13TCH_t083.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t083.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.5_lon-106.5_20250818_T13TCH_t083,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (20/99) %s — already exists, skipping\n', 'lat42.5_lon-106.5_20250818_T13TCH_t083');
end

% --- Scene 21/99: lat42.5_lon-106.5_20250818_T13TCH_t192 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t192.mat', 'file')
    fprintf('\n[3] (21/99) %s\n', 'lat42.5_lon-106.5_20250818_T13TCH_t192');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t192.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.5_lon-106.5_20250818_T13TCH_t192.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t192.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.5_lon-106.5_20250818_T13TCH_t192,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (21/99) %s — already exists, skipping\n', 'lat42.5_lon-106.5_20250818_T13TCH_t192');
end

% --- Scene 22/99: lat42.5_lon-106.5_20250818_T13TCH_t238 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t238.mat', 'file')
    fprintf('\n[3] (22/99) %s\n', 'lat42.5_lon-106.5_20250818_T13TCH_t238');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t238.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.5_lon-106.5_20250818_T13TCH_t238.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t238.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.5_lon-106.5_20250818_T13TCH_t238,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (22/99) %s — already exists, skipping\n', 'lat42.5_lon-106.5_20250818_T13TCH_t238');
end

% --- Scene 23/99: lat42.5_lon-106.5_20250818_T13TCH_t260 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t260.mat', 'file')
    fprintf('\n[3] (23/99) %s\n', 'lat42.5_lon-106.5_20250818_T13TCH_t260');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t260.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.5_lon-106.5_20250818_T13TCH_t260.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.5_lon-106.5_20250818_T13TCH_t260.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.5_lon-106.5_20250818_T13TCH_t260,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (23/99) %s — already exists, skipping\n', 'lat42.5_lon-106.5_20250818_T13TCH_t260');
end

% --- Scene 24/99: lat42.7_lon0.5_20250803_T31TCH_t124 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t124.mat', 'file')
    fprintf('\n[3] (24/99) %s\n', 'lat42.7_lon0.5_20250803_T31TCH_t124');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t124.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.7_lon0.5_20250803_T31TCH_t124.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t124.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.7_lon0.5_20250803_T31TCH_t124,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (24/99) %s — already exists, skipping\n', 'lat42.7_lon0.5_20250803_T31TCH_t124');
end

% --- Scene 25/99: lat42.7_lon0.5_20250803_T31TCH_t136 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t136.mat', 'file')
    fprintf('\n[3] (25/99) %s\n', 'lat42.7_lon0.5_20250803_T31TCH_t136');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t136.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.7_lon0.5_20250803_T31TCH_t136.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t136.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.7_lon0.5_20250803_T31TCH_t136,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (25/99) %s — already exists, skipping\n', 'lat42.7_lon0.5_20250803_T31TCH_t136');
end

% --- Scene 26/99: lat42.7_lon0.5_20250803_T31TCH_t177 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t177.mat', 'file')
    fprintf('\n[3] (26/99) %s\n', 'lat42.7_lon0.5_20250803_T31TCH_t177');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t177.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.7_lon0.5_20250803_T31TCH_t177.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t177.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.7_lon0.5_20250803_T31TCH_t177,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (26/99) %s — already exists, skipping\n', 'lat42.7_lon0.5_20250803_T31TCH_t177');
end

% --- Scene 27/99: lat42.7_lon0.5_20250803_T31TCH_t186 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t186.mat', 'file')
    fprintf('\n[3] (27/99) %s\n', 'lat42.7_lon0.5_20250803_T31TCH_t186');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t186.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat42.7_lon0.5_20250803_T31TCH_t186.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat42.7_lon0.5_20250803_T31TCH_t186.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat42.7_lon0.5_20250803_T31TCH_t186,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (27/99) %s — already exists, skipping\n', 'lat42.7_lon0.5_20250803_T31TCH_t186');
end

% --- Scene 28/99: lat43.5_lon104.0_20230822_T48TVP_t072 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat43.5_lon104.0_20230822_T48TVP_t072.mat', 'file')
    fprintf('\n[3] (28/99) %s\n', 'lat43.5_lon104.0_20230822_T48TVP_t072');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat43.5_lon104.0_20230822_T48TVP_t072.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat43.5_lon104.0_20230822_T48TVP_t072.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat43.5_lon104.0_20230822_T48TVP_t072.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat43.5_lon104.0_20230822_T48TVP_t072,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (28/99) %s — already exists, skipping\n', 'lat43.5_lon104.0_20230822_T48TVP_t072');
end

% --- Scene 29/99: lat44.0_lon-71.5_20250603_T19TCJ_t118 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat44.0_lon-71.5_20250603_T19TCJ_t118.mat', 'file')
    fprintf('\n[3] (29/99) %s\n', 'lat44.0_lon-71.5_20250603_T19TCJ_t118');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat44.0_lon-71.5_20250603_T19TCJ_t118.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat44.0_lon-71.5_20250603_T19TCJ_t118.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat44.0_lon-71.5_20250603_T19TCJ_t118.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat44.0_lon-71.5_20250603_T19TCJ_t118,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (29/99) %s — already exists, skipping\n', 'lat44.0_lon-71.5_20250603_T19TCJ_t118');
end

% --- Scene 30/99: lat45.0_lon11.0_20231008_T32TPQ_t057 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t057.mat', 'file')
    fprintf('\n[3] (30/99) %s\n', 'lat45.0_lon11.0_20231008_T32TPQ_t057');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t057.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.0_lon11.0_20231008_T32TPQ_t057.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t057.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.0_lon11.0_20231008_T32TPQ_t057,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (30/99) %s — already exists, skipping\n', 'lat45.0_lon11.0_20231008_T32TPQ_t057');
end

% --- Scene 31/99: lat45.0_lon11.0_20231008_T32TPQ_t084 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t084.mat', 'file')
    fprintf('\n[3] (31/99) %s\n', 'lat45.0_lon11.0_20231008_T32TPQ_t084');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t084.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.0_lon11.0_20231008_T32TPQ_t084.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.0_lon11.0_20231008_T32TPQ_t084.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.0_lon11.0_20231008_T32TPQ_t084,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (31/99) %s — already exists, skipping\n', 'lat45.0_lon11.0_20231008_T32TPQ_t084');
end

% --- Scene 32/99: lat45.5_lon40.0_20230808_T37TEL_t093 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t093.mat', 'file')
    fprintf('\n[3] (32/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t093');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t093.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t093.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t093.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t093,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (32/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t093');
end

% --- Scene 33/99: lat45.5_lon40.0_20230808_T37TEL_t108 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t108.mat', 'file')
    fprintf('\n[3] (33/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t108');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t108.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t108.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t108.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t108,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (33/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t108');
end

% --- Scene 34/99: lat45.5_lon40.0_20230808_T37TEL_t110 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t110.mat', 'file')
    fprintf('\n[3] (34/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t110');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t110.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t110.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t110.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t110,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (34/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t110');
end

% --- Scene 35/99: lat45.5_lon40.0_20230808_T37TEL_t114 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t114.mat', 'file')
    fprintf('\n[3] (35/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t114');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t114.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t114.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t114.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t114,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (35/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t114');
end

% --- Scene 36/99: lat45.5_lon40.0_20230808_T37TEL_t150 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t150.mat', 'file')
    fprintf('\n[3] (36/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t150');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t150.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t150.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t150.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t150,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (36/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t150');
end

% --- Scene 37/99: lat45.5_lon40.0_20230808_T37TEL_t165 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t165.mat', 'file')
    fprintf('\n[3] (37/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t165');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t165.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t165.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t165.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t165,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (37/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t165');
end

% --- Scene 38/99: lat45.5_lon40.0_20230808_T37TEL_t183 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t183.mat', 'file')
    fprintf('\n[3] (38/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t183');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t183.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t183.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t183.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t183,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (38/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t183');
end

% --- Scene 39/99: lat45.5_lon40.0_20230808_T37TEL_t191 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t191.mat', 'file')
    fprintf('\n[3] (39/99) %s\n', 'lat45.5_lon40.0_20230808_T37TEL_t191');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t191.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat45.5_lon40.0_20230808_T37TEL_t191.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat45.5_lon40.0_20230808_T37TEL_t191.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat45.5_lon40.0_20230808_T37TEL_t191,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (39/99) %s — already exists, skipping\n', 'lat45.5_lon40.0_20230808_T37TEL_t191');
end

% --- Scene 40/99: lat46.0_lon-122.0_20250417_T10TES_t076 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t076.mat', 'file')
    fprintf('\n[3] (40/99) %s\n', 'lat46.0_lon-122.0_20250417_T10TES_t076');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t076.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat46.0_lon-122.0_20250417_T10TES_t076.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t076.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat46.0_lon-122.0_20250417_T10TES_t076,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (40/99) %s — already exists, skipping\n', 'lat46.0_lon-122.0_20250417_T10TES_t076');
end

% --- Scene 41/99: lat46.0_lon-122.0_20250417_T10TES_t183 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t183.mat', 'file')
    fprintf('\n[3] (41/99) %s\n', 'lat46.0_lon-122.0_20250417_T10TES_t183');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t183.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat46.0_lon-122.0_20250417_T10TES_t183.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t183.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat46.0_lon-122.0_20250417_T10TES_t183,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (41/99) %s — already exists, skipping\n', 'lat46.0_lon-122.0_20250417_T10TES_t183');
end

% --- Scene 42/99: lat46.0_lon-122.0_20250417_T10TES_t197 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t197.mat', 'file')
    fprintf('\n[3] (42/99) %s\n', 'lat46.0_lon-122.0_20250417_T10TES_t197');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t197.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat46.0_lon-122.0_20250417_T10TES_t197.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t197.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat46.0_lon-122.0_20250417_T10TES_t197,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (42/99) %s — already exists, skipping\n', 'lat46.0_lon-122.0_20250417_T10TES_t197');
end

% --- Scene 43/99: lat46.0_lon-122.0_20250417_T10TES_t198 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t198.mat', 'file')
    fprintf('\n[3] (43/99) %s\n', 'lat46.0_lon-122.0_20250417_T10TES_t198');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t198.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat46.0_lon-122.0_20250417_T10TES_t198.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t198.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat46.0_lon-122.0_20250417_T10TES_t198,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (43/99) %s — already exists, skipping\n', 'lat46.0_lon-122.0_20250417_T10TES_t198');
end

% --- Scene 44/99: lat46.0_lon-122.0_20250417_T10TES_t213 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t213.mat', 'file')
    fprintf('\n[3] (44/99) %s\n', 'lat46.0_lon-122.0_20250417_T10TES_t213');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t213.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat46.0_lon-122.0_20250417_T10TES_t213.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat46.0_lon-122.0_20250417_T10TES_t213.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat46.0_lon-122.0_20250417_T10TES_t213,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (44/99) %s — already exists, skipping\n', 'lat46.0_lon-122.0_20250417_T10TES_t213');
end

% --- Scene 45/99: lat47.0_lon-108.0_20240806_T12TYT_t059 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t059.mat', 'file')
    fprintf('\n[3] (45/99) %s\n', 'lat47.0_lon-108.0_20240806_T12TYT_t059');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t059.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.0_lon-108.0_20240806_T12TYT_t059.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t059.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.0_lon-108.0_20240806_T12TYT_t059,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (45/99) %s — already exists, skipping\n', 'lat47.0_lon-108.0_20240806_T12TYT_t059');
end

% --- Scene 46/99: lat47.0_lon-108.0_20240806_T12TYT_t103 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t103.mat', 'file')
    fprintf('\n[3] (46/99) %s\n', 'lat47.0_lon-108.0_20240806_T12TYT_t103');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t103.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.0_lon-108.0_20240806_T12TYT_t103.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t103.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.0_lon-108.0_20240806_T12TYT_t103,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (46/99) %s — already exists, skipping\n', 'lat47.0_lon-108.0_20240806_T12TYT_t103');
end

% --- Scene 47/99: lat47.0_lon-108.0_20240806_T12TYT_t149 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t149.mat', 'file')
    fprintf('\n[3] (47/99) %s\n', 'lat47.0_lon-108.0_20240806_T12TYT_t149');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t149.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.0_lon-108.0_20240806_T12TYT_t149.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t149.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.0_lon-108.0_20240806_T12TYT_t149,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (47/99) %s — already exists, skipping\n', 'lat47.0_lon-108.0_20240806_T12TYT_t149');
end

% --- Scene 48/99: lat47.0_lon-108.0_20240806_T12TYT_t181 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t181.mat', 'file')
    fprintf('\n[3] (48/99) %s\n', 'lat47.0_lon-108.0_20240806_T12TYT_t181');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t181.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.0_lon-108.0_20240806_T12TYT_t181.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t181.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.0_lon-108.0_20240806_T12TYT_t181,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (48/99) %s — already exists, skipping\n', 'lat47.0_lon-108.0_20240806_T12TYT_t181');
end

% --- Scene 49/99: lat47.0_lon-108.0_20240806_T12TYT_t201 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t201.mat', 'file')
    fprintf('\n[3] (49/99) %s\n', 'lat47.0_lon-108.0_20240806_T12TYT_t201');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t201.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.0_lon-108.0_20240806_T12TYT_t201.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.0_lon-108.0_20240806_T12TYT_t201.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.0_lon-108.0_20240806_T12TYT_t201,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (49/99) %s — already exists, skipping\n', 'lat47.0_lon-108.0_20240806_T12TYT_t201');
end

% --- Scene 50/99: lat47.5_lon-100.5_20231008_T14TLT_t028 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t028.mat', 'file')
    fprintf('\n[3] (50/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t028');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t028.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t028.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t028.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t028,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (50/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t028');
end

% --- Scene 51/99: lat47.5_lon-100.5_20231008_T14TLT_t089 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t089.mat', 'file')
    fprintf('\n[3] (51/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t089');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t089.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t089.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t089.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t089,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (51/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t089');
end

% --- Scene 52/99: lat47.5_lon-100.5_20231008_T14TLT_t105 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t105.mat', 'file')
    fprintf('\n[3] (52/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t105.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t105.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (52/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t105');
end

% --- Scene 53/99: lat47.5_lon-100.5_20231008_T14TLT_t111 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t111.mat', 'file')
    fprintf('\n[3] (53/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t111');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t111.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t111.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t111.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t111,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (53/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t111');
end

% --- Scene 54/99: lat47.5_lon-100.5_20231008_T14TLT_t126 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t126.mat', 'file')
    fprintf('\n[3] (54/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t126');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t126.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t126.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t126.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t126,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (54/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t126');
end

% --- Scene 55/99: lat47.5_lon-100.5_20231008_T14TLT_t147 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t147.mat', 'file')
    fprintf('\n[3] (55/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t147');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t147.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t147.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t147.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t147,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (55/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t147');
end

% --- Scene 56/99: lat47.5_lon-100.5_20231008_T14TLT_t227 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t227.mat', 'file')
    fprintf('\n[3] (56/99) %s\n', 'lat47.5_lon-100.5_20231008_T14TLT_t227');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t227.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon-100.5_20231008_T14TLT_t227.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon-100.5_20231008_T14TLT_t227.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon-100.5_20231008_T14TLT_t227,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (56/99) %s — already exists, skipping\n', 'lat47.5_lon-100.5_20231008_T14TLT_t227');
end

% --- Scene 57/99: lat47.5_lon24.5_20250805_T35TLN_t130 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t130.mat', 'file')
    fprintf('\n[3] (57/99) %s\n', 'lat47.5_lon24.5_20250805_T35TLN_t130');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t130.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon24.5_20250805_T35TLN_t130.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t130.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon24.5_20250805_T35TLN_t130,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (57/99) %s — already exists, skipping\n', 'lat47.5_lon24.5_20250805_T35TLN_t130');
end

% --- Scene 58/99: lat47.5_lon24.5_20250805_T35TLN_t131 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t131.mat', 'file')
    fprintf('\n[3] (58/99) %s\n', 'lat47.5_lon24.5_20250805_T35TLN_t131');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t131.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon24.5_20250805_T35TLN_t131.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t131.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon24.5_20250805_T35TLN_t131,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (58/99) %s — already exists, skipping\n', 'lat47.5_lon24.5_20250805_T35TLN_t131');
end

% --- Scene 59/99: lat47.5_lon24.5_20250805_T35TLN_t156 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t156.mat', 'file')
    fprintf('\n[3] (59/99) %s\n', 'lat47.5_lon24.5_20250805_T35TLN_t156');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t156.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon24.5_20250805_T35TLN_t156.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t156.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon24.5_20250805_T35TLN_t156,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (59/99) %s — already exists, skipping\n', 'lat47.5_lon24.5_20250805_T35TLN_t156');
end

% --- Scene 60/99: lat47.5_lon24.5_20250805_T35TLN_t178 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t178.mat', 'file')
    fprintf('\n[3] (60/99) %s\n', 'lat47.5_lon24.5_20250805_T35TLN_t178');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t178.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat47.5_lon24.5_20250805_T35TLN_t178.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat47.5_lon24.5_20250805_T35TLN_t178.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat47.5_lon24.5_20250805_T35TLN_t178,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (60/99) %s — already exists, skipping\n', 'lat47.5_lon24.5_20250805_T35TLN_t178');
end

% --- Scene 61/99: lat49.0_lon13.2_20250406_T32UQV_t071 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t071.mat', 'file')
    fprintf('\n[3] (61/99) %s\n', 'lat49.0_lon13.2_20250406_T32UQV_t071');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t071.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon13.2_20250406_T32UQV_t071.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t071.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon13.2_20250406_T32UQV_t071,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (61/99) %s — already exists, skipping\n', 'lat49.0_lon13.2_20250406_T32UQV_t071');
end

% --- Scene 62/99: lat49.0_lon13.2_20250406_T32UQV_t084 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t084.mat', 'file')
    fprintf('\n[3] (62/99) %s\n', 'lat49.0_lon13.2_20250406_T32UQV_t084');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t084.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon13.2_20250406_T32UQV_t084.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t084.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon13.2_20250406_T32UQV_t084,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (62/99) %s — already exists, skipping\n', 'lat49.0_lon13.2_20250406_T32UQV_t084');
end

% --- Scene 63/99: lat49.0_lon13.2_20250406_T32UQV_t085 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t085.mat', 'file')
    fprintf('\n[3] (63/99) %s\n', 'lat49.0_lon13.2_20250406_T32UQV_t085');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t085.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon13.2_20250406_T32UQV_t085.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t085.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon13.2_20250406_T32UQV_t085,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (63/99) %s — already exists, skipping\n', 'lat49.0_lon13.2_20250406_T32UQV_t085');
end

% --- Scene 64/99: lat49.0_lon13.2_20250406_T32UQV_t094 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t094.mat', 'file')
    fprintf('\n[3] (64/99) %s\n', 'lat49.0_lon13.2_20250406_T32UQV_t094');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t094.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon13.2_20250406_T32UQV_t094.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon13.2_20250406_T32UQV_t094.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon13.2_20250406_T32UQV_t094,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (64/99) %s — already exists, skipping\n', 'lat49.0_lon13.2_20250406_T32UQV_t094');
end

% --- Scene 65/99: lat49.0_lon34.0_20250606_T36UWV_t023 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t023.mat', 'file')
    fprintf('\n[3] (65/99) %s\n', 'lat49.0_lon34.0_20250606_T36UWV_t023');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t023.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon34.0_20250606_T36UWV_t023.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t023.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon34.0_20250606_T36UWV_t023,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (65/99) %s — already exists, skipping\n', 'lat49.0_lon34.0_20250606_T36UWV_t023');
end

% --- Scene 66/99: lat49.0_lon34.0_20250606_T36UWV_t063 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t063.mat', 'file')
    fprintf('\n[3] (66/99) %s\n', 'lat49.0_lon34.0_20250606_T36UWV_t063');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t063.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon34.0_20250606_T36UWV_t063.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t063.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon34.0_20250606_T36UWV_t063,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (66/99) %s — already exists, skipping\n', 'lat49.0_lon34.0_20250606_T36UWV_t063');
end

% --- Scene 67/99: lat49.0_lon34.0_20250606_T36UWV_t069 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t069.mat', 'file')
    fprintf('\n[3] (67/99) %s\n', 'lat49.0_lon34.0_20250606_T36UWV_t069');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t069.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon34.0_20250606_T36UWV_t069.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon34.0_20250606_T36UWV_t069.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon34.0_20250606_T36UWV_t069,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (67/99) %s — already exists, skipping\n', 'lat49.0_lon34.0_20250606_T36UWV_t069');
end

% --- Scene 68/99: lat49.0_lon66.0_20230818_T41UQQ_t023 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.0_lon66.0_20230818_T41UQQ_t023.mat', 'file')
    fprintf('\n[3] (68/99) %s\n', 'lat49.0_lon66.0_20230818_T41UQQ_t023');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.0_lon66.0_20230818_T41UQQ_t023.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.0_lon66.0_20230818_T41UQQ_t023.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.0_lon66.0_20230818_T41UQQ_t023.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.0_lon66.0_20230818_T41UQQ_t023,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (68/99) %s — already exists, skipping\n', 'lat49.0_lon66.0_20230818_T41UQQ_t023');
end

% --- Scene 69/99: lat49.2_lon20.0_20250815_T34UDV_t022 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t022.mat', 'file')
    fprintf('\n[3] (69/99) %s\n', 'lat49.2_lon20.0_20250815_T34UDV_t022');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t022.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.2_lon20.0_20250815_T34UDV_t022.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t022.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.2_lon20.0_20250815_T34UDV_t022,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (69/99) %s — already exists, skipping\n', 'lat49.2_lon20.0_20250815_T34UDV_t022');
end

% --- Scene 70/99: lat49.2_lon20.0_20250815_T34UDV_t034 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t034.mat', 'file')
    fprintf('\n[3] (70/99) %s\n', 'lat49.2_lon20.0_20250815_T34UDV_t034');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t034.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.2_lon20.0_20250815_T34UDV_t034.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t034.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.2_lon20.0_20250815_T34UDV_t034,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (70/99) %s — already exists, skipping\n', 'lat49.2_lon20.0_20250815_T34UDV_t034');
end

% --- Scene 71/99: lat49.2_lon20.0_20250815_T34UDV_t056 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t056.mat', 'file')
    fprintf('\n[3] (71/99) %s\n', 'lat49.2_lon20.0_20250815_T34UDV_t056');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t056.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.2_lon20.0_20250815_T34UDV_t056.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t056.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.2_lon20.0_20250815_T34UDV_t056,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (71/99) %s — already exists, skipping\n', 'lat49.2_lon20.0_20250815_T34UDV_t056');
end

% --- Scene 72/99: lat49.2_lon20.0_20250815_T34UDV_t090 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t090.mat', 'file')
    fprintf('\n[3] (72/99) %s\n', 'lat49.2_lon20.0_20250815_T34UDV_t090');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t090.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.2_lon20.0_20250815_T34UDV_t090.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t090.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.2_lon20.0_20250815_T34UDV_t090,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (72/99) %s — already exists, skipping\n', 'lat49.2_lon20.0_20250815_T34UDV_t090');
end

% --- Scene 73/99: lat49.2_lon20.0_20250815_T34UDV_t137 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t137.mat', 'file')
    fprintf('\n[3] (73/99) %s\n', 'lat49.2_lon20.0_20250815_T34UDV_t137');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t137.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat49.2_lon20.0_20250815_T34UDV_t137.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat49.2_lon20.0_20250815_T34UDV_t137.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat49.2_lon20.0_20250815_T34UDV_t137,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (73/99) %s — already exists, skipping\n', 'lat49.2_lon20.0_20250815_T34UDV_t137');
end

% --- Scene 74/99: lat51.0_lon-106.5_20250408_T13UCS_t042 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon-106.5_20250408_T13UCS_t042.mat', 'file')
    fprintf('\n[3] (74/99) %s\n', 'lat51.0_lon-106.5_20250408_T13UCS_t042');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon-106.5_20250408_T13UCS_t042.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon-106.5_20250408_T13UCS_t042.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon-106.5_20250408_T13UCS_t042.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon-106.5_20250408_T13UCS_t042,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (74/99) %s — already exists, skipping\n', 'lat51.0_lon-106.5_20250408_T13UCS_t042');
end

% --- Scene 75/99: lat51.0_lon46.0_20241013_T38UNB_t016 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t016.mat', 'file')
    fprintf('\n[3] (75/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t016');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t016.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t016.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t016.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t016,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (75/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t016');
end

% --- Scene 76/99: lat51.0_lon46.0_20241013_T38UNB_t033 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t033.mat', 'file')
    fprintf('\n[3] (76/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t033');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t033.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t033.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t033.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t033,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (76/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t033');
end

% --- Scene 77/99: lat51.0_lon46.0_20241013_T38UNB_t046 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t046.mat', 'file')
    fprintf('\n[3] (77/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t046');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t046.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t046.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t046.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t046,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (77/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t046');
end

% --- Scene 78/99: lat51.0_lon46.0_20241013_T38UNB_t072 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t072.mat', 'file')
    fprintf('\n[3] (78/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t072');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t072.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t072.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t072.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t072,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (78/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t072');
end

% --- Scene 79/99: lat51.0_lon46.0_20241013_T38UNB_t076 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t076.mat', 'file')
    fprintf('\n[3] (79/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t076');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t076.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t076.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t076.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t076,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (79/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t076');
end

% --- Scene 80/99: lat51.0_lon46.0_20241013_T38UNB_t117 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t117.mat', 'file')
    fprintf('\n[3] (80/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t117');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t117.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t117.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t117.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t117,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (80/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t117');
end

% --- Scene 81/99: lat51.0_lon46.0_20241013_T38UNB_t173 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t173.mat', 'file')
    fprintf('\n[3] (81/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t173');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t173.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t173.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t173.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t173,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (81/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t173');
end

% --- Scene 82/99: lat51.0_lon46.0_20241013_T38UNB_t177 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t177.mat', 'file')
    fprintf('\n[3] (82/99) %s\n', 'lat51.0_lon46.0_20241013_T38UNB_t177');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t177.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon46.0_20241013_T38UNB_t177.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon46.0_20241013_T38UNB_t177.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon46.0_20241013_T38UNB_t177,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (82/99) %s — already exists, skipping\n', 'lat51.0_lon46.0_20241013_T38UNB_t177');
end

% --- Scene 83/99: lat51.0_lon67.0_20230613_T42UUB_t192 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t192.mat', 'file')
    fprintf('\n[3] (83/99) %s\n', 'lat51.0_lon67.0_20230613_T42UUB_t192');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t192.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon67.0_20230613_T42UUB_t192.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t192.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon67.0_20230613_T42UUB_t192,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (83/99) %s — already exists, skipping\n', 'lat51.0_lon67.0_20230613_T42UUB_t192');
end

% --- Scene 84/99: lat51.0_lon67.0_20230613_T42UUB_t219 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t219.mat', 'file')
    fprintf('\n[3] (84/99) %s\n', 'lat51.0_lon67.0_20230613_T42UUB_t219');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t219.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.0_lon67.0_20230613_T42UUB_t219.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.0_lon67.0_20230613_T42UUB_t219.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.0_lon67.0_20230613_T42UUB_t219,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (84/99) %s — already exists, skipping\n', 'lat51.0_lon67.0_20230613_T42UUB_t219');
end

% --- Scene 85/99: lat51.5_lon-0.1_20230613_T30UXC_t124 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat51.5_lon-0.1_20230613_T30UXC_t124.mat', 'file')
    fprintf('\n[3] (85/99) %s\n', 'lat51.5_lon-0.1_20230613_T30UXC_t124');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat51.5_lon-0.1_20230613_T30UXC_t124.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat51.5_lon-0.1_20230613_T30UXC_t124.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat51.5_lon-0.1_20230613_T30UXC_t124.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat51.5_lon-0.1_20230613_T30UXC_t124,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (85/99) %s — already exists, skipping\n', 'lat51.5_lon-0.1_20230613_T30UXC_t124');
end

% --- Scene 86/99: lat7.5_lon30.5_20241128_T35NRJ_t025 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t025.mat', 'file')
    fprintf('\n[3] (86/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t025');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t025.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t025.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t025.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t025,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (86/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t025');
end

% --- Scene 87/99: lat7.5_lon30.5_20241128_T35NRJ_t027 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t027.mat', 'file')
    fprintf('\n[3] (87/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t027');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t027.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t027.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t027.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t027,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (87/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t027');
end

% --- Scene 88/99: lat7.5_lon30.5_20241128_T35NRJ_t072 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t072.mat', 'file')
    fprintf('\n[3] (88/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t072');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t072.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t072.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t072.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t072,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (88/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t072');
end

% --- Scene 89/99: lat7.5_lon30.5_20241128_T35NRJ_t086 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t086.mat', 'file')
    fprintf('\n[3] (89/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t086');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t086.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t086.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t086.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t086,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (89/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t086');
end

% --- Scene 90/99: lat7.5_lon30.5_20241128_T35NRJ_t099 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t099.mat', 'file')
    fprintf('\n[3] (90/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t099');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t099.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t099.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t099.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t099,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (90/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t099');
end

% --- Scene 91/99: lat7.5_lon30.5_20241128_T35NRJ_t105 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t105.mat', 'file')
    fprintf('\n[3] (91/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t105');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t105.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t105.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t105.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t105,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (91/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t105');
end

% --- Scene 92/99: lat7.5_lon30.5_20241128_T35NRJ_t133 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t133.mat', 'file')
    fprintf('\n[3] (92/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t133');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t133.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t133.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t133.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t133,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (92/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t133');
end

% --- Scene 93/99: lat7.5_lon30.5_20241128_T35NRJ_t150 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t150.mat', 'file')
    fprintf('\n[3] (93/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t150');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t150.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t150.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t150.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t150,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (93/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t150');
end

% --- Scene 94/99: lat7.5_lon30.5_20241128_T35NRJ_t183 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t183.mat', 'file')
    fprintf('\n[3] (94/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t183');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t183.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t183.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t183.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t183,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (94/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t183');
end

% --- Scene 95/99: lat7.5_lon30.5_20241128_T35NRJ_t184 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t184.mat', 'file')
    fprintf('\n[3] (95/99) %s\n', 'lat7.5_lon30.5_20241128_T35NRJ_t184');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t184.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat7.5_lon30.5_20241128_T35NRJ_t184.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat7.5_lon30.5_20241128_T35NRJ_t184.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat7.5_lon30.5_20241128_T35NRJ_t184,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (95/99) %s — already exists, skipping\n', 'lat7.5_lon30.5_20241128_T35NRJ_t184');
end

% --- Scene 96/99: lat9.5_lon7.5_20241128_T32PLR_t054 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t054.mat', 'file')
    fprintf('\n[3] (96/99) %s\n', 'lat9.5_lon7.5_20241128_T32PLR_t054');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t054.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat9.5_lon7.5_20241128_T32PLR_t054.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t054.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat9.5_lon7.5_20241128_T32PLR_t054,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (96/99) %s — already exists, skipping\n', 'lat9.5_lon7.5_20241128_T32PLR_t054');
end

% --- Scene 97/99: lat9.5_lon7.5_20241128_T32PLR_t092 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t092.mat', 'file')
    fprintf('\n[3] (97/99) %s\n', 'lat9.5_lon7.5_20241128_T32PLR_t092');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t092.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat9.5_lon7.5_20241128_T32PLR_t092.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t092.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat9.5_lon7.5_20241128_T32PLR_t092,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (97/99) %s — already exists, skipping\n', 'lat9.5_lon7.5_20241128_T32PLR_t092');
end

% --- Scene 98/99: lat9.5_lon7.5_20241128_T32PLR_t136 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t136.mat', 'file')
    fprintf('\n[3] (98/99) %s\n', 'lat9.5_lon7.5_20241128_T32PLR_t136');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t136.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat9.5_lon7.5_20241128_T32PLR_t136.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t136.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat9.5_lon7.5_20241128_T32PLR_t136,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (98/99) %s — already exists, skipping\n', 'lat9.5_lon7.5_20241128_T32PLR_t136');
end

% --- Scene 99/99: lat9.5_lon7.5_20241128_T32PLR_t137 ---
if ~exist('data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t137.mat', 'file')
    fprintf('\n[3] (99/99) %s\n', 'lat9.5_lon7.5_20241128_T32PLR_t137');
    tic;
    hsi_path = 'data/HS/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t137.mat';
    msi_path = 'data/MS/EMIT32_WALD/lat9.5_lon7.5_20241128_T32PLR_t137.mat';
    sri_path = 'data/SR/GLP/EMIT32_WALD/6/lat9.5_lon7.5_20241128_T32PLR_t137.mat';
    try
        GLP_run;
        elapsed = toc;
        fid = fopen('data/SR/GLP/EMIT32_WALD/6/times.csv', 'a+');
        fprintf(fid, 'lat9.5_lon7.5_20241128_T32PLR_t137,%.2f\n', elapsed);
        fclose(fid);
        fprintf('  Done in %.1fs\n', elapsed);
    catch ME
        elapsed = toc;
        fprintf('  ERROR after %.1fs: %s\n', elapsed, ME.message);
    end
else
    fprintf('[3] (99/99) %s — already exists, skipping\n', 'lat9.5_lon7.5_20241128_T32PLR_t137');
end

fprintf('\n=== Worker 3 finished all 99 scenes ===\n');
exit;