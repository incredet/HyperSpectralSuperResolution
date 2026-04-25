% Auto-generated SFIM batch script (worker 0)
cd('/Users/incredet/Desktop/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/Thesis/hif-benchmarking', 'methods', 'SFIM')));

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile024.mat', 'file')
    fprintf('\n[0] (1/1113) %s\n', '20230623T184509_T12SUF_20230621_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile024.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile024.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile024');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile039.mat', 'file')
    fprintf('\n[0] (2/1113) %s\n', '20230623T184509_T12SUF_20230621_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile039.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile039.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile039.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile039');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile040.mat', 'file')
    fprintf('\n[0] (3/1113) %s\n', '20230623T184509_T12SUF_20230621_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile040.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile040.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile040');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile041.mat', 'file')
    fprintf('\n[0] (4/1113) %s\n', '20230623T184509_T12SUF_20230621_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile041.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile054.mat', 'file')
    fprintf('\n[0] (5/1113) %s\n', '20230623T184509_T12SUF_20230621_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile054.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile054.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile054');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile055.mat', 'file')
    fprintf('\n[0] (6/1113) %s\n', '20230623T184509_T12SUF_20230621_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile055.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile056.mat', 'file')
    fprintf('\n[0] (7/1113) %s\n', '20230623T184509_T12SUF_20230621_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile056.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (7/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile057.mat', 'file')
    fprintf('\n[0] (8/1113) %s\n', '20230623T184509_T12SUF_20230621_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile057.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (8/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile058.mat', 'file')
    fprintf('\n[0] (9/1113) %s\n', '20230623T184509_T12SUF_20230621_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile058.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (9/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile069.mat', 'file')
    fprintf('\n[0] (10/1113) %s\n', '20230623T184509_T12SUF_20230621_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile069.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile069.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (10/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile069');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile070.mat', 'file')
    fprintf('\n[0] (11/1113) %s\n', '20230623T184509_T12SUF_20230621_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile070.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile070.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (11/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile070');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile071.mat', 'file')
    fprintf('\n[0] (12/1113) %s\n', '20230623T184509_T12SUF_20230621_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile071.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (12/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile072.mat', 'file')
    fprintf('\n[0] (13/1113) %s\n', '20230623T184509_T12SUF_20230621_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile072.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (13/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile073.mat', 'file')
    fprintf('\n[0] (14/1113) %s\n', '20230623T184509_T12SUF_20230621_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile073.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (14/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile074.mat', 'file')
    fprintf('\n[0] (15/1113) %s\n', '20230623T184509_T12SUF_20230621_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile074.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (15/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile075.mat', 'file')
    fprintf('\n[0] (16/1113) %s\n', '20230623T184509_T12SUF_20230621_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile075.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (16/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile085.mat', 'file')
    fprintf('\n[0] (17/1113) %s\n', '20230623T184509_T12SUF_20230621_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile085.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (17/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile086.mat', 'file')
    fprintf('\n[0] (18/1113) %s\n', '20230623T184509_T12SUF_20230621_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile086.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile086.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (18/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile086');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile087.mat', 'file')
    fprintf('\n[0] (19/1113) %s\n', '20230623T184509_T12SUF_20230621_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile087.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (19/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile088.mat', 'file')
    fprintf('\n[0] (20/1113) %s\n', '20230623T184509_T12SUF_20230621_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile088.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (20/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile089.mat', 'file')
    fprintf('\n[0] (21/1113) %s\n', '20230623T184509_T12SUF_20230621_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile089.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (21/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile090.mat', 'file')
    fprintf('\n[0] (22/1113) %s\n', '20230623T184509_T12SUF_20230621_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile090.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (22/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile091.mat', 'file')
    fprintf('\n[0] (23/1113) %s\n', '20230623T184509_T12SUF_20230621_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile091.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (23/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile092.mat', 'file')
    fprintf('\n[0] (24/1113) %s\n', '20230623T184509_T12SUF_20230621_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile092.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (24/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile100.mat', 'file')
    fprintf('\n[0] (25/1113) %s\n', '20230623T184509_T12SUF_20230621_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile100.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (25/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile101.mat', 'file')
    fprintf('\n[0] (26/1113) %s\n', '20230623T184509_T12SUF_20230621_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile101.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (26/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile102.mat', 'file')
    fprintf('\n[0] (27/1113) %s\n', '20230623T184509_T12SUF_20230621_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile102.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (27/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile103.mat', 'file')
    fprintf('\n[0] (28/1113) %s\n', '20230623T184509_T12SUF_20230621_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile103.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (28/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile104.mat', 'file')
    fprintf('\n[0] (29/1113) %s\n', '20230623T184509_T12SUF_20230621_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile104.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (29/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile105.mat', 'file')
    fprintf('\n[0] (30/1113) %s\n', '20230623T184509_T12SUF_20230621_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile105.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (30/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile106.mat', 'file')
    fprintf('\n[0] (31/1113) %s\n', '20230623T184509_T12SUF_20230621_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile106.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (31/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile107.mat', 'file')
    fprintf('\n[0] (32/1113) %s\n', '20230623T184509_T12SUF_20230621_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile107.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (32/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile108.mat', 'file')
    fprintf('\n[0] (33/1113) %s\n', '20230623T184509_T12SUF_20230621_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile108.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (33/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile109.mat', 'file')
    fprintf('\n[0] (34/1113) %s\n', '20230623T184509_T12SUF_20230621_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile109.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (34/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile115.mat', 'file')
    fprintf('\n[0] (35/1113) %s\n', '20230623T184509_T12SUF_20230621_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile115.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (35/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile116.mat', 'file')
    fprintf('\n[0] (36/1113) %s\n', '20230623T184509_T12SUF_20230621_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile116.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (36/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile117.mat', 'file')
    fprintf('\n[0] (37/1113) %s\n', '20230623T184509_T12SUF_20230621_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile117.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (37/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile118.mat', 'file')
    fprintf('\n[0] (38/1113) %s\n', '20230623T184509_T12SUF_20230621_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile118.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (38/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile119.mat', 'file')
    fprintf('\n[0] (39/1113) %s\n', '20230623T184509_T12SUF_20230621_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile119.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (39/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile120.mat', 'file')
    fprintf('\n[0] (40/1113) %s\n', '20230623T184509_T12SUF_20230621_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile120.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (40/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile121.mat', 'file')
    fprintf('\n[0] (41/1113) %s\n', '20230623T184509_T12SUF_20230621_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile121.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (41/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile122.mat', 'file')
    fprintf('\n[0] (42/1113) %s\n', '20230623T184509_T12SUF_20230621_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile122.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (42/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile123.mat', 'file')
    fprintf('\n[0] (43/1113) %s\n', '20230623T184509_T12SUF_20230621_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile123.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (43/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile124.mat', 'file')
    fprintf('\n[0] (44/1113) %s\n', '20230623T184509_T12SUF_20230621_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile124.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (44/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile125.mat', 'file')
    fprintf('\n[0] (45/1113) %s\n', '20230623T184509_T12SUF_20230621_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile125.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (45/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile126.mat', 'file')
    fprintf('\n[0] (46/1113) %s\n', '20230623T184509_T12SUF_20230621_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile126.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile126.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (46/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile126');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile130.mat', 'file')
    fprintf('\n[0] (47/1113) %s\n', '20230623T184509_T12SUF_20230621_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile130.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (47/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile131.mat', 'file')
    fprintf('\n[0] (48/1113) %s\n', '20230623T184509_T12SUF_20230621_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile131.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (48/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile132.mat', 'file')
    fprintf('\n[0] (49/1113) %s\n', '20230623T184509_T12SUF_20230621_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile132.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (49/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile133.mat', 'file')
    fprintf('\n[0] (50/1113) %s\n', '20230623T184509_T12SUF_20230621_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile133.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (50/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile134.mat', 'file')
    fprintf('\n[0] (51/1113) %s\n', '20230623T184509_T12SUF_20230621_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile134.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (51/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile135.mat', 'file')
    fprintf('\n[0] (52/1113) %s\n', '20230623T184509_T12SUF_20230621_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile135.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (52/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile136.mat', 'file')
    fprintf('\n[0] (53/1113) %s\n', '20230623T184509_T12SUF_20230621_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile136.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (53/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile137.mat', 'file')
    fprintf('\n[0] (54/1113) %s\n', '20230623T184509_T12SUF_20230621_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile137.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (54/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile138.mat', 'file')
    fprintf('\n[0] (55/1113) %s\n', '20230623T184509_T12SUF_20230621_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile138.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (55/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile139.mat', 'file')
    fprintf('\n[0] (56/1113) %s\n', '20230623T184509_T12SUF_20230621_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile139.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (56/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile140.mat', 'file')
    fprintf('\n[0] (57/1113) %s\n', '20230623T184509_T12SUF_20230621_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile140.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (57/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile141.mat', 'file')
    fprintf('\n[0] (58/1113) %s\n', '20230623T184509_T12SUF_20230621_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile141.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (58/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile142.mat', 'file')
    fprintf('\n[0] (59/1113) %s\n', '20230623T184509_T12SUF_20230621_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile142.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (59/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile143.mat', 'file')
    fprintf('\n[0] (60/1113) %s\n', '20230623T184509_T12SUF_20230621_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile143.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (60/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile146.mat', 'file')
    fprintf('\n[0] (61/1113) %s\n', '20230623T184509_T12SUF_20230621_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile146.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (61/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile147.mat', 'file')
    fprintf('\n[0] (62/1113) %s\n', '20230623T184509_T12SUF_20230621_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile147.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (62/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile148.mat', 'file')
    fprintf('\n[0] (63/1113) %s\n', '20230623T184509_T12SUF_20230621_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile148.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (63/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile149.mat', 'file')
    fprintf('\n[0] (64/1113) %s\n', '20230623T184509_T12SUF_20230621_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile149.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (64/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile150.mat', 'file')
    fprintf('\n[0] (65/1113) %s\n', '20230623T184509_T12SUF_20230621_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile150.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (65/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile151.mat', 'file')
    fprintf('\n[0] (66/1113) %s\n', '20230623T184509_T12SUF_20230621_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile151.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (66/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile152.mat', 'file')
    fprintf('\n[0] (67/1113) %s\n', '20230623T184509_T12SUF_20230621_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile152.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (67/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile153.mat', 'file')
    fprintf('\n[0] (68/1113) %s\n', '20230623T184509_T12SUF_20230621_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile153.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile153.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (68/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile153');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile154.mat', 'file')
    fprintf('\n[0] (69/1113) %s\n', '20230623T184509_T12SUF_20230621_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile154.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (69/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile155.mat', 'file')
    fprintf('\n[0] (70/1113) %s\n', '20230623T184509_T12SUF_20230621_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile155.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (70/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile156.mat', 'file')
    fprintf('\n[0] (71/1113) %s\n', '20230623T184509_T12SUF_20230621_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile156.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (71/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile157.mat', 'file')
    fprintf('\n[0] (72/1113) %s\n', '20230623T184509_T12SUF_20230621_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile157.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (72/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile158.mat', 'file')
    fprintf('\n[0] (73/1113) %s\n', '20230623T184509_T12SUF_20230621_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile158.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (73/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile159.mat', 'file')
    fprintf('\n[0] (74/1113) %s\n', '20230623T184509_T12SUF_20230621_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile159.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (74/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile161.mat', 'file')
    fprintf('\n[0] (75/1113) %s\n', '20230623T184509_T12SUF_20230621_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile161.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (75/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile162.mat', 'file')
    fprintf('\n[0] (76/1113) %s\n', '20230623T184509_T12SUF_20230621_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile162.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile162.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (76/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile162');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile163.mat', 'file')
    fprintf('\n[0] (77/1113) %s\n', '20230623T184509_T12SUF_20230621_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile163.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (77/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile164.mat', 'file')
    fprintf('\n[0] (78/1113) %s\n', '20230623T184509_T12SUF_20230621_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile164.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (78/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile165.mat', 'file')
    fprintf('\n[0] (79/1113) %s\n', '20230623T184509_T12SUF_20230621_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile165.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (79/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile166.mat', 'file')
    fprintf('\n[0] (80/1113) %s\n', '20230623T184509_T12SUF_20230621_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile166.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (80/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile167.mat', 'file')
    fprintf('\n[0] (81/1113) %s\n', '20230623T184509_T12SUF_20230621_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile167.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (81/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile168.mat', 'file')
    fprintf('\n[0] (82/1113) %s\n', '20230623T184509_T12SUF_20230621_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile168.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (82/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile169.mat', 'file')
    fprintf('\n[0] (83/1113) %s\n', '20230623T184509_T12SUF_20230621_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile169.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (83/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile170.mat', 'file')
    fprintf('\n[0] (84/1113) %s\n', '20230623T184509_T12SUF_20230621_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile170.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (84/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile171.mat', 'file')
    fprintf('\n[0] (85/1113) %s\n', '20230623T184509_T12SUF_20230621_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile171.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (85/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile172.mat', 'file')
    fprintf('\n[0] (86/1113) %s\n', '20230623T184509_T12SUF_20230621_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile172.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (86/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile173.mat', 'file')
    fprintf('\n[0] (87/1113) %s\n', '20230623T184509_T12SUF_20230621_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile173.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (87/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile174.mat', 'file')
    fprintf('\n[0] (88/1113) %s\n', '20230623T184509_T12SUF_20230621_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile174.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (88/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile175.mat', 'file')
    fprintf('\n[0] (89/1113) %s\n', '20230623T184509_T12SUF_20230621_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile175.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (89/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile178.mat', 'file')
    fprintf('\n[0] (90/1113) %s\n', '20230623T184509_T12SUF_20230621_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile178.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile178.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (90/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile178');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile179.mat', 'file')
    fprintf('\n[0] (91/1113) %s\n', '20230623T184509_T12SUF_20230621_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile179.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile179.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (91/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile179');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile180.mat', 'file')
    fprintf('\n[0] (92/1113) %s\n', '20230623T184509_T12SUF_20230621_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile180.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile180.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile180.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (92/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile180');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile181.mat', 'file')
    fprintf('\n[0] (93/1113) %s\n', '20230623T184509_T12SUF_20230621_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile181.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile181.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (93/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile181');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile182.mat', 'file')
    fprintf('\n[0] (94/1113) %s\n', '20230623T184509_T12SUF_20230621_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile182.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (94/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile183.mat', 'file')
    fprintf('\n[0] (95/1113) %s\n', '20230623T184509_T12SUF_20230621_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile183.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (95/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile184.mat', 'file')
    fprintf('\n[0] (96/1113) %s\n', '20230623T184509_T12SUF_20230621_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile184.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (96/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile185.mat', 'file')
    fprintf('\n[0] (97/1113) %s\n', '20230623T184509_T12SUF_20230621_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile185.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (97/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile186.mat', 'file')
    fprintf('\n[0] (98/1113) %s\n', '20230623T184509_T12SUF_20230621_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile186.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (98/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile187.mat', 'file')
    fprintf('\n[0] (99/1113) %s\n', '20230623T184509_T12SUF_20230621_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile187.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (99/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile188.mat', 'file')
    fprintf('\n[0] (100/1113) %s\n', '20230623T184509_T12SUF_20230621_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile188.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (100/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile189.mat', 'file')
    fprintf('\n[0] (101/1113) %s\n', '20230623T184509_T12SUF_20230621_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile189.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (101/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile190.mat', 'file')
    fprintf('\n[0] (102/1113) %s\n', '20230623T184509_T12SUF_20230621_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile190.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (102/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile195.mat', 'file')
    fprintf('\n[0] (103/1113) %s\n', '20230623T184509_T12SUF_20230621_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile195.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile195.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile195.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (103/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile195');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile196.mat', 'file')
    fprintf('\n[0] (104/1113) %s\n', '20230623T184509_T12SUF_20230621_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile196.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile196.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile196.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (104/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile196');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile197.mat', 'file')
    fprintf('\n[0] (105/1113) %s\n', '20230623T184509_T12SUF_20230621_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile197.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile197.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile197.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (105/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile197');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile198.mat', 'file')
    fprintf('\n[0] (106/1113) %s\n', '20230623T184509_T12SUF_20230621_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile198.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile198.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile198.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (106/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile198');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile199.mat', 'file')
    fprintf('\n[0] (107/1113) %s\n', '20230623T184509_T12SUF_20230621_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile199.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile199.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (107/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile199');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile200.mat', 'file')
    fprintf('\n[0] (108/1113) %s\n', '20230623T184509_T12SUF_20230621_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile200.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile200.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (108/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile200');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile201.mat', 'file')
    fprintf('\n[0] (109/1113) %s\n', '20230623T184509_T12SUF_20230621_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile201.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile201.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (109/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile201');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile202.mat', 'file')
    fprintf('\n[0] (110/1113) %s\n', '20230623T184509_T12SUF_20230621_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile202.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile202.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (110/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile202');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile203.mat', 'file')
    fprintf('\n[0] (111/1113) %s\n', '20230623T184509_T12SUF_20230621_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile203.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile203.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile203.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (111/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile203');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile204.mat', 'file')
    fprintf('\n[0] (112/1113) %s\n', '20230623T184509_T12SUF_20230621_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile204.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile204.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile204.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (112/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile204');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile205.mat', 'file')
    fprintf('\n[0] (113/1113) %s\n', '20230623T184509_T12SUF_20230621_tile205');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile205.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile205.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile205.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile205,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (113/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile205');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile206.mat', 'file')
    fprintf('\n[0] (114/1113) %s\n', '20230623T184509_T12SUF_20230621_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile206.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile206.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile206.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (114/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile206');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile212.mat', 'file')
    fprintf('\n[0] (115/1113) %s\n', '20230623T184509_T12SUF_20230621_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile212.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile212.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile212.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (115/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile212');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile213.mat', 'file')
    fprintf('\n[0] (116/1113) %s\n', '20230623T184509_T12SUF_20230621_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile213.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile213.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile213.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (116/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile213');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile214.mat', 'file')
    fprintf('\n[0] (117/1113) %s\n', '20230623T184509_T12SUF_20230621_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile214.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile214.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile214.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (117/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile214');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile215.mat', 'file')
    fprintf('\n[0] (118/1113) %s\n', '20230623T184509_T12SUF_20230621_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile215.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile215.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile215.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (118/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile215');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile216.mat', 'file')
    fprintf('\n[0] (119/1113) %s\n', '20230623T184509_T12SUF_20230621_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile216.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile216.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile216.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (119/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile216');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile217.mat', 'file')
    fprintf('\n[0] (120/1113) %s\n', '20230623T184509_T12SUF_20230621_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile217.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile217.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile217.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (120/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile217');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile218.mat', 'file')
    fprintf('\n[0] (121/1113) %s\n', '20230623T184509_T12SUF_20230621_tile218');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile218.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile218.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile218.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile218,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (121/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile218');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile219.mat', 'file')
    fprintf('\n[0] (122/1113) %s\n', '20230623T184509_T12SUF_20230621_tile219');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile219.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile219.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile219.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile219,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (122/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile219');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile220.mat', 'file')
    fprintf('\n[0] (123/1113) %s\n', '20230623T184509_T12SUF_20230621_tile220');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile220.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile220.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile220.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile220,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (123/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile220');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile221.mat', 'file')
    fprintf('\n[0] (124/1113) %s\n', '20230623T184509_T12SUF_20230621_tile221');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile221.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile221.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile221.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile221,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (124/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile221');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile229.mat', 'file')
    fprintf('\n[0] (125/1113) %s\n', '20230623T184509_T12SUF_20230621_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile229.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile229.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile229.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (125/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile229');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile230.mat', 'file')
    fprintf('\n[0] (126/1113) %s\n', '20230623T184509_T12SUF_20230621_tile230');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile230.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile230.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile230.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile230,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (126/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile230');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile231.mat', 'file')
    fprintf('\n[0] (127/1113) %s\n', '20230623T184509_T12SUF_20230621_tile231');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile231.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile231.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile231.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile231,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (127/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile231');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile232.mat', 'file')
    fprintf('\n[0] (128/1113) %s\n', '20230623T184509_T12SUF_20230621_tile232');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile232.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile232.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile232.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile232,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (128/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile232');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile233.mat', 'file')
    fprintf('\n[0] (129/1113) %s\n', '20230623T184509_T12SUF_20230621_tile233');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile233.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile233.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile233.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile233,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (129/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile233');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile234.mat', 'file')
    fprintf('\n[0] (130/1113) %s\n', '20230623T184509_T12SUF_20230621_tile234');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile234.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile234.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile234.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile234,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (130/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile234');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile235.mat', 'file')
    fprintf('\n[0] (131/1113) %s\n', '20230623T184509_T12SUF_20230621_tile235');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile235.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile235.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile235.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile235,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (131/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile235');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile236.mat', 'file')
    fprintf('\n[0] (132/1113) %s\n', '20230623T184509_T12SUF_20230621_tile236');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile236.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile236.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile236.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile236,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (132/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile236');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile246.mat', 'file')
    fprintf('\n[0] (133/1113) %s\n', '20230623T184509_T12SUF_20230621_tile246');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile246.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile246.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile246.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile246,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (133/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile246');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile247.mat', 'file')
    fprintf('\n[0] (134/1113) %s\n', '20230623T184509_T12SUF_20230621_tile247');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile247.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile247.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile247.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile247,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (134/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile247');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile248.mat', 'file')
    fprintf('\n[0] (135/1113) %s\n', '20230623T184509_T12SUF_20230621_tile248');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile248.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile248.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile248.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile248,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (135/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile248');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile249.mat', 'file')
    fprintf('\n[0] (136/1113) %s\n', '20230623T184509_T12SUF_20230621_tile249');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile249.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile249.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile249.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile249,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (136/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile249');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile250.mat', 'file')
    fprintf('\n[0] (137/1113) %s\n', '20230623T184509_T12SUF_20230621_tile250');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile250.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile250.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile250.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile250,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (137/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile250');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile251.mat', 'file')
    fprintf('\n[0] (138/1113) %s\n', '20230623T184509_T12SUF_20230621_tile251');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230623T184509_T12SUF_20230621_tile251.mat';
    msi_path = 'data/MS/EMIT32/20230623T184509_T12SUF_20230621_tile251.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230623T184509_T12SUF_20230621_tile251.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230623T184509_T12SUF_20230621_tile251,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (138/1113) %s — skip\n', '20230623T184509_T12SUF_20230621_tile251');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile023.mat', 'file')
    fprintf('\n[0] (139/1113) %s\n', '20230626T084016_T36RUU_20230627_tile023');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile023.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile023.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile023.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile023,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (139/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile023');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile024.mat', 'file')
    fprintf('\n[0] (140/1113) %s\n', '20230626T084016_T36RUU_20230627_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile024.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile024.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (140/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile024');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile025.mat', 'file')
    fprintf('\n[0] (141/1113) %s\n', '20230626T084016_T36RUU_20230627_tile025');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile025.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile025.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile025.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile025,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (141/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile025');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile026.mat', 'file')
    fprintf('\n[0] (142/1113) %s\n', '20230626T084016_T36RUU_20230627_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile026.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile026.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (142/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile026');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile040.mat', 'file')
    fprintf('\n[0] (143/1113) %s\n', '20230626T084016_T36RUU_20230627_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile040.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile040.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (143/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile040');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile041.mat', 'file')
    fprintf('\n[0] (144/1113) %s\n', '20230626T084016_T36RUU_20230627_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile041.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (144/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile042.mat', 'file')
    fprintf('\n[0] (145/1113) %s\n', '20230626T084016_T36RUU_20230627_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile042.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile042.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (145/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile042');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile043.mat', 'file')
    fprintf('\n[0] (146/1113) %s\n', '20230626T084016_T36RUU_20230627_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile043.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (146/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile044.mat', 'file')
    fprintf('\n[0] (147/1113) %s\n', '20230626T084016_T36RUU_20230627_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile044.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (147/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile056.mat', 'file')
    fprintf('\n[0] (148/1113) %s\n', '20230626T084016_T36RUU_20230627_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile056.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (148/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile057.mat', 'file')
    fprintf('\n[0] (149/1113) %s\n', '20230626T084016_T36RUU_20230627_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile057.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (149/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile058.mat', 'file')
    fprintf('\n[0] (150/1113) %s\n', '20230626T084016_T36RUU_20230627_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile058.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (150/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile059.mat', 'file')
    fprintf('\n[0] (151/1113) %s\n', '20230626T084016_T36RUU_20230627_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile059.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (151/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile060.mat', 'file')
    fprintf('\n[0] (152/1113) %s\n', '20230626T084016_T36RUU_20230627_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile060.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (152/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile061.mat', 'file')
    fprintf('\n[0] (153/1113) %s\n', '20230626T084016_T36RUU_20230627_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile061.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (153/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile062.mat', 'file')
    fprintf('\n[0] (154/1113) %s\n', '20230626T084016_T36RUU_20230627_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile062.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (154/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile072.mat', 'file')
    fprintf('\n[0] (155/1113) %s\n', '20230626T084016_T36RUU_20230627_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile072.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (155/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile073.mat', 'file')
    fprintf('\n[0] (156/1113) %s\n', '20230626T084016_T36RUU_20230627_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile073.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (156/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile074.mat', 'file')
    fprintf('\n[0] (157/1113) %s\n', '20230626T084016_T36RUU_20230627_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile074.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (157/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile075.mat', 'file')
    fprintf('\n[0] (158/1113) %s\n', '20230626T084016_T36RUU_20230627_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile075.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (158/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile076.mat', 'file')
    fprintf('\n[0] (159/1113) %s\n', '20230626T084016_T36RUU_20230627_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile076.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (159/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile077.mat', 'file')
    fprintf('\n[0] (160/1113) %s\n', '20230626T084016_T36RUU_20230627_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile077.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (160/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile078.mat', 'file')
    fprintf('\n[0] (161/1113) %s\n', '20230626T084016_T36RUU_20230627_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile078.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (161/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile079.mat', 'file')
    fprintf('\n[0] (162/1113) %s\n', '20230626T084016_T36RUU_20230627_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile079.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (162/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile080.mat', 'file')
    fprintf('\n[0] (163/1113) %s\n', '20230626T084016_T36RUU_20230627_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile080.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile080.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (163/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile080');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile088.mat', 'file')
    fprintf('\n[0] (164/1113) %s\n', '20230626T084016_T36RUU_20230627_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile088.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (164/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile089.mat', 'file')
    fprintf('\n[0] (165/1113) %s\n', '20230626T084016_T36RUU_20230627_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile089.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (165/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile090.mat', 'file')
    fprintf('\n[0] (166/1113) %s\n', '20230626T084016_T36RUU_20230627_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile090.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (166/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile091.mat', 'file')
    fprintf('\n[0] (167/1113) %s\n', '20230626T084016_T36RUU_20230627_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile091.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (167/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile092.mat', 'file')
    fprintf('\n[0] (168/1113) %s\n', '20230626T084016_T36RUU_20230627_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile092.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (168/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile093.mat', 'file')
    fprintf('\n[0] (169/1113) %s\n', '20230626T084016_T36RUU_20230627_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile093.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (169/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile094.mat', 'file')
    fprintf('\n[0] (170/1113) %s\n', '20230626T084016_T36RUU_20230627_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile094.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (170/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile095.mat', 'file')
    fprintf('\n[0] (171/1113) %s\n', '20230626T084016_T36RUU_20230627_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile095.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (171/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile096.mat', 'file')
    fprintf('\n[0] (172/1113) %s\n', '20230626T084016_T36RUU_20230627_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile096.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile096.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile096.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (172/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile096');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile097.mat', 'file')
    fprintf('\n[0] (173/1113) %s\n', '20230626T084016_T36RUU_20230627_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile097.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile097.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile097.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (173/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile097');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile098.mat', 'file')
    fprintf('\n[0] (174/1113) %s\n', '20230626T084016_T36RUU_20230627_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile098.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (174/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile104.mat', 'file')
    fprintf('\n[0] (175/1113) %s\n', '20230626T084016_T36RUU_20230627_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile104.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (175/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile105.mat', 'file')
    fprintf('\n[0] (176/1113) %s\n', '20230626T084016_T36RUU_20230627_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile105.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (176/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile106.mat', 'file')
    fprintf('\n[0] (177/1113) %s\n', '20230626T084016_T36RUU_20230627_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile106.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (177/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile107.mat', 'file')
    fprintf('\n[0] (178/1113) %s\n', '20230626T084016_T36RUU_20230627_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile107.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (178/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile108.mat', 'file')
    fprintf('\n[0] (179/1113) %s\n', '20230626T084016_T36RUU_20230627_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile108.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (179/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile109.mat', 'file')
    fprintf('\n[0] (180/1113) %s\n', '20230626T084016_T36RUU_20230627_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile109.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (180/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile110.mat', 'file')
    fprintf('\n[0] (181/1113) %s\n', '20230626T084016_T36RUU_20230627_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile110.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile110.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (181/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile110');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile111.mat', 'file')
    fprintf('\n[0] (182/1113) %s\n', '20230626T084016_T36RUU_20230627_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile111.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (182/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile112.mat', 'file')
    fprintf('\n[0] (183/1113) %s\n', '20230626T084016_T36RUU_20230627_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile112.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile112.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (183/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile112');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile113.mat', 'file')
    fprintf('\n[0] (184/1113) %s\n', '20230626T084016_T36RUU_20230627_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile113.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (184/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile114.mat', 'file')
    fprintf('\n[0] (185/1113) %s\n', '20230626T084016_T36RUU_20230627_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile114.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (185/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile115.mat', 'file')
    fprintf('\n[0] (186/1113) %s\n', '20230626T084016_T36RUU_20230627_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile115.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (186/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile116.mat', 'file')
    fprintf('\n[0] (187/1113) %s\n', '20230626T084016_T36RUU_20230627_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile116.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (187/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile120.mat', 'file')
    fprintf('\n[0] (188/1113) %s\n', '20230626T084016_T36RUU_20230627_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile120.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (188/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile121.mat', 'file')
    fprintf('\n[0] (189/1113) %s\n', '20230626T084016_T36RUU_20230627_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile121.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (189/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile122.mat', 'file')
    fprintf('\n[0] (190/1113) %s\n', '20230626T084016_T36RUU_20230627_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile122.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (190/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile123.mat', 'file')
    fprintf('\n[0] (191/1113) %s\n', '20230626T084016_T36RUU_20230627_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile123.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (191/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile124.mat', 'file')
    fprintf('\n[0] (192/1113) %s\n', '20230626T084016_T36RUU_20230627_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile124.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (192/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile125.mat', 'file')
    fprintf('\n[0] (193/1113) %s\n', '20230626T084016_T36RUU_20230627_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile125.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (193/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile126.mat', 'file')
    fprintf('\n[0] (194/1113) %s\n', '20230626T084016_T36RUU_20230627_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile126.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile126.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (194/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile126');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile127.mat', 'file')
    fprintf('\n[0] (195/1113) %s\n', '20230626T084016_T36RUU_20230627_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile127.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (195/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile128.mat', 'file')
    fprintf('\n[0] (196/1113) %s\n', '20230626T084016_T36RUU_20230627_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile128.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile128.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (196/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile128');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile129.mat', 'file')
    fprintf('\n[0] (197/1113) %s\n', '20230626T084016_T36RUU_20230627_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile129.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (197/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile130.mat', 'file')
    fprintf('\n[0] (198/1113) %s\n', '20230626T084016_T36RUU_20230627_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile130.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (198/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile131.mat', 'file')
    fprintf('\n[0] (199/1113) %s\n', '20230626T084016_T36RUU_20230627_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile131.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (199/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile132.mat', 'file')
    fprintf('\n[0] (200/1113) %s\n', '20230626T084016_T36RUU_20230627_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile132.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (200/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile133.mat', 'file')
    fprintf('\n[0] (201/1113) %s\n', '20230626T084016_T36RUU_20230627_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile133.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (201/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile134.mat', 'file')
    fprintf('\n[0] (202/1113) %s\n', '20230626T084016_T36RUU_20230627_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile134.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (202/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile137.mat', 'file')
    fprintf('\n[0] (203/1113) %s\n', '20230626T084016_T36RUU_20230627_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile137.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (203/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile138.mat', 'file')
    fprintf('\n[0] (204/1113) %s\n', '20230626T084016_T36RUU_20230627_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile138.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (204/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile139.mat', 'file')
    fprintf('\n[0] (205/1113) %s\n', '20230626T084016_T36RUU_20230627_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile139.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (205/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile140.mat', 'file')
    fprintf('\n[0] (206/1113) %s\n', '20230626T084016_T36RUU_20230627_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile140.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (206/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile141.mat', 'file')
    fprintf('\n[0] (207/1113) %s\n', '20230626T084016_T36RUU_20230627_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile141.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (207/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile142.mat', 'file')
    fprintf('\n[0] (208/1113) %s\n', '20230626T084016_T36RUU_20230627_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile142.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (208/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile143.mat', 'file')
    fprintf('\n[0] (209/1113) %s\n', '20230626T084016_T36RUU_20230627_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile143.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (209/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile144.mat', 'file')
    fprintf('\n[0] (210/1113) %s\n', '20230626T084016_T36RUU_20230627_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile144.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile144.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile144.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (210/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile144');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile145.mat', 'file')
    fprintf('\n[0] (211/1113) %s\n', '20230626T084016_T36RUU_20230627_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile145.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile145.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (211/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile145');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile146.mat', 'file')
    fprintf('\n[0] (212/1113) %s\n', '20230626T084016_T36RUU_20230627_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile146.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (212/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile147.mat', 'file')
    fprintf('\n[0] (213/1113) %s\n', '20230626T084016_T36RUU_20230627_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile147.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (213/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile148.mat', 'file')
    fprintf('\n[0] (214/1113) %s\n', '20230626T084016_T36RUU_20230627_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile148.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (214/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile149.mat', 'file')
    fprintf('\n[0] (215/1113) %s\n', '20230626T084016_T36RUU_20230627_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile149.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (215/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile150.mat', 'file')
    fprintf('\n[0] (216/1113) %s\n', '20230626T084016_T36RUU_20230627_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile150.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (216/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile151.mat', 'file')
    fprintf('\n[0] (217/1113) %s\n', '20230626T084016_T36RUU_20230627_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile151.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (217/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile152.mat', 'file')
    fprintf('\n[0] (218/1113) %s\n', '20230626T084016_T36RUU_20230627_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile152.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (218/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile154.mat', 'file')
    fprintf('\n[0] (219/1113) %s\n', '20230626T084016_T36RUU_20230627_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile154.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (219/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile155.mat', 'file')
    fprintf('\n[0] (220/1113) %s\n', '20230626T084016_T36RUU_20230627_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile155.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (220/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile156.mat', 'file')
    fprintf('\n[0] (221/1113) %s\n', '20230626T084016_T36RUU_20230627_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile156.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (221/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile157.mat', 'file')
    fprintf('\n[0] (222/1113) %s\n', '20230626T084016_T36RUU_20230627_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile157.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (222/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile158.mat', 'file')
    fprintf('\n[0] (223/1113) %s\n', '20230626T084016_T36RUU_20230627_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile158.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (223/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile159.mat', 'file')
    fprintf('\n[0] (224/1113) %s\n', '20230626T084016_T36RUU_20230627_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile159.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (224/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile160.mat', 'file')
    fprintf('\n[0] (225/1113) %s\n', '20230626T084016_T36RUU_20230627_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile160.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile160.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (225/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile160');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile161.mat', 'file')
    fprintf('\n[0] (226/1113) %s\n', '20230626T084016_T36RUU_20230627_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile161.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (226/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile162.mat', 'file')
    fprintf('\n[0] (227/1113) %s\n', '20230626T084016_T36RUU_20230627_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile162.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile162.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (227/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile162');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile163.mat', 'file')
    fprintf('\n[0] (228/1113) %s\n', '20230626T084016_T36RUU_20230627_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile163.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (228/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile164.mat', 'file')
    fprintf('\n[0] (229/1113) %s\n', '20230626T084016_T36RUU_20230627_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile164.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (229/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile165.mat', 'file')
    fprintf('\n[0] (230/1113) %s\n', '20230626T084016_T36RUU_20230627_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile165.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (230/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile166.mat', 'file')
    fprintf('\n[0] (231/1113) %s\n', '20230626T084016_T36RUU_20230627_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile166.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (231/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile167.mat', 'file')
    fprintf('\n[0] (232/1113) %s\n', '20230626T084016_T36RUU_20230627_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile167.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (232/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile168.mat', 'file')
    fprintf('\n[0] (233/1113) %s\n', '20230626T084016_T36RUU_20230627_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile168.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (233/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile172.mat', 'file')
    fprintf('\n[0] (234/1113) %s\n', '20230626T084016_T36RUU_20230627_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile172.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (234/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile173.mat', 'file')
    fprintf('\n[0] (235/1113) %s\n', '20230626T084016_T36RUU_20230627_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile173.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (235/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile174.mat', 'file')
    fprintf('\n[0] (236/1113) %s\n', '20230626T084016_T36RUU_20230627_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile174.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (236/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile175.mat', 'file')
    fprintf('\n[0] (237/1113) %s\n', '20230626T084016_T36RUU_20230627_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile175.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (237/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile176.mat', 'file')
    fprintf('\n[0] (238/1113) %s\n', '20230626T084016_T36RUU_20230627_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile176.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile176.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (238/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile176');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile177.mat', 'file')
    fprintf('\n[0] (239/1113) %s\n', '20230626T084016_T36RUU_20230627_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile177.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile177.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (239/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile177');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile178.mat', 'file')
    fprintf('\n[0] (240/1113) %s\n', '20230626T084016_T36RUU_20230627_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile178.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile178.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (240/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile178');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile179.mat', 'file')
    fprintf('\n[0] (241/1113) %s\n', '20230626T084016_T36RUU_20230627_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile179.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile179.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (241/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile179');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile180.mat', 'file')
    fprintf('\n[0] (242/1113) %s\n', '20230626T084016_T36RUU_20230627_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile180.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile180.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile180.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (242/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile180');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile181.mat', 'file')
    fprintf('\n[0] (243/1113) %s\n', '20230626T084016_T36RUU_20230627_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile181.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile181.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (243/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile181');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile182.mat', 'file')
    fprintf('\n[0] (244/1113) %s\n', '20230626T084016_T36RUU_20230627_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile182.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (244/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile183.mat', 'file')
    fprintf('\n[0] (245/1113) %s\n', '20230626T084016_T36RUU_20230627_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile183.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (245/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile184.mat', 'file')
    fprintf('\n[0] (246/1113) %s\n', '20230626T084016_T36RUU_20230627_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile184.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (246/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile190.mat', 'file')
    fprintf('\n[0] (247/1113) %s\n', '20230626T084016_T36RUU_20230627_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile190.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (247/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile191.mat', 'file')
    fprintf('\n[0] (248/1113) %s\n', '20230626T084016_T36RUU_20230627_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile191.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile191.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile191.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (248/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile191');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile192.mat', 'file')
    fprintf('\n[0] (249/1113) %s\n', '20230626T084016_T36RUU_20230627_tile192');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile192.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile192.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile192.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile192,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (249/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile192');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile193.mat', 'file')
    fprintf('\n[0] (250/1113) %s\n', '20230626T084016_T36RUU_20230627_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile193.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile193.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile193.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (250/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile193');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile194.mat', 'file')
    fprintf('\n[0] (251/1113) %s\n', '20230626T084016_T36RUU_20230627_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile194.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile194.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile194.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (251/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile194');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile195.mat', 'file')
    fprintf('\n[0] (252/1113) %s\n', '20230626T084016_T36RUU_20230627_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile195.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile195.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile195.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (252/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile195');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile196.mat', 'file')
    fprintf('\n[0] (253/1113) %s\n', '20230626T084016_T36RUU_20230627_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile196.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile196.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile196.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (253/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile196');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile197.mat', 'file')
    fprintf('\n[0] (254/1113) %s\n', '20230626T084016_T36RUU_20230627_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile197.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile197.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile197.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (254/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile197');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile198.mat', 'file')
    fprintf('\n[0] (255/1113) %s\n', '20230626T084016_T36RUU_20230627_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile198.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile198.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile198.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (255/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile198');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile199.mat', 'file')
    fprintf('\n[0] (256/1113) %s\n', '20230626T084016_T36RUU_20230627_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile199.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile199.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (256/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile199');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile200.mat', 'file')
    fprintf('\n[0] (257/1113) %s\n', '20230626T084016_T36RUU_20230627_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile200.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile200.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (257/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile200');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile208.mat', 'file')
    fprintf('\n[0] (258/1113) %s\n', '20230626T084016_T36RUU_20230627_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile208.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile208.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile208.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (258/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile208');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile209.mat', 'file')
    fprintf('\n[0] (259/1113) %s\n', '20230626T084016_T36RUU_20230627_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile209.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile209.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile209.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (259/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile209');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile210.mat', 'file')
    fprintf('\n[0] (260/1113) %s\n', '20230626T084016_T36RUU_20230627_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile210.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile210.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile210.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (260/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile210');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile211.mat', 'file')
    fprintf('\n[0] (261/1113) %s\n', '20230626T084016_T36RUU_20230627_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile211.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile211.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile211.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (261/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile211');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile212.mat', 'file')
    fprintf('\n[0] (262/1113) %s\n', '20230626T084016_T36RUU_20230627_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile212.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile212.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile212.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (262/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile212');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile213.mat', 'file')
    fprintf('\n[0] (263/1113) %s\n', '20230626T084016_T36RUU_20230627_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile213.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile213.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile213.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (263/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile213');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile214.mat', 'file')
    fprintf('\n[0] (264/1113) %s\n', '20230626T084016_T36RUU_20230627_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile214.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile214.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile214.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (264/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile214');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile215.mat', 'file')
    fprintf('\n[0] (265/1113) %s\n', '20230626T084016_T36RUU_20230627_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile215.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile215.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile215.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (265/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile215');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile216.mat', 'file')
    fprintf('\n[0] (266/1113) %s\n', '20230626T084016_T36RUU_20230627_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile216.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile216.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile216.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (266/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile216');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile226.mat', 'file')
    fprintf('\n[0] (267/1113) %s\n', '20230626T084016_T36RUU_20230627_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile226.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile226.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile226.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (267/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile226');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile227.mat', 'file')
    fprintf('\n[0] (268/1113) %s\n', '20230626T084016_T36RUU_20230627_tile227');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile227.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile227.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile227.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile227,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (268/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile227');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile228.mat', 'file')
    fprintf('\n[0] (269/1113) %s\n', '20230626T084016_T36RUU_20230627_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile228.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile228.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile228.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (269/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile228');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile229.mat', 'file')
    fprintf('\n[0] (270/1113) %s\n', '20230626T084016_T36RUU_20230627_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile229.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile229.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile229.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (270/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile229');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile230.mat', 'file')
    fprintf('\n[0] (271/1113) %s\n', '20230626T084016_T36RUU_20230627_tile230');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile230.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile230.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile230.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile230,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (271/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile230');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile231.mat', 'file')
    fprintf('\n[0] (272/1113) %s\n', '20230626T084016_T36RUU_20230627_tile231');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile231.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile231.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile231.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile231,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (272/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile231');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile232.mat', 'file')
    fprintf('\n[0] (273/1113) %s\n', '20230626T084016_T36RUU_20230627_tile232');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile232.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile232.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile232.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile232,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (273/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile232');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile244.mat', 'file')
    fprintf('\n[0] (274/1113) %s\n', '20230626T084016_T36RUU_20230627_tile244');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile244.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile244.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile244.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile244,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (274/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile244');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile245.mat', 'file')
    fprintf('\n[0] (275/1113) %s\n', '20230626T084016_T36RUU_20230627_tile245');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile245.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile245.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile245.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile245,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (275/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile245');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile246.mat', 'file')
    fprintf('\n[0] (276/1113) %s\n', '20230626T084016_T36RUU_20230627_tile246');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile246.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile246.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile246.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile246,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (276/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile246');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile247.mat', 'file')
    fprintf('\n[0] (277/1113) %s\n', '20230626T084016_T36RUU_20230627_tile247');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile247.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile247.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile247.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile247,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (277/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile247');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile248.mat', 'file')
    fprintf('\n[0] (278/1113) %s\n', '20230626T084016_T36RUU_20230627_tile248');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile248.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile248.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile248.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile248,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (278/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile248');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile262.mat', 'file')
    fprintf('\n[0] (279/1113) %s\n', '20230626T084016_T36RUU_20230627_tile262');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile262.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile262.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile262.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile262,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (279/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile262');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile263.mat', 'file')
    fprintf('\n[0] (280/1113) %s\n', '20230626T084016_T36RUU_20230627_tile263');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile263.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile263.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile263.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile263,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (280/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile263');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile264.mat', 'file')
    fprintf('\n[0] (281/1113) %s\n', '20230626T084016_T36RUU_20230627_tile264');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile264.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile264.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile264.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile264,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (281/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile264');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile280.mat', 'file')
    fprintf('\n[0] (282/1113) %s\n', '20230626T084016_T36RUU_20230627_tile280');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile280.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile280.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile280.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile280,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (282/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile280');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile281.mat', 'file')
    fprintf('\n[0] (283/1113) %s\n', '20230626T084016_T36RUU_20230627_tile281');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile281.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile281.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile281.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile281,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (283/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile281');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile297.mat', 'file')
    fprintf('\n[0] (284/1113) %s\n', '20230626T084016_T36RUU_20230627_tile297');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20230626T084016_T36RUU_20230627_tile297.mat';
    msi_path = 'data/MS/EMIT32/20230626T084016_T36RUU_20230627_tile297.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20230626T084016_T36RUU_20230627_tile297.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20230626T084016_T36RUU_20230627_tile297,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (284/1113) %s — skip\n', '20230626T084016_T36RUU_20230627_tile297');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile026.mat', 'file')
    fprintf('\n[0] (285/1113) %s\n', '20231203T104832_T31RDP_20231205_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile026.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile026.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (285/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile026');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile027.mat', 'file')
    fprintf('\n[0] (286/1113) %s\n', '20231203T104832_T31RDP_20231205_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile027.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile027.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile027.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (286/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile027');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile043.mat', 'file')
    fprintf('\n[0] (287/1113) %s\n', '20231203T104832_T31RDP_20231205_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile043.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (287/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile044.mat', 'file')
    fprintf('\n[0] (288/1113) %s\n', '20231203T104832_T31RDP_20231205_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile044.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (288/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile045.mat', 'file')
    fprintf('\n[0] (289/1113) %s\n', '20231203T104832_T31RDP_20231205_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile045.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (289/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile046.mat', 'file')
    fprintf('\n[0] (290/1113) %s\n', '20231203T104832_T31RDP_20231205_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile046.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile046.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (290/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile046');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile060.mat', 'file')
    fprintf('\n[0] (291/1113) %s\n', '20231203T104832_T31RDP_20231205_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile060.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (291/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile061.mat', 'file')
    fprintf('\n[0] (292/1113) %s\n', '20231203T104832_T31RDP_20231205_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile061.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (292/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile062.mat', 'file')
    fprintf('\n[0] (293/1113) %s\n', '20231203T104832_T31RDP_20231205_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile062.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (293/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile063.mat', 'file')
    fprintf('\n[0] (294/1113) %s\n', '20231203T104832_T31RDP_20231205_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile063.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile063.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (294/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile063');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile064.mat', 'file')
    fprintf('\n[0] (295/1113) %s\n', '20231203T104832_T31RDP_20231205_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile064.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile064.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile064.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (295/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile064');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile065.mat', 'file')
    fprintf('\n[0] (296/1113) %s\n', '20231203T104832_T31RDP_20231205_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile065.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile065.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (296/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile065');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile066.mat', 'file')
    fprintf('\n[0] (297/1113) %s\n', '20231203T104832_T31RDP_20231205_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile066.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile066.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (297/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile066');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile077.mat', 'file')
    fprintf('\n[0] (298/1113) %s\n', '20231203T104832_T31RDP_20231205_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile077.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (298/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile078.mat', 'file')
    fprintf('\n[0] (299/1113) %s\n', '20231203T104832_T31RDP_20231205_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile078.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (299/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile079.mat', 'file')
    fprintf('\n[0] (300/1113) %s\n', '20231203T104832_T31RDP_20231205_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile079.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (300/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile080.mat', 'file')
    fprintf('\n[0] (301/1113) %s\n', '20231203T104832_T31RDP_20231205_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile080.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile080.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (301/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile080');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile081.mat', 'file')
    fprintf('\n[0] (302/1113) %s\n', '20231203T104832_T31RDP_20231205_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile081.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile081.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (302/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile081');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile082.mat', 'file')
    fprintf('\n[0] (303/1113) %s\n', '20231203T104832_T31RDP_20231205_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile082.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile082.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (303/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile082');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile083.mat', 'file')
    fprintf('\n[0] (304/1113) %s\n', '20231203T104832_T31RDP_20231205_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile083.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile083.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (304/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile083');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile084.mat', 'file')
    fprintf('\n[0] (305/1113) %s\n', '20231203T104832_T31RDP_20231205_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile084.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile084.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile084.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (305/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile084');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile085.mat', 'file')
    fprintf('\n[0] (306/1113) %s\n', '20231203T104832_T31RDP_20231205_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile085.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (306/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile094.mat', 'file')
    fprintf('\n[0] (307/1113) %s\n', '20231203T104832_T31RDP_20231205_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile094.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (307/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile095.mat', 'file')
    fprintf('\n[0] (308/1113) %s\n', '20231203T104832_T31RDP_20231205_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile095.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (308/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile096.mat', 'file')
    fprintf('\n[0] (309/1113) %s\n', '20231203T104832_T31RDP_20231205_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile096.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile096.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile096.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (309/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile096');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile097.mat', 'file')
    fprintf('\n[0] (310/1113) %s\n', '20231203T104832_T31RDP_20231205_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile097.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile097.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile097.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (310/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile097');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile098.mat', 'file')
    fprintf('\n[0] (311/1113) %s\n', '20231203T104832_T31RDP_20231205_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile098.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (311/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile099.mat', 'file')
    fprintf('\n[0] (312/1113) %s\n', '20231203T104832_T31RDP_20231205_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile099.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile099.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (312/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile099');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile100.mat', 'file')
    fprintf('\n[0] (313/1113) %s\n', '20231203T104832_T31RDP_20231205_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile100.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (313/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile101.mat', 'file')
    fprintf('\n[0] (314/1113) %s\n', '20231203T104832_T31RDP_20231205_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile101.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (314/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile102.mat', 'file')
    fprintf('\n[0] (315/1113) %s\n', '20231203T104832_T31RDP_20231205_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile102.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (315/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile103.mat', 'file')
    fprintf('\n[0] (316/1113) %s\n', '20231203T104832_T31RDP_20231205_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile103.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (316/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile104.mat', 'file')
    fprintf('\n[0] (317/1113) %s\n', '20231203T104832_T31RDP_20231205_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile104.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (317/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile105.mat', 'file')
    fprintf('\n[0] (318/1113) %s\n', '20231203T104832_T31RDP_20231205_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile105.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (318/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile111.mat', 'file')
    fprintf('\n[0] (319/1113) %s\n', '20231203T104832_T31RDP_20231205_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile111.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (319/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile112.mat', 'file')
    fprintf('\n[0] (320/1113) %s\n', '20231203T104832_T31RDP_20231205_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile112.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile112.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (320/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile112');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile113.mat', 'file')
    fprintf('\n[0] (321/1113) %s\n', '20231203T104832_T31RDP_20231205_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile113.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (321/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile114.mat', 'file')
    fprintf('\n[0] (322/1113) %s\n', '20231203T104832_T31RDP_20231205_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile114.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (322/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile115.mat', 'file')
    fprintf('\n[0] (323/1113) %s\n', '20231203T104832_T31RDP_20231205_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile115.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (323/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile116.mat', 'file')
    fprintf('\n[0] (324/1113) %s\n', '20231203T104832_T31RDP_20231205_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile116.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (324/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile117.mat', 'file')
    fprintf('\n[0] (325/1113) %s\n', '20231203T104832_T31RDP_20231205_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile117.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (325/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile118.mat', 'file')
    fprintf('\n[0] (326/1113) %s\n', '20231203T104832_T31RDP_20231205_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile118.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (326/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile119.mat', 'file')
    fprintf('\n[0] (327/1113) %s\n', '20231203T104832_T31RDP_20231205_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile119.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (327/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile120.mat', 'file')
    fprintf('\n[0] (328/1113) %s\n', '20231203T104832_T31RDP_20231205_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile120.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (328/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile121.mat', 'file')
    fprintf('\n[0] (329/1113) %s\n', '20231203T104832_T31RDP_20231205_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile121.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (329/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile122.mat', 'file')
    fprintf('\n[0] (330/1113) %s\n', '20231203T104832_T31RDP_20231205_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile122.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (330/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile123.mat', 'file')
    fprintf('\n[0] (331/1113) %s\n', '20231203T104832_T31RDP_20231205_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile123.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (331/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile124.mat', 'file')
    fprintf('\n[0] (332/1113) %s\n', '20231203T104832_T31RDP_20231205_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile124.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (332/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile125.mat', 'file')
    fprintf('\n[0] (333/1113) %s\n', '20231203T104832_T31RDP_20231205_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile125.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (333/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile129.mat', 'file')
    fprintf('\n[0] (334/1113) %s\n', '20231203T104832_T31RDP_20231205_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile129.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (334/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile130.mat', 'file')
    fprintf('\n[0] (335/1113) %s\n', '20231203T104832_T31RDP_20231205_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile130.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (335/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile131.mat', 'file')
    fprintf('\n[0] (336/1113) %s\n', '20231203T104832_T31RDP_20231205_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile131.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (336/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile132.mat', 'file')
    fprintf('\n[0] (337/1113) %s\n', '20231203T104832_T31RDP_20231205_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile132.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (337/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile133.mat', 'file')
    fprintf('\n[0] (338/1113) %s\n', '20231203T104832_T31RDP_20231205_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile133.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (338/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile134.mat', 'file')
    fprintf('\n[0] (339/1113) %s\n', '20231203T104832_T31RDP_20231205_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile134.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (339/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile135.mat', 'file')
    fprintf('\n[0] (340/1113) %s\n', '20231203T104832_T31RDP_20231205_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile135.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (340/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile136.mat', 'file')
    fprintf('\n[0] (341/1113) %s\n', '20231203T104832_T31RDP_20231205_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile136.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (341/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile137.mat', 'file')
    fprintf('\n[0] (342/1113) %s\n', '20231203T104832_T31RDP_20231205_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile137.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (342/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile138.mat', 'file')
    fprintf('\n[0] (343/1113) %s\n', '20231203T104832_T31RDP_20231205_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile138.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (343/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile139.mat', 'file')
    fprintf('\n[0] (344/1113) %s\n', '20231203T104832_T31RDP_20231205_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile139.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (344/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile140.mat', 'file')
    fprintf('\n[0] (345/1113) %s\n', '20231203T104832_T31RDP_20231205_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile140.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (345/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile141.mat', 'file')
    fprintf('\n[0] (346/1113) %s\n', '20231203T104832_T31RDP_20231205_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile141.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (346/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile142.mat', 'file')
    fprintf('\n[0] (347/1113) %s\n', '20231203T104832_T31RDP_20231205_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile142.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (347/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile143.mat', 'file')
    fprintf('\n[0] (348/1113) %s\n', '20231203T104832_T31RDP_20231205_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile143.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (348/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile146.mat', 'file')
    fprintf('\n[0] (349/1113) %s\n', '20231203T104832_T31RDP_20231205_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile146.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (349/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile147.mat', 'file')
    fprintf('\n[0] (350/1113) %s\n', '20231203T104832_T31RDP_20231205_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile147.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (350/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile148.mat', 'file')
    fprintf('\n[0] (351/1113) %s\n', '20231203T104832_T31RDP_20231205_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile148.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (351/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile149.mat', 'file')
    fprintf('\n[0] (352/1113) %s\n', '20231203T104832_T31RDP_20231205_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile149.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (352/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile150.mat', 'file')
    fprintf('\n[0] (353/1113) %s\n', '20231203T104832_T31RDP_20231205_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile150.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (353/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile151.mat', 'file')
    fprintf('\n[0] (354/1113) %s\n', '20231203T104832_T31RDP_20231205_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile151.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (354/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile152.mat', 'file')
    fprintf('\n[0] (355/1113) %s\n', '20231203T104832_T31RDP_20231205_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile152.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (355/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile153.mat', 'file')
    fprintf('\n[0] (356/1113) %s\n', '20231203T104832_T31RDP_20231205_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile153.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile153.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (356/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile153');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile154.mat', 'file')
    fprintf('\n[0] (357/1113) %s\n', '20231203T104832_T31RDP_20231205_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile154.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (357/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile155.mat', 'file')
    fprintf('\n[0] (358/1113) %s\n', '20231203T104832_T31RDP_20231205_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile155.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (358/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile156.mat', 'file')
    fprintf('\n[0] (359/1113) %s\n', '20231203T104832_T31RDP_20231205_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile156.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (359/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile157.mat', 'file')
    fprintf('\n[0] (360/1113) %s\n', '20231203T104832_T31RDP_20231205_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile157.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (360/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile158.mat', 'file')
    fprintf('\n[0] (361/1113) %s\n', '20231203T104832_T31RDP_20231205_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile158.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (361/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile159.mat', 'file')
    fprintf('\n[0] (362/1113) %s\n', '20231203T104832_T31RDP_20231205_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile159.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (362/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile160.mat', 'file')
    fprintf('\n[0] (363/1113) %s\n', '20231203T104832_T31RDP_20231205_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile160.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile160.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (363/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile160');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile161.mat', 'file')
    fprintf('\n[0] (364/1113) %s\n', '20231203T104832_T31RDP_20231205_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile161.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (364/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile163.mat', 'file')
    fprintf('\n[0] (365/1113) %s\n', '20231203T104832_T31RDP_20231205_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile163.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (365/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile164.mat', 'file')
    fprintf('\n[0] (366/1113) %s\n', '20231203T104832_T31RDP_20231205_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile164.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (366/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile165.mat', 'file')
    fprintf('\n[0] (367/1113) %s\n', '20231203T104832_T31RDP_20231205_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile165.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (367/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile166.mat', 'file')
    fprintf('\n[0] (368/1113) %s\n', '20231203T104832_T31RDP_20231205_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile166.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (368/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile167.mat', 'file')
    fprintf('\n[0] (369/1113) %s\n', '20231203T104832_T31RDP_20231205_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile167.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (369/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile168.mat', 'file')
    fprintf('\n[0] (370/1113) %s\n', '20231203T104832_T31RDP_20231205_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile168.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (370/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile169.mat', 'file')
    fprintf('\n[0] (371/1113) %s\n', '20231203T104832_T31RDP_20231205_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile169.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (371/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile170.mat', 'file')
    fprintf('\n[0] (372/1113) %s\n', '20231203T104832_T31RDP_20231205_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile170.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (372/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile171.mat', 'file')
    fprintf('\n[0] (373/1113) %s\n', '20231203T104832_T31RDP_20231205_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile171.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (373/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile172.mat', 'file')
    fprintf('\n[0] (374/1113) %s\n', '20231203T104832_T31RDP_20231205_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile172.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (374/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile173.mat', 'file')
    fprintf('\n[0] (375/1113) %s\n', '20231203T104832_T31RDP_20231205_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile173.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (375/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile174.mat', 'file')
    fprintf('\n[0] (376/1113) %s\n', '20231203T104832_T31RDP_20231205_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile174.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (376/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile175.mat', 'file')
    fprintf('\n[0] (377/1113) %s\n', '20231203T104832_T31RDP_20231205_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile175.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (377/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile176.mat', 'file')
    fprintf('\n[0] (378/1113) %s\n', '20231203T104832_T31RDP_20231205_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile176.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile176.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (378/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile176');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile177.mat', 'file')
    fprintf('\n[0] (379/1113) %s\n', '20231203T104832_T31RDP_20231205_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile177.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile177.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (379/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile177');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile178.mat', 'file')
    fprintf('\n[0] (380/1113) %s\n', '20231203T104832_T31RDP_20231205_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile178.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile178.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (380/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile178');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile181.mat', 'file')
    fprintf('\n[0] (381/1113) %s\n', '20231203T104832_T31RDP_20231205_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile181.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile181.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (381/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile181');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile182.mat', 'file')
    fprintf('\n[0] (382/1113) %s\n', '20231203T104832_T31RDP_20231205_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile182.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (382/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile183.mat', 'file')
    fprintf('\n[0] (383/1113) %s\n', '20231203T104832_T31RDP_20231205_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile183.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (383/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile184.mat', 'file')
    fprintf('\n[0] (384/1113) %s\n', '20231203T104832_T31RDP_20231205_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile184.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (384/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile185.mat', 'file')
    fprintf('\n[0] (385/1113) %s\n', '20231203T104832_T31RDP_20231205_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile185.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (385/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile186.mat', 'file')
    fprintf('\n[0] (386/1113) %s\n', '20231203T104832_T31RDP_20231205_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile186.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (386/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile187.mat', 'file')
    fprintf('\n[0] (387/1113) %s\n', '20231203T104832_T31RDP_20231205_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile187.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (387/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile188.mat', 'file')
    fprintf('\n[0] (388/1113) %s\n', '20231203T104832_T31RDP_20231205_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile188.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (388/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile189.mat', 'file')
    fprintf('\n[0] (389/1113) %s\n', '20231203T104832_T31RDP_20231205_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile189.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (389/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile190.mat', 'file')
    fprintf('\n[0] (390/1113) %s\n', '20231203T104832_T31RDP_20231205_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile190.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (390/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile191.mat', 'file')
    fprintf('\n[0] (391/1113) %s\n', '20231203T104832_T31RDP_20231205_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile191.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile191.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile191.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (391/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile191');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile192.mat', 'file')
    fprintf('\n[0] (392/1113) %s\n', '20231203T104832_T31RDP_20231205_tile192');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile192.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile192.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile192.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile192,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (392/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile192');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile193.mat', 'file')
    fprintf('\n[0] (393/1113) %s\n', '20231203T104832_T31RDP_20231205_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile193.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile193.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile193.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (393/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile193');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile194.mat', 'file')
    fprintf('\n[0] (394/1113) %s\n', '20231203T104832_T31RDP_20231205_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile194.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile194.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile194.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (394/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile194');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile195.mat', 'file')
    fprintf('\n[0] (395/1113) %s\n', '20231203T104832_T31RDP_20231205_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile195.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile195.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile195.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (395/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile195');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile201.mat', 'file')
    fprintf('\n[0] (396/1113) %s\n', '20231203T104832_T31RDP_20231205_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile201.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile201.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (396/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile201');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile202.mat', 'file')
    fprintf('\n[0] (397/1113) %s\n', '20231203T104832_T31RDP_20231205_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile202.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile202.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (397/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile202');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile203.mat', 'file')
    fprintf('\n[0] (398/1113) %s\n', '20231203T104832_T31RDP_20231205_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile203.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile203.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile203.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (398/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile203');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile204.mat', 'file')
    fprintf('\n[0] (399/1113) %s\n', '20231203T104832_T31RDP_20231205_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile204.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile204.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile204.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (399/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile204');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile205.mat', 'file')
    fprintf('\n[0] (400/1113) %s\n', '20231203T104832_T31RDP_20231205_tile205');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile205.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile205.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile205.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile205,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (400/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile205');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile206.mat', 'file')
    fprintf('\n[0] (401/1113) %s\n', '20231203T104832_T31RDP_20231205_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile206.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile206.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile206.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (401/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile206');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile207.mat', 'file')
    fprintf('\n[0] (402/1113) %s\n', '20231203T104832_T31RDP_20231205_tile207');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile207.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile207.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile207.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile207,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (402/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile207');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile208.mat', 'file')
    fprintf('\n[0] (403/1113) %s\n', '20231203T104832_T31RDP_20231205_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile208.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile208.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile208.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (403/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile208');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile209.mat', 'file')
    fprintf('\n[0] (404/1113) %s\n', '20231203T104832_T31RDP_20231205_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile209.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile209.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile209.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (404/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile209');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile210.mat', 'file')
    fprintf('\n[0] (405/1113) %s\n', '20231203T104832_T31RDP_20231205_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile210.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile210.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile210.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (405/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile210');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile211.mat', 'file')
    fprintf('\n[0] (406/1113) %s\n', '20231203T104832_T31RDP_20231205_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile211.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile211.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile211.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (406/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile211');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile212.mat', 'file')
    fprintf('\n[0] (407/1113) %s\n', '20231203T104832_T31RDP_20231205_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile212.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile212.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile212.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (407/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile212');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile213.mat', 'file')
    fprintf('\n[0] (408/1113) %s\n', '20231203T104832_T31RDP_20231205_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile213.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile213.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile213.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (408/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile213');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile221.mat', 'file')
    fprintf('\n[0] (409/1113) %s\n', '20231203T104832_T31RDP_20231205_tile221');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile221.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile221.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile221.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile221,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (409/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile221');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile222.mat', 'file')
    fprintf('\n[0] (410/1113) %s\n', '20231203T104832_T31RDP_20231205_tile222');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile222.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile222.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile222.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile222,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (410/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile222');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile223.mat', 'file')
    fprintf('\n[0] (411/1113) %s\n', '20231203T104832_T31RDP_20231205_tile223');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile223.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile223.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile223.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile223,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (411/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile223');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile224.mat', 'file')
    fprintf('\n[0] (412/1113) %s\n', '20231203T104832_T31RDP_20231205_tile224');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile224.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile224.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile224.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile224,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (412/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile224');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile225.mat', 'file')
    fprintf('\n[0] (413/1113) %s\n', '20231203T104832_T31RDP_20231205_tile225');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile225.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile225.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile225.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile225,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (413/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile225');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile226.mat', 'file')
    fprintf('\n[0] (414/1113) %s\n', '20231203T104832_T31RDP_20231205_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile226.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile226.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile226.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (414/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile226');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile227.mat', 'file')
    fprintf('\n[0] (415/1113) %s\n', '20231203T104832_T31RDP_20231205_tile227');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile227.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile227.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile227.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile227,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (415/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile227');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile228.mat', 'file')
    fprintf('\n[0] (416/1113) %s\n', '20231203T104832_T31RDP_20231205_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile228.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile228.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile228.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (416/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile228');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile229.mat', 'file')
    fprintf('\n[0] (417/1113) %s\n', '20231203T104832_T31RDP_20231205_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile229.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile229.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile229.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (417/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile229');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile230.mat', 'file')
    fprintf('\n[0] (418/1113) %s\n', '20231203T104832_T31RDP_20231205_tile230');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231203T104832_T31RDP_20231205_tile230.mat';
    msi_path = 'data/MS/EMIT32/20231203T104832_T31RDP_20231205_tile230.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20231203T104832_T31RDP_20231205_tile230.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231203T104832_T31RDP_20231205_tile230,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (418/1113) %s — skip\n', '20231203T104832_T31RDP_20231205_tile230');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile005.mat', 'file')
    fprintf('\n[0] (419/1113) %s\n', '20240525T090019_T34HBH_20240524_tile005');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile005.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile005.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile005.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile005,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (419/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile005');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile018.mat', 'file')
    fprintf('\n[0] (420/1113) %s\n', '20240525T090019_T34HBH_20240524_tile018');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile018.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile018.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile018.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile018,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (420/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile018');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile019.mat', 'file')
    fprintf('\n[0] (421/1113) %s\n', '20240525T090019_T34HBH_20240524_tile019');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile019.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile019.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile019.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile019,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (421/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile019');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile020.mat', 'file')
    fprintf('\n[0] (422/1113) %s\n', '20240525T090019_T34HBH_20240524_tile020');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile020.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile020.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile020.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile020,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (422/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile020');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile021.mat', 'file')
    fprintf('\n[0] (423/1113) %s\n', '20240525T090019_T34HBH_20240524_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile021.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile021.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile021.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (423/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile021');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile022.mat', 'file')
    fprintf('\n[0] (424/1113) %s\n', '20240525T090019_T34HBH_20240524_tile022');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile022.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile022.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile022.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile022,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (424/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile022');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile023.mat', 'file')
    fprintf('\n[0] (425/1113) %s\n', '20240525T090019_T34HBH_20240524_tile023');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile023.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile023.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile023.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile023,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (425/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile023');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile024.mat', 'file')
    fprintf('\n[0] (426/1113) %s\n', '20240525T090019_T34HBH_20240524_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile024.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile024.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (426/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile024');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile025.mat', 'file')
    fprintf('\n[0] (427/1113) %s\n', '20240525T090019_T34HBH_20240524_tile025');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile025.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile025.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile025.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile025,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (427/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile025');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile026.mat', 'file')
    fprintf('\n[0] (428/1113) %s\n', '20240525T090019_T34HBH_20240524_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile026.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile026.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (428/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile026');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat', 'file')
    fprintf('\n[0] (429/1113) %s\n', '20240525T090019_T34HBH_20240524_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile027.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (429/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile027');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat', 'file')
    fprintf('\n[0] (430/1113) %s\n', '20240525T090019_T34HBH_20240524_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile028.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (430/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile028');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat', 'file')
    fprintf('\n[0] (431/1113) %s\n', '20240525T090019_T34HBH_20240524_tile029');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile029.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile029,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (431/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile029');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat', 'file')
    fprintf('\n[0] (432/1113) %s\n', '20240525T090019_T34HBH_20240524_tile030');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile030.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile030,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (432/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile030');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat', 'file')
    fprintf('\n[0] (433/1113) %s\n', '20240525T090019_T34HBH_20240524_tile031');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile031.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile031,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (433/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile031');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat', 'file')
    fprintf('\n[0] (434/1113) %s\n', '20240525T090019_T34HBH_20240524_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile032.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (434/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile032');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat', 'file')
    fprintf('\n[0] (435/1113) %s\n', '20240525T090019_T34HBH_20240524_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile033.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (435/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile033');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat', 'file')
    fprintf('\n[0] (436/1113) %s\n', '20240525T090019_T34HBH_20240524_tile036');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile036.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile036,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (436/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile036');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat', 'file')
    fprintf('\n[0] (437/1113) %s\n', '20240525T090019_T34HBH_20240524_tile037');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile037.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile037,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (437/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile037');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat', 'file')
    fprintf('\n[0] (438/1113) %s\n', '20240525T090019_T34HBH_20240524_tile038');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile038.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile038,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (438/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile038');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat', 'file')
    fprintf('\n[0] (439/1113) %s\n', '20240525T090019_T34HBH_20240524_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile039.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (439/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile039');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat', 'file')
    fprintf('\n[0] (440/1113) %s\n', '20240525T090019_T34HBH_20240524_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile040.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (440/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile040');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat', 'file')
    fprintf('\n[0] (441/1113) %s\n', '20240525T090019_T34HBH_20240524_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (441/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat', 'file')
    fprintf('\n[0] (442/1113) %s\n', '20240525T090019_T34HBH_20240524_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile042.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (442/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile042');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat', 'file')
    fprintf('\n[0] (443/1113) %s\n', '20240525T090019_T34HBH_20240524_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (443/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat', 'file')
    fprintf('\n[0] (444/1113) %s\n', '20240525T090019_T34HBH_20240524_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (444/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat', 'file')
    fprintf('\n[0] (445/1113) %s\n', '20240525T090019_T34HBH_20240524_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (445/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat', 'file')
    fprintf('\n[0] (446/1113) %s\n', '20240525T090019_T34HBH_20240524_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile046.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (446/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile046');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat', 'file')
    fprintf('\n[0] (447/1113) %s\n', '20240525T090019_T34HBH_20240524_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile047.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (447/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile047');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat', 'file')
    fprintf('\n[0] (448/1113) %s\n', '20240525T090019_T34HBH_20240524_tile048');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile048.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile048,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (448/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile048');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat', 'file')
    fprintf('\n[0] (449/1113) %s\n', '20240525T090019_T34HBH_20240524_tile049');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile049.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile049,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (449/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile049');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat', 'file')
    fprintf('\n[0] (450/1113) %s\n', '20240525T090019_T34HBH_20240524_tile050');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile050.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile050,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (450/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile050');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat', 'file')
    fprintf('\n[0] (451/1113) %s\n', '20240525T090019_T34HBH_20240524_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile054.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (451/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile054');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat', 'file')
    fprintf('\n[0] (452/1113) %s\n', '20240525T090019_T34HBH_20240524_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (452/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat', 'file')
    fprintf('\n[0] (453/1113) %s\n', '20240525T090019_T34HBH_20240524_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (453/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat', 'file')
    fprintf('\n[0] (454/1113) %s\n', '20240525T090019_T34HBH_20240524_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (454/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat', 'file')
    fprintf('\n[0] (455/1113) %s\n', '20240525T090019_T34HBH_20240524_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (455/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat', 'file')
    fprintf('\n[0] (456/1113) %s\n', '20240525T090019_T34HBH_20240524_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (456/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat', 'file')
    fprintf('\n[0] (457/1113) %s\n', '20240525T090019_T34HBH_20240524_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (457/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat', 'file')
    fprintf('\n[0] (458/1113) %s\n', '20240525T090019_T34HBH_20240524_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (458/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat', 'file')
    fprintf('\n[0] (459/1113) %s\n', '20240525T090019_T34HBH_20240524_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (459/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat', 'file')
    fprintf('\n[0] (460/1113) %s\n', '20240525T090019_T34HBH_20240524_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile063.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (460/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile063');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat', 'file')
    fprintf('\n[0] (461/1113) %s\n', '20240525T090019_T34HBH_20240524_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile064.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (461/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile064');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat', 'file')
    fprintf('\n[0] (462/1113) %s\n', '20240525T090019_T34HBH_20240524_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile065.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (462/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile065');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat', 'file')
    fprintf('\n[0] (463/1113) %s\n', '20240525T090019_T34HBH_20240524_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile066.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (463/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile066');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat', 'file')
    fprintf('\n[0] (464/1113) %s\n', '20240525T090019_T34HBH_20240524_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (464/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat', 'file')
    fprintf('\n[0] (465/1113) %s\n', '20240525T090019_T34HBH_20240524_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (465/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat', 'file')
    fprintf('\n[0] (466/1113) %s\n', '20240525T090019_T34HBH_20240524_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (466/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat', 'file')
    fprintf('\n[0] (467/1113) %s\n', '20240525T090019_T34HBH_20240524_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (467/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat', 'file')
    fprintf('\n[0] (468/1113) %s\n', '20240525T090019_T34HBH_20240524_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (468/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat', 'file')
    fprintf('\n[0] (469/1113) %s\n', '20240525T090019_T34HBH_20240524_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (469/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat', 'file')
    fprintf('\n[0] (470/1113) %s\n', '20240525T090019_T34HBH_20240524_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (470/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat', 'file')
    fprintf('\n[0] (471/1113) %s\n', '20240525T090019_T34HBH_20240524_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (471/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat', 'file')
    fprintf('\n[0] (472/1113) %s\n', '20240525T090019_T34HBH_20240524_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile080.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (472/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile080');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat', 'file')
    fprintf('\n[0] (473/1113) %s\n', '20240525T090019_T34HBH_20240524_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile081.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (473/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile081');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat', 'file')
    fprintf('\n[0] (474/1113) %s\n', '20240525T090019_T34HBH_20240524_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile082.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (474/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile082');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat', 'file')
    fprintf('\n[0] (475/1113) %s\n', '20240525T090019_T34HBH_20240524_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (475/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat', 'file')
    fprintf('\n[0] (476/1113) %s\n', '20240525T090019_T34HBH_20240524_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (476/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat', 'file')
    fprintf('\n[0] (477/1113) %s\n', '20240525T090019_T34HBH_20240524_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (477/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat', 'file')
    fprintf('\n[0] (478/1113) %s\n', '20240525T090019_T34HBH_20240524_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (478/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat', 'file')
    fprintf('\n[0] (479/1113) %s\n', '20240525T090019_T34HBH_20240524_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (479/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat', 'file')
    fprintf('\n[0] (480/1113) %s\n', '20240525T090019_T34HBH_20240524_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (480/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat', 'file')
    fprintf('\n[0] (481/1113) %s\n', '20240525T090019_T34HBH_20240524_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile096.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (481/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile096');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat', 'file')
    fprintf('\n[0] (482/1113) %s\n', '20240525T090019_T34HBH_20240524_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile097.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (482/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile097');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat', 'file')
    fprintf('\n[0] (483/1113) %s\n', '20240525T090019_T34HBH_20240524_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (483/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat', 'file')
    fprintf('\n[0] (484/1113) %s\n', '20240525T090019_T34HBH_20240524_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (484/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat', 'file')
    fprintf('\n[0] (485/1113) %s\n', '20240525T090019_T34HBH_20240524_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (485/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat', 'file')
    fprintf('\n[0] (486/1113) %s\n', '20240525T090019_T34HBH_20240524_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile110.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (486/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile110');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat', 'file')
    fprintf('\n[0] (487/1113) %s\n', '20240525T090019_T34HBH_20240524_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (487/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat', 'file')
    fprintf('\n[0] (488/1113) %s\n', '20240525T090019_T34HBH_20240524_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile112.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (488/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile112');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat', 'file')
    fprintf('\n[0] (489/1113) %s\n', '20240525T090019_T34HBH_20240524_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (489/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat', 'file')
    fprintf('\n[0] (490/1113) %s\n', '20240525T090019_T34HBH_20240524_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (490/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat', 'file')
    fprintf('\n[0] (491/1113) %s\n', '20240525T090019_T34HBH_20240524_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (491/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat', 'file')
    fprintf('\n[0] (492/1113) %s\n', '20240525T090019_T34HBH_20240524_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile128.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (492/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile128');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat', 'file')
    fprintf('\n[0] (493/1113) %s\n', '20240525T090019_T34HBH_20240524_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (493/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat', 'file')
    fprintf('\n[0] (494/1113) %s\n', '20240525T090019_T34HBH_20240524_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (494/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat', 'file')
    fprintf('\n[0] (495/1113) %s\n', '20240525T090019_T34HBH_20240524_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile145.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (495/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile145');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat', 'file')
    fprintf('\n[0] (496/1113) %s\n', '20240525T090019_T34HBH_20240524_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (496/1113) %s — skip\n', '20240525T090019_T34HBH_20240524_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat', 'file')
    fprintf('\n[0] (497/1113) %s\n', '20250406T102906_T32UQV_20250404_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile027.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (497/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile027');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat', 'file')
    fprintf('\n[0] (498/1113) %s\n', '20250406T102906_T32UQV_20250404_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile028.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (498/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile028');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat', 'file')
    fprintf('\n[0] (499/1113) %s\n', '20250406T102906_T32UQV_20250404_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (499/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat', 'file')
    fprintf('\n[0] (500/1113) %s\n', '20250406T102906_T32UQV_20250404_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile042.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (500/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile042');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat', 'file')
    fprintf('\n[0] (501/1113) %s\n', '20250406T102906_T32UQV_20250404_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (501/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat', 'file')
    fprintf('\n[0] (502/1113) %s\n', '20250406T102906_T32UQV_20250404_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (502/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat', 'file')
    fprintf('\n[0] (503/1113) %s\n', '20250406T102906_T32UQV_20250404_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (503/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat', 'file')
    fprintf('\n[0] (504/1113) %s\n', '20250406T102906_T32UQV_20250404_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (504/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat', 'file')
    fprintf('\n[0] (505/1113) %s\n', '20250406T102906_T32UQV_20250404_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (505/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat', 'file')
    fprintf('\n[0] (506/1113) %s\n', '20250406T102906_T32UQV_20250404_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (506/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat', 'file')
    fprintf('\n[0] (507/1113) %s\n', '20250406T102906_T32UQV_20250404_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (507/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat', 'file')
    fprintf('\n[0] (508/1113) %s\n', '20250406T102906_T32UQV_20250404_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (508/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat', 'file')
    fprintf('\n[0] (509/1113) %s\n', '20250406T102906_T32UQV_20250404_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (509/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat', 'file')
    fprintf('\n[0] (510/1113) %s\n', '20250406T102906_T32UQV_20250404_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (510/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat', 'file')
    fprintf('\n[0] (511/1113) %s\n', '20250406T102906_T32UQV_20250404_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile069.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (511/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile069');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat', 'file')
    fprintf('\n[0] (512/1113) %s\n', '20250406T102906_T32UQV_20250404_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile070.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (512/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile070');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat', 'file')
    fprintf('\n[0] (513/1113) %s\n', '20250406T102906_T32UQV_20250404_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (513/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat', 'file')
    fprintf('\n[0] (514/1113) %s\n', '20250406T102906_T32UQV_20250404_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (514/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat', 'file')
    fprintf('\n[0] (515/1113) %s\n', '20250406T102906_T32UQV_20250404_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (515/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat', 'file')
    fprintf('\n[0] (516/1113) %s\n', '20250406T102906_T32UQV_20250404_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (516/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat', 'file')
    fprintf('\n[0] (517/1113) %s\n', '20250406T102906_T32UQV_20250404_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (517/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat', 'file')
    fprintf('\n[0] (518/1113) %s\n', '20250406T102906_T32UQV_20250404_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (518/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat', 'file')
    fprintf('\n[0] (519/1113) %s\n', '20250406T102906_T32UQV_20250404_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (519/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat', 'file')
    fprintf('\n[0] (520/1113) %s\n', '20250406T102906_T32UQV_20250404_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile083.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (520/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile083');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat', 'file')
    fprintf('\n[0] (521/1113) %s\n', '20250406T102906_T32UQV_20250404_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile084.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (521/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile084');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat', 'file')
    fprintf('\n[0] (522/1113) %s\n', '20250406T102906_T32UQV_20250404_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (522/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat', 'file')
    fprintf('\n[0] (523/1113) %s\n', '20250406T102906_T32UQV_20250404_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile086.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (523/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile086');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat', 'file')
    fprintf('\n[0] (524/1113) %s\n', '20250406T102906_T32UQV_20250404_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (524/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat', 'file')
    fprintf('\n[0] (525/1113) %s\n', '20250406T102906_T32UQV_20250404_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (525/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat', 'file')
    fprintf('\n[0] (526/1113) %s\n', '20250406T102906_T32UQV_20250404_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (526/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat', 'file')
    fprintf('\n[0] (527/1113) %s\n', '20250406T102906_T32UQV_20250404_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (527/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat', 'file')
    fprintf('\n[0] (528/1113) %s\n', '20250406T102906_T32UQV_20250404_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (528/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat', 'file')
    fprintf('\n[0] (529/1113) %s\n', '20250406T102906_T32UQV_20250404_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (529/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat', 'file')
    fprintf('\n[0] (530/1113) %s\n', '20250406T102906_T32UQV_20250404_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (530/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat', 'file')
    fprintf('\n[0] (531/1113) %s\n', '20250406T102906_T32UQV_20250404_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (531/1113) %s — skip\n', '20250406T102906_T32UQV_20250404_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat', 'file')
    fprintf('\n[0] (532/1113) %s\n', '20250601T191055_T11SKA_20250530_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile026.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (532/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile026');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat', 'file')
    fprintf('\n[0] (533/1113) %s\n', '20250601T191055_T11SKA_20250530_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (533/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat', 'file')
    fprintf('\n[0] (534/1113) %s\n', '20250601T191055_T11SKA_20250530_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (534/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat', 'file')
    fprintf('\n[0] (535/1113) %s\n', '20250601T191055_T11SKA_20250530_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (535/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat', 'file')
    fprintf('\n[0] (536/1113) %s\n', '20250601T191055_T11SKA_20250530_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (536/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat', 'file')
    fprintf('\n[0] (537/1113) %s\n', '20250601T191055_T11SKA_20250530_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (537/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat', 'file')
    fprintf('\n[0] (538/1113) %s\n', '20250601T191055_T11SKA_20250530_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (538/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat', 'file')
    fprintf('\n[0] (539/1113) %s\n', '20250601T191055_T11SKA_20250530_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile063.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (539/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile063');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat', 'file')
    fprintf('\n[0] (540/1113) %s\n', '20250601T191055_T11SKA_20250530_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile064.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (540/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile064');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat', 'file')
    fprintf('\n[0] (541/1113) %s\n', '20250601T191055_T11SKA_20250530_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (541/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat', 'file')
    fprintf('\n[0] (542/1113) %s\n', '20250601T191055_T11SKA_20250530_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (542/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat', 'file')
    fprintf('\n[0] (543/1113) %s\n', '20250601T191055_T11SKA_20250530_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (543/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat', 'file')
    fprintf('\n[0] (544/1113) %s\n', '20250601T191055_T11SKA_20250530_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile080.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (544/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile080');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat', 'file')
    fprintf('\n[0] (545/1113) %s\n', '20250601T191055_T11SKA_20250530_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile081.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (545/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile081');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat', 'file')
    fprintf('\n[0] (546/1113) %s\n', '20250601T191055_T11SKA_20250530_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile082.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (546/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile082');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat', 'file')
    fprintf('\n[0] (547/1113) %s\n', '20250601T191055_T11SKA_20250530_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile083.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (547/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile083');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat', 'file')
    fprintf('\n[0] (548/1113) %s\n', '20250601T191055_T11SKA_20250530_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (548/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat', 'file')
    fprintf('\n[0] (549/1113) %s\n', '20250601T191055_T11SKA_20250530_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (549/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat', 'file')
    fprintf('\n[0] (550/1113) %s\n', '20250601T191055_T11SKA_20250530_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (550/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat', 'file')
    fprintf('\n[0] (551/1113) %s\n', '20250601T191055_T11SKA_20250530_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile096.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (551/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile096');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat', 'file')
    fprintf('\n[0] (552/1113) %s\n', '20250601T191055_T11SKA_20250530_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile097.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (552/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile097');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat', 'file')
    fprintf('\n[0] (553/1113) %s\n', '20250601T191055_T11SKA_20250530_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (553/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat', 'file')
    fprintf('\n[0] (554/1113) %s\n', '20250601T191055_T11SKA_20250530_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile099.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (554/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile099');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat', 'file')
    fprintf('\n[0] (555/1113) %s\n', '20250601T191055_T11SKA_20250530_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (555/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat', 'file')
    fprintf('\n[0] (556/1113) %s\n', '20250601T191055_T11SKA_20250530_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (556/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat', 'file')
    fprintf('\n[0] (557/1113) %s\n', '20250601T191055_T11SKA_20250530_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (557/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat', 'file')
    fprintf('\n[0] (558/1113) %s\n', '20250601T191055_T11SKA_20250530_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile110.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (558/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile110');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat', 'file')
    fprintf('\n[0] (559/1113) %s\n', '20250601T191055_T11SKA_20250530_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (559/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat', 'file')
    fprintf('\n[0] (560/1113) %s\n', '20250601T191055_T11SKA_20250530_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile112.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (560/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile112');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat', 'file')
    fprintf('\n[0] (561/1113) %s\n', '20250601T191055_T11SKA_20250530_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (561/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat', 'file')
    fprintf('\n[0] (562/1113) %s\n', '20250601T191055_T11SKA_20250530_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (562/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat', 'file')
    fprintf('\n[0] (563/1113) %s\n', '20250601T191055_T11SKA_20250530_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (563/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat', 'file')
    fprintf('\n[0] (564/1113) %s\n', '20250601T191055_T11SKA_20250530_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (564/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat', 'file')
    fprintf('\n[0] (565/1113) %s\n', '20250601T191055_T11SKA_20250530_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (565/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat', 'file')
    fprintf('\n[0] (566/1113) %s\n', '20250601T191055_T11SKA_20250530_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (566/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat', 'file')
    fprintf('\n[0] (567/1113) %s\n', '20250601T191055_T11SKA_20250530_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (567/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat', 'file')
    fprintf('\n[0] (568/1113) %s\n', '20250601T191055_T11SKA_20250530_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (568/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat', 'file')
    fprintf('\n[0] (569/1113) %s\n', '20250601T191055_T11SKA_20250530_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (569/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat', 'file')
    fprintf('\n[0] (570/1113) %s\n', '20250601T191055_T11SKA_20250530_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (570/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat', 'file')
    fprintf('\n[0] (571/1113) %s\n', '20250601T191055_T11SKA_20250530_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile128.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (571/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile128');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat', 'file')
    fprintf('\n[0] (572/1113) %s\n', '20250601T191055_T11SKA_20250530_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (572/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat', 'file')
    fprintf('\n[0] (573/1113) %s\n', '20250601T191055_T11SKA_20250530_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (573/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat', 'file')
    fprintf('\n[0] (574/1113) %s\n', '20250601T191055_T11SKA_20250530_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (574/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat', 'file')
    fprintf('\n[0] (575/1113) %s\n', '20250601T191055_T11SKA_20250530_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (575/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat', 'file')
    fprintf('\n[0] (576/1113) %s\n', '20250601T191055_T11SKA_20250530_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (576/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat', 'file')
    fprintf('\n[0] (577/1113) %s\n', '20250601T191055_T11SKA_20250530_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (577/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat', 'file')
    fprintf('\n[0] (578/1113) %s\n', '20250601T191055_T11SKA_20250530_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (578/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat', 'file')
    fprintf('\n[0] (579/1113) %s\n', '20250601T191055_T11SKA_20250530_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (579/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat', 'file')
    fprintf('\n[0] (580/1113) %s\n', '20250601T191055_T11SKA_20250530_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (580/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat', 'file')
    fprintf('\n[0] (581/1113) %s\n', '20250601T191055_T11SKA_20250530_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (581/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat', 'file')
    fprintf('\n[0] (582/1113) %s\n', '20250601T191055_T11SKA_20250530_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (582/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat', 'file')
    fprintf('\n[0] (583/1113) %s\n', '20250601T191055_T11SKA_20250530_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (583/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat', 'file')
    fprintf('\n[0] (584/1113) %s\n', '20250601T191055_T11SKA_20250530_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile145.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (584/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile145');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat', 'file')
    fprintf('\n[0] (585/1113) %s\n', '20250601T191055_T11SKA_20250530_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (585/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat', 'file')
    fprintf('\n[0] (586/1113) %s\n', '20250601T191055_T11SKA_20250530_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (586/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat', 'file')
    fprintf('\n[0] (587/1113) %s\n', '20250601T191055_T11SKA_20250530_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (587/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat', 'file')
    fprintf('\n[0] (588/1113) %s\n', '20250601T191055_T11SKA_20250530_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (588/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat', 'file')
    fprintf('\n[0] (589/1113) %s\n', '20250601T191055_T11SKA_20250530_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (589/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat', 'file')
    fprintf('\n[0] (590/1113) %s\n', '20250601T191055_T11SKA_20250530_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (590/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat', 'file')
    fprintf('\n[0] (591/1113) %s\n', '20250601T191055_T11SKA_20250530_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (591/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat', 'file')
    fprintf('\n[0] (592/1113) %s\n', '20250601T191055_T11SKA_20250530_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile153.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (592/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile153');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat', 'file')
    fprintf('\n[0] (593/1113) %s\n', '20250601T191055_T11SKA_20250530_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (593/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat', 'file')
    fprintf('\n[0] (594/1113) %s\n', '20250601T191055_T11SKA_20250530_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (594/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat', 'file')
    fprintf('\n[0] (595/1113) %s\n', '20250601T191055_T11SKA_20250530_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (595/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat', 'file')
    fprintf('\n[0] (596/1113) %s\n', '20250601T191055_T11SKA_20250530_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (596/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat', 'file')
    fprintf('\n[0] (597/1113) %s\n', '20250601T191055_T11SKA_20250530_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (597/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat', 'file')
    fprintf('\n[0] (598/1113) %s\n', '20250601T191055_T11SKA_20250530_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (598/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat', 'file')
    fprintf('\n[0] (599/1113) %s\n', '20250601T191055_T11SKA_20250530_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (599/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat', 'file')
    fprintf('\n[0] (600/1113) %s\n', '20250601T191055_T11SKA_20250530_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (600/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat', 'file')
    fprintf('\n[0] (601/1113) %s\n', '20250601T191055_T11SKA_20250530_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (601/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat', 'file')
    fprintf('\n[0] (602/1113) %s\n', '20250601T191055_T11SKA_20250530_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (602/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat', 'file')
    fprintf('\n[0] (603/1113) %s\n', '20250601T191055_T11SKA_20250530_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (603/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat', 'file')
    fprintf('\n[0] (604/1113) %s\n', '20250601T191055_T11SKA_20250530_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (604/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat', 'file')
    fprintf('\n[0] (605/1113) %s\n', '20250601T191055_T11SKA_20250530_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (605/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat', 'file')
    fprintf('\n[0] (606/1113) %s\n', '20250601T191055_T11SKA_20250530_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (606/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat', 'file')
    fprintf('\n[0] (607/1113) %s\n', '20250601T191055_T11SKA_20250530_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (607/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat', 'file')
    fprintf('\n[0] (608/1113) %s\n', '20250601T191055_T11SKA_20250530_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (608/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat', 'file')
    fprintf('\n[0] (609/1113) %s\n', '20250601T191055_T11SKA_20250530_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (609/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat', 'file')
    fprintf('\n[0] (610/1113) %s\n', '20250601T191055_T11SKA_20250530_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (610/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat', 'file')
    fprintf('\n[0] (611/1113) %s\n', '20250601T191055_T11SKA_20250530_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (611/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat', 'file')
    fprintf('\n[0] (612/1113) %s\n', '20250601T191055_T11SKA_20250530_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile176.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (612/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile176');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat', 'file')
    fprintf('\n[0] (613/1113) %s\n', '20250601T191055_T11SKA_20250530_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile177.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (613/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile177');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat', 'file')
    fprintf('\n[0] (614/1113) %s\n', '20250601T191055_T11SKA_20250530_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile181.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (614/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile181');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat', 'file')
    fprintf('\n[0] (615/1113) %s\n', '20250601T191055_T11SKA_20250530_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (615/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat', 'file')
    fprintf('\n[0] (616/1113) %s\n', '20250601T191055_T11SKA_20250530_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (616/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat', 'file')
    fprintf('\n[0] (617/1113) %s\n', '20250601T191055_T11SKA_20250530_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (617/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat', 'file')
    fprintf('\n[0] (618/1113) %s\n', '20250601T191055_T11SKA_20250530_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (618/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat', 'file')
    fprintf('\n[0] (619/1113) %s\n', '20250601T191055_T11SKA_20250530_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (619/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat', 'file')
    fprintf('\n[0] (620/1113) %s\n', '20250601T191055_T11SKA_20250530_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (620/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat', 'file')
    fprintf('\n[0] (621/1113) %s\n', '20250601T191055_T11SKA_20250530_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (621/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat', 'file')
    fprintf('\n[0] (622/1113) %s\n', '20250601T191055_T11SKA_20250530_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (622/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat', 'file')
    fprintf('\n[0] (623/1113) %s\n', '20250601T191055_T11SKA_20250530_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (623/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat', 'file')
    fprintf('\n[0] (624/1113) %s\n', '20250601T191055_T11SKA_20250530_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile191.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (624/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile191');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat', 'file')
    fprintf('\n[0] (625/1113) %s\n', '20250601T191055_T11SKA_20250530_tile192');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile192.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile192,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (625/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile192');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat', 'file')
    fprintf('\n[0] (626/1113) %s\n', '20250601T191055_T11SKA_20250530_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile193.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (626/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile193');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat', 'file')
    fprintf('\n[0] (627/1113) %s\n', '20250601T191055_T11SKA_20250530_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile194.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (627/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile194');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat', 'file')
    fprintf('\n[0] (628/1113) %s\n', '20250601T191055_T11SKA_20250530_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile195.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (628/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile195');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat', 'file')
    fprintf('\n[0] (629/1113) %s\n', '20250601T191055_T11SKA_20250530_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile196.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (629/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile196');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat', 'file')
    fprintf('\n[0] (630/1113) %s\n', '20250601T191055_T11SKA_20250530_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile200.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (630/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile200');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat', 'file')
    fprintf('\n[0] (631/1113) %s\n', '20250601T191055_T11SKA_20250530_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile201.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (631/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile201');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat', 'file')
    fprintf('\n[0] (632/1113) %s\n', '20250601T191055_T11SKA_20250530_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile202.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (632/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile202');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat', 'file')
    fprintf('\n[0] (633/1113) %s\n', '20250601T191055_T11SKA_20250530_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile203.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (633/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile203');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat', 'file')
    fprintf('\n[0] (634/1113) %s\n', '20250601T191055_T11SKA_20250530_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile204.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (634/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile204');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat', 'file')
    fprintf('\n[0] (635/1113) %s\n', '20250601T191055_T11SKA_20250530_tile205');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile205.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile205,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (635/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile205');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat', 'file')
    fprintf('\n[0] (636/1113) %s\n', '20250601T191055_T11SKA_20250530_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile206.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (636/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile206');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat', 'file')
    fprintf('\n[0] (637/1113) %s\n', '20250601T191055_T11SKA_20250530_tile207');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile207.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile207,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (637/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile207');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat', 'file')
    fprintf('\n[0] (638/1113) %s\n', '20250601T191055_T11SKA_20250530_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile208.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (638/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile208');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat', 'file')
    fprintf('\n[0] (639/1113) %s\n', '20250601T191055_T11SKA_20250530_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile209.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (639/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile209');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat', 'file')
    fprintf('\n[0] (640/1113) %s\n', '20250601T191055_T11SKA_20250530_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile210.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (640/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile210');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat', 'file')
    fprintf('\n[0] (641/1113) %s\n', '20250601T191055_T11SKA_20250530_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile211.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (641/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile211');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat', 'file')
    fprintf('\n[0] (642/1113) %s\n', '20250601T191055_T11SKA_20250530_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile212.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (642/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile212');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat', 'file')
    fprintf('\n[0] (643/1113) %s\n', '20250601T191055_T11SKA_20250530_tile219');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile219.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile219,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (643/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile219');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat', 'file')
    fprintf('\n[0] (644/1113) %s\n', '20250601T191055_T11SKA_20250530_tile220');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile220.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile220,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (644/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile220');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat', 'file')
    fprintf('\n[0] (645/1113) %s\n', '20250601T191055_T11SKA_20250530_tile221');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile221.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile221,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (645/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile221');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat', 'file')
    fprintf('\n[0] (646/1113) %s\n', '20250601T191055_T11SKA_20250530_tile222');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile222.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile222,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (646/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile222');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat', 'file')
    fprintf('\n[0] (647/1113) %s\n', '20250601T191055_T11SKA_20250530_tile223');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile223.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile223,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (647/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile223');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat', 'file')
    fprintf('\n[0] (648/1113) %s\n', '20250601T191055_T11SKA_20250530_tile224');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile224.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile224,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (648/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile224');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat', 'file')
    fprintf('\n[0] (649/1113) %s\n', '20250601T191055_T11SKA_20250530_tile225');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile225.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile225,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (649/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile225');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat', 'file')
    fprintf('\n[0] (650/1113) %s\n', '20250601T191055_T11SKA_20250530_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile226.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (650/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile226');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat', 'file')
    fprintf('\n[0] (651/1113) %s\n', '20250601T191055_T11SKA_20250530_tile227');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile227.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile227,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (651/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile227');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat', 'file')
    fprintf('\n[0] (652/1113) %s\n', '20250601T191055_T11SKA_20250530_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile228.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (652/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile228');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat', 'file')
    fprintf('\n[0] (653/1113) %s\n', '20250601T191055_T11SKA_20250530_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile229.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (653/1113) %s — skip\n', '20250601T191055_T11SKA_20250530_tile229');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat', 'file')
    fprintf('\n[0] (654/1113) %s\n', '20250623T082106_T36RUV_20250621_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile024.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (654/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile024');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat', 'file')
    fprintf('\n[0] (655/1113) %s\n', '20250623T082106_T36RUV_20250621_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile040.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (655/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile040');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat', 'file')
    fprintf('\n[0] (656/1113) %s\n', '20250623T082106_T36RUV_20250621_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (656/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat', 'file')
    fprintf('\n[0] (657/1113) %s\n', '20250623T082106_T36RUV_20250621_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (657/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat', 'file')
    fprintf('\n[0] (658/1113) %s\n', '20250623T082106_T36RUV_20250621_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (658/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat', 'file')
    fprintf('\n[0] (659/1113) %s\n', '20250623T082106_T36RUV_20250621_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (659/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat', 'file')
    fprintf('\n[0] (660/1113) %s\n', '20250623T082106_T36RUV_20250621_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (660/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat', 'file')
    fprintf('\n[0] (661/1113) %s\n', '20250623T082106_T36RUV_20250621_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile070.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (661/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile070');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat', 'file')
    fprintf('\n[0] (662/1113) %s\n', '20250623T082106_T36RUV_20250621_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (662/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat', 'file')
    fprintf('\n[0] (663/1113) %s\n', '20250623T082106_T36RUV_20250621_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (663/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat', 'file')
    fprintf('\n[0] (664/1113) %s\n', '20250623T082106_T36RUV_20250621_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (664/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat', 'file')
    fprintf('\n[0] (665/1113) %s\n', '20250623T082106_T36RUV_20250621_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (665/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat', 'file')
    fprintf('\n[0] (666/1113) %s\n', '20250623T082106_T36RUV_20250621_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (666/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat', 'file')
    fprintf('\n[0] (667/1113) %s\n', '20250623T082106_T36RUV_20250621_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (667/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat', 'file')
    fprintf('\n[0] (668/1113) %s\n', '20250623T082106_T36RUV_20250621_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile086.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (668/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile086');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat', 'file')
    fprintf('\n[0] (669/1113) %s\n', '20250623T082106_T36RUV_20250621_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (669/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat', 'file')
    fprintf('\n[0] (670/1113) %s\n', '20250623T082106_T36RUV_20250621_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (670/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat', 'file')
    fprintf('\n[0] (671/1113) %s\n', '20250623T082106_T36RUV_20250621_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (671/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat', 'file')
    fprintf('\n[0] (672/1113) %s\n', '20250623T082106_T36RUV_20250621_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (672/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat', 'file')
    fprintf('\n[0] (673/1113) %s\n', '20250623T082106_T36RUV_20250621_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (673/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat', 'file')
    fprintf('\n[0] (674/1113) %s\n', '20250623T082106_T36RUV_20250621_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (674/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat', 'file')
    fprintf('\n[0] (675/1113) %s\n', '20250623T082106_T36RUV_20250621_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (675/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat', 'file')
    fprintf('\n[0] (676/1113) %s\n', '20250623T082106_T36RUV_20250621_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (676/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat', 'file')
    fprintf('\n[0] (677/1113) %s\n', '20250623T082106_T36RUV_20250621_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (677/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat', 'file')
    fprintf('\n[0] (678/1113) %s\n', '20250623T082106_T36RUV_20250621_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (678/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat', 'file')
    fprintf('\n[0] (679/1113) %s\n', '20250623T082106_T36RUV_20250621_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (679/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat', 'file')
    fprintf('\n[0] (680/1113) %s\n', '20250623T082106_T36RUV_20250621_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (680/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat', 'file')
    fprintf('\n[0] (681/1113) %s\n', '20250623T082106_T36RUV_20250621_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (681/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat', 'file')
    fprintf('\n[0] (682/1113) %s\n', '20250623T082106_T36RUV_20250621_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (682/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat', 'file')
    fprintf('\n[0] (683/1113) %s\n', '20250623T082106_T36RUV_20250621_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (683/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat', 'file')
    fprintf('\n[0] (684/1113) %s\n', '20250623T082106_T36RUV_20250621_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (684/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat', 'file')
    fprintf('\n[0] (685/1113) %s\n', '20250623T082106_T36RUV_20250621_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (685/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat', 'file')
    fprintf('\n[0] (686/1113) %s\n', '20250623T082106_T36RUV_20250621_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (686/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat', 'file')
    fprintf('\n[0] (687/1113) %s\n', '20250623T082106_T36RUV_20250621_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (687/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat', 'file')
    fprintf('\n[0] (688/1113) %s\n', '20250623T082106_T36RUV_20250621_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (688/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat', 'file')
    fprintf('\n[0] (689/1113) %s\n', '20250623T082106_T36RUV_20250621_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (689/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat', 'file')
    fprintf('\n[0] (690/1113) %s\n', '20250623T082106_T36RUV_20250621_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (690/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat', 'file')
    fprintf('\n[0] (691/1113) %s\n', '20250623T082106_T36RUV_20250621_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (691/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat', 'file')
    fprintf('\n[0] (692/1113) %s\n', '20250623T082106_T36RUV_20250621_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (692/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat', 'file')
    fprintf('\n[0] (693/1113) %s\n', '20250623T082106_T36RUV_20250621_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (693/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat', 'file')
    fprintf('\n[0] (694/1113) %s\n', '20250623T082106_T36RUV_20250621_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (694/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat', 'file')
    fprintf('\n[0] (695/1113) %s\n', '20250623T082106_T36RUV_20250621_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (695/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat', 'file')
    fprintf('\n[0] (696/1113) %s\n', '20250623T082106_T36RUV_20250621_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile126.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (696/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile126');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat', 'file')
    fprintf('\n[0] (697/1113) %s\n', '20250623T082106_T36RUV_20250621_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (697/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat', 'file')
    fprintf('\n[0] (698/1113) %s\n', '20250623T082106_T36RUV_20250621_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (698/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat', 'file')
    fprintf('\n[0] (699/1113) %s\n', '20250623T082106_T36RUV_20250621_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (699/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat', 'file')
    fprintf('\n[0] (700/1113) %s\n', '20250623T082106_T36RUV_20250621_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (700/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat', 'file')
    fprintf('\n[0] (701/1113) %s\n', '20250623T082106_T36RUV_20250621_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (701/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat', 'file')
    fprintf('\n[0] (702/1113) %s\n', '20250623T082106_T36RUV_20250621_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (702/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat', 'file')
    fprintf('\n[0] (703/1113) %s\n', '20250623T082106_T36RUV_20250621_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (703/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat', 'file')
    fprintf('\n[0] (704/1113) %s\n', '20250623T082106_T36RUV_20250621_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (704/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat', 'file')
    fprintf('\n[0] (705/1113) %s\n', '20250623T082106_T36RUV_20250621_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (705/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat', 'file')
    fprintf('\n[0] (706/1113) %s\n', '20250623T082106_T36RUV_20250621_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (706/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat', 'file')
    fprintf('\n[0] (707/1113) %s\n', '20250623T082106_T36RUV_20250621_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (707/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat', 'file')
    fprintf('\n[0] (708/1113) %s\n', '20250623T082106_T36RUV_20250621_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (708/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat', 'file')
    fprintf('\n[0] (709/1113) %s\n', '20250623T082106_T36RUV_20250621_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (709/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat', 'file')
    fprintf('\n[0] (710/1113) %s\n', '20250623T082106_T36RUV_20250621_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (710/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat', 'file')
    fprintf('\n[0] (711/1113) %s\n', '20250623T082106_T36RUV_20250621_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (711/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat', 'file')
    fprintf('\n[0] (712/1113) %s\n', '20250623T082106_T36RUV_20250621_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (712/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat', 'file')
    fprintf('\n[0] (713/1113) %s\n', '20250623T082106_T36RUV_20250621_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (713/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat', 'file')
    fprintf('\n[0] (714/1113) %s\n', '20250623T082106_T36RUV_20250621_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (714/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat', 'file')
    fprintf('\n[0] (715/1113) %s\n', '20250623T082106_T36RUV_20250621_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (715/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat', 'file')
    fprintf('\n[0] (716/1113) %s\n', '20250623T082106_T36RUV_20250621_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (716/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat', 'file')
    fprintf('\n[0] (717/1113) %s\n', '20250623T082106_T36RUV_20250621_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (717/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat', 'file')
    fprintf('\n[0] (718/1113) %s\n', '20250623T082106_T36RUV_20250621_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile153.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (718/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile153');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat', 'file')
    fprintf('\n[0] (719/1113) %s\n', '20250623T082106_T36RUV_20250621_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (719/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat', 'file')
    fprintf('\n[0] (720/1113) %s\n', '20250623T082106_T36RUV_20250621_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (720/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat', 'file')
    fprintf('\n[0] (721/1113) %s\n', '20250623T082106_T36RUV_20250621_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (721/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat', 'file')
    fprintf('\n[0] (722/1113) %s\n', '20250623T082106_T36RUV_20250621_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (722/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat', 'file')
    fprintf('\n[0] (723/1113) %s\n', '20250623T082106_T36RUV_20250621_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (723/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat', 'file')
    fprintf('\n[0] (724/1113) %s\n', '20250623T082106_T36RUV_20250621_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (724/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat', 'file')
    fprintf('\n[0] (725/1113) %s\n', '20250623T082106_T36RUV_20250621_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (725/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat', 'file')
    fprintf('\n[0] (726/1113) %s\n', '20250623T082106_T36RUV_20250621_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile162.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (726/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile162');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat', 'file')
    fprintf('\n[0] (727/1113) %s\n', '20250623T082106_T36RUV_20250621_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (727/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat', 'file')
    fprintf('\n[0] (728/1113) %s\n', '20250623T082106_T36RUV_20250621_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (728/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat', 'file')
    fprintf('\n[0] (729/1113) %s\n', '20250623T082106_T36RUV_20250621_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (729/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat', 'file')
    fprintf('\n[0] (730/1113) %s\n', '20250623T082106_T36RUV_20250621_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (730/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat', 'file')
    fprintf('\n[0] (731/1113) %s\n', '20250623T082106_T36RUV_20250621_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (731/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat', 'file')
    fprintf('\n[0] (732/1113) %s\n', '20250623T082106_T36RUV_20250621_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (732/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat', 'file')
    fprintf('\n[0] (733/1113) %s\n', '20250623T082106_T36RUV_20250621_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (733/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat', 'file')
    fprintf('\n[0] (734/1113) %s\n', '20250623T082106_T36RUV_20250621_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (734/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat', 'file')
    fprintf('\n[0] (735/1113) %s\n', '20250623T082106_T36RUV_20250621_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (735/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat', 'file')
    fprintf('\n[0] (736/1113) %s\n', '20250623T082106_T36RUV_20250621_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (736/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat', 'file')
    fprintf('\n[0] (737/1113) %s\n', '20250623T082106_T36RUV_20250621_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (737/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat', 'file')
    fprintf('\n[0] (738/1113) %s\n', '20250623T082106_T36RUV_20250621_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (738/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat', 'file')
    fprintf('\n[0] (739/1113) %s\n', '20250623T082106_T36RUV_20250621_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (739/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat', 'file')
    fprintf('\n[0] (740/1113) %s\n', '20250623T082106_T36RUV_20250621_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile178.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (740/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile178');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat', 'file')
    fprintf('\n[0] (741/1113) %s\n', '20250623T082106_T36RUV_20250621_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile179.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (741/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile179');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat', 'file')
    fprintf('\n[0] (742/1113) %s\n', '20250623T082106_T36RUV_20250621_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile180.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (742/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile180');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat', 'file')
    fprintf('\n[0] (743/1113) %s\n', '20250623T082106_T36RUV_20250621_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile181.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (743/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile181');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat', 'file')
    fprintf('\n[0] (744/1113) %s\n', '20250623T082106_T36RUV_20250621_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (744/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat', 'file')
    fprintf('\n[0] (745/1113) %s\n', '20250623T082106_T36RUV_20250621_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (745/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat', 'file')
    fprintf('\n[0] (746/1113) %s\n', '20250623T082106_T36RUV_20250621_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (746/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat', 'file')
    fprintf('\n[0] (747/1113) %s\n', '20250623T082106_T36RUV_20250621_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (747/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat', 'file')
    fprintf('\n[0] (748/1113) %s\n', '20250623T082106_T36RUV_20250621_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (748/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat', 'file')
    fprintf('\n[0] (749/1113) %s\n', '20250623T082106_T36RUV_20250621_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (749/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat', 'file')
    fprintf('\n[0] (750/1113) %s\n', '20250623T082106_T36RUV_20250621_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (750/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat', 'file')
    fprintf('\n[0] (751/1113) %s\n', '20250623T082106_T36RUV_20250621_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (751/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat', 'file')
    fprintf('\n[0] (752/1113) %s\n', '20250623T082106_T36RUV_20250621_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (752/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat', 'file')
    fprintf('\n[0] (753/1113) %s\n', '20250623T082106_T36RUV_20250621_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile191.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (753/1113) %s — skip\n', '20250623T082106_T36RUV_20250621_tile191');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat', 'file')
    fprintf('\n[0] (754/1113) %s\n', '20250805T093050_T35TLN_20250805_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile021.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (754/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile021');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat', 'file')
    fprintf('\n[0] (755/1113) %s\n', '20250805T093050_T35TLN_20250805_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile032.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (755/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile032');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat', 'file')
    fprintf('\n[0] (756/1113) %s\n', '20250805T093050_T35TLN_20250805_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile033.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (756/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile033');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat', 'file')
    fprintf('\n[0] (757/1113) %s\n', '20250805T093050_T35TLN_20250805_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile034.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (757/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile034');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat', 'file')
    fprintf('\n[0] (758/1113) %s\n', '20250805T093050_T35TLN_20250805_tile035');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile035.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile035,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (758/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile035');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat', 'file')
    fprintf('\n[0] (759/1113) %s\n', '20250805T093050_T35TLN_20250805_tile036');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile036.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile036,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (759/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile036');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat', 'file')
    fprintf('\n[0] (760/1113) %s\n', '20250805T093050_T35TLN_20250805_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (760/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat', 'file')
    fprintf('\n[0] (761/1113) %s\n', '20250805T093050_T35TLN_20250805_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (761/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat', 'file')
    fprintf('\n[0] (762/1113) %s\n', '20250805T093050_T35TLN_20250805_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile046.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (762/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile046');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat', 'file')
    fprintf('\n[0] (763/1113) %s\n', '20250805T093050_T35TLN_20250805_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile047.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (763/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile047');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat', 'file')
    fprintf('\n[0] (764/1113) %s\n', '20250805T093050_T35TLN_20250805_tile048');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile048.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile048,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (764/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile048');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat', 'file')
    fprintf('\n[0] (765/1113) %s\n', '20250805T093050_T35TLN_20250805_tile049');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile049.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile049,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (765/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile049');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat', 'file')
    fprintf('\n[0] (766/1113) %s\n', '20250805T093050_T35TLN_20250805_tile050');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile050.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile050,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (766/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile050');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat', 'file')
    fprintf('\n[0] (767/1113) %s\n', '20250805T093050_T35TLN_20250805_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (767/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat', 'file')
    fprintf('\n[0] (768/1113) %s\n', '20250805T093050_T35TLN_20250805_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (768/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat', 'file')
    fprintf('\n[0] (769/1113) %s\n', '20250805T093050_T35TLN_20250805_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (769/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat', 'file')
    fprintf('\n[0] (770/1113) %s\n', '20250805T093050_T35TLN_20250805_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (770/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat', 'file')
    fprintf('\n[0] (771/1113) %s\n', '20250805T093050_T35TLN_20250805_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (771/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat', 'file')
    fprintf('\n[0] (772/1113) %s\n', '20250805T093050_T35TLN_20250805_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (772/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat', 'file')
    fprintf('\n[0] (773/1113) %s\n', '20250805T093050_T35TLN_20250805_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile063.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (773/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile063');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat', 'file')
    fprintf('\n[0] (774/1113) %s\n', '20250805T093050_T35TLN_20250805_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile064.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (774/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile064');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat', 'file')
    fprintf('\n[0] (775/1113) %s\n', '20250805T093050_T35TLN_20250805_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile065.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (775/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile065');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat', 'file')
    fprintf('\n[0] (776/1113) %s\n', '20250805T093050_T35TLN_20250805_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (776/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat', 'file')
    fprintf('\n[0] (777/1113) %s\n', '20250805T093050_T35TLN_20250805_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (777/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat', 'file')
    fprintf('\n[0] (778/1113) %s\n', '20250805T093050_T35TLN_20250805_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (778/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat', 'file')
    fprintf('\n[0] (779/1113) %s\n', '20250805T093050_T35TLN_20250805_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (779/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat', 'file')
    fprintf('\n[0] (780/1113) %s\n', '20250805T093050_T35TLN_20250805_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (780/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat', 'file')
    fprintf('\n[0] (781/1113) %s\n', '20250805T093050_T35TLN_20250805_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (781/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat', 'file')
    fprintf('\n[0] (782/1113) %s\n', '20250805T093050_T35TLN_20250805_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (782/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat', 'file')
    fprintf('\n[0] (783/1113) %s\n', '20250805T093050_T35TLN_20250805_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (783/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat', 'file')
    fprintf('\n[0] (784/1113) %s\n', '20250805T093050_T35TLN_20250805_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (784/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat', 'file')
    fprintf('\n[0] (785/1113) %s\n', '20250805T093050_T35TLN_20250805_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (785/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat', 'file')
    fprintf('\n[0] (786/1113) %s\n', '20250805T093050_T35TLN_20250805_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile086.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (786/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile086');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat', 'file')
    fprintf('\n[0] (787/1113) %s\n', '20250805T093050_T35TLN_20250805_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (787/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat', 'file')
    fprintf('\n[0] (788/1113) %s\n', '20250805T093050_T35TLN_20250805_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (788/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat', 'file')
    fprintf('\n[0] (789/1113) %s\n', '20250805T093050_T35TLN_20250805_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (789/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat', 'file')
    fprintf('\n[0] (790/1113) %s\n', '20250805T093050_T35TLN_20250805_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (790/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat', 'file')
    fprintf('\n[0] (791/1113) %s\n', '20250805T093050_T35TLN_20250805_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (791/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat', 'file')
    fprintf('\n[0] (792/1113) %s\n', '20250805T093050_T35TLN_20250805_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (792/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat', 'file')
    fprintf('\n[0] (793/1113) %s\n', '20250805T093050_T35TLN_20250805_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (793/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat', 'file')
    fprintf('\n[0] (794/1113) %s\n', '20250805T093050_T35TLN_20250805_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (794/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat', 'file')
    fprintf('\n[0] (795/1113) %s\n', '20250805T093050_T35TLN_20250805_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile099.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (795/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile099');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat', 'file')
    fprintf('\n[0] (796/1113) %s\n', '20250805T093050_T35TLN_20250805_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (796/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat', 'file')
    fprintf('\n[0] (797/1113) %s\n', '20250805T093050_T35TLN_20250805_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (797/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat', 'file')
    fprintf('\n[0] (798/1113) %s\n', '20250805T093050_T35TLN_20250805_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (798/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat', 'file')
    fprintf('\n[0] (799/1113) %s\n', '20250805T093050_T35TLN_20250805_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (799/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat', 'file')
    fprintf('\n[0] (800/1113) %s\n', '20250805T093050_T35TLN_20250805_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (800/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat', 'file')
    fprintf('\n[0] (801/1113) %s\n', '20250805T093050_T35TLN_20250805_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (801/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat', 'file')
    fprintf('\n[0] (802/1113) %s\n', '20250805T093050_T35TLN_20250805_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (802/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat', 'file')
    fprintf('\n[0] (803/1113) %s\n', '20250805T093050_T35TLN_20250805_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (803/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat', 'file')
    fprintf('\n[0] (804/1113) %s\n', '20250805T093050_T35TLN_20250805_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (804/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat', 'file')
    fprintf('\n[0] (805/1113) %s\n', '20250805T093050_T35TLN_20250805_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (805/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat', 'file')
    fprintf('\n[0] (806/1113) %s\n', '20250805T093050_T35TLN_20250805_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (806/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat', 'file')
    fprintf('\n[0] (807/1113) %s\n', '20250805T093050_T35TLN_20250805_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (807/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat', 'file')
    fprintf('\n[0] (808/1113) %s\n', '20250805T093050_T35TLN_20250805_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (808/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat', 'file')
    fprintf('\n[0] (809/1113) %s\n', '20250805T093050_T35TLN_20250805_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (809/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat', 'file')
    fprintf('\n[0] (810/1113) %s\n', '20250805T093050_T35TLN_20250805_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (810/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat', 'file')
    fprintf('\n[0] (811/1113) %s\n', '20250805T093050_T35TLN_20250805_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (811/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat', 'file')
    fprintf('\n[0] (812/1113) %s\n', '20250805T093050_T35TLN_20250805_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (812/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat', 'file')
    fprintf('\n[0] (813/1113) %s\n', '20250805T093050_T35TLN_20250805_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (813/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat', 'file')
    fprintf('\n[0] (814/1113) %s\n', '20250805T093050_T35TLN_20250805_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (814/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat', 'file')
    fprintf('\n[0] (815/1113) %s\n', '20250805T093050_T35TLN_20250805_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (815/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat', 'file')
    fprintf('\n[0] (816/1113) %s\n', '20250805T093050_T35TLN_20250805_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (816/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat', 'file')
    fprintf('\n[0] (817/1113) %s\n', '20250805T093050_T35TLN_20250805_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile128.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (817/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile128');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat', 'file')
    fprintf('\n[0] (818/1113) %s\n', '20250805T093050_T35TLN_20250805_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (818/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat', 'file')
    fprintf('\n[0] (819/1113) %s\n', '20250805T093050_T35TLN_20250805_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (819/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat', 'file')
    fprintf('\n[0] (820/1113) %s\n', '20250805T093050_T35TLN_20250805_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (820/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat', 'file')
    fprintf('\n[0] (821/1113) %s\n', '20250805T093050_T35TLN_20250805_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (821/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat', 'file')
    fprintf('\n[0] (822/1113) %s\n', '20250805T093050_T35TLN_20250805_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (822/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat', 'file')
    fprintf('\n[0] (823/1113) %s\n', '20250805T093050_T35TLN_20250805_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (823/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat', 'file')
    fprintf('\n[0] (824/1113) %s\n', '20250805T093050_T35TLN_20250805_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (824/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat', 'file')
    fprintf('\n[0] (825/1113) %s\n', '20250805T093050_T35TLN_20250805_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (825/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat', 'file')
    fprintf('\n[0] (826/1113) %s\n', '20250805T093050_T35TLN_20250805_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (826/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat', 'file')
    fprintf('\n[0] (827/1113) %s\n', '20250805T093050_T35TLN_20250805_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (827/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat', 'file')
    fprintf('\n[0] (828/1113) %s\n', '20250805T093050_T35TLN_20250805_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (828/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat', 'file')
    fprintf('\n[0] (829/1113) %s\n', '20250805T093050_T35TLN_20250805_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (829/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat', 'file')
    fprintf('\n[0] (830/1113) %s\n', '20250805T093050_T35TLN_20250805_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (830/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat', 'file')
    fprintf('\n[0] (831/1113) %s\n', '20250805T093050_T35TLN_20250805_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile144.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (831/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile144');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat', 'file')
    fprintf('\n[0] (832/1113) %s\n', '20250805T093050_T35TLN_20250805_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile145.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (832/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile145');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat', 'file')
    fprintf('\n[0] (833/1113) %s\n', '20250805T093050_T35TLN_20250805_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile146.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (833/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile146');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat', 'file')
    fprintf('\n[0] (834/1113) %s\n', '20250805T093050_T35TLN_20250805_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (834/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat', 'file')
    fprintf('\n[0] (835/1113) %s\n', '20250805T093050_T35TLN_20250805_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (835/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat', 'file')
    fprintf('\n[0] (836/1113) %s\n', '20250805T093050_T35TLN_20250805_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (836/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat', 'file')
    fprintf('\n[0] (837/1113) %s\n', '20250805T093050_T35TLN_20250805_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (837/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat', 'file')
    fprintf('\n[0] (838/1113) %s\n', '20250805T093050_T35TLN_20250805_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (838/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat', 'file')
    fprintf('\n[0] (839/1113) %s\n', '20250805T093050_T35TLN_20250805_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (839/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat', 'file')
    fprintf('\n[0] (840/1113) %s\n', '20250805T093050_T35TLN_20250805_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (840/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat', 'file')
    fprintf('\n[0] (841/1113) %s\n', '20250805T093050_T35TLN_20250805_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (841/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat', 'file')
    fprintf('\n[0] (842/1113) %s\n', '20250805T093050_T35TLN_20250805_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (842/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat', 'file')
    fprintf('\n[0] (843/1113) %s\n', '20250805T093050_T35TLN_20250805_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (843/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat', 'file')
    fprintf('\n[0] (844/1113) %s\n', '20250805T093050_T35TLN_20250805_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (844/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat', 'file')
    fprintf('\n[0] (845/1113) %s\n', '20250805T093050_T35TLN_20250805_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile160.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (845/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile160');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat', 'file')
    fprintf('\n[0] (846/1113) %s\n', '20250805T093050_T35TLN_20250805_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (846/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat', 'file')
    fprintf('\n[0] (847/1113) %s\n', '20250805T093050_T35TLN_20250805_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile162.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (847/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile162');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat', 'file')
    fprintf('\n[0] (848/1113) %s\n', '20250805T093050_T35TLN_20250805_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (848/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat', 'file')
    fprintf('\n[0] (849/1113) %s\n', '20250805T093050_T35TLN_20250805_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (849/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat', 'file')
    fprintf('\n[0] (850/1113) %s\n', '20250805T093050_T35TLN_20250805_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (850/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat', 'file')
    fprintf('\n[0] (851/1113) %s\n', '20250805T093050_T35TLN_20250805_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (851/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat', 'file')
    fprintf('\n[0] (852/1113) %s\n', '20250805T093050_T35TLN_20250805_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (852/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat', 'file')
    fprintf('\n[0] (853/1113) %s\n', '20250805T093050_T35TLN_20250805_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (853/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat', 'file')
    fprintf('\n[0] (854/1113) %s\n', '20250805T093050_T35TLN_20250805_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (854/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat', 'file')
    fprintf('\n[0] (855/1113) %s\n', '20250805T093050_T35TLN_20250805_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (855/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat', 'file')
    fprintf('\n[0] (856/1113) %s\n', '20250805T093050_T35TLN_20250805_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (856/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat', 'file')
    fprintf('\n[0] (857/1113) %s\n', '20250805T093050_T35TLN_20250805_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (857/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat', 'file')
    fprintf('\n[0] (858/1113) %s\n', '20250805T093050_T35TLN_20250805_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (858/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat', 'file')
    fprintf('\n[0] (859/1113) %s\n', '20250805T093050_T35TLN_20250805_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile176.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (859/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile176');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat', 'file')
    fprintf('\n[0] (860/1113) %s\n', '20250805T093050_T35TLN_20250805_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile177.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (860/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile177');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat', 'file')
    fprintf('\n[0] (861/1113) %s\n', '20250805T093050_T35TLN_20250805_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile178.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (861/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile178');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat', 'file')
    fprintf('\n[0] (862/1113) %s\n', '20250805T093050_T35TLN_20250805_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile179.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (862/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile179');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat', 'file')
    fprintf('\n[0] (863/1113) %s\n', '20250805T093050_T35TLN_20250805_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (863/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat', 'file')
    fprintf('\n[0] (864/1113) %s\n', '20250805T093050_T35TLN_20250805_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (864/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat', 'file')
    fprintf('\n[0] (865/1113) %s\n', '20250805T093050_T35TLN_20250805_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (865/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat', 'file')
    fprintf('\n[0] (866/1113) %s\n', '20250805T093050_T35TLN_20250805_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (866/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat', 'file')
    fprintf('\n[0] (867/1113) %s\n', '20250805T093050_T35TLN_20250805_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (867/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat', 'file')
    fprintf('\n[0] (868/1113) %s\n', '20250805T093050_T35TLN_20250805_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (868/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat', 'file')
    fprintf('\n[0] (869/1113) %s\n', '20250805T093050_T35TLN_20250805_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (869/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat', 'file')
    fprintf('\n[0] (870/1113) %s\n', '20250805T093050_T35TLN_20250805_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile190.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (870/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile190');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat', 'file')
    fprintf('\n[0] (871/1113) %s\n', '20250805T093050_T35TLN_20250805_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile191.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (871/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile191');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat', 'file')
    fprintf('\n[0] (872/1113) %s\n', '20250805T093050_T35TLN_20250805_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile197.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (872/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile197');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat', 'file')
    fprintf('\n[0] (873/1113) %s\n', '20250805T093050_T35TLN_20250805_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile198.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (873/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile198');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat', 'file')
    fprintf('\n[0] (874/1113) %s\n', '20250805T093050_T35TLN_20250805_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile199.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (874/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile199');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat', 'file')
    fprintf('\n[0] (875/1113) %s\n', '20250805T093050_T35TLN_20250805_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile200.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (875/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile200');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat', 'file')
    fprintf('\n[0] (876/1113) %s\n', '20250805T093050_T35TLN_20250805_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile201.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (876/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile201');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat', 'file')
    fprintf('\n[0] (877/1113) %s\n', '20250805T093050_T35TLN_20250805_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile202.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (877/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile202');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat', 'file')
    fprintf('\n[0] (878/1113) %s\n', '20250805T093050_T35TLN_20250805_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile203.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (878/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile203');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat', 'file')
    fprintf('\n[0] (879/1113) %s\n', '20250805T093050_T35TLN_20250805_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile212.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (879/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile212');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat', 'file')
    fprintf('\n[0] (880/1113) %s\n', '20250805T093050_T35TLN_20250805_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile213.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (880/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile213');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat', 'file')
    fprintf('\n[0] (881/1113) %s\n', '20250805T093050_T35TLN_20250805_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile214.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (881/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile214');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat', 'file')
    fprintf('\n[0] (882/1113) %s\n', '20250805T093050_T35TLN_20250805_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile215.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (882/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile215');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat', 'file')
    fprintf('\n[0] (883/1113) %s\n', '20250805T093050_T35TLN_20250805_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile226.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (883/1113) %s — skip\n', '20250805T093050_T35TLN_20250805_tile226');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat', 'file')
    fprintf('\n[0] (884/1113) %s\n', '20250830T085101_T35KKT_20250829_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile021.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (884/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile021');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat', 'file')
    fprintf('\n[0] (885/1113) %s\n', '20250830T085101_T35KKT_20250829_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile032.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (885/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile032');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat', 'file')
    fprintf('\n[0] (886/1113) %s\n', '20250830T085101_T35KKT_20250829_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile033.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (886/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile033');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat', 'file')
    fprintf('\n[0] (887/1113) %s\n', '20250830T085101_T35KKT_20250829_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile034.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (887/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile034');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat', 'file')
    fprintf('\n[0] (888/1113) %s\n', '20250830T085101_T35KKT_20250829_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (888/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat', 'file')
    fprintf('\n[0] (889/1113) %s\n', '20250830T085101_T35KKT_20250829_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (889/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat', 'file')
    fprintf('\n[0] (890/1113) %s\n', '20250830T085101_T35KKT_20250829_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (890/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat', 'file')
    fprintf('\n[0] (891/1113) %s\n', '20250830T085101_T35KKT_20250829_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile046.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (891/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile046');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat', 'file')
    fprintf('\n[0] (892/1113) %s\n', '20250830T085101_T35KKT_20250829_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile054.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (892/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile054');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat', 'file')
    fprintf('\n[0] (893/1113) %s\n', '20250830T085101_T35KKT_20250829_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (893/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat', 'file')
    fprintf('\n[0] (894/1113) %s\n', '20250830T085101_T35KKT_20250829_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (894/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat', 'file')
    fprintf('\n[0] (895/1113) %s\n', '20250830T085101_T35KKT_20250829_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (895/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat', 'file')
    fprintf('\n[0] (896/1113) %s\n', '20250830T085101_T35KKT_20250829_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (896/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat', 'file')
    fprintf('\n[0] (897/1113) %s\n', '20250830T085101_T35KKT_20250829_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (897/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat', 'file')
    fprintf('\n[0] (898/1113) %s\n', '20250830T085101_T35KKT_20250829_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile065.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (898/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile065');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat', 'file')
    fprintf('\n[0] (899/1113) %s\n', '20250830T085101_T35KKT_20250829_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile066.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (899/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile066');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat', 'file')
    fprintf('\n[0] (900/1113) %s\n', '20250830T085101_T35KKT_20250829_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile067.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (900/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile067');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat', 'file')
    fprintf('\n[0] (901/1113) %s\n', '20250830T085101_T35KKT_20250829_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile068.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (901/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile068');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat', 'file')
    fprintf('\n[0] (902/1113) %s\n', '20250830T085101_T35KKT_20250829_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile069.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (902/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile069');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat', 'file')
    fprintf('\n[0] (903/1113) %s\n', '20250830T085101_T35KKT_20250829_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile070.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (903/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile070');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat', 'file')
    fprintf('\n[0] (904/1113) %s\n', '20250830T085101_T35KKT_20250829_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (904/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat', 'file')
    fprintf('\n[0] (905/1113) %s\n', '20250830T085101_T35KKT_20250829_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (905/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat', 'file')
    fprintf('\n[0] (906/1113) %s\n', '20250830T085101_T35KKT_20250829_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (906/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat', 'file')
    fprintf('\n[0] (907/1113) %s\n', '20250830T085101_T35KKT_20250829_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (907/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat', 'file')
    fprintf('\n[0] (908/1113) %s\n', '20250830T085101_T35KKT_20250829_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (908/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat', 'file')
    fprintf('\n[0] (909/1113) %s\n', '20250830T085101_T35KKT_20250829_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile080.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (909/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile080');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat', 'file')
    fprintf('\n[0] (910/1113) %s\n', '20250830T085101_T35KKT_20250829_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile081.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (910/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile081');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat', 'file')
    fprintf('\n[0] (911/1113) %s\n', '20250830T085101_T35KKT_20250829_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile082.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (911/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile082');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat', 'file')
    fprintf('\n[0] (912/1113) %s\n', '20250830T085101_T35KKT_20250829_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile083.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (912/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile083');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat', 'file')
    fprintf('\n[0] (913/1113) %s\n', '20250830T085101_T35KKT_20250829_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (913/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat', 'file')
    fprintf('\n[0] (914/1113) %s\n', '20250830T085101_T35KKT_20250829_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (914/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat', 'file')
    fprintf('\n[0] (915/1113) %s\n', '20250830T085101_T35KKT_20250829_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (915/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat', 'file')
    fprintf('\n[0] (916/1113) %s\n', '20250830T085101_T35KKT_20250829_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (916/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat', 'file')
    fprintf('\n[0] (917/1113) %s\n', '20250830T085101_T35KKT_20250829_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (917/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat', 'file')
    fprintf('\n[0] (918/1113) %s\n', '20250830T085101_T35KKT_20250829_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (918/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat', 'file')
    fprintf('\n[0] (919/1113) %s\n', '20250830T085101_T35KKT_20250829_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (919/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat', 'file')
    fprintf('\n[0] (920/1113) %s\n', '20250830T085101_T35KKT_20250829_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (920/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat', 'file')
    fprintf('\n[0] (921/1113) %s\n', '20250830T085101_T35KKT_20250829_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (921/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat', 'file')
    fprintf('\n[0] (922/1113) %s\n', '20250830T085101_T35KKT_20250829_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (922/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat', 'file')
    fprintf('\n[0] (923/1113) %s\n', '20250830T085101_T35KKT_20250829_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile099.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (923/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile099');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat', 'file')
    fprintf('\n[0] (924/1113) %s\n', '20250830T085101_T35KKT_20250829_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (924/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat', 'file')
    fprintf('\n[0] (925/1113) %s\n', '20250830T085101_T35KKT_20250829_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (925/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat', 'file')
    fprintf('\n[0] (926/1113) %s\n', '20250830T085101_T35KKT_20250829_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (926/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat', 'file')
    fprintf('\n[0] (927/1113) %s\n', '20250830T085101_T35KKT_20250829_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (927/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat', 'file')
    fprintf('\n[0] (928/1113) %s\n', '20250830T085101_T35KKT_20250829_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (928/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat', 'file')
    fprintf('\n[0] (929/1113) %s\n', '20250830T085101_T35KKT_20250829_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (929/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat', 'file')
    fprintf('\n[0] (930/1113) %s\n', '20250830T085101_T35KKT_20250829_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (930/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat', 'file')
    fprintf('\n[0] (931/1113) %s\n', '20250830T085101_T35KKT_20250829_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (931/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat', 'file')
    fprintf('\n[0] (932/1113) %s\n', '20250830T085101_T35KKT_20250829_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (932/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat', 'file')
    fprintf('\n[0] (933/1113) %s\n', '20250830T085101_T35KKT_20250829_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile110.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (933/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile110');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat', 'file')
    fprintf('\n[0] (934/1113) %s\n', '20250830T085101_T35KKT_20250829_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (934/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat', 'file')
    fprintf('\n[0] (935/1113) %s\n', '20250830T085101_T35KKT_20250829_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile112.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (935/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile112');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat', 'file')
    fprintf('\n[0] (936/1113) %s\n', '20250830T085101_T35KKT_20250829_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (936/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat', 'file')
    fprintf('\n[0] (937/1113) %s\n', '20250830T085101_T35KKT_20250829_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (937/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat', 'file')
    fprintf('\n[0] (938/1113) %s\n', '20250830T085101_T35KKT_20250829_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (938/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat', 'file')
    fprintf('\n[0] (939/1113) %s\n', '20250830T085101_T35KKT_20250829_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (939/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat', 'file')
    fprintf('\n[0] (940/1113) %s\n', '20250830T085101_T35KKT_20250829_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (940/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat', 'file')
    fprintf('\n[0] (941/1113) %s\n', '20250830T085101_T35KKT_20250829_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (941/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat', 'file')
    fprintf('\n[0] (942/1113) %s\n', '20250830T085101_T35KKT_20250829_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (942/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat', 'file')
    fprintf('\n[0] (943/1113) %s\n', '20250830T085101_T35KKT_20250829_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (943/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat', 'file')
    fprintf('\n[0] (944/1113) %s\n', '20250830T085101_T35KKT_20250829_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (944/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat', 'file')
    fprintf('\n[0] (945/1113) %s\n', '20250830T085101_T35KKT_20250829_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (945/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat', 'file')
    fprintf('\n[0] (946/1113) %s\n', '20250830T085101_T35KKT_20250829_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (946/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat', 'file')
    fprintf('\n[0] (947/1113) %s\n', '20250830T085101_T35KKT_20250829_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (947/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat', 'file')
    fprintf('\n[0] (948/1113) %s\n', '20250830T085101_T35KKT_20250829_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile126.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (948/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile126');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat', 'file')
    fprintf('\n[0] (949/1113) %s\n', '20250830T085101_T35KKT_20250829_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (949/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat', 'file')
    fprintf('\n[0] (950/1113) %s\n', '20250830T085101_T35KKT_20250829_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile128.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (950/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile128');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat', 'file')
    fprintf('\n[0] (951/1113) %s\n', '20250830T085101_T35KKT_20250829_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile129.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (951/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile129');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat', 'file')
    fprintf('\n[0] (952/1113) %s\n', '20250830T085101_T35KKT_20250829_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (952/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat', 'file')
    fprintf('\n[0] (953/1113) %s\n', '20250830T085101_T35KKT_20250829_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (953/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat', 'file')
    fprintf('\n[0] (954/1113) %s\n', '20250830T085101_T35KKT_20250829_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (954/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat', 'file')
    fprintf('\n[0] (955/1113) %s\n', '20250830T085101_T35KKT_20250829_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (955/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat', 'file')
    fprintf('\n[0] (956/1113) %s\n', '20250830T085101_T35KKT_20250829_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (956/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat', 'file')
    fprintf('\n[0] (957/1113) %s\n', '20250830T085101_T35KKT_20250829_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (957/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat', 'file')
    fprintf('\n[0] (958/1113) %s\n', '20250830T085101_T35KKT_20250829_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (958/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat', 'file')
    fprintf('\n[0] (959/1113) %s\n', '20250830T085101_T35KKT_20250829_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (959/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat', 'file')
    fprintf('\n[0] (960/1113) %s\n', '20250830T085101_T35KKT_20250829_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (960/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat', 'file')
    fprintf('\n[0] (961/1113) %s\n', '20250830T085101_T35KKT_20250829_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (961/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat', 'file')
    fprintf('\n[0] (962/1113) %s\n', '20250830T085101_T35KKT_20250829_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (962/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat', 'file')
    fprintf('\n[0] (963/1113) %s\n', '20250830T085101_T35KKT_20250829_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (963/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat', 'file')
    fprintf('\n[0] (964/1113) %s\n', '20250830T085101_T35KKT_20250829_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (964/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat', 'file')
    fprintf('\n[0] (965/1113) %s\n', '20250830T085101_T35KKT_20250829_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (965/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat', 'file')
    fprintf('\n[0] (966/1113) %s\n', '20250830T085101_T35KKT_20250829_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (966/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat', 'file')
    fprintf('\n[0] (967/1113) %s\n', '20250830T085101_T35KKT_20250829_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile160.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (967/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile160');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat', 'file')
    fprintf('\n[0] (968/1113) %s\n', '20250830T085101_T35KKT_20250829_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile161.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (968/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile161');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat', 'file')
    fprintf('\n[0] (969/1113) %s\n', '20250830T085101_T35KKT_20250829_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile162.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (969/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile162');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat', 'file')
    fprintf('\n[0] (970/1113) %s\n', '20250830T085101_T35KKT_20250829_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile163.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (970/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile163');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat', 'file')
    fprintf('\n[0] (971/1113) %s\n', '20250830T085101_T35KKT_20250829_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (971/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat', 'file')
    fprintf('\n[0] (972/1113) %s\n', '20250830T085101_T35KKT_20250829_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (972/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat', 'file')
    fprintf('\n[0] (973/1113) %s\n', '20250830T085101_T35KKT_20250829_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile175.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (973/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile175');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat', 'file')
    fprintf('\n[0] (974/1113) %s\n', '20250830T085101_T35KKT_20250829_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (974/1113) %s — skip\n', '20250830T085101_T35KKT_20250829_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat', 'file')
    fprintf('\n[0] (975/1113) %s\n', '20251124T142919_T19KDP_20251123_tile008');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile008.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile008,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (975/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile008');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat', 'file')
    fprintf('\n[0] (976/1113) %s\n', '20251124T142919_T19KDP_20251123_tile022');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile022.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile022,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (976/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile022');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat', 'file')
    fprintf('\n[0] (977/1113) %s\n', '20251124T142919_T19KDP_20251123_tile023');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile023.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile023,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (977/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile023');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat', 'file')
    fprintf('\n[0] (978/1113) %s\n', '20251124T142919_T19KDP_20251123_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile024.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (978/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile024');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat', 'file')
    fprintf('\n[0] (979/1113) %s\n', '20251124T142919_T19KDP_20251123_tile025');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile025.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile025,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (979/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile025');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat', 'file')
    fprintf('\n[0] (980/1113) %s\n', '20251124T142919_T19KDP_20251123_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile026.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (980/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile026');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat', 'file')
    fprintf('\n[0] (981/1113) %s\n', '20251124T142919_T19KDP_20251123_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile027.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (981/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile027');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat', 'file')
    fprintf('\n[0] (982/1113) %s\n', '20251124T142919_T19KDP_20251123_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile028.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (982/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile028');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat', 'file')
    fprintf('\n[0] (983/1113) %s\n', '20251124T142919_T19KDP_20251123_tile037');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile037.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile037,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (983/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile037');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat', 'file')
    fprintf('\n[0] (984/1113) %s\n', '20251124T142919_T19KDP_20251123_tile038');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile038.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile038,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (984/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile038');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat', 'file')
    fprintf('\n[0] (985/1113) %s\n', '20251124T142919_T19KDP_20251123_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile039.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (985/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile039');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat', 'file')
    fprintf('\n[0] (986/1113) %s\n', '20251124T142919_T19KDP_20251123_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile040.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (986/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile040');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat', 'file')
    fprintf('\n[0] (987/1113) %s\n', '20251124T142919_T19KDP_20251123_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile041.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (987/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile041');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat', 'file')
    fprintf('\n[0] (988/1113) %s\n', '20251124T142919_T19KDP_20251123_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile042.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (988/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile042');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat', 'file')
    fprintf('\n[0] (989/1113) %s\n', '20251124T142919_T19KDP_20251123_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile043.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (989/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile043');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat', 'file')
    fprintf('\n[0] (990/1113) %s\n', '20251124T142919_T19KDP_20251123_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile044.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (990/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile044');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat', 'file')
    fprintf('\n[0] (991/1113) %s\n', '20251124T142919_T19KDP_20251123_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile045.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (991/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile045');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat', 'file')
    fprintf('\n[0] (992/1113) %s\n', '20251124T142919_T19KDP_20251123_tile052');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile052.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile052,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (992/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile052');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat', 'file')
    fprintf('\n[0] (993/1113) %s\n', '20251124T142919_T19KDP_20251123_tile053');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile053.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile053,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (993/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile053');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat', 'file')
    fprintf('\n[0] (994/1113) %s\n', '20251124T142919_T19KDP_20251123_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile054.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (994/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile054');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat', 'file')
    fprintf('\n[0] (995/1113) %s\n', '20251124T142919_T19KDP_20251123_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile055.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (995/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile055');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat', 'file')
    fprintf('\n[0] (996/1113) %s\n', '20251124T142919_T19KDP_20251123_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile056.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (996/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile056');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat', 'file')
    fprintf('\n[0] (997/1113) %s\n', '20251124T142919_T19KDP_20251123_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile057.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (997/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile057');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat', 'file')
    fprintf('\n[0] (998/1113) %s\n', '20251124T142919_T19KDP_20251123_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile058.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (998/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile058');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat', 'file')
    fprintf('\n[0] (999/1113) %s\n', '20251124T142919_T19KDP_20251123_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile059.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (999/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile059');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat', 'file')
    fprintf('\n[0] (1000/1113) %s\n', '20251124T142919_T19KDP_20251123_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile060.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1000/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile060');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat', 'file')
    fprintf('\n[0] (1001/1113) %s\n', '20251124T142919_T19KDP_20251123_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile061.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1001/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile061');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat', 'file')
    fprintf('\n[0] (1002/1113) %s\n', '20251124T142919_T19KDP_20251123_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile062.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1002/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile062');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat', 'file')
    fprintf('\n[0] (1003/1113) %s\n', '20251124T142919_T19KDP_20251123_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile068.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1003/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile068');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat', 'file')
    fprintf('\n[0] (1004/1113) %s\n', '20251124T142919_T19KDP_20251123_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile069.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1004/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile069');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat', 'file')
    fprintf('\n[0] (1005/1113) %s\n', '20251124T142919_T19KDP_20251123_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile070.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1005/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile070');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat', 'file')
    fprintf('\n[0] (1006/1113) %s\n', '20251124T142919_T19KDP_20251123_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile071.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1006/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile071');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat', 'file')
    fprintf('\n[0] (1007/1113) %s\n', '20251124T142919_T19KDP_20251123_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile072.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1007/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile072');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat', 'file')
    fprintf('\n[0] (1008/1113) %s\n', '20251124T142919_T19KDP_20251123_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile073.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1008/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile073');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat', 'file')
    fprintf('\n[0] (1009/1113) %s\n', '20251124T142919_T19KDP_20251123_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile074.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1009/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile074');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat', 'file')
    fprintf('\n[0] (1010/1113) %s\n', '20251124T142919_T19KDP_20251123_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile075.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1010/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile075');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat', 'file')
    fprintf('\n[0] (1011/1113) %s\n', '20251124T142919_T19KDP_20251123_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile076.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1011/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile076');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat', 'file')
    fprintf('\n[0] (1012/1113) %s\n', '20251124T142919_T19KDP_20251123_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile077.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1012/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile077');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat', 'file')
    fprintf('\n[0] (1013/1113) %s\n', '20251124T142919_T19KDP_20251123_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile078.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1013/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile078');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat', 'file')
    fprintf('\n[0] (1014/1113) %s\n', '20251124T142919_T19KDP_20251123_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile079.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1014/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile079');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat', 'file')
    fprintf('\n[0] (1015/1113) %s\n', '20251124T142919_T19KDP_20251123_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile083.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1015/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile083');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat', 'file')
    fprintf('\n[0] (1016/1113) %s\n', '20251124T142919_T19KDP_20251123_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile084.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1016/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile084');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat', 'file')
    fprintf('\n[0] (1017/1113) %s\n', '20251124T142919_T19KDP_20251123_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile085.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1017/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile085');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat', 'file')
    fprintf('\n[0] (1018/1113) %s\n', '20251124T142919_T19KDP_20251123_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile086.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1018/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile086');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat', 'file')
    fprintf('\n[0] (1019/1113) %s\n', '20251124T142919_T19KDP_20251123_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile087.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1019/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile087');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat', 'file')
    fprintf('\n[0] (1020/1113) %s\n', '20251124T142919_T19KDP_20251123_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile088.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1020/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile088');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat', 'file')
    fprintf('\n[0] (1021/1113) %s\n', '20251124T142919_T19KDP_20251123_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile089.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1021/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile089');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat', 'file')
    fprintf('\n[0] (1022/1113) %s\n', '20251124T142919_T19KDP_20251123_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile090.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1022/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile090');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat', 'file')
    fprintf('\n[0] (1023/1113) %s\n', '20251124T142919_T19KDP_20251123_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile091.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1023/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile091');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat', 'file')
    fprintf('\n[0] (1024/1113) %s\n', '20251124T142919_T19KDP_20251123_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile092.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1024/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile092');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat', 'file')
    fprintf('\n[0] (1025/1113) %s\n', '20251124T142919_T19KDP_20251123_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile093.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1025/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile093');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat', 'file')
    fprintf('\n[0] (1026/1113) %s\n', '20251124T142919_T19KDP_20251123_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile094.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1026/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile094');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat', 'file')
    fprintf('\n[0] (1027/1113) %s\n', '20251124T142919_T19KDP_20251123_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile095.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1027/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile095');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat', 'file')
    fprintf('\n[0] (1028/1113) %s\n', '20251124T142919_T19KDP_20251123_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile098.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1028/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile098');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat', 'file')
    fprintf('\n[0] (1029/1113) %s\n', '20251124T142919_T19KDP_20251123_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile099.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1029/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile099');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat', 'file')
    fprintf('\n[0] (1030/1113) %s\n', '20251124T142919_T19KDP_20251123_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile100.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1030/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile100');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat', 'file')
    fprintf('\n[0] (1031/1113) %s\n', '20251124T142919_T19KDP_20251123_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile101.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1031/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile101');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat', 'file')
    fprintf('\n[0] (1032/1113) %s\n', '20251124T142919_T19KDP_20251123_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile102.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1032/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile102');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat', 'file')
    fprintf('\n[0] (1033/1113) %s\n', '20251124T142919_T19KDP_20251123_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile103.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1033/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile103');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat', 'file')
    fprintf('\n[0] (1034/1113) %s\n', '20251124T142919_T19KDP_20251123_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile104.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1034/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile104');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat', 'file')
    fprintf('\n[0] (1035/1113) %s\n', '20251124T142919_T19KDP_20251123_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile105.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1035/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile105');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat', 'file')
    fprintf('\n[0] (1036/1113) %s\n', '20251124T142919_T19KDP_20251123_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile106.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1036/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile106');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat', 'file')
    fprintf('\n[0] (1037/1113) %s\n', '20251124T142919_T19KDP_20251123_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile107.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1037/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile107');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat', 'file')
    fprintf('\n[0] (1038/1113) %s\n', '20251124T142919_T19KDP_20251123_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile108.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1038/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile108');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat', 'file')
    fprintf('\n[0] (1039/1113) %s\n', '20251124T142919_T19KDP_20251123_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile109.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1039/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile109');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat', 'file')
    fprintf('\n[0] (1040/1113) %s\n', '20251124T142919_T19KDP_20251123_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile110.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1040/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile110');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat', 'file')
    fprintf('\n[0] (1041/1113) %s\n', '20251124T142919_T19KDP_20251123_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile111.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1041/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile111');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat', 'file')
    fprintf('\n[0] (1042/1113) %s\n', '20251124T142919_T19KDP_20251123_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile113.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1042/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile113');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat', 'file')
    fprintf('\n[0] (1043/1113) %s\n', '20251124T142919_T19KDP_20251123_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile114.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1043/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile114');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat', 'file')
    fprintf('\n[0] (1044/1113) %s\n', '20251124T142919_T19KDP_20251123_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile115.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1044/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile115');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat', 'file')
    fprintf('\n[0] (1045/1113) %s\n', '20251124T142919_T19KDP_20251123_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile116.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1045/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile116');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat', 'file')
    fprintf('\n[0] (1046/1113) %s\n', '20251124T142919_T19KDP_20251123_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile117.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1046/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile117');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat', 'file')
    fprintf('\n[0] (1047/1113) %s\n', '20251124T142919_T19KDP_20251123_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile118.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1047/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile118');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat', 'file')
    fprintf('\n[0] (1048/1113) %s\n', '20251124T142919_T19KDP_20251123_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile119.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1048/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile119');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat', 'file')
    fprintf('\n[0] (1049/1113) %s\n', '20251124T142919_T19KDP_20251123_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile120.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1049/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile120');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat', 'file')
    fprintf('\n[0] (1050/1113) %s\n', '20251124T142919_T19KDP_20251123_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile121.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1050/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile121');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat', 'file')
    fprintf('\n[0] (1051/1113) %s\n', '20251124T142919_T19KDP_20251123_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile122.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1051/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile122');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat', 'file')
    fprintf('\n[0] (1052/1113) %s\n', '20251124T142919_T19KDP_20251123_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile123.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1052/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile123');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat', 'file')
    fprintf('\n[0] (1053/1113) %s\n', '20251124T142919_T19KDP_20251123_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile124.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1053/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile124');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat', 'file')
    fprintf('\n[0] (1054/1113) %s\n', '20251124T142919_T19KDP_20251123_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile125.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1054/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile125');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat', 'file')
    fprintf('\n[0] (1055/1113) %s\n', '20251124T142919_T19KDP_20251123_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile126.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1055/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile126');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat', 'file')
    fprintf('\n[0] (1056/1113) %s\n', '20251124T142919_T19KDP_20251123_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile127.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1056/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile127');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat', 'file')
    fprintf('\n[0] (1057/1113) %s\n', '20251124T142919_T19KDP_20251123_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile130.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1057/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile130');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat', 'file')
    fprintf('\n[0] (1058/1113) %s\n', '20251124T142919_T19KDP_20251123_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile131.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1058/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile131');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat', 'file')
    fprintf('\n[0] (1059/1113) %s\n', '20251124T142919_T19KDP_20251123_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile132.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1059/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile132');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat', 'file')
    fprintf('\n[0] (1060/1113) %s\n', '20251124T142919_T19KDP_20251123_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile133.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1060/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile133');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat', 'file')
    fprintf('\n[0] (1061/1113) %s\n', '20251124T142919_T19KDP_20251123_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile134.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1061/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile134');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat', 'file')
    fprintf('\n[0] (1062/1113) %s\n', '20251124T142919_T19KDP_20251123_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile135.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1062/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile135');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat', 'file')
    fprintf('\n[0] (1063/1113) %s\n', '20251124T142919_T19KDP_20251123_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile136.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1063/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile136');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat', 'file')
    fprintf('\n[0] (1064/1113) %s\n', '20251124T142919_T19KDP_20251123_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile137.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1064/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile137');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat', 'file')
    fprintf('\n[0] (1065/1113) %s\n', '20251124T142919_T19KDP_20251123_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile138.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1065/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile138');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat', 'file')
    fprintf('\n[0] (1066/1113) %s\n', '20251124T142919_T19KDP_20251123_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile139.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1066/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile139');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat', 'file')
    fprintf('\n[0] (1067/1113) %s\n', '20251124T142919_T19KDP_20251123_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile140.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1067/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile140');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat', 'file')
    fprintf('\n[0] (1068/1113) %s\n', '20251124T142919_T19KDP_20251123_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile141.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1068/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile141');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat', 'file')
    fprintf('\n[0] (1069/1113) %s\n', '20251124T142919_T19KDP_20251123_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile142.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1069/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile142');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat', 'file')
    fprintf('\n[0] (1070/1113) %s\n', '20251124T142919_T19KDP_20251123_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile143.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1070/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile143');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat', 'file')
    fprintf('\n[0] (1071/1113) %s\n', '20251124T142919_T19KDP_20251123_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile147.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1071/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile147');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat', 'file')
    fprintf('\n[0] (1072/1113) %s\n', '20251124T142919_T19KDP_20251123_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile148.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1072/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile148');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat', 'file')
    fprintf('\n[0] (1073/1113) %s\n', '20251124T142919_T19KDP_20251123_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile149.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1073/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile149');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat', 'file')
    fprintf('\n[0] (1074/1113) %s\n', '20251124T142919_T19KDP_20251123_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile150.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1074/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile150');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat', 'file')
    fprintf('\n[0] (1075/1113) %s\n', '20251124T142919_T19KDP_20251123_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile151.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1075/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile151');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat', 'file')
    fprintf('\n[0] (1076/1113) %s\n', '20251124T142919_T19KDP_20251123_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile152.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1076/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile152');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat', 'file')
    fprintf('\n[0] (1077/1113) %s\n', '20251124T142919_T19KDP_20251123_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile153.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1077/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile153');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat', 'file')
    fprintf('\n[0] (1078/1113) %s\n', '20251124T142919_T19KDP_20251123_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile154.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1078/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile154');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat', 'file')
    fprintf('\n[0] (1079/1113) %s\n', '20251124T142919_T19KDP_20251123_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile155.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1079/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile155');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat', 'file')
    fprintf('\n[0] (1080/1113) %s\n', '20251124T142919_T19KDP_20251123_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile156.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1080/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile156');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat', 'file')
    fprintf('\n[0] (1081/1113) %s\n', '20251124T142919_T19KDP_20251123_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile157.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1081/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile157');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat', 'file')
    fprintf('\n[0] (1082/1113) %s\n', '20251124T142919_T19KDP_20251123_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile158.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1082/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile158');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat', 'file')
    fprintf('\n[0] (1083/1113) %s\n', '20251124T142919_T19KDP_20251123_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile159.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1083/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile159');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat', 'file')
    fprintf('\n[0] (1084/1113) %s\n', '20251124T142919_T19KDP_20251123_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile164.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1084/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile164');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat', 'file')
    fprintf('\n[0] (1085/1113) %s\n', '20251124T142919_T19KDP_20251123_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile165.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1085/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile165');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat', 'file')
    fprintf('\n[0] (1086/1113) %s\n', '20251124T142919_T19KDP_20251123_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile166.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1086/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile166');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat', 'file')
    fprintf('\n[0] (1087/1113) %s\n', '20251124T142919_T19KDP_20251123_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile167.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1087/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile167');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat', 'file')
    fprintf('\n[0] (1088/1113) %s\n', '20251124T142919_T19KDP_20251123_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile168.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1088/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile168');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat', 'file')
    fprintf('\n[0] (1089/1113) %s\n', '20251124T142919_T19KDP_20251123_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile169.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1089/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile169');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat', 'file')
    fprintf('\n[0] (1090/1113) %s\n', '20251124T142919_T19KDP_20251123_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile170.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1090/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile170');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat', 'file')
    fprintf('\n[0] (1091/1113) %s\n', '20251124T142919_T19KDP_20251123_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile171.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1091/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile171');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat', 'file')
    fprintf('\n[0] (1092/1113) %s\n', '20251124T142919_T19KDP_20251123_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile172.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1092/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile172');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat', 'file')
    fprintf('\n[0] (1093/1113) %s\n', '20251124T142919_T19KDP_20251123_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile173.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1093/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile173');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat', 'file')
    fprintf('\n[0] (1094/1113) %s\n', '20251124T142919_T19KDP_20251123_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile174.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1094/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile174');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat', 'file')
    fprintf('\n[0] (1095/1113) %s\n', '20251124T142919_T19KDP_20251123_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile182.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1095/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile182');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat', 'file')
    fprintf('\n[0] (1096/1113) %s\n', '20251124T142919_T19KDP_20251123_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile183.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1096/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile183');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat', 'file')
    fprintf('\n[0] (1097/1113) %s\n', '20251124T142919_T19KDP_20251123_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile184.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1097/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile184');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat', 'file')
    fprintf('\n[0] (1098/1113) %s\n', '20251124T142919_T19KDP_20251123_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile185.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1098/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile185');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat', 'file')
    fprintf('\n[0] (1099/1113) %s\n', '20251124T142919_T19KDP_20251123_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile186.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1099/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile186');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat', 'file')
    fprintf('\n[0] (1100/1113) %s\n', '20251124T142919_T19KDP_20251123_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile187.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1100/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile187');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat', 'file')
    fprintf('\n[0] (1101/1113) %s\n', '20251124T142919_T19KDP_20251123_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile188.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1101/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile188');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat', 'file')
    fprintf('\n[0] (1102/1113) %s\n', '20251124T142919_T19KDP_20251123_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile189.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1102/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile189');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat', 'file')
    fprintf('\n[0] (1103/1113) %s\n', '20251124T142919_T19KDP_20251123_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile199.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1103/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile199');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat', 'file')
    fprintf('\n[0] (1104/1113) %s\n', '20251124T142919_T19KDP_20251123_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile200.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1104/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile200');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat', 'file')
    fprintf('\n[0] (1105/1113) %s\n', '20251124T142919_T19KDP_20251123_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile201.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1105/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile201');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat', 'file')
    fprintf('\n[0] (1106/1113) %s\n', '20251124T142919_T19KDP_20251123_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile202.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1106/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile202');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat', 'file')
    fprintf('\n[0] (1107/1113) %s\n', '20251124T142919_T19KDP_20251123_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile203.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1107/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile203');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat', 'file')
    fprintf('\n[0] (1108/1113) %s\n', '20251124T142919_T19KDP_20251123_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile204.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1108/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile204');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat', 'file')
    fprintf('\n[0] (1109/1113) %s\n', '20251124T142919_T19KDP_20251123_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile216.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1109/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile216');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat', 'file')
    fprintf('\n[0] (1110/1113) %s\n', '20251124T142919_T19KDP_20251123_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile217.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1110/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile217');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat', 'file')
    fprintf('\n[0] (1111/1113) %s\n', '20251124T142919_T19KDP_20251123_tile218');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile218.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile218,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1111/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile218');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat', 'file')
    fprintf('\n[0] (1112/1113) %s\n', '20251124T142919_T19KDP_20251123_tile219');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile219.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile219,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1112/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile219');
end

if ~exist('data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat', 'file')
    fprintf('\n[0] (1113/1113) %s\n', '20251124T142919_T19KDP_20251123_tile234');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile234.mat';
    sri_path = 'data/SR/SFIM_Bilinear/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM_Bilinear/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile234,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1113/1113) %s — skip\n', '20251124T142919_T19KDP_20251123_tile234');
end

fprintf('\n=== Worker 0 done (1113 scenes) ===\n');
exit;