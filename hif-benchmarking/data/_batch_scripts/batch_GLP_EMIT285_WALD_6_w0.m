% Auto-generated batch script (worker 0)
% Dataset: EMIT285_WALD, Method: GLP, Scale: 6
% Scenes: 6

cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'GLP')));

% --- Scene 1/6: 20230623T184509_T12SUF_20230621_tile007 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile007.mat', 'file')
    fprintf('\n[0] (1/6) %s\n', '20230623T184509_T12SUF_20230621_tile007');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile007.mat';
    msi_path = 'data/MS/EMIT285_WALD/20230623T184509_T12SUF_20230621_tile007.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile007.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile007,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/6) %s — already exists, skipping\n', '20230623T184509_T12SUF_20230621_tile007');
end

% --- Scene 2/6: 20230623T184509_T12SUF_20230621_tile008 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile008.mat', 'file')
    fprintf('\n[0] (2/6) %s\n', '20230623T184509_T12SUF_20230621_tile008');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile008.mat';
    msi_path = 'data/MS/EMIT285_WALD/20230623T184509_T12SUF_20230621_tile008.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20230623T184509_T12SUF_20230621_tile008.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile008,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/6) %s — already exists, skipping\n', '20230623T184509_T12SUF_20230621_tile008');
end

% --- Scene 3/6: 20231203T104832_T31RDP_20231205_tile005 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile005.mat', 'file')
    fprintf('\n[0] (3/6) %s\n', '20231203T104832_T31RDP_20231205_tile005');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile005.mat';
    msi_path = 'data/MS/EMIT285_WALD/20231203T104832_T31RDP_20231205_tile005.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile005.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile005,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/6) %s — already exists, skipping\n', '20231203T104832_T31RDP_20231205_tile005');
end

% --- Scene 4/6: 20231203T104832_T31RDP_20231205_tile006 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile006.mat', 'file')
    fprintf('\n[0] (4/6) %s\n', '20231203T104832_T31RDP_20231205_tile006');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile006.mat';
    msi_path = 'data/MS/EMIT285_WALD/20231203T104832_T31RDP_20231205_tile006.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile006.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile006,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/6) %s — already exists, skipping\n', '20231203T104832_T31RDP_20231205_tile006');
end

% --- Scene 5/6: 20231203T104832_T31RDP_20231205_tile010 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile010.mat', 'file')
    fprintf('\n[0] (5/6) %s\n', '20231203T104832_T31RDP_20231205_tile010');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile010.mat';
    msi_path = 'data/MS/EMIT285_WALD/20231203T104832_T31RDP_20231205_tile010.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20231203T104832_T31RDP_20231205_tile010.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile010,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/6) %s — already exists, skipping\n', '20231203T104832_T31RDP_20231205_tile010');
end

% --- Scene 6/6: 20250830T085101_T35KKT_20250829_tile005 ---
if ~exist('data/SR/GLP/EMIT285_WALD/6/20250830T085101_T35KKT_20250829_tile005.mat', 'file')
    fprintf('\n[0] (6/6) %s\n', '20250830T085101_T35KKT_20250829_tile005');
    tic;
    hsi_path = 'data/HS/EMIT285_WALD/6/20250830T085101_T35KKT_20250829_tile005.mat';
    msi_path = 'data/MS/EMIT285_WALD/20250830T085101_T35KKT_20250829_tile005.mat';
    sri_path = 'data/SR/GLP/EMIT285_WALD/6/20250830T085101_T35KKT_20250829_tile005.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP/EMIT285_WALD/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile005,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/6) %s — already exists, skipping\n', '20250830T085101_T35KKT_20250829_tile005');
end

fprintf('\n=== Worker 0 finished all 6 scenes ===\n');
exit;