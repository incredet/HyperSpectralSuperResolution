% Auto-generated GLP batch script (worker 0)
cd('/Users/incredet/Documents/Thesis/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Documents/Thesis/hif-benchmarking', 'methods', 'GLP')));

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat', 'file')
    fprintf('\n[0] (1/685) %s\n', '20240525T090019_T34HBH_20240524_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile027.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile027.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile027');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat', 'file')
    fprintf('\n[0] (2/685) %s\n', '20240525T090019_T34HBH_20240524_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile028.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile028.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile028');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat', 'file')
    fprintf('\n[0] (3/685) %s\n', '20240525T090019_T34HBH_20240524_tile029');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile029.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile029.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile029,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile029');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat', 'file')
    fprintf('\n[0] (4/685) %s\n', '20240525T090019_T34HBH_20240524_tile030');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile030.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile030.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile030,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile030');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat', 'file')
    fprintf('\n[0] (5/685) %s\n', '20240525T090019_T34HBH_20240524_tile031');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile031.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile031.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile031,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile031');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat', 'file')
    fprintf('\n[0] (6/685) %s\n', '20240525T090019_T34HBH_20240524_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile032.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile032.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile032');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat', 'file')
    fprintf('\n[0] (7/685) %s\n', '20240525T090019_T34HBH_20240524_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile033.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile033.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (7/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile033');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat', 'file')
    fprintf('\n[0] (8/685) %s\n', '20240525T090019_T34HBH_20240524_tile036');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile036.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile036.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile036,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (8/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile036');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat', 'file')
    fprintf('\n[0] (9/685) %s\n', '20240525T090019_T34HBH_20240524_tile037');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile037.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile037.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile037,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (9/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile037');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat', 'file')
    fprintf('\n[0] (10/685) %s\n', '20240525T090019_T34HBH_20240524_tile038');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile038.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile038.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile038,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (10/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile038');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat', 'file')
    fprintf('\n[0] (11/685) %s\n', '20240525T090019_T34HBH_20240524_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile039.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile039.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (11/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile039');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat', 'file')
    fprintf('\n[0] (12/685) %s\n', '20240525T090019_T34HBH_20240524_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile040.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile040.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (12/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile040');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat', 'file')
    fprintf('\n[0] (13/685) %s\n', '20240525T090019_T34HBH_20240524_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile041.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile041.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (13/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile041');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat', 'file')
    fprintf('\n[0] (14/685) %s\n', '20240525T090019_T34HBH_20240524_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile042.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile042.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (14/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile042');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat', 'file')
    fprintf('\n[0] (15/685) %s\n', '20240525T090019_T34HBH_20240524_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile043.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile043.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (15/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile043');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat', 'file')
    fprintf('\n[0] (16/685) %s\n', '20240525T090019_T34HBH_20240524_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (16/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat', 'file')
    fprintf('\n[0] (17/685) %s\n', '20240525T090019_T34HBH_20240524_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (17/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat', 'file')
    fprintf('\n[0] (18/685) %s\n', '20240525T090019_T34HBH_20240524_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile046.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile046.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (18/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile046');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat', 'file')
    fprintf('\n[0] (19/685) %s\n', '20240525T090019_T34HBH_20240524_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile047.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile047.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (19/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile047');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat', 'file')
    fprintf('\n[0] (20/685) %s\n', '20240525T090019_T34HBH_20240524_tile048');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile048.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile048.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile048,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (20/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile048');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat', 'file')
    fprintf('\n[0] (21/685) %s\n', '20240525T090019_T34HBH_20240524_tile049');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile049.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile049.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile049,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (21/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile049');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat', 'file')
    fprintf('\n[0] (22/685) %s\n', '20240525T090019_T34HBH_20240524_tile050');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile050.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile050.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile050,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (22/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile050');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat', 'file')
    fprintf('\n[0] (23/685) %s\n', '20240525T090019_T34HBH_20240524_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile054.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile054.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (23/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile054');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat', 'file')
    fprintf('\n[0] (24/685) %s\n', '20240525T090019_T34HBH_20240524_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile055.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile055.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (24/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile055');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat', 'file')
    fprintf('\n[0] (25/685) %s\n', '20240525T090019_T34HBH_20240524_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile056.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile056.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (25/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile056');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat', 'file')
    fprintf('\n[0] (26/685) %s\n', '20240525T090019_T34HBH_20240524_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (26/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat', 'file')
    fprintf('\n[0] (27/685) %s\n', '20240525T090019_T34HBH_20240524_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (27/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat', 'file')
    fprintf('\n[0] (28/685) %s\n', '20240525T090019_T34HBH_20240524_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile059.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile059.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (28/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile059');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat', 'file')
    fprintf('\n[0] (29/685) %s\n', '20240525T090019_T34HBH_20240524_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile060.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile060.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (29/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile060');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat', 'file')
    fprintf('\n[0] (30/685) %s\n', '20240525T090019_T34HBH_20240524_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile061.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile061.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (30/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile061');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat', 'file')
    fprintf('\n[0] (31/685) %s\n', '20240525T090019_T34HBH_20240524_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile062.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile062.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (31/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile062');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat', 'file')
    fprintf('\n[0] (32/685) %s\n', '20240525T090019_T34HBH_20240524_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile063.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile063.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (32/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile063');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat', 'file')
    fprintf('\n[0] (33/685) %s\n', '20240525T090019_T34HBH_20240524_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile064.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile064.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (33/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile064');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat', 'file')
    fprintf('\n[0] (34/685) %s\n', '20240525T090019_T34HBH_20240524_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile065.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile065.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (34/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile065');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat', 'file')
    fprintf('\n[0] (35/685) %s\n', '20240525T090019_T34HBH_20240524_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile066.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile066.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (35/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile066');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat', 'file')
    fprintf('\n[0] (36/685) %s\n', '20240525T090019_T34HBH_20240524_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile072.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile072.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (36/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile072');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat', 'file')
    fprintf('\n[0] (37/685) %s\n', '20240525T090019_T34HBH_20240524_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile073.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile073.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (37/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile073');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat', 'file')
    fprintf('\n[0] (38/685) %s\n', '20240525T090019_T34HBH_20240524_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile074.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile074.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (38/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile074');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat', 'file')
    fprintf('\n[0] (39/685) %s\n', '20240525T090019_T34HBH_20240524_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile075.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile075.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (39/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile075');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat', 'file')
    fprintf('\n[0] (40/685) %s\n', '20240525T090019_T34HBH_20240524_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile076.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile076.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (40/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile076');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat', 'file')
    fprintf('\n[0] (41/685) %s\n', '20240525T090019_T34HBH_20240524_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (41/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat', 'file')
    fprintf('\n[0] (42/685) %s\n', '20240525T090019_T34HBH_20240524_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile078.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile078.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (42/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile078');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat', 'file')
    fprintf('\n[0] (43/685) %s\n', '20240525T090019_T34HBH_20240524_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile079.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile079.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (43/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile079');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat', 'file')
    fprintf('\n[0] (44/685) %s\n', '20240525T090019_T34HBH_20240524_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile080.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile080.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (44/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile080');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat', 'file')
    fprintf('\n[0] (45/685) %s\n', '20240525T090019_T34HBH_20240524_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile081.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile081.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (45/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile081');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat', 'file')
    fprintf('\n[0] (46/685) %s\n', '20240525T090019_T34HBH_20240524_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile082.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile082.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (46/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile082');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat', 'file')
    fprintf('\n[0] (47/685) %s\n', '20240525T090019_T34HBH_20240524_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (47/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat', 'file')
    fprintf('\n[0] (48/685) %s\n', '20240525T090019_T34HBH_20240524_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (48/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat', 'file')
    fprintf('\n[0] (49/685) %s\n', '20240525T090019_T34HBH_20240524_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (49/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat', 'file')
    fprintf('\n[0] (50/685) %s\n', '20240525T090019_T34HBH_20240524_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (50/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat', 'file')
    fprintf('\n[0] (51/685) %s\n', '20240525T090019_T34HBH_20240524_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (51/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat', 'file')
    fprintf('\n[0] (52/685) %s\n', '20240525T090019_T34HBH_20240524_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile095.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile095.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (52/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile095');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat', 'file')
    fprintf('\n[0] (53/685) %s\n', '20240525T090019_T34HBH_20240524_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile096.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile096.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (53/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile096');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat', 'file')
    fprintf('\n[0] (54/685) %s\n', '20240525T090019_T34HBH_20240524_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile097.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile097.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (54/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile097');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat', 'file')
    fprintf('\n[0] (55/685) %s\n', '20240525T090019_T34HBH_20240524_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile098.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile098.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (55/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile098');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat', 'file')
    fprintf('\n[0] (56/685) %s\n', '20240525T090019_T34HBH_20240524_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile108.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile108.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (56/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile108');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat', 'file')
    fprintf('\n[0] (57/685) %s\n', '20240525T090019_T34HBH_20240524_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile109.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile109.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (57/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile109');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat', 'file')
    fprintf('\n[0] (58/685) %s\n', '20240525T090019_T34HBH_20240524_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile110.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile110.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (58/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile110');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat', 'file')
    fprintf('\n[0] (59/685) %s\n', '20240525T090019_T34HBH_20240524_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile111.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile111.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (59/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile111');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat', 'file')
    fprintf('\n[0] (60/685) %s\n', '20240525T090019_T34HBH_20240524_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile112.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile112.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (60/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile112');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat', 'file')
    fprintf('\n[0] (61/685) %s\n', '20240525T090019_T34HBH_20240524_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile113.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile113.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (61/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile113');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat', 'file')
    fprintf('\n[0] (62/685) %s\n', '20240525T090019_T34HBH_20240524_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile114.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile114.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (62/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile114');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat', 'file')
    fprintf('\n[0] (63/685) %s\n', '20240525T090019_T34HBH_20240524_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile127.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile127.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (63/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile127');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat', 'file')
    fprintf('\n[0] (64/685) %s\n', '20240525T090019_T34HBH_20240524_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile128.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile128.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (64/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile128');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat', 'file')
    fprintf('\n[0] (65/685) %s\n', '20240525T090019_T34HBH_20240524_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile129.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile129.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (65/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile129');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat', 'file')
    fprintf('\n[0] (66/685) %s\n', '20240525T090019_T34HBH_20240524_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (66/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat', 'file')
    fprintf('\n[0] (67/685) %s\n', '20240525T090019_T34HBH_20240524_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile145.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile145.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (67/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile145');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat', 'file')
    fprintf('\n[0] (68/685) %s\n', '20240525T090019_T34HBH_20240524_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat';
    msi_path = 'data/MS/EMIT32/20240525T090019_T34HBH_20240524_tile146.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20240525T090019_T34HBH_20240524_tile146.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240525T090019_T34HBH_20240524_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (68/685) %s — skip\n', '20240525T090019_T34HBH_20240524_tile146');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat', 'file')
    fprintf('\n[0] (69/685) %s\n', '20250406T102906_T32UQV_20250404_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile027.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile027.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (69/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile027');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat', 'file')
    fprintf('\n[0] (70/685) %s\n', '20250406T102906_T32UQV_20250404_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile028.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile028.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (70/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile028');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat', 'file')
    fprintf('\n[0] (71/685) %s\n', '20250406T102906_T32UQV_20250404_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile041.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile041.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (71/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile041');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat', 'file')
    fprintf('\n[0] (72/685) %s\n', '20250406T102906_T32UQV_20250404_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile042.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile042.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (72/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile042');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat', 'file')
    fprintf('\n[0] (73/685) %s\n', '20250406T102906_T32UQV_20250404_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile043.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile043.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (73/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile043');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat', 'file')
    fprintf('\n[0] (74/685) %s\n', '20250406T102906_T32UQV_20250404_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (74/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat', 'file')
    fprintf('\n[0] (75/685) %s\n', '20250406T102906_T32UQV_20250404_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (75/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat', 'file')
    fprintf('\n[0] (76/685) %s\n', '20250406T102906_T32UQV_20250404_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile055.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile055.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (76/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile055');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat', 'file')
    fprintf('\n[0] (77/685) %s\n', '20250406T102906_T32UQV_20250404_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile056.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile056.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (77/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile056');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat', 'file')
    fprintf('\n[0] (78/685) %s\n', '20250406T102906_T32UQV_20250404_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (78/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat', 'file')
    fprintf('\n[0] (79/685) %s\n', '20250406T102906_T32UQV_20250404_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (79/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat', 'file')
    fprintf('\n[0] (80/685) %s\n', '20250406T102906_T32UQV_20250404_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile059.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile059.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (80/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile059');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat', 'file')
    fprintf('\n[0] (81/685) %s\n', '20250406T102906_T32UQV_20250404_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile060.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile060.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (81/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile060');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat', 'file')
    fprintf('\n[0] (82/685) %s\n', '20250406T102906_T32UQV_20250404_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile061.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile061.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (82/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile061');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat', 'file')
    fprintf('\n[0] (83/685) %s\n', '20250406T102906_T32UQV_20250404_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile069.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile069.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (83/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile069');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat', 'file')
    fprintf('\n[0] (84/685) %s\n', '20250406T102906_T32UQV_20250404_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile070.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile070.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (84/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile070');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat', 'file')
    fprintf('\n[0] (85/685) %s\n', '20250406T102906_T32UQV_20250404_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile071.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile071.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (85/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile071');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat', 'file')
    fprintf('\n[0] (86/685) %s\n', '20250406T102906_T32UQV_20250404_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile072.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile072.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (86/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile072');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat', 'file')
    fprintf('\n[0] (87/685) %s\n', '20250406T102906_T32UQV_20250404_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile073.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile073.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (87/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile073');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat', 'file')
    fprintf('\n[0] (88/685) %s\n', '20250406T102906_T32UQV_20250404_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile074.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile074.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (88/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile074');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat', 'file')
    fprintf('\n[0] (89/685) %s\n', '20250406T102906_T32UQV_20250404_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile075.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile075.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (89/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile075');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat', 'file')
    fprintf('\n[0] (90/685) %s\n', '20250406T102906_T32UQV_20250404_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile076.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile076.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (90/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile076');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat', 'file')
    fprintf('\n[0] (91/685) %s\n', '20250406T102906_T32UQV_20250404_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (91/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat', 'file')
    fprintf('\n[0] (92/685) %s\n', '20250406T102906_T32UQV_20250404_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile083.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile083.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (92/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile083');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat', 'file')
    fprintf('\n[0] (93/685) %s\n', '20250406T102906_T32UQV_20250404_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile084.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile084.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (93/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile084');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat', 'file')
    fprintf('\n[0] (94/685) %s\n', '20250406T102906_T32UQV_20250404_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile085.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile085.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (94/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile085');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat', 'file')
    fprintf('\n[0] (95/685) %s\n', '20250406T102906_T32UQV_20250404_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile086.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile086.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (95/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile086');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat', 'file')
    fprintf('\n[0] (96/685) %s\n', '20250406T102906_T32UQV_20250404_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile087.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile087.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (96/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile087');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat', 'file')
    fprintf('\n[0] (97/685) %s\n', '20250406T102906_T32UQV_20250404_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile088.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile088.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (97/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile088');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat', 'file')
    fprintf('\n[0] (98/685) %s\n', '20250406T102906_T32UQV_20250404_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile089.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile089.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (98/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile089');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat', 'file')
    fprintf('\n[0] (99/685) %s\n', '20250406T102906_T32UQV_20250404_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (99/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat', 'file')
    fprintf('\n[0] (100/685) %s\n', '20250406T102906_T32UQV_20250404_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (100/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat', 'file')
    fprintf('\n[0] (101/685) %s\n', '20250406T102906_T32UQV_20250404_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (101/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat', 'file')
    fprintf('\n[0] (102/685) %s\n', '20250406T102906_T32UQV_20250404_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (102/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat', 'file')
    fprintf('\n[0] (103/685) %s\n', '20250406T102906_T32UQV_20250404_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250406T102906_T32UQV_20250404_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250406T102906_T32UQV_20250404_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250406T102906_T32UQV_20250404_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (103/685) %s — skip\n', '20250406T102906_T32UQV_20250404_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat', 'file')
    fprintf('\n[0] (104/685) %s\n', '20250601T191055_T11SKA_20250530_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile026.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile026.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (104/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile026');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat', 'file')
    fprintf('\n[0] (105/685) %s\n', '20250601T191055_T11SKA_20250530_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile043.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile043.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (105/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile043');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat', 'file')
    fprintf('\n[0] (106/685) %s\n', '20250601T191055_T11SKA_20250530_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (106/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat', 'file')
    fprintf('\n[0] (107/685) %s\n', '20250601T191055_T11SKA_20250530_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (107/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat', 'file')
    fprintf('\n[0] (108/685) %s\n', '20250601T191055_T11SKA_20250530_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile060.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile060.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (108/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile060');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat', 'file')
    fprintf('\n[0] (109/685) %s\n', '20250601T191055_T11SKA_20250530_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile061.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile061.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (109/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile061');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat', 'file')
    fprintf('\n[0] (110/685) %s\n', '20250601T191055_T11SKA_20250530_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile062.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile062.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (110/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile062');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat', 'file')
    fprintf('\n[0] (111/685) %s\n', '20250601T191055_T11SKA_20250530_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile063.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile063.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (111/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile063');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat', 'file')
    fprintf('\n[0] (112/685) %s\n', '20250601T191055_T11SKA_20250530_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile064.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile064.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (112/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile064');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat', 'file')
    fprintf('\n[0] (113/685) %s\n', '20250601T191055_T11SKA_20250530_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (113/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat', 'file')
    fprintf('\n[0] (114/685) %s\n', '20250601T191055_T11SKA_20250530_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile078.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile078.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (114/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile078');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat', 'file')
    fprintf('\n[0] (115/685) %s\n', '20250601T191055_T11SKA_20250530_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile079.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile079.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (115/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile079');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat', 'file')
    fprintf('\n[0] (116/685) %s\n', '20250601T191055_T11SKA_20250530_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile080.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile080.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (116/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile080');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat', 'file')
    fprintf('\n[0] (117/685) %s\n', '20250601T191055_T11SKA_20250530_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile081.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile081.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (117/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile081');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat', 'file')
    fprintf('\n[0] (118/685) %s\n', '20250601T191055_T11SKA_20250530_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile082.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile082.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (118/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile082');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat', 'file')
    fprintf('\n[0] (119/685) %s\n', '20250601T191055_T11SKA_20250530_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile083.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile083.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (119/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile083');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat', 'file')
    fprintf('\n[0] (120/685) %s\n', '20250601T191055_T11SKA_20250530_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (120/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat', 'file')
    fprintf('\n[0] (121/685) %s\n', '20250601T191055_T11SKA_20250530_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (121/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat', 'file')
    fprintf('\n[0] (122/685) %s\n', '20250601T191055_T11SKA_20250530_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile095.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile095.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (122/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile095');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat', 'file')
    fprintf('\n[0] (123/685) %s\n', '20250601T191055_T11SKA_20250530_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile096.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile096.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (123/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile096');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat', 'file')
    fprintf('\n[0] (124/685) %s\n', '20250601T191055_T11SKA_20250530_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile097.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile097.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (124/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile097');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat', 'file')
    fprintf('\n[0] (125/685) %s\n', '20250601T191055_T11SKA_20250530_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile098.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile098.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (125/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile098');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat', 'file')
    fprintf('\n[0] (126/685) %s\n', '20250601T191055_T11SKA_20250530_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile099.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile099.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (126/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile099');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat', 'file')
    fprintf('\n[0] (127/685) %s\n', '20250601T191055_T11SKA_20250530_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile100.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile100.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (127/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile100');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat', 'file')
    fprintf('\n[0] (128/685) %s\n', '20250601T191055_T11SKA_20250530_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile101.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile101.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (128/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile101');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat', 'file')
    fprintf('\n[0] (129/685) %s\n', '20250601T191055_T11SKA_20250530_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile102.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile102.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (129/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile102');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat', 'file')
    fprintf('\n[0] (130/685) %s\n', '20250601T191055_T11SKA_20250530_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile110.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile110.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (130/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile110');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat', 'file')
    fprintf('\n[0] (131/685) %s\n', '20250601T191055_T11SKA_20250530_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile111.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile111.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (131/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile111');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat', 'file')
    fprintf('\n[0] (132/685) %s\n', '20250601T191055_T11SKA_20250530_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile112.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile112.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (132/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile112');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat', 'file')
    fprintf('\n[0] (133/685) %s\n', '20250601T191055_T11SKA_20250530_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile113.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile113.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (133/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile113');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat', 'file')
    fprintf('\n[0] (134/685) %s\n', '20250601T191055_T11SKA_20250530_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile114.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile114.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (134/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile114');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat', 'file')
    fprintf('\n[0] (135/685) %s\n', '20250601T191055_T11SKA_20250530_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile115.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile115.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (135/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile115');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat', 'file')
    fprintf('\n[0] (136/685) %s\n', '20250601T191055_T11SKA_20250530_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile116.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile116.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (136/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile116');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat', 'file')
    fprintf('\n[0] (137/685) %s\n', '20250601T191055_T11SKA_20250530_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile117.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile117.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (137/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile117');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat', 'file')
    fprintf('\n[0] (138/685) %s\n', '20250601T191055_T11SKA_20250530_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile118.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile118.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (138/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile118');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat', 'file')
    fprintf('\n[0] (139/685) %s\n', '20250601T191055_T11SKA_20250530_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile119.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile119.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (139/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile119');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat', 'file')
    fprintf('\n[0] (140/685) %s\n', '20250601T191055_T11SKA_20250530_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile120.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile120.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (140/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile120');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat', 'file')
    fprintf('\n[0] (141/685) %s\n', '20250601T191055_T11SKA_20250530_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile121.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile121.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (141/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile121');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat', 'file')
    fprintf('\n[0] (142/685) %s\n', '20250601T191055_T11SKA_20250530_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile127.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile127.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (142/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile127');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat', 'file')
    fprintf('\n[0] (143/685) %s\n', '20250601T191055_T11SKA_20250530_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile128.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile128.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (143/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile128');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat', 'file')
    fprintf('\n[0] (144/685) %s\n', '20250601T191055_T11SKA_20250530_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile129.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile129.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (144/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile129');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat', 'file')
    fprintf('\n[0] (145/685) %s\n', '20250601T191055_T11SKA_20250530_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (145/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat', 'file')
    fprintf('\n[0] (146/685) %s\n', '20250601T191055_T11SKA_20250530_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile131.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile131.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (146/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile131');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat', 'file')
    fprintf('\n[0] (147/685) %s\n', '20250601T191055_T11SKA_20250530_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile132.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile132.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (147/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile132');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat', 'file')
    fprintf('\n[0] (148/685) %s\n', '20250601T191055_T11SKA_20250530_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile133.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile133.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (148/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile133');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat', 'file')
    fprintf('\n[0] (149/685) %s\n', '20250601T191055_T11SKA_20250530_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile134.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile134.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (149/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile134');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat', 'file')
    fprintf('\n[0] (150/685) %s\n', '20250601T191055_T11SKA_20250530_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile135.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile135.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (150/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile135');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat', 'file')
    fprintf('\n[0] (151/685) %s\n', '20250601T191055_T11SKA_20250530_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile136.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile136.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (151/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile136');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat', 'file')
    fprintf('\n[0] (152/685) %s\n', '20250601T191055_T11SKA_20250530_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile137.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile137.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (152/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile137');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat', 'file')
    fprintf('\n[0] (153/685) %s\n', '20250601T191055_T11SKA_20250530_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile138.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile138.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (153/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile138');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat', 'file')
    fprintf('\n[0] (154/685) %s\n', '20250601T191055_T11SKA_20250530_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile139.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile139.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (154/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile139');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat', 'file')
    fprintf('\n[0] (155/685) %s\n', '20250601T191055_T11SKA_20250530_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile140.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile140.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (155/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile140');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat', 'file')
    fprintf('\n[0] (156/685) %s\n', '20250601T191055_T11SKA_20250530_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile145.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile145.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (156/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile145');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat', 'file')
    fprintf('\n[0] (157/685) %s\n', '20250601T191055_T11SKA_20250530_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile146.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile146.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (157/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile146');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat', 'file')
    fprintf('\n[0] (158/685) %s\n', '20250601T191055_T11SKA_20250530_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile147.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile147.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (158/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile147');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat', 'file')
    fprintf('\n[0] (159/685) %s\n', '20250601T191055_T11SKA_20250530_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile148.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile148.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (159/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile148');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat', 'file')
    fprintf('\n[0] (160/685) %s\n', '20250601T191055_T11SKA_20250530_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile149.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile149.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (160/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile149');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat', 'file')
    fprintf('\n[0] (161/685) %s\n', '20250601T191055_T11SKA_20250530_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile150.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile150.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (161/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile150');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat', 'file')
    fprintf('\n[0] (162/685) %s\n', '20250601T191055_T11SKA_20250530_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile151.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile151.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (162/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile151');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat', 'file')
    fprintf('\n[0] (163/685) %s\n', '20250601T191055_T11SKA_20250530_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile152.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile152.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (163/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile152');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat', 'file')
    fprintf('\n[0] (164/685) %s\n', '20250601T191055_T11SKA_20250530_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile153.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile153.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (164/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile153');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat', 'file')
    fprintf('\n[0] (165/685) %s\n', '20250601T191055_T11SKA_20250530_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile154.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile154.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (165/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile154');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat', 'file')
    fprintf('\n[0] (166/685) %s\n', '20250601T191055_T11SKA_20250530_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile155.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile155.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (166/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile155');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat', 'file')
    fprintf('\n[0] (167/685) %s\n', '20250601T191055_T11SKA_20250530_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile156.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile156.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (167/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile156');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat', 'file')
    fprintf('\n[0] (168/685) %s\n', '20250601T191055_T11SKA_20250530_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile157.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile157.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (168/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile157');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat', 'file')
    fprintf('\n[0] (169/685) %s\n', '20250601T191055_T11SKA_20250530_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile158.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile158.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (169/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile158');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat', 'file')
    fprintf('\n[0] (170/685) %s\n', '20250601T191055_T11SKA_20250530_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile159.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile159.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (170/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile159');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat', 'file')
    fprintf('\n[0] (171/685) %s\n', '20250601T191055_T11SKA_20250530_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile163.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile163.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (171/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile163');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat', 'file')
    fprintf('\n[0] (172/685) %s\n', '20250601T191055_T11SKA_20250530_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile164.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile164.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (172/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile164');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat', 'file')
    fprintf('\n[0] (173/685) %s\n', '20250601T191055_T11SKA_20250530_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile165.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile165.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (173/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile165');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat', 'file')
    fprintf('\n[0] (174/685) %s\n', '20250601T191055_T11SKA_20250530_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile166.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile166.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (174/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile166');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat', 'file')
    fprintf('\n[0] (175/685) %s\n', '20250601T191055_T11SKA_20250530_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile167.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile167.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (175/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile167');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat', 'file')
    fprintf('\n[0] (176/685) %s\n', '20250601T191055_T11SKA_20250530_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile168.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile168.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (176/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile168');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat', 'file')
    fprintf('\n[0] (177/685) %s\n', '20250601T191055_T11SKA_20250530_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile169.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile169.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (177/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile169');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat', 'file')
    fprintf('\n[0] (178/685) %s\n', '20250601T191055_T11SKA_20250530_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile170.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile170.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (178/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile170');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat', 'file')
    fprintf('\n[0] (179/685) %s\n', '20250601T191055_T11SKA_20250530_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile171.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile171.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (179/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile171');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat', 'file')
    fprintf('\n[0] (180/685) %s\n', '20250601T191055_T11SKA_20250530_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile172.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile172.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (180/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile172');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat', 'file')
    fprintf('\n[0] (181/685) %s\n', '20250601T191055_T11SKA_20250530_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile173.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile173.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (181/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile173');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat', 'file')
    fprintf('\n[0] (182/685) %s\n', '20250601T191055_T11SKA_20250530_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile174.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile174.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (182/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile174');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat', 'file')
    fprintf('\n[0] (183/685) %s\n', '20250601T191055_T11SKA_20250530_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile175.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile175.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (183/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile175');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat', 'file')
    fprintf('\n[0] (184/685) %s\n', '20250601T191055_T11SKA_20250530_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile176.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile176.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (184/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile176');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat', 'file')
    fprintf('\n[0] (185/685) %s\n', '20250601T191055_T11SKA_20250530_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile177.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile177.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (185/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile177');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat', 'file')
    fprintf('\n[0] (186/685) %s\n', '20250601T191055_T11SKA_20250530_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile181.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile181.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (186/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile181');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat', 'file')
    fprintf('\n[0] (187/685) %s\n', '20250601T191055_T11SKA_20250530_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile182.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile182.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (187/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile182');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat', 'file')
    fprintf('\n[0] (188/685) %s\n', '20250601T191055_T11SKA_20250530_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile183.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile183.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (188/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile183');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat', 'file')
    fprintf('\n[0] (189/685) %s\n', '20250601T191055_T11SKA_20250530_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile184.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile184.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (189/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile184');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat', 'file')
    fprintf('\n[0] (190/685) %s\n', '20250601T191055_T11SKA_20250530_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile185.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile185.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (190/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile185');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat', 'file')
    fprintf('\n[0] (191/685) %s\n', '20250601T191055_T11SKA_20250530_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile186.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile186.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (191/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile186');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat', 'file')
    fprintf('\n[0] (192/685) %s\n', '20250601T191055_T11SKA_20250530_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile187.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile187.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (192/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile187');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat', 'file')
    fprintf('\n[0] (193/685) %s\n', '20250601T191055_T11SKA_20250530_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile188.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile188.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (193/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile188');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat', 'file')
    fprintf('\n[0] (194/685) %s\n', '20250601T191055_T11SKA_20250530_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile189.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile189.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (194/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile189');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat', 'file')
    fprintf('\n[0] (195/685) %s\n', '20250601T191055_T11SKA_20250530_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile190.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile190.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (195/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile190');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat', 'file')
    fprintf('\n[0] (196/685) %s\n', '20250601T191055_T11SKA_20250530_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile191.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile191.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (196/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile191');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat', 'file')
    fprintf('\n[0] (197/685) %s\n', '20250601T191055_T11SKA_20250530_tile192');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile192.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile192.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile192,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (197/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile192');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat', 'file')
    fprintf('\n[0] (198/685) %s\n', '20250601T191055_T11SKA_20250530_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile193.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile193.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (198/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile193');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat', 'file')
    fprintf('\n[0] (199/685) %s\n', '20250601T191055_T11SKA_20250530_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile194.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile194.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (199/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile194');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat', 'file')
    fprintf('\n[0] (200/685) %s\n', '20250601T191055_T11SKA_20250530_tile195');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile195.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile195.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile195,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (200/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile195');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat', 'file')
    fprintf('\n[0] (201/685) %s\n', '20250601T191055_T11SKA_20250530_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile196.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile196.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (201/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile196');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat', 'file')
    fprintf('\n[0] (202/685) %s\n', '20250601T191055_T11SKA_20250530_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile200.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile200.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (202/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile200');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat', 'file')
    fprintf('\n[0] (203/685) %s\n', '20250601T191055_T11SKA_20250530_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile201.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile201.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (203/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile201');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat', 'file')
    fprintf('\n[0] (204/685) %s\n', '20250601T191055_T11SKA_20250530_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile202.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile202.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (204/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile202');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat', 'file')
    fprintf('\n[0] (205/685) %s\n', '20250601T191055_T11SKA_20250530_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile203.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile203.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (205/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile203');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat', 'file')
    fprintf('\n[0] (206/685) %s\n', '20250601T191055_T11SKA_20250530_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile204.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile204.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (206/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile204');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat', 'file')
    fprintf('\n[0] (207/685) %s\n', '20250601T191055_T11SKA_20250530_tile205');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile205.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile205.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile205,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (207/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile205');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat', 'file')
    fprintf('\n[0] (208/685) %s\n', '20250601T191055_T11SKA_20250530_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile206.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile206.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (208/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile206');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat', 'file')
    fprintf('\n[0] (209/685) %s\n', '20250601T191055_T11SKA_20250530_tile207');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile207.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile207.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile207,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (209/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile207');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat', 'file')
    fprintf('\n[0] (210/685) %s\n', '20250601T191055_T11SKA_20250530_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile208.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile208.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (210/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile208');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat', 'file')
    fprintf('\n[0] (211/685) %s\n', '20250601T191055_T11SKA_20250530_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile209.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile209.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (211/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile209');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat', 'file')
    fprintf('\n[0] (212/685) %s\n', '20250601T191055_T11SKA_20250530_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile210.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile210.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (212/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile210');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat', 'file')
    fprintf('\n[0] (213/685) %s\n', '20250601T191055_T11SKA_20250530_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile211.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile211.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (213/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile211');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat', 'file')
    fprintf('\n[0] (214/685) %s\n', '20250601T191055_T11SKA_20250530_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile212.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile212.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (214/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile212');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat', 'file')
    fprintf('\n[0] (215/685) %s\n', '20250601T191055_T11SKA_20250530_tile219');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile219.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile219.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile219,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (215/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile219');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat', 'file')
    fprintf('\n[0] (216/685) %s\n', '20250601T191055_T11SKA_20250530_tile220');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile220.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile220.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile220,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (216/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile220');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat', 'file')
    fprintf('\n[0] (217/685) %s\n', '20250601T191055_T11SKA_20250530_tile221');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile221.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile221.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile221,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (217/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile221');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat', 'file')
    fprintf('\n[0] (218/685) %s\n', '20250601T191055_T11SKA_20250530_tile222');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile222.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile222.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile222,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (218/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile222');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat', 'file')
    fprintf('\n[0] (219/685) %s\n', '20250601T191055_T11SKA_20250530_tile223');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile223.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile223.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile223,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (219/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile223');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat', 'file')
    fprintf('\n[0] (220/685) %s\n', '20250601T191055_T11SKA_20250530_tile224');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile224.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile224.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile224,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (220/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile224');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat', 'file')
    fprintf('\n[0] (221/685) %s\n', '20250601T191055_T11SKA_20250530_tile225');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile225.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile225.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile225,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (221/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile225');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat', 'file')
    fprintf('\n[0] (222/685) %s\n', '20250601T191055_T11SKA_20250530_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile226.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile226.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (222/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile226');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat', 'file')
    fprintf('\n[0] (223/685) %s\n', '20250601T191055_T11SKA_20250530_tile227');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile227.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile227.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile227,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (223/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile227');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat', 'file')
    fprintf('\n[0] (224/685) %s\n', '20250601T191055_T11SKA_20250530_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile228.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile228.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (224/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile228');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat', 'file')
    fprintf('\n[0] (225/685) %s\n', '20250601T191055_T11SKA_20250530_tile229');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat';
    msi_path = 'data/MS/EMIT32/20250601T191055_T11SKA_20250530_tile229.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250601T191055_T11SKA_20250530_tile229.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250601T191055_T11SKA_20250530_tile229,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (225/685) %s — skip\n', '20250601T191055_T11SKA_20250530_tile229');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat', 'file')
    fprintf('\n[0] (226/685) %s\n', '20250623T082106_T36RUV_20250621_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile024.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile024.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (226/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile024');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat', 'file')
    fprintf('\n[0] (227/685) %s\n', '20250623T082106_T36RUV_20250621_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile040.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile040.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (227/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile040');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat', 'file')
    fprintf('\n[0] (228/685) %s\n', '20250623T082106_T36RUV_20250621_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile041.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile041.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (228/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile041');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat', 'file')
    fprintf('\n[0] (229/685) %s\n', '20250623T082106_T36RUV_20250621_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile055.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile055.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (229/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile055');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat', 'file')
    fprintf('\n[0] (230/685) %s\n', '20250623T082106_T36RUV_20250621_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile056.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile056.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (230/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile056');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat', 'file')
    fprintf('\n[0] (231/685) %s\n', '20250623T082106_T36RUV_20250621_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (231/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat', 'file')
    fprintf('\n[0] (232/685) %s\n', '20250623T082106_T36RUV_20250621_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (232/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat', 'file')
    fprintf('\n[0] (233/685) %s\n', '20250623T082106_T36RUV_20250621_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile070.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile070.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (233/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile070');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat', 'file')
    fprintf('\n[0] (234/685) %s\n', '20250623T082106_T36RUV_20250621_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile071.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile071.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (234/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile071');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat', 'file')
    fprintf('\n[0] (235/685) %s\n', '20250623T082106_T36RUV_20250621_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile072.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile072.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (235/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile072');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat', 'file')
    fprintf('\n[0] (236/685) %s\n', '20250623T082106_T36RUV_20250621_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile073.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile073.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (236/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile073');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat', 'file')
    fprintf('\n[0] (237/685) %s\n', '20250623T082106_T36RUV_20250621_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile074.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile074.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (237/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile074');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat', 'file')
    fprintf('\n[0] (238/685) %s\n', '20250623T082106_T36RUV_20250621_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile075.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile075.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (238/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile075');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat', 'file')
    fprintf('\n[0] (239/685) %s\n', '20250623T082106_T36RUV_20250621_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile085.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile085.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (239/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile085');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat', 'file')
    fprintf('\n[0] (240/685) %s\n', '20250623T082106_T36RUV_20250621_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile086.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile086.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (240/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile086');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat', 'file')
    fprintf('\n[0] (241/685) %s\n', '20250623T082106_T36RUV_20250621_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile087.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile087.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (241/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile087');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat', 'file')
    fprintf('\n[0] (242/685) %s\n', '20250623T082106_T36RUV_20250621_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile088.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile088.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (242/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile088');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat', 'file')
    fprintf('\n[0] (243/685) %s\n', '20250623T082106_T36RUV_20250621_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile089.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile089.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (243/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile089');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat', 'file')
    fprintf('\n[0] (244/685) %s\n', '20250623T082106_T36RUV_20250621_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (244/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat', 'file')
    fprintf('\n[0] (245/685) %s\n', '20250623T082106_T36RUV_20250621_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (245/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat', 'file')
    fprintf('\n[0] (246/685) %s\n', '20250623T082106_T36RUV_20250621_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (246/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat', 'file')
    fprintf('\n[0] (247/685) %s\n', '20250623T082106_T36RUV_20250621_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile100.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile100.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (247/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile100');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat', 'file')
    fprintf('\n[0] (248/685) %s\n', '20250623T082106_T36RUV_20250621_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile101.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile101.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (248/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile101');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat', 'file')
    fprintf('\n[0] (249/685) %s\n', '20250623T082106_T36RUV_20250621_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile102.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile102.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (249/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile102');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat', 'file')
    fprintf('\n[0] (250/685) %s\n', '20250623T082106_T36RUV_20250621_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile103.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile103.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (250/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile103');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat', 'file')
    fprintf('\n[0] (251/685) %s\n', '20250623T082106_T36RUV_20250621_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile104.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile104.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (251/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile104');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat', 'file')
    fprintf('\n[0] (252/685) %s\n', '20250623T082106_T36RUV_20250621_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile105.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile105.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (252/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile105');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat', 'file')
    fprintf('\n[0] (253/685) %s\n', '20250623T082106_T36RUV_20250621_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile106.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile106.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (253/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile106');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat', 'file')
    fprintf('\n[0] (254/685) %s\n', '20250623T082106_T36RUV_20250621_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile107.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile107.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (254/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile107');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat', 'file')
    fprintf('\n[0] (255/685) %s\n', '20250623T082106_T36RUV_20250621_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile108.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile108.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (255/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile108');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat', 'file')
    fprintf('\n[0] (256/685) %s\n', '20250623T082106_T36RUV_20250621_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile109.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile109.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (256/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile109');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat', 'file')
    fprintf('\n[0] (257/685) %s\n', '20250623T082106_T36RUV_20250621_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile115.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile115.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (257/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile115');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat', 'file')
    fprintf('\n[0] (258/685) %s\n', '20250623T082106_T36RUV_20250621_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile116.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile116.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (258/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile116');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat', 'file')
    fprintf('\n[0] (259/685) %s\n', '20250623T082106_T36RUV_20250621_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile117.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile117.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (259/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile117');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat', 'file')
    fprintf('\n[0] (260/685) %s\n', '20250623T082106_T36RUV_20250621_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile118.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile118.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (260/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile118');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat', 'file')
    fprintf('\n[0] (261/685) %s\n', '20250623T082106_T36RUV_20250621_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile119.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile119.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (261/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile119');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat', 'file')
    fprintf('\n[0] (262/685) %s\n', '20250623T082106_T36RUV_20250621_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile120.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile120.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (262/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile120');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat', 'file')
    fprintf('\n[0] (263/685) %s\n', '20250623T082106_T36RUV_20250621_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile121.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile121.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (263/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile121');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat', 'file')
    fprintf('\n[0] (264/685) %s\n', '20250623T082106_T36RUV_20250621_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile122.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile122.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (264/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile122');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat', 'file')
    fprintf('\n[0] (265/685) %s\n', '20250623T082106_T36RUV_20250621_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile123.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile123.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (265/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile123');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat', 'file')
    fprintf('\n[0] (266/685) %s\n', '20250623T082106_T36RUV_20250621_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile124.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile124.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (266/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile124');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat', 'file')
    fprintf('\n[0] (267/685) %s\n', '20250623T082106_T36RUV_20250621_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile125.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile125.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (267/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile125');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat', 'file')
    fprintf('\n[0] (268/685) %s\n', '20250623T082106_T36RUV_20250621_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile126.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile126.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (268/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile126');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat', 'file')
    fprintf('\n[0] (269/685) %s\n', '20250623T082106_T36RUV_20250621_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (269/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat', 'file')
    fprintf('\n[0] (270/685) %s\n', '20250623T082106_T36RUV_20250621_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile131.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile131.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (270/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile131');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat', 'file')
    fprintf('\n[0] (271/685) %s\n', '20250623T082106_T36RUV_20250621_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile132.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile132.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (271/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile132');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat', 'file')
    fprintf('\n[0] (272/685) %s\n', '20250623T082106_T36RUV_20250621_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile133.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile133.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (272/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile133');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat', 'file')
    fprintf('\n[0] (273/685) %s\n', '20250623T082106_T36RUV_20250621_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile134.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile134.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (273/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile134');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat', 'file')
    fprintf('\n[0] (274/685) %s\n', '20250623T082106_T36RUV_20250621_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile135.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile135.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (274/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile135');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat', 'file')
    fprintf('\n[0] (275/685) %s\n', '20250623T082106_T36RUV_20250621_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile136.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile136.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (275/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile136');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat', 'file')
    fprintf('\n[0] (276/685) %s\n', '20250623T082106_T36RUV_20250621_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile137.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile137.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (276/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile137');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat', 'file')
    fprintf('\n[0] (277/685) %s\n', '20250623T082106_T36RUV_20250621_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile138.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile138.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (277/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile138');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat', 'file')
    fprintf('\n[0] (278/685) %s\n', '20250623T082106_T36RUV_20250621_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile139.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile139.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (278/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile139');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat', 'file')
    fprintf('\n[0] (279/685) %s\n', '20250623T082106_T36RUV_20250621_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile140.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile140.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (279/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile140');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat', 'file')
    fprintf('\n[0] (280/685) %s\n', '20250623T082106_T36RUV_20250621_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile141.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile141.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (280/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile141');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat', 'file')
    fprintf('\n[0] (281/685) %s\n', '20250623T082106_T36RUV_20250621_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile142.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile142.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (281/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile142');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat', 'file')
    fprintf('\n[0] (282/685) %s\n', '20250623T082106_T36RUV_20250621_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile143.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile143.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (282/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile143');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat', 'file')
    fprintf('\n[0] (283/685) %s\n', '20250623T082106_T36RUV_20250621_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile146.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile146.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (283/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile146');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat', 'file')
    fprintf('\n[0] (284/685) %s\n', '20250623T082106_T36RUV_20250621_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile147.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile147.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (284/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile147');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat', 'file')
    fprintf('\n[0] (285/685) %s\n', '20250623T082106_T36RUV_20250621_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile148.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile148.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (285/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile148');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat', 'file')
    fprintf('\n[0] (286/685) %s\n', '20250623T082106_T36RUV_20250621_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile149.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile149.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (286/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile149');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat', 'file')
    fprintf('\n[0] (287/685) %s\n', '20250623T082106_T36RUV_20250621_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile150.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile150.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (287/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile150');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat', 'file')
    fprintf('\n[0] (288/685) %s\n', '20250623T082106_T36RUV_20250621_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile151.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile151.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (288/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile151');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat', 'file')
    fprintf('\n[0] (289/685) %s\n', '20250623T082106_T36RUV_20250621_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile152.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile152.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (289/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile152');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat', 'file')
    fprintf('\n[0] (290/685) %s\n', '20250623T082106_T36RUV_20250621_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile153.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile153.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (290/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile153');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat', 'file')
    fprintf('\n[0] (291/685) %s\n', '20250623T082106_T36RUV_20250621_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile154.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile154.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (291/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile154');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat', 'file')
    fprintf('\n[0] (292/685) %s\n', '20250623T082106_T36RUV_20250621_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile155.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile155.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (292/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile155');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat', 'file')
    fprintf('\n[0] (293/685) %s\n', '20250623T082106_T36RUV_20250621_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile156.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile156.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (293/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile156');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat', 'file')
    fprintf('\n[0] (294/685) %s\n', '20250623T082106_T36RUV_20250621_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile157.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile157.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (294/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile157');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat', 'file')
    fprintf('\n[0] (295/685) %s\n', '20250623T082106_T36RUV_20250621_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile158.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile158.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (295/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile158');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat', 'file')
    fprintf('\n[0] (296/685) %s\n', '20250623T082106_T36RUV_20250621_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile159.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile159.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (296/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile159');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat', 'file')
    fprintf('\n[0] (297/685) %s\n', '20250623T082106_T36RUV_20250621_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile161.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile161.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (297/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile161');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat', 'file')
    fprintf('\n[0] (298/685) %s\n', '20250623T082106_T36RUV_20250621_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile162.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile162.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (298/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile162');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat', 'file')
    fprintf('\n[0] (299/685) %s\n', '20250623T082106_T36RUV_20250621_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile163.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile163.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (299/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile163');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat', 'file')
    fprintf('\n[0] (300/685) %s\n', '20250623T082106_T36RUV_20250621_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile164.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile164.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (300/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile164');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat', 'file')
    fprintf('\n[0] (301/685) %s\n', '20250623T082106_T36RUV_20250621_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile165.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile165.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (301/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile165');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat', 'file')
    fprintf('\n[0] (302/685) %s\n', '20250623T082106_T36RUV_20250621_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile166.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile166.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (302/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile166');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat', 'file')
    fprintf('\n[0] (303/685) %s\n', '20250623T082106_T36RUV_20250621_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile167.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile167.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (303/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile167');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat', 'file')
    fprintf('\n[0] (304/685) %s\n', '20250623T082106_T36RUV_20250621_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile168.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile168.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (304/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile168');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat', 'file')
    fprintf('\n[0] (305/685) %s\n', '20250623T082106_T36RUV_20250621_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile169.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile169.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (305/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile169');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat', 'file')
    fprintf('\n[0] (306/685) %s\n', '20250623T082106_T36RUV_20250621_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile170.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile170.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (306/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile170');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat', 'file')
    fprintf('\n[0] (307/685) %s\n', '20250623T082106_T36RUV_20250621_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile171.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile171.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (307/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile171');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat', 'file')
    fprintf('\n[0] (308/685) %s\n', '20250623T082106_T36RUV_20250621_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile172.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile172.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (308/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile172');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat', 'file')
    fprintf('\n[0] (309/685) %s\n', '20250623T082106_T36RUV_20250621_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile173.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile173.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (309/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile173');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat', 'file')
    fprintf('\n[0] (310/685) %s\n', '20250623T082106_T36RUV_20250621_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile174.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile174.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (310/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile174');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat', 'file')
    fprintf('\n[0] (311/685) %s\n', '20250623T082106_T36RUV_20250621_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile175.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile175.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (311/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile175');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat', 'file')
    fprintf('\n[0] (312/685) %s\n', '20250623T082106_T36RUV_20250621_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile178.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile178.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (312/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile178');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat', 'file')
    fprintf('\n[0] (313/685) %s\n', '20250623T082106_T36RUV_20250621_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile179.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile179.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (313/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile179');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat', 'file')
    fprintf('\n[0] (314/685) %s\n', '20250623T082106_T36RUV_20250621_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile180.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile180.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (314/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile180');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat', 'file')
    fprintf('\n[0] (315/685) %s\n', '20250623T082106_T36RUV_20250621_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile181.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile181.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (315/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile181');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat', 'file')
    fprintf('\n[0] (316/685) %s\n', '20250623T082106_T36RUV_20250621_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile182.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile182.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (316/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile182');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat', 'file')
    fprintf('\n[0] (317/685) %s\n', '20250623T082106_T36RUV_20250621_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile183.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile183.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (317/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile183');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat', 'file')
    fprintf('\n[0] (318/685) %s\n', '20250623T082106_T36RUV_20250621_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile184.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile184.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (318/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile184');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat', 'file')
    fprintf('\n[0] (319/685) %s\n', '20250623T082106_T36RUV_20250621_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile185.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile185.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (319/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile185');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat', 'file')
    fprintf('\n[0] (320/685) %s\n', '20250623T082106_T36RUV_20250621_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile186.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile186.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (320/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile186');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat', 'file')
    fprintf('\n[0] (321/685) %s\n', '20250623T082106_T36RUV_20250621_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile187.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile187.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (321/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile187');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat', 'file')
    fprintf('\n[0] (322/685) %s\n', '20250623T082106_T36RUV_20250621_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile188.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile188.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (322/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile188');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat', 'file')
    fprintf('\n[0] (323/685) %s\n', '20250623T082106_T36RUV_20250621_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile189.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile189.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (323/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile189');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat', 'file')
    fprintf('\n[0] (324/685) %s\n', '20250623T082106_T36RUV_20250621_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile190.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile190.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (324/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile190');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat', 'file')
    fprintf('\n[0] (325/685) %s\n', '20250623T082106_T36RUV_20250621_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250623T082106_T36RUV_20250621_tile191.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250623T082106_T36RUV_20250621_tile191.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250623T082106_T36RUV_20250621_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (325/685) %s — skip\n', '20250623T082106_T36RUV_20250621_tile191');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat', 'file')
    fprintf('\n[0] (326/685) %s\n', '20250805T093050_T35TLN_20250805_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile021.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile021.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (326/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile021');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat', 'file')
    fprintf('\n[0] (327/685) %s\n', '20250805T093050_T35TLN_20250805_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile032.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile032.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (327/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile032');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat', 'file')
    fprintf('\n[0] (328/685) %s\n', '20250805T093050_T35TLN_20250805_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile033.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile033.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (328/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile033');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat', 'file')
    fprintf('\n[0] (329/685) %s\n', '20250805T093050_T35TLN_20250805_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile034.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile034.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (329/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile034');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat', 'file')
    fprintf('\n[0] (330/685) %s\n', '20250805T093050_T35TLN_20250805_tile035');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile035.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile035.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile035,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (330/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile035');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat', 'file')
    fprintf('\n[0] (331/685) %s\n', '20250805T093050_T35TLN_20250805_tile036');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile036.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile036.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile036,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (331/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile036');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat', 'file')
    fprintf('\n[0] (332/685) %s\n', '20250805T093050_T35TLN_20250805_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (332/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat', 'file')
    fprintf('\n[0] (333/685) %s\n', '20250805T093050_T35TLN_20250805_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (333/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat', 'file')
    fprintf('\n[0] (334/685) %s\n', '20250805T093050_T35TLN_20250805_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile046.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile046.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (334/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile046');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat', 'file')
    fprintf('\n[0] (335/685) %s\n', '20250805T093050_T35TLN_20250805_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile047.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile047.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (335/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile047');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat', 'file')
    fprintf('\n[0] (336/685) %s\n', '20250805T093050_T35TLN_20250805_tile048');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile048.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile048.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile048,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (336/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile048');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat', 'file')
    fprintf('\n[0] (337/685) %s\n', '20250805T093050_T35TLN_20250805_tile049');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile049.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile049.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile049,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (337/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile049');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat', 'file')
    fprintf('\n[0] (338/685) %s\n', '20250805T093050_T35TLN_20250805_tile050');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile050.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile050.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile050,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (338/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile050');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat', 'file')
    fprintf('\n[0] (339/685) %s\n', '20250805T093050_T35TLN_20250805_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (339/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat', 'file')
    fprintf('\n[0] (340/685) %s\n', '20250805T093050_T35TLN_20250805_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (340/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat', 'file')
    fprintf('\n[0] (341/685) %s\n', '20250805T093050_T35TLN_20250805_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile059.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile059.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (341/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile059');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat', 'file')
    fprintf('\n[0] (342/685) %s\n', '20250805T093050_T35TLN_20250805_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile060.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile060.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (342/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile060');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat', 'file')
    fprintf('\n[0] (343/685) %s\n', '20250805T093050_T35TLN_20250805_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile061.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile061.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (343/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile061');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat', 'file')
    fprintf('\n[0] (344/685) %s\n', '20250805T093050_T35TLN_20250805_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile062.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile062.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (344/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile062');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat', 'file')
    fprintf('\n[0] (345/685) %s\n', '20250805T093050_T35TLN_20250805_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile063.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile063.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (345/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile063');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat', 'file')
    fprintf('\n[0] (346/685) %s\n', '20250805T093050_T35TLN_20250805_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile064.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile064.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (346/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile064');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat', 'file')
    fprintf('\n[0] (347/685) %s\n', '20250805T093050_T35TLN_20250805_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile065.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile065.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (347/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile065');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat', 'file')
    fprintf('\n[0] (348/685) %s\n', '20250805T093050_T35TLN_20250805_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile071.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile071.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (348/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile071');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat', 'file')
    fprintf('\n[0] (349/685) %s\n', '20250805T093050_T35TLN_20250805_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile072.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile072.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (349/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile072');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat', 'file')
    fprintf('\n[0] (350/685) %s\n', '20250805T093050_T35TLN_20250805_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile073.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile073.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (350/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile073');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat', 'file')
    fprintf('\n[0] (351/685) %s\n', '20250805T093050_T35TLN_20250805_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile074.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile074.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (351/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile074');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat', 'file')
    fprintf('\n[0] (352/685) %s\n', '20250805T093050_T35TLN_20250805_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile075.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile075.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (352/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile075');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat', 'file')
    fprintf('\n[0] (353/685) %s\n', '20250805T093050_T35TLN_20250805_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile076.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile076.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (353/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile076');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat', 'file')
    fprintf('\n[0] (354/685) %s\n', '20250805T093050_T35TLN_20250805_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (354/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat', 'file')
    fprintf('\n[0] (355/685) %s\n', '20250805T093050_T35TLN_20250805_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile078.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile078.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (355/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile078');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat', 'file')
    fprintf('\n[0] (356/685) %s\n', '20250805T093050_T35TLN_20250805_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile079.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile079.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (356/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile079');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat', 'file')
    fprintf('\n[0] (357/685) %s\n', '20250805T093050_T35TLN_20250805_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile085.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile085.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (357/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile085');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat', 'file')
    fprintf('\n[0] (358/685) %s\n', '20250805T093050_T35TLN_20250805_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile086.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile086.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (358/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile086');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat', 'file')
    fprintf('\n[0] (359/685) %s\n', '20250805T093050_T35TLN_20250805_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile087.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile087.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (359/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile087');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat', 'file')
    fprintf('\n[0] (360/685) %s\n', '20250805T093050_T35TLN_20250805_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile088.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile088.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (360/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile088');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat', 'file')
    fprintf('\n[0] (361/685) %s\n', '20250805T093050_T35TLN_20250805_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile089.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile089.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (361/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile089');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat', 'file')
    fprintf('\n[0] (362/685) %s\n', '20250805T093050_T35TLN_20250805_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (362/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat', 'file')
    fprintf('\n[0] (363/685) %s\n', '20250805T093050_T35TLN_20250805_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (363/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat', 'file')
    fprintf('\n[0] (364/685) %s\n', '20250805T093050_T35TLN_20250805_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (364/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat', 'file')
    fprintf('\n[0] (365/685) %s\n', '20250805T093050_T35TLN_20250805_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (365/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat', 'file')
    fprintf('\n[0] (366/685) %s\n', '20250805T093050_T35TLN_20250805_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (366/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat', 'file')
    fprintf('\n[0] (367/685) %s\n', '20250805T093050_T35TLN_20250805_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile099.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile099.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (367/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile099');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat', 'file')
    fprintf('\n[0] (368/685) %s\n', '20250805T093050_T35TLN_20250805_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile100.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile100.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (368/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile100');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat', 'file')
    fprintf('\n[0] (369/685) %s\n', '20250805T093050_T35TLN_20250805_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile101.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile101.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (369/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile101');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat', 'file')
    fprintf('\n[0] (370/685) %s\n', '20250805T093050_T35TLN_20250805_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile102.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile102.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (370/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile102');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat', 'file')
    fprintf('\n[0] (371/685) %s\n', '20250805T093050_T35TLN_20250805_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile103.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile103.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (371/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile103');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat', 'file')
    fprintf('\n[0] (372/685) %s\n', '20250805T093050_T35TLN_20250805_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile104.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile104.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (372/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile104');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat', 'file')
    fprintf('\n[0] (373/685) %s\n', '20250805T093050_T35TLN_20250805_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile105.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile105.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (373/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile105');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat', 'file')
    fprintf('\n[0] (374/685) %s\n', '20250805T093050_T35TLN_20250805_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile106.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile106.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (374/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile106');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat', 'file')
    fprintf('\n[0] (375/685) %s\n', '20250805T093050_T35TLN_20250805_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile107.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile107.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (375/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile107');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat', 'file')
    fprintf('\n[0] (376/685) %s\n', '20250805T093050_T35TLN_20250805_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile108.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile108.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (376/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile108');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat', 'file')
    fprintf('\n[0] (377/685) %s\n', '20250805T093050_T35TLN_20250805_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile113.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile113.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (377/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile113');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat', 'file')
    fprintf('\n[0] (378/685) %s\n', '20250805T093050_T35TLN_20250805_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile114.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile114.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (378/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile114');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat', 'file')
    fprintf('\n[0] (379/685) %s\n', '20250805T093050_T35TLN_20250805_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile115.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile115.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (379/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile115');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat', 'file')
    fprintf('\n[0] (380/685) %s\n', '20250805T093050_T35TLN_20250805_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile116.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile116.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (380/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile116');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat', 'file')
    fprintf('\n[0] (381/685) %s\n', '20250805T093050_T35TLN_20250805_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile117.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile117.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (381/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile117');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat', 'file')
    fprintf('\n[0] (382/685) %s\n', '20250805T093050_T35TLN_20250805_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile118.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile118.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (382/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile118');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat', 'file')
    fprintf('\n[0] (383/685) %s\n', '20250805T093050_T35TLN_20250805_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile119.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile119.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (383/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile119');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat', 'file')
    fprintf('\n[0] (384/685) %s\n', '20250805T093050_T35TLN_20250805_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile120.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile120.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (384/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile120');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat', 'file')
    fprintf('\n[0] (385/685) %s\n', '20250805T093050_T35TLN_20250805_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile121.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile121.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (385/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile121');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat', 'file')
    fprintf('\n[0] (386/685) %s\n', '20250805T093050_T35TLN_20250805_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile122.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile122.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (386/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile122');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat', 'file')
    fprintf('\n[0] (387/685) %s\n', '20250805T093050_T35TLN_20250805_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile123.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile123.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (387/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile123');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat', 'file')
    fprintf('\n[0] (388/685) %s\n', '20250805T093050_T35TLN_20250805_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile127.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile127.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (388/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile127');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat', 'file')
    fprintf('\n[0] (389/685) %s\n', '20250805T093050_T35TLN_20250805_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile128.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile128.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (389/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile128');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat', 'file')
    fprintf('\n[0] (390/685) %s\n', '20250805T093050_T35TLN_20250805_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile129.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile129.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (390/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile129');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat', 'file')
    fprintf('\n[0] (391/685) %s\n', '20250805T093050_T35TLN_20250805_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (391/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat', 'file')
    fprintf('\n[0] (392/685) %s\n', '20250805T093050_T35TLN_20250805_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile131.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile131.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (392/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile131');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat', 'file')
    fprintf('\n[0] (393/685) %s\n', '20250805T093050_T35TLN_20250805_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile132.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile132.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (393/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile132');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat', 'file')
    fprintf('\n[0] (394/685) %s\n', '20250805T093050_T35TLN_20250805_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile133.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile133.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (394/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile133');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat', 'file')
    fprintf('\n[0] (395/685) %s\n', '20250805T093050_T35TLN_20250805_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile134.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile134.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (395/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile134');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat', 'file')
    fprintf('\n[0] (396/685) %s\n', '20250805T093050_T35TLN_20250805_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile135.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile135.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (396/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile135');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat', 'file')
    fprintf('\n[0] (397/685) %s\n', '20250805T093050_T35TLN_20250805_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile136.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile136.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (397/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile136');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat', 'file')
    fprintf('\n[0] (398/685) %s\n', '20250805T093050_T35TLN_20250805_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile137.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile137.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (398/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile137');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat', 'file')
    fprintf('\n[0] (399/685) %s\n', '20250805T093050_T35TLN_20250805_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile140.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile140.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (399/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile140');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat', 'file')
    fprintf('\n[0] (400/685) %s\n', '20250805T093050_T35TLN_20250805_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile141.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile141.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (400/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile141');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat', 'file')
    fprintf('\n[0] (401/685) %s\n', '20250805T093050_T35TLN_20250805_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile142.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile142.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (401/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile142');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat', 'file')
    fprintf('\n[0] (402/685) %s\n', '20250805T093050_T35TLN_20250805_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile143.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile143.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (402/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile143');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat', 'file')
    fprintf('\n[0] (403/685) %s\n', '20250805T093050_T35TLN_20250805_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile144.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile144.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (403/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile144');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat', 'file')
    fprintf('\n[0] (404/685) %s\n', '20250805T093050_T35TLN_20250805_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile145.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile145.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (404/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile145');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat', 'file')
    fprintf('\n[0] (405/685) %s\n', '20250805T093050_T35TLN_20250805_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile146.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile146.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (405/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile146');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat', 'file')
    fprintf('\n[0] (406/685) %s\n', '20250805T093050_T35TLN_20250805_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile147.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile147.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (406/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile147');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat', 'file')
    fprintf('\n[0] (407/685) %s\n', '20250805T093050_T35TLN_20250805_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile148.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile148.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (407/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile148');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat', 'file')
    fprintf('\n[0] (408/685) %s\n', '20250805T093050_T35TLN_20250805_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile149.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile149.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (408/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile149');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat', 'file')
    fprintf('\n[0] (409/685) %s\n', '20250805T093050_T35TLN_20250805_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile150.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile150.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (409/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile150');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat', 'file')
    fprintf('\n[0] (410/685) %s\n', '20250805T093050_T35TLN_20250805_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile151.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile151.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (410/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile151');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat', 'file')
    fprintf('\n[0] (411/685) %s\n', '20250805T093050_T35TLN_20250805_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile152.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile152.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (411/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile152');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat', 'file')
    fprintf('\n[0] (412/685) %s\n', '20250805T093050_T35TLN_20250805_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile155.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile155.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (412/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile155');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat', 'file')
    fprintf('\n[0] (413/685) %s\n', '20250805T093050_T35TLN_20250805_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile156.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile156.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (413/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile156');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat', 'file')
    fprintf('\n[0] (414/685) %s\n', '20250805T093050_T35TLN_20250805_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile157.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile157.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (414/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile157');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat', 'file')
    fprintf('\n[0] (415/685) %s\n', '20250805T093050_T35TLN_20250805_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile158.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile158.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (415/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile158');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat', 'file')
    fprintf('\n[0] (416/685) %s\n', '20250805T093050_T35TLN_20250805_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile159.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile159.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (416/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile159');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat', 'file')
    fprintf('\n[0] (417/685) %s\n', '20250805T093050_T35TLN_20250805_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile160.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile160.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (417/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile160');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat', 'file')
    fprintf('\n[0] (418/685) %s\n', '20250805T093050_T35TLN_20250805_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile161.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile161.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (418/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile161');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat', 'file')
    fprintf('\n[0] (419/685) %s\n', '20250805T093050_T35TLN_20250805_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile162.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile162.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (419/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile162');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat', 'file')
    fprintf('\n[0] (420/685) %s\n', '20250805T093050_T35TLN_20250805_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile163.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile163.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (420/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile163');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat', 'file')
    fprintf('\n[0] (421/685) %s\n', '20250805T093050_T35TLN_20250805_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile164.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile164.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (421/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile164');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat', 'file')
    fprintf('\n[0] (422/685) %s\n', '20250805T093050_T35TLN_20250805_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile165.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile165.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (422/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile165');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat', 'file')
    fprintf('\n[0] (423/685) %s\n', '20250805T093050_T35TLN_20250805_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile166.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile166.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (423/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile166');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat', 'file')
    fprintf('\n[0] (424/685) %s\n', '20250805T093050_T35TLN_20250805_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile169.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile169.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (424/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile169');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat', 'file')
    fprintf('\n[0] (425/685) %s\n', '20250805T093050_T35TLN_20250805_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile170.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile170.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (425/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile170');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat', 'file')
    fprintf('\n[0] (426/685) %s\n', '20250805T093050_T35TLN_20250805_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile171.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile171.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (426/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile171');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat', 'file')
    fprintf('\n[0] (427/685) %s\n', '20250805T093050_T35TLN_20250805_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile172.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile172.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (427/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile172');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat', 'file')
    fprintf('\n[0] (428/685) %s\n', '20250805T093050_T35TLN_20250805_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile173.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile173.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (428/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile173');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat', 'file')
    fprintf('\n[0] (429/685) %s\n', '20250805T093050_T35TLN_20250805_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile174.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile174.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (429/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile174');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat', 'file')
    fprintf('\n[0] (430/685) %s\n', '20250805T093050_T35TLN_20250805_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile175.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile175.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (430/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile175');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat', 'file')
    fprintf('\n[0] (431/685) %s\n', '20250805T093050_T35TLN_20250805_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile176.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile176.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (431/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile176');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat', 'file')
    fprintf('\n[0] (432/685) %s\n', '20250805T093050_T35TLN_20250805_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile177.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile177.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (432/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile177');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat', 'file')
    fprintf('\n[0] (433/685) %s\n', '20250805T093050_T35TLN_20250805_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile178.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile178.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (433/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile178');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat', 'file')
    fprintf('\n[0] (434/685) %s\n', '20250805T093050_T35TLN_20250805_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile179.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile179.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (434/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile179');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat', 'file')
    fprintf('\n[0] (435/685) %s\n', '20250805T093050_T35TLN_20250805_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile183.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile183.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (435/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile183');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat', 'file')
    fprintf('\n[0] (436/685) %s\n', '20250805T093050_T35TLN_20250805_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile184.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile184.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (436/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile184');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat', 'file')
    fprintf('\n[0] (437/685) %s\n', '20250805T093050_T35TLN_20250805_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile185.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile185.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (437/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile185');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat', 'file')
    fprintf('\n[0] (438/685) %s\n', '20250805T093050_T35TLN_20250805_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile186.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile186.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (438/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile186');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat', 'file')
    fprintf('\n[0] (439/685) %s\n', '20250805T093050_T35TLN_20250805_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile187.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile187.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (439/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile187');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat', 'file')
    fprintf('\n[0] (440/685) %s\n', '20250805T093050_T35TLN_20250805_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile188.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile188.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (440/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile188');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat', 'file')
    fprintf('\n[0] (441/685) %s\n', '20250805T093050_T35TLN_20250805_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile189.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile189.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (441/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile189');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat', 'file')
    fprintf('\n[0] (442/685) %s\n', '20250805T093050_T35TLN_20250805_tile190');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile190.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile190.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile190,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (442/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile190');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat', 'file')
    fprintf('\n[0] (443/685) %s\n', '20250805T093050_T35TLN_20250805_tile191');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile191.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile191.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile191,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (443/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile191');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat', 'file')
    fprintf('\n[0] (444/685) %s\n', '20250805T093050_T35TLN_20250805_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile197.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile197.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (444/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile197');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat', 'file')
    fprintf('\n[0] (445/685) %s\n', '20250805T093050_T35TLN_20250805_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile198.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile198.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (445/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile198');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat', 'file')
    fprintf('\n[0] (446/685) %s\n', '20250805T093050_T35TLN_20250805_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile199.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile199.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (446/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile199');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat', 'file')
    fprintf('\n[0] (447/685) %s\n', '20250805T093050_T35TLN_20250805_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile200.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile200.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (447/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile200');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat', 'file')
    fprintf('\n[0] (448/685) %s\n', '20250805T093050_T35TLN_20250805_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile201.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile201.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (448/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile201');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat', 'file')
    fprintf('\n[0] (449/685) %s\n', '20250805T093050_T35TLN_20250805_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile202.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile202.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (449/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile202');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat', 'file')
    fprintf('\n[0] (450/685) %s\n', '20250805T093050_T35TLN_20250805_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile203.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile203.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (450/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile203');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat', 'file')
    fprintf('\n[0] (451/685) %s\n', '20250805T093050_T35TLN_20250805_tile212');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile212.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile212.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile212,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (451/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile212');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat', 'file')
    fprintf('\n[0] (452/685) %s\n', '20250805T093050_T35TLN_20250805_tile213');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile213.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile213.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile213,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (452/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile213');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat', 'file')
    fprintf('\n[0] (453/685) %s\n', '20250805T093050_T35TLN_20250805_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile214.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile214.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (453/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile214');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat', 'file')
    fprintf('\n[0] (454/685) %s\n', '20250805T093050_T35TLN_20250805_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile215.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile215.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (454/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile215');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat', 'file')
    fprintf('\n[0] (455/685) %s\n', '20250805T093050_T35TLN_20250805_tile226');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat';
    msi_path = 'data/MS/EMIT32/20250805T093050_T35TLN_20250805_tile226.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250805T093050_T35TLN_20250805_tile226.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250805T093050_T35TLN_20250805_tile226,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (455/685) %s — skip\n', '20250805T093050_T35TLN_20250805_tile226');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat', 'file')
    fprintf('\n[0] (456/685) %s\n', '20250830T085101_T35KKT_20250829_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile021.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (456/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile021');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat', 'file')
    fprintf('\n[0] (457/685) %s\n', '20250830T085101_T35KKT_20250829_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile032.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (457/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile032');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat', 'file')
    fprintf('\n[0] (458/685) %s\n', '20250830T085101_T35KKT_20250829_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile033.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (458/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile033');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat', 'file')
    fprintf('\n[0] (459/685) %s\n', '20250830T085101_T35KKT_20250829_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile034.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (459/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile034');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat', 'file')
    fprintf('\n[0] (460/685) %s\n', '20250830T085101_T35KKT_20250829_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile043.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (460/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile043');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat', 'file')
    fprintf('\n[0] (461/685) %s\n', '20250830T085101_T35KKT_20250829_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (461/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat', 'file')
    fprintf('\n[0] (462/685) %s\n', '20250830T085101_T35KKT_20250829_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (462/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat', 'file')
    fprintf('\n[0] (463/685) %s\n', '20250830T085101_T35KKT_20250829_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile046.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (463/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile046');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat', 'file')
    fprintf('\n[0] (464/685) %s\n', '20250830T085101_T35KKT_20250829_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile054.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (464/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile054');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat', 'file')
    fprintf('\n[0] (465/685) %s\n', '20250830T085101_T35KKT_20250829_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile055.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (465/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile055');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat', 'file')
    fprintf('\n[0] (466/685) %s\n', '20250830T085101_T35KKT_20250829_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile056.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (466/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile056');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat', 'file')
    fprintf('\n[0] (467/685) %s\n', '20250830T085101_T35KKT_20250829_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (467/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat', 'file')
    fprintf('\n[0] (468/685) %s\n', '20250830T085101_T35KKT_20250829_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (468/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat', 'file')
    fprintf('\n[0] (469/685) %s\n', '20250830T085101_T35KKT_20250829_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile059.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (469/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile059');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat', 'file')
    fprintf('\n[0] (470/685) %s\n', '20250830T085101_T35KKT_20250829_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile065.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (470/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile065');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat', 'file')
    fprintf('\n[0] (471/685) %s\n', '20250830T085101_T35KKT_20250829_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile066.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (471/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile066');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat', 'file')
    fprintf('\n[0] (472/685) %s\n', '20250830T085101_T35KKT_20250829_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile067.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (472/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile067');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat', 'file')
    fprintf('\n[0] (473/685) %s\n', '20250830T085101_T35KKT_20250829_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile068.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (473/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile068');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat', 'file')
    fprintf('\n[0] (474/685) %s\n', '20250830T085101_T35KKT_20250829_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile069.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (474/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile069');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat', 'file')
    fprintf('\n[0] (475/685) %s\n', '20250830T085101_T35KKT_20250829_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile070.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (475/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile070');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat', 'file')
    fprintf('\n[0] (476/685) %s\n', '20250830T085101_T35KKT_20250829_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile071.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (476/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile071');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat', 'file')
    fprintf('\n[0] (477/685) %s\n', '20250830T085101_T35KKT_20250829_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile076.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (477/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile076');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat', 'file')
    fprintf('\n[0] (478/685) %s\n', '20250830T085101_T35KKT_20250829_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (478/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat', 'file')
    fprintf('\n[0] (479/685) %s\n', '20250830T085101_T35KKT_20250829_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile078.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (479/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile078');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat', 'file')
    fprintf('\n[0] (480/685) %s\n', '20250830T085101_T35KKT_20250829_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile079.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (480/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile079');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat', 'file')
    fprintf('\n[0] (481/685) %s\n', '20250830T085101_T35KKT_20250829_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile080.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (481/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile080');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat', 'file')
    fprintf('\n[0] (482/685) %s\n', '20250830T085101_T35KKT_20250829_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile081.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (482/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile081');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat', 'file')
    fprintf('\n[0] (483/685) %s\n', '20250830T085101_T35KKT_20250829_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile082.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (483/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile082');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat', 'file')
    fprintf('\n[0] (484/685) %s\n', '20250830T085101_T35KKT_20250829_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile083.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (484/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile083');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat', 'file')
    fprintf('\n[0] (485/685) %s\n', '20250830T085101_T35KKT_20250829_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile087.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (485/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile087');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat', 'file')
    fprintf('\n[0] (486/685) %s\n', '20250830T085101_T35KKT_20250829_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile088.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (486/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile088');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat', 'file')
    fprintf('\n[0] (487/685) %s\n', '20250830T085101_T35KKT_20250829_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile089.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (487/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile089');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat', 'file')
    fprintf('\n[0] (488/685) %s\n', '20250830T085101_T35KKT_20250829_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (488/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat', 'file')
    fprintf('\n[0] (489/685) %s\n', '20250830T085101_T35KKT_20250829_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (489/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat', 'file')
    fprintf('\n[0] (490/685) %s\n', '20250830T085101_T35KKT_20250829_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (490/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat', 'file')
    fprintf('\n[0] (491/685) %s\n', '20250830T085101_T35KKT_20250829_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (491/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat', 'file')
    fprintf('\n[0] (492/685) %s\n', '20250830T085101_T35KKT_20250829_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (492/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat', 'file')
    fprintf('\n[0] (493/685) %s\n', '20250830T085101_T35KKT_20250829_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile095.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (493/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile095');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat', 'file')
    fprintf('\n[0] (494/685) %s\n', '20250830T085101_T35KKT_20250829_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile098.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (494/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile098');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat', 'file')
    fprintf('\n[0] (495/685) %s\n', '20250830T085101_T35KKT_20250829_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile099.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (495/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile099');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat', 'file')
    fprintf('\n[0] (496/685) %s\n', '20250830T085101_T35KKT_20250829_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile100.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (496/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile100');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat', 'file')
    fprintf('\n[0] (497/685) %s\n', '20250830T085101_T35KKT_20250829_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile101.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (497/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile101');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat', 'file')
    fprintf('\n[0] (498/685) %s\n', '20250830T085101_T35KKT_20250829_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile102.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (498/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile102');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat', 'file')
    fprintf('\n[0] (499/685) %s\n', '20250830T085101_T35KKT_20250829_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile103.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (499/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile103');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat', 'file')
    fprintf('\n[0] (500/685) %s\n', '20250830T085101_T35KKT_20250829_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile104.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (500/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile104');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat', 'file')
    fprintf('\n[0] (501/685) %s\n', '20250830T085101_T35KKT_20250829_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile105.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (501/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile105');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat', 'file')
    fprintf('\n[0] (502/685) %s\n', '20250830T085101_T35KKT_20250829_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile106.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (502/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile106');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat', 'file')
    fprintf('\n[0] (503/685) %s\n', '20250830T085101_T35KKT_20250829_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile107.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (503/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile107');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat', 'file')
    fprintf('\n[0] (504/685) %s\n', '20250830T085101_T35KKT_20250829_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile109.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (504/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile109');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat', 'file')
    fprintf('\n[0] (505/685) %s\n', '20250830T085101_T35KKT_20250829_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile110.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (505/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile110');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat', 'file')
    fprintf('\n[0] (506/685) %s\n', '20250830T085101_T35KKT_20250829_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile111.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (506/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile111');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat', 'file')
    fprintf('\n[0] (507/685) %s\n', '20250830T085101_T35KKT_20250829_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile112.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (507/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile112');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat', 'file')
    fprintf('\n[0] (508/685) %s\n', '20250830T085101_T35KKT_20250829_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile113.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (508/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile113');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat', 'file')
    fprintf('\n[0] (509/685) %s\n', '20250830T085101_T35KKT_20250829_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile114.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (509/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile114');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat', 'file')
    fprintf('\n[0] (510/685) %s\n', '20250830T085101_T35KKT_20250829_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile115.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (510/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile115');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat', 'file')
    fprintf('\n[0] (511/685) %s\n', '20250830T085101_T35KKT_20250829_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile116.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (511/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile116');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat', 'file')
    fprintf('\n[0] (512/685) %s\n', '20250830T085101_T35KKT_20250829_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile117.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (512/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile117');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat', 'file')
    fprintf('\n[0] (513/685) %s\n', '20250830T085101_T35KKT_20250829_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile118.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (513/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile118');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat', 'file')
    fprintf('\n[0] (514/685) %s\n', '20250830T085101_T35KKT_20250829_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile119.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (514/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile119');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat', 'file')
    fprintf('\n[0] (515/685) %s\n', '20250830T085101_T35KKT_20250829_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile121.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (515/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile121');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat', 'file')
    fprintf('\n[0] (516/685) %s\n', '20250830T085101_T35KKT_20250829_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile122.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (516/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile122');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat', 'file')
    fprintf('\n[0] (517/685) %s\n', '20250830T085101_T35KKT_20250829_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile123.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (517/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile123');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat', 'file')
    fprintf('\n[0] (518/685) %s\n', '20250830T085101_T35KKT_20250829_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile124.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (518/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile124');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat', 'file')
    fprintf('\n[0] (519/685) %s\n', '20250830T085101_T35KKT_20250829_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile125.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (519/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile125');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat', 'file')
    fprintf('\n[0] (520/685) %s\n', '20250830T085101_T35KKT_20250829_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile126.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (520/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile126');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat', 'file')
    fprintf('\n[0] (521/685) %s\n', '20250830T085101_T35KKT_20250829_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile127.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (521/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile127');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat', 'file')
    fprintf('\n[0] (522/685) %s\n', '20250830T085101_T35KKT_20250829_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile128.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (522/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile128');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat', 'file')
    fprintf('\n[0] (523/685) %s\n', '20250830T085101_T35KKT_20250829_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile129.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (523/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile129');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat', 'file')
    fprintf('\n[0] (524/685) %s\n', '20250830T085101_T35KKT_20250829_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (524/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat', 'file')
    fprintf('\n[0] (525/685) %s\n', '20250830T085101_T35KKT_20250829_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile134.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (525/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile134');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat', 'file')
    fprintf('\n[0] (526/685) %s\n', '20250830T085101_T35KKT_20250829_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile135.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (526/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile135');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat', 'file')
    fprintf('\n[0] (527/685) %s\n', '20250830T085101_T35KKT_20250829_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile136.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (527/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile136');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat', 'file')
    fprintf('\n[0] (528/685) %s\n', '20250830T085101_T35KKT_20250829_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile137.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (528/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile137');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat', 'file')
    fprintf('\n[0] (529/685) %s\n', '20250830T085101_T35KKT_20250829_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile138.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (529/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile138');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat', 'file')
    fprintf('\n[0] (530/685) %s\n', '20250830T085101_T35KKT_20250829_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile139.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (530/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile139');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat', 'file')
    fprintf('\n[0] (531/685) %s\n', '20250830T085101_T35KKT_20250829_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile140.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (531/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile140');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat', 'file')
    fprintf('\n[0] (532/685) %s\n', '20250830T085101_T35KKT_20250829_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile141.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (532/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile141');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat', 'file')
    fprintf('\n[0] (533/685) %s\n', '20250830T085101_T35KKT_20250829_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile147.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (533/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile147');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat', 'file')
    fprintf('\n[0] (534/685) %s\n', '20250830T085101_T35KKT_20250829_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile148.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (534/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile148');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat', 'file')
    fprintf('\n[0] (535/685) %s\n', '20250830T085101_T35KKT_20250829_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile149.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (535/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile149');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat', 'file')
    fprintf('\n[0] (536/685) %s\n', '20250830T085101_T35KKT_20250829_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile150.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (536/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile150');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat', 'file')
    fprintf('\n[0] (537/685) %s\n', '20250830T085101_T35KKT_20250829_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile151.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (537/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile151');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat', 'file')
    fprintf('\n[0] (538/685) %s\n', '20250830T085101_T35KKT_20250829_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile152.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (538/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile152');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat', 'file')
    fprintf('\n[0] (539/685) %s\n', '20250830T085101_T35KKT_20250829_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile160.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (539/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile160');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat', 'file')
    fprintf('\n[0] (540/685) %s\n', '20250830T085101_T35KKT_20250829_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile161.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (540/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile161');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat', 'file')
    fprintf('\n[0] (541/685) %s\n', '20250830T085101_T35KKT_20250829_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile162.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (541/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile162');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat', 'file')
    fprintf('\n[0] (542/685) %s\n', '20250830T085101_T35KKT_20250829_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile163.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (542/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile163');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat', 'file')
    fprintf('\n[0] (543/685) %s\n', '20250830T085101_T35KKT_20250829_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile173.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (543/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile173');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat', 'file')
    fprintf('\n[0] (544/685) %s\n', '20250830T085101_T35KKT_20250829_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile174.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (544/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile174');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat', 'file')
    fprintf('\n[0] (545/685) %s\n', '20250830T085101_T35KKT_20250829_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile175.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (545/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile175');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat', 'file')
    fprintf('\n[0] (546/685) %s\n', '20250830T085101_T35KKT_20250829_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile186.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (546/685) %s — skip\n', '20250830T085101_T35KKT_20250829_tile186');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat', 'file')
    fprintf('\n[0] (547/685) %s\n', '20251124T142919_T19KDP_20251123_tile008');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile008.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile008,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (547/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile008');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat', 'file')
    fprintf('\n[0] (548/685) %s\n', '20251124T142919_T19KDP_20251123_tile022');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile022.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile022,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (548/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile022');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat', 'file')
    fprintf('\n[0] (549/685) %s\n', '20251124T142919_T19KDP_20251123_tile023');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile023.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile023.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile023,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (549/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile023');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat', 'file')
    fprintf('\n[0] (550/685) %s\n', '20251124T142919_T19KDP_20251123_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile024.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (550/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile024');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat', 'file')
    fprintf('\n[0] (551/685) %s\n', '20251124T142919_T19KDP_20251123_tile025');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile025.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile025,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (551/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile025');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat', 'file')
    fprintf('\n[0] (552/685) %s\n', '20251124T142919_T19KDP_20251123_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile026.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (552/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile026');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat', 'file')
    fprintf('\n[0] (553/685) %s\n', '20251124T142919_T19KDP_20251123_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile027.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (553/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile027');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat', 'file')
    fprintf('\n[0] (554/685) %s\n', '20251124T142919_T19KDP_20251123_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile028.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (554/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile028');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat', 'file')
    fprintf('\n[0] (555/685) %s\n', '20251124T142919_T19KDP_20251123_tile037');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile037.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile037,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (555/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile037');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat', 'file')
    fprintf('\n[0] (556/685) %s\n', '20251124T142919_T19KDP_20251123_tile038');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile038.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile038.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile038,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (556/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile038');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat', 'file')
    fprintf('\n[0] (557/685) %s\n', '20251124T142919_T19KDP_20251123_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile039.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile039.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (557/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile039');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat', 'file')
    fprintf('\n[0] (558/685) %s\n', '20251124T142919_T19KDP_20251123_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile040.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (558/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile040');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat', 'file')
    fprintf('\n[0] (559/685) %s\n', '20251124T142919_T19KDP_20251123_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile041.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (559/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile041');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat', 'file')
    fprintf('\n[0] (560/685) %s\n', '20251124T142919_T19KDP_20251123_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile042.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (560/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile042');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat', 'file')
    fprintf('\n[0] (561/685) %s\n', '20251124T142919_T19KDP_20251123_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile043.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (561/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile043');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat', 'file')
    fprintf('\n[0] (562/685) %s\n', '20251124T142919_T19KDP_20251123_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile044.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (562/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile044');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat', 'file')
    fprintf('\n[0] (563/685) %s\n', '20251124T142919_T19KDP_20251123_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile045.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (563/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile045');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat', 'file')
    fprintf('\n[0] (564/685) %s\n', '20251124T142919_T19KDP_20251123_tile052');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile052.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile052,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (564/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile052');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat', 'file')
    fprintf('\n[0] (565/685) %s\n', '20251124T142919_T19KDP_20251123_tile053');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile053.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile053,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (565/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile053');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat', 'file')
    fprintf('\n[0] (566/685) %s\n', '20251124T142919_T19KDP_20251123_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile054.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (566/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile054');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat', 'file')
    fprintf('\n[0] (567/685) %s\n', '20251124T142919_T19KDP_20251123_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile055.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (567/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile055');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat', 'file')
    fprintf('\n[0] (568/685) %s\n', '20251124T142919_T19KDP_20251123_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile056.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (568/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile056');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat', 'file')
    fprintf('\n[0] (569/685) %s\n', '20251124T142919_T19KDP_20251123_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile057.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (569/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile057');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat', 'file')
    fprintf('\n[0] (570/685) %s\n', '20251124T142919_T19KDP_20251123_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile058.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (570/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile058');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat', 'file')
    fprintf('\n[0] (571/685) %s\n', '20251124T142919_T19KDP_20251123_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile059.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (571/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile059');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat', 'file')
    fprintf('\n[0] (572/685) %s\n', '20251124T142919_T19KDP_20251123_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile060.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (572/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile060');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat', 'file')
    fprintf('\n[0] (573/685) %s\n', '20251124T142919_T19KDP_20251123_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile061.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (573/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile061');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat', 'file')
    fprintf('\n[0] (574/685) %s\n', '20251124T142919_T19KDP_20251123_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile062.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (574/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile062');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat', 'file')
    fprintf('\n[0] (575/685) %s\n', '20251124T142919_T19KDP_20251123_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile068.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile068.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (575/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile068');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat', 'file')
    fprintf('\n[0] (576/685) %s\n', '20251124T142919_T19KDP_20251123_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile069.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (576/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile069');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat', 'file')
    fprintf('\n[0] (577/685) %s\n', '20251124T142919_T19KDP_20251123_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile070.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (577/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile070');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat', 'file')
    fprintf('\n[0] (578/685) %s\n', '20251124T142919_T19KDP_20251123_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile071.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (578/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile071');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat', 'file')
    fprintf('\n[0] (579/685) %s\n', '20251124T142919_T19KDP_20251123_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile072.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (579/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile072');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat', 'file')
    fprintf('\n[0] (580/685) %s\n', '20251124T142919_T19KDP_20251123_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile073.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (580/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile073');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat', 'file')
    fprintf('\n[0] (581/685) %s\n', '20251124T142919_T19KDP_20251123_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile074.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (581/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile074');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat', 'file')
    fprintf('\n[0] (582/685) %s\n', '20251124T142919_T19KDP_20251123_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile075.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (582/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile075');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat', 'file')
    fprintf('\n[0] (583/685) %s\n', '20251124T142919_T19KDP_20251123_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile076.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile076.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (583/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile076');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat', 'file')
    fprintf('\n[0] (584/685) %s\n', '20251124T142919_T19KDP_20251123_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile077.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (584/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile077');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat', 'file')
    fprintf('\n[0] (585/685) %s\n', '20251124T142919_T19KDP_20251123_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile078.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (585/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile078');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat', 'file')
    fprintf('\n[0] (586/685) %s\n', '20251124T142919_T19KDP_20251123_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile079.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (586/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile079');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat', 'file')
    fprintf('\n[0] (587/685) %s\n', '20251124T142919_T19KDP_20251123_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile083.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (587/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile083');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat', 'file')
    fprintf('\n[0] (588/685) %s\n', '20251124T142919_T19KDP_20251123_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile084.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile084.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (588/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile084');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat', 'file')
    fprintf('\n[0] (589/685) %s\n', '20251124T142919_T19KDP_20251123_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile085.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (589/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile085');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat', 'file')
    fprintf('\n[0] (590/685) %s\n', '20251124T142919_T19KDP_20251123_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile086.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (590/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile086');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat', 'file')
    fprintf('\n[0] (591/685) %s\n', '20251124T142919_T19KDP_20251123_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile087.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (591/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile087');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat', 'file')
    fprintf('\n[0] (592/685) %s\n', '20251124T142919_T19KDP_20251123_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile088.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (592/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile088');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat', 'file')
    fprintf('\n[0] (593/685) %s\n', '20251124T142919_T19KDP_20251123_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile089.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (593/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile089');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat', 'file')
    fprintf('\n[0] (594/685) %s\n', '20251124T142919_T19KDP_20251123_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile090.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (594/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile090');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat', 'file')
    fprintf('\n[0] (595/685) %s\n', '20251124T142919_T19KDP_20251123_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile091.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (595/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile091');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat', 'file')
    fprintf('\n[0] (596/685) %s\n', '20251124T142919_T19KDP_20251123_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile092.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile092.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (596/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile092');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat', 'file')
    fprintf('\n[0] (597/685) %s\n', '20251124T142919_T19KDP_20251123_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile093.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (597/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile093');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat', 'file')
    fprintf('\n[0] (598/685) %s\n', '20251124T142919_T19KDP_20251123_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile094.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile094.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (598/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile094');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat', 'file')
    fprintf('\n[0] (599/685) %s\n', '20251124T142919_T19KDP_20251123_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile095.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (599/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile095');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat', 'file')
    fprintf('\n[0] (600/685) %s\n', '20251124T142919_T19KDP_20251123_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile098.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (600/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile098');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat', 'file')
    fprintf('\n[0] (601/685) %s\n', '20251124T142919_T19KDP_20251123_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile099.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (601/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile099');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat', 'file')
    fprintf('\n[0] (602/685) %s\n', '20251124T142919_T19KDP_20251123_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile100.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (602/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile100');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat', 'file')
    fprintf('\n[0] (603/685) %s\n', '20251124T142919_T19KDP_20251123_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile101.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (603/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile101');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat', 'file')
    fprintf('\n[0] (604/685) %s\n', '20251124T142919_T19KDP_20251123_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile102.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (604/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile102');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat', 'file')
    fprintf('\n[0] (605/685) %s\n', '20251124T142919_T19KDP_20251123_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile103.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (605/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile103');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat', 'file')
    fprintf('\n[0] (606/685) %s\n', '20251124T142919_T19KDP_20251123_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile104.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile104.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (606/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile104');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat', 'file')
    fprintf('\n[0] (607/685) %s\n', '20251124T142919_T19KDP_20251123_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile105.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (607/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile105');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat', 'file')
    fprintf('\n[0] (608/685) %s\n', '20251124T142919_T19KDP_20251123_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile106.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (608/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile106');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat', 'file')
    fprintf('\n[0] (609/685) %s\n', '20251124T142919_T19KDP_20251123_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile107.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile107.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (609/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile107');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat', 'file')
    fprintf('\n[0] (610/685) %s\n', '20251124T142919_T19KDP_20251123_tile108');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile108.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile108.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile108,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (610/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile108');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat', 'file')
    fprintf('\n[0] (611/685) %s\n', '20251124T142919_T19KDP_20251123_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile109.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (611/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile109');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat', 'file')
    fprintf('\n[0] (612/685) %s\n', '20251124T142919_T19KDP_20251123_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile110.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile110.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (612/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile110');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat', 'file')
    fprintf('\n[0] (613/685) %s\n', '20251124T142919_T19KDP_20251123_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile111.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (613/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile111');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat', 'file')
    fprintf('\n[0] (614/685) %s\n', '20251124T142919_T19KDP_20251123_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile113.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (614/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile113');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat', 'file')
    fprintf('\n[0] (615/685) %s\n', '20251124T142919_T19KDP_20251123_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile114.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (615/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile114');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat', 'file')
    fprintf('\n[0] (616/685) %s\n', '20251124T142919_T19KDP_20251123_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile115.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (616/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile115');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat', 'file')
    fprintf('\n[0] (617/685) %s\n', '20251124T142919_T19KDP_20251123_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile116.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (617/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile116');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat', 'file')
    fprintf('\n[0] (618/685) %s\n', '20251124T142919_T19KDP_20251123_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile117.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (618/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile117');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat', 'file')
    fprintf('\n[0] (619/685) %s\n', '20251124T142919_T19KDP_20251123_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile118.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (619/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile118');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat', 'file')
    fprintf('\n[0] (620/685) %s\n', '20251124T142919_T19KDP_20251123_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile119.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (620/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile119');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat', 'file')
    fprintf('\n[0] (621/685) %s\n', '20251124T142919_T19KDP_20251123_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile120.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (621/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile120');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat', 'file')
    fprintf('\n[0] (622/685) %s\n', '20251124T142919_T19KDP_20251123_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile121.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (622/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile121');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat', 'file')
    fprintf('\n[0] (623/685) %s\n', '20251124T142919_T19KDP_20251123_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile122.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (623/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile122');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat', 'file')
    fprintf('\n[0] (624/685) %s\n', '20251124T142919_T19KDP_20251123_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile123.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (624/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile123');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat', 'file')
    fprintf('\n[0] (625/685) %s\n', '20251124T142919_T19KDP_20251123_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile124.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (625/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile124');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat', 'file')
    fprintf('\n[0] (626/685) %s\n', '20251124T142919_T19KDP_20251123_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile125.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (626/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile125');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat', 'file')
    fprintf('\n[0] (627/685) %s\n', '20251124T142919_T19KDP_20251123_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile126.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile126.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (627/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile126');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat', 'file')
    fprintf('\n[0] (628/685) %s\n', '20251124T142919_T19KDP_20251123_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile127.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (628/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile127');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat', 'file')
    fprintf('\n[0] (629/685) %s\n', '20251124T142919_T19KDP_20251123_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile130.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (629/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile130');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat', 'file')
    fprintf('\n[0] (630/685) %s\n', '20251124T142919_T19KDP_20251123_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile131.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (630/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile131');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat', 'file')
    fprintf('\n[0] (631/685) %s\n', '20251124T142919_T19KDP_20251123_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile132.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (631/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile132');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat', 'file')
    fprintf('\n[0] (632/685) %s\n', '20251124T142919_T19KDP_20251123_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile133.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile133.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (632/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile133');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat', 'file')
    fprintf('\n[0] (633/685) %s\n', '20251124T142919_T19KDP_20251123_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile134.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile134.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (633/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile134');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat', 'file')
    fprintf('\n[0] (634/685) %s\n', '20251124T142919_T19KDP_20251123_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile135.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (634/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile135');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat', 'file')
    fprintf('\n[0] (635/685) %s\n', '20251124T142919_T19KDP_20251123_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile136.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (635/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile136');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat', 'file')
    fprintf('\n[0] (636/685) %s\n', '20251124T142919_T19KDP_20251123_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile137.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (636/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile137');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat', 'file')
    fprintf('\n[0] (637/685) %s\n', '20251124T142919_T19KDP_20251123_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile138.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (637/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile138');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat', 'file')
    fprintf('\n[0] (638/685) %s\n', '20251124T142919_T19KDP_20251123_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile139.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (638/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile139');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat', 'file')
    fprintf('\n[0] (639/685) %s\n', '20251124T142919_T19KDP_20251123_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile140.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (639/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile140');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat', 'file')
    fprintf('\n[0] (640/685) %s\n', '20251124T142919_T19KDP_20251123_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile141.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (640/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile141');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat', 'file')
    fprintf('\n[0] (641/685) %s\n', '20251124T142919_T19KDP_20251123_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile142.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (641/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile142');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat', 'file')
    fprintf('\n[0] (642/685) %s\n', '20251124T142919_T19KDP_20251123_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile143.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (642/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile143');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat', 'file')
    fprintf('\n[0] (643/685) %s\n', '20251124T142919_T19KDP_20251123_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile147.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (643/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile147');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat', 'file')
    fprintf('\n[0] (644/685) %s\n', '20251124T142919_T19KDP_20251123_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile148.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (644/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile148');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat', 'file')
    fprintf('\n[0] (645/685) %s\n', '20251124T142919_T19KDP_20251123_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile149.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (645/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile149');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat', 'file')
    fprintf('\n[0] (646/685) %s\n', '20251124T142919_T19KDP_20251123_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile150.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (646/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile150');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat', 'file')
    fprintf('\n[0] (647/685) %s\n', '20251124T142919_T19KDP_20251123_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile151.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (647/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile151');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat', 'file')
    fprintf('\n[0] (648/685) %s\n', '20251124T142919_T19KDP_20251123_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile152.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (648/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile152');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat', 'file')
    fprintf('\n[0] (649/685) %s\n', '20251124T142919_T19KDP_20251123_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile153.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (649/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile153');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat', 'file')
    fprintf('\n[0] (650/685) %s\n', '20251124T142919_T19KDP_20251123_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile154.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (650/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile154');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat', 'file')
    fprintf('\n[0] (651/685) %s\n', '20251124T142919_T19KDP_20251123_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile155.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (651/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile155');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat', 'file')
    fprintf('\n[0] (652/685) %s\n', '20251124T142919_T19KDP_20251123_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile156.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (652/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile156');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat', 'file')
    fprintf('\n[0] (653/685) %s\n', '20251124T142919_T19KDP_20251123_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile157.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (653/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile157');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat', 'file')
    fprintf('\n[0] (654/685) %s\n', '20251124T142919_T19KDP_20251123_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile158.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (654/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile158');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat', 'file')
    fprintf('\n[0] (655/685) %s\n', '20251124T142919_T19KDP_20251123_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile159.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (655/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile159');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat', 'file')
    fprintf('\n[0] (656/685) %s\n', '20251124T142919_T19KDP_20251123_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile164.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (656/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile164');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat', 'file')
    fprintf('\n[0] (657/685) %s\n', '20251124T142919_T19KDP_20251123_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile165.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (657/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile165');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat', 'file')
    fprintf('\n[0] (658/685) %s\n', '20251124T142919_T19KDP_20251123_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile166.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (658/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile166');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat', 'file')
    fprintf('\n[0] (659/685) %s\n', '20251124T142919_T19KDP_20251123_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile167.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (659/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile167');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat', 'file')
    fprintf('\n[0] (660/685) %s\n', '20251124T142919_T19KDP_20251123_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile168.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (660/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile168');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat', 'file')
    fprintf('\n[0] (661/685) %s\n', '20251124T142919_T19KDP_20251123_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile169.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (661/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile169');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat', 'file')
    fprintf('\n[0] (662/685) %s\n', '20251124T142919_T19KDP_20251123_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile170.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (662/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile170');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat', 'file')
    fprintf('\n[0] (663/685) %s\n', '20251124T142919_T19KDP_20251123_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile171.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (663/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile171');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat', 'file')
    fprintf('\n[0] (664/685) %s\n', '20251124T142919_T19KDP_20251123_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile172.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (664/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile172');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat', 'file')
    fprintf('\n[0] (665/685) %s\n', '20251124T142919_T19KDP_20251123_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile173.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (665/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile173');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat', 'file')
    fprintf('\n[0] (666/685) %s\n', '20251124T142919_T19KDP_20251123_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile174.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (666/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile174');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat', 'file')
    fprintf('\n[0] (667/685) %s\n', '20251124T142919_T19KDP_20251123_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile182.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (667/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile182');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat', 'file')
    fprintf('\n[0] (668/685) %s\n', '20251124T142919_T19KDP_20251123_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile183.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (668/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile183');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat', 'file')
    fprintf('\n[0] (669/685) %s\n', '20251124T142919_T19KDP_20251123_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile184.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (669/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile184');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat', 'file')
    fprintf('\n[0] (670/685) %s\n', '20251124T142919_T19KDP_20251123_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile185.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (670/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile185');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat', 'file')
    fprintf('\n[0] (671/685) %s\n', '20251124T142919_T19KDP_20251123_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile186.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (671/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile186');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat', 'file')
    fprintf('\n[0] (672/685) %s\n', '20251124T142919_T19KDP_20251123_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile187.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile187.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (672/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile187');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat', 'file')
    fprintf('\n[0] (673/685) %s\n', '20251124T142919_T19KDP_20251123_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile188.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (673/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile188');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat', 'file')
    fprintf('\n[0] (674/685) %s\n', '20251124T142919_T19KDP_20251123_tile189');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile189.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile189.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile189,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (674/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile189');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat', 'file')
    fprintf('\n[0] (675/685) %s\n', '20251124T142919_T19KDP_20251123_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile199.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (675/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile199');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat', 'file')
    fprintf('\n[0] (676/685) %s\n', '20251124T142919_T19KDP_20251123_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile200.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (676/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile200');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat', 'file')
    fprintf('\n[0] (677/685) %s\n', '20251124T142919_T19KDP_20251123_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile201.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (677/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile201');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat', 'file')
    fprintf('\n[0] (678/685) %s\n', '20251124T142919_T19KDP_20251123_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile202.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (678/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile202');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat', 'file')
    fprintf('\n[0] (679/685) %s\n', '20251124T142919_T19KDP_20251123_tile203');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile203.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile203.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile203,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (679/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile203');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat', 'file')
    fprintf('\n[0] (680/685) %s\n', '20251124T142919_T19KDP_20251123_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile204.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (680/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile204');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat', 'file')
    fprintf('\n[0] (681/685) %s\n', '20251124T142919_T19KDP_20251123_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile216.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (681/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile216');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat', 'file')
    fprintf('\n[0] (682/685) %s\n', '20251124T142919_T19KDP_20251123_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile217.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (682/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile217');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat', 'file')
    fprintf('\n[0] (683/685) %s\n', '20251124T142919_T19KDP_20251123_tile218');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile218.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile218,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (683/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile218');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat', 'file')
    fprintf('\n[0] (684/685) %s\n', '20251124T142919_T19KDP_20251123_tile219');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile219.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile219.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile219,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (684/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile219');
end

if ~exist('data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat', 'file')
    fprintf('\n[0] (685/685) %s\n', '20251124T142919_T19KDP_20251123_tile234');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile234.mat';
    sri_path = 'data/SR/GLP_v2/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    GLP_run;
    elapsed = toc;
    fid = fopen('data/SR/GLP_v2/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile234,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (685/685) %s — skip\n', '20251124T142919_T19KDP_20251123_tile234');
end

fprintf('\n=== Worker 0 done (685 scenes) ===\n');
exit;