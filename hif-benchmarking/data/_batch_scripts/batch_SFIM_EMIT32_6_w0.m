% Auto-generated SFIM batch script (worker 0)
cd('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking');
warning('off');
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'auxiliary')));
addpath(genpath(fullfile('/Users/incredet/Desktop/HyperSpectralSuperResolution/hif-benchmarking', 'methods', 'SFIM')));

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile052.mat', 'file')
    fprintf('\n[0] (1/500) %s\n', '20231105T010244_T53JLM_20231106_tile052');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile052.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile052.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile052.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile052,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (1/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile052');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile053.mat', 'file')
    fprintf('\n[0] (2/500) %s\n', '20231105T010244_T53JLM_20231106_tile053');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile053.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile053.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile053.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile053,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (2/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile053');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile054.mat', 'file')
    fprintf('\n[0] (3/500) %s\n', '20231105T010244_T53JLM_20231106_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile054.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile054.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (3/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile054');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile066.mat', 'file')
    fprintf('\n[0] (4/500) %s\n', '20231105T010244_T53JLM_20231106_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile066.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile066.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (4/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile066');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile067.mat', 'file')
    fprintf('\n[0] (5/500) %s\n', '20231105T010244_T53JLM_20231106_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile067.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile067.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile067.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (5/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile067');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile068.mat', 'file')
    fprintf('\n[0] (6/500) %s\n', '20231105T010244_T53JLM_20231106_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile068.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile068.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (6/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile068');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile080.mat', 'file')
    fprintf('\n[0] (7/500) %s\n', '20231105T010244_T53JLM_20231106_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile080.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile080.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (7/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile080');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile081.mat', 'file')
    fprintf('\n[0] (8/500) %s\n', '20231105T010244_T53JLM_20231106_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile081.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile081.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (8/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile081');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile082.mat', 'file')
    fprintf('\n[0] (9/500) %s\n', '20231105T010244_T53JLM_20231106_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile082.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile082.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (9/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile082');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile094.mat', 'file')
    fprintf('\n[0] (10/500) %s\n', '20231105T010244_T53JLM_20231106_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile094.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile094.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (10/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile094');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile122.mat', 'file')
    fprintf('\n[0] (11/500) %s\n', '20231105T010244_T53JLM_20231106_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile122.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile122.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (11/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile122');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile134.mat', 'file')
    fprintf('\n[0] (12/500) %s\n', '20231105T010244_T53JLM_20231106_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile134.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile134.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (12/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile134');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile144.mat', 'file')
    fprintf('\n[0] (13/500) %s\n', '20231105T010244_T53JLM_20231106_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile144.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile144.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile144.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (13/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile144');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile148.mat', 'file')
    fprintf('\n[0] (14/500) %s\n', '20231105T010244_T53JLM_20231106_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile148.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile148.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (14/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile148');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile149.mat', 'file')
    fprintf('\n[0] (15/500) %s\n', '20231105T010244_T53JLM_20231106_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile149.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile149.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (15/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile149');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile152.mat', 'file')
    fprintf('\n[0] (16/500) %s\n', '20231105T010244_T53JLM_20231106_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile152.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile152.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (16/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile152');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile154.mat', 'file')
    fprintf('\n[0] (17/500) %s\n', '20231105T010244_T53JLM_20231106_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile154.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile154.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (17/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile154');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile156.mat', 'file')
    fprintf('\n[0] (18/500) %s\n', '20231105T010244_T53JLM_20231106_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile156.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile156.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (18/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile156');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile158.mat', 'file')
    fprintf('\n[0] (19/500) %s\n', '20231105T010244_T53JLM_20231106_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile158.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile158.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (19/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile158');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile163.mat', 'file')
    fprintf('\n[0] (20/500) %s\n', '20231105T010244_T53JLM_20231106_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile163.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile163.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (20/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile163');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile164.mat', 'file')
    fprintf('\n[0] (21/500) %s\n', '20231105T010244_T53JLM_20231106_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile164.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile164.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (21/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile164');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile167.mat', 'file')
    fprintf('\n[0] (22/500) %s\n', '20231105T010244_T53JLM_20231106_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile167.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile167.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (22/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile167');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile169.mat', 'file')
    fprintf('\n[0] (23/500) %s\n', '20231105T010244_T53JLM_20231106_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile169.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile169.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (23/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile169');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile170.mat', 'file')
    fprintf('\n[0] (24/500) %s\n', '20231105T010244_T53JLM_20231106_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile170.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile170.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (24/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile170');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile171.mat', 'file')
    fprintf('\n[0] (25/500) %s\n', '20231105T010244_T53JLM_20231106_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile171.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile171.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (25/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile171');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile173.mat', 'file')
    fprintf('\n[0] (26/500) %s\n', '20231105T010244_T53JLM_20231106_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile173.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile173.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (26/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile173');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile176.mat', 'file')
    fprintf('\n[0] (27/500) %s\n', '20231105T010244_T53JLM_20231106_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile176.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile176.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (27/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile176');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile179.mat', 'file')
    fprintf('\n[0] (28/500) %s\n', '20231105T010244_T53JLM_20231106_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile179.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile179.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (28/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile179');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile184.mat', 'file')
    fprintf('\n[0] (29/500) %s\n', '20231105T010244_T53JLM_20231106_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile184.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile184.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (29/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile184');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile186.mat', 'file')
    fprintf('\n[0] (30/500) %s\n', '20231105T010244_T53JLM_20231106_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile186.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile186.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (30/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile186');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile187.mat', 'file')
    fprintf('\n[0] (31/500) %s\n', '20231105T010244_T53JLM_20231106_tile187');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile187.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile187.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile187.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile187,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (31/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile187');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile194.mat', 'file')
    fprintf('\n[0] (32/500) %s\n', '20231105T010244_T53JLM_20231106_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile194.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile194.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile194.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (32/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile194');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile205.mat', 'file')
    fprintf('\n[0] (33/500) %s\n', '20231105T010244_T53JLM_20231106_tile205');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile205.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile205.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile205.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile205,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (33/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile205');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile206.mat', 'file')
    fprintf('\n[0] (34/500) %s\n', '20231105T010244_T53JLM_20231106_tile206');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile206.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile206.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile206.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile206,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (34/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile206');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile207.mat', 'file')
    fprintf('\n[0] (35/500) %s\n', '20231105T010244_T53JLM_20231106_tile207');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile207.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile207.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile207.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile207,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (35/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile207');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile208.mat', 'file')
    fprintf('\n[0] (36/500) %s\n', '20231105T010244_T53JLM_20231106_tile208');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile208.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile208.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile208.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile208,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (36/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile208');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile221.mat', 'file')
    fprintf('\n[0] (37/500) %s\n', '20231105T010244_T53JLM_20231106_tile221');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile221.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile221.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile221.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile221,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (37/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile221');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile222.mat', 'file')
    fprintf('\n[0] (38/500) %s\n', '20231105T010244_T53JLM_20231106_tile222');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231105T010244_T53JLM_20231106_tile222.mat';
    msi_path = 'data/MS/EMIT32/20231105T010244_T53JLM_20231106_tile222.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231105T010244_T53JLM_20231106_tile222.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231105T010244_T53JLM_20231106_tile222,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (38/500) %s — skip\n', '20231105T010244_T53JLM_20231106_tile222');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile002.mat', 'file')
    fprintf('\n[0] (39/500) %s\n', '20231128T142858_T19KFT_20231129_tile002');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231128T142858_T19KFT_20231129_tile002.mat';
    msi_path = 'data/MS/EMIT32/20231128T142858_T19KFT_20231129_tile002.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile002.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231128T142858_T19KFT_20231129_tile002,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (39/500) %s — skip\n', '20231128T142858_T19KFT_20231129_tile002');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile003.mat', 'file')
    fprintf('\n[0] (40/500) %s\n', '20231128T142858_T19KFT_20231129_tile003');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231128T142858_T19KFT_20231129_tile003.mat';
    msi_path = 'data/MS/EMIT32/20231128T142858_T19KFT_20231129_tile003.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile003.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231128T142858_T19KFT_20231129_tile003,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (40/500) %s — skip\n', '20231128T142858_T19KFT_20231129_tile003');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile008.mat', 'file')
    fprintf('\n[0] (41/500) %s\n', '20231128T142858_T19KFT_20231129_tile008');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231128T142858_T19KFT_20231129_tile008.mat';
    msi_path = 'data/MS/EMIT32/20231128T142858_T19KFT_20231129_tile008.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile008.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231128T142858_T19KFT_20231129_tile008,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (41/500) %s — skip\n', '20231128T142858_T19KFT_20231129_tile008');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile009.mat', 'file')
    fprintf('\n[0] (42/500) %s\n', '20231128T142858_T19KFT_20231129_tile009');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231128T142858_T19KFT_20231129_tile009.mat';
    msi_path = 'data/MS/EMIT32/20231128T142858_T19KFT_20231129_tile009.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile009.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231128T142858_T19KFT_20231129_tile009,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (42/500) %s — skip\n', '20231128T142858_T19KFT_20231129_tile009');
end

if ~exist('data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile014.mat', 'file')
    fprintf('\n[0] (43/500) %s\n', '20231128T142858_T19KFT_20231129_tile014');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20231128T142858_T19KFT_20231129_tile014.mat';
    msi_path = 'data/MS/EMIT32/20231128T142858_T19KFT_20231129_tile014.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20231128T142858_T19KFT_20231129_tile014.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20231128T142858_T19KFT_20231129_tile014,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (43/500) %s — skip\n', '20231128T142858_T19KFT_20231129_tile014');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile041.mat', 'file')
    fprintf('\n[0] (44/500) %s\n', '20240125T084858_T34HEK_20240127_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile041.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile041.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (44/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile041');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile042.mat', 'file')
    fprintf('\n[0] (45/500) %s\n', '20240125T084858_T34HEK_20240127_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile042.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile042.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (45/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile042');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile058.mat', 'file')
    fprintf('\n[0] (46/500) %s\n', '20240125T084858_T34HEK_20240127_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile058.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile058.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (46/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile058');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile059.mat', 'file')
    fprintf('\n[0] (47/500) %s\n', '20240125T084858_T34HEK_20240127_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile059.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile059.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (47/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile059');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile060.mat', 'file')
    fprintf('\n[0] (48/500) %s\n', '20240125T084858_T34HEK_20240127_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile060.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile060.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (48/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile060');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile074.mat', 'file')
    fprintf('\n[0] (49/500) %s\n', '20240125T084858_T34HEK_20240127_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile074.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile074.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (49/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile074');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile075.mat', 'file')
    fprintf('\n[0] (50/500) %s\n', '20240125T084858_T34HEK_20240127_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile075.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile075.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (50/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile075');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile077.mat', 'file')
    fprintf('\n[0] (51/500) %s\n', '20240125T084858_T34HEK_20240127_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240125T084858_T34HEK_20240127_tile077.mat';
    msi_path = 'data/MS/EMIT32/20240125T084858_T34HEK_20240127_tile077.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240125T084858_T34HEK_20240127_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240125T084858_T34HEK_20240127_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (51/500) %s — skip\n', '20240125T084858_T34HEK_20240127_tile077');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile039.mat', 'file')
    fprintf('\n[0] (52/500) %s\n', '20240501T153107_T18LTM_20240429_tile039');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile039.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile039.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile039.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile039,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (52/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile039');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile043.mat', 'file')
    fprintf('\n[0] (53/500) %s\n', '20240501T153107_T18LTM_20240429_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile043.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (53/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile047.mat', 'file')
    fprintf('\n[0] (54/500) %s\n', '20240501T153107_T18LTM_20240429_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile047.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile047.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile047.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (54/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile047');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile055.mat', 'file')
    fprintf('\n[0] (55/500) %s\n', '20240501T153107_T18LTM_20240429_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile055.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile055.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (55/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile055');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile063.mat', 'file')
    fprintf('\n[0] (56/500) %s\n', '20240501T153107_T18LTM_20240429_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile063.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile063.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (56/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile063');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile071.mat', 'file')
    fprintf('\n[0] (57/500) %s\n', '20240501T153107_T18LTM_20240429_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile071.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile071.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (57/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile071');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile079.mat', 'file')
    fprintf('\n[0] (58/500) %s\n', '20240501T153107_T18LTM_20240429_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153107_T18LTM_20240429_tile079.mat';
    msi_path = 'data/MS/EMIT32/20240501T153107_T18LTM_20240429_tile079.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153107_T18LTM_20240429_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153107_T18LTM_20240429_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (58/500) %s — skip\n', '20240501T153107_T18LTM_20240429_tile079');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240501T153130_T18LUL_20240429_tile082.mat', 'file')
    fprintf('\n[0] (59/500) %s\n', '20240501T153130_T18LUL_20240429_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240501T153130_T18LUL_20240429_tile082.mat';
    msi_path = 'data/MS/EMIT32/20240501T153130_T18LUL_20240429_tile082.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240501T153130_T18LUL_20240429_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240501T153130_T18LUL_20240429_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (59/500) %s — skip\n', '20240501T153130_T18LUL_20240429_tile082');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile121.mat', 'file')
    fprintf('\n[0] (60/500) %s\n', '20240630T074436_T37MCS_20240701_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile121.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile121.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (60/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile121');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile123.mat', 'file')
    fprintf('\n[0] (61/500) %s\n', '20240630T074436_T37MCS_20240701_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile123.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile123.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (61/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile123');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile138.mat', 'file')
    fprintf('\n[0] (62/500) %s\n', '20240630T074436_T37MCS_20240701_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile138.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile138.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (62/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile138');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile177.mat', 'file')
    fprintf('\n[0] (63/500) %s\n', '20240630T074436_T37MCS_20240701_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile177.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile177.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (63/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile177');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile228.mat', 'file')
    fprintf('\n[0] (64/500) %s\n', '20240630T074436_T37MCS_20240701_tile228');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile228.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile228.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile228.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile228,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (64/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile228');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile244.mat', 'file')
    fprintf('\n[0] (65/500) %s\n', '20240630T074436_T37MCS_20240701_tile244');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240630T074436_T37MCS_20240701_tile244.mat';
    msi_path = 'data/MS/EMIT32/20240630T074436_T37MCS_20240701_tile244.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240630T074436_T37MCS_20240701_tile244.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240630T074436_T37MCS_20240701_tile244,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (65/500) %s — skip\n', '20240630T074436_T37MCS_20240701_tile244');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile026.mat', 'file')
    fprintf('\n[0] (66/500) %s\n', '20240703T083739_T35JNL_20240704_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile026.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile026.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (66/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile026');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile042.mat', 'file')
    fprintf('\n[0] (67/500) %s\n', '20240703T083739_T35JNL_20240704_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile042.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile042.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (67/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile042');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile043.mat', 'file')
    fprintf('\n[0] (68/500) %s\n', '20240703T083739_T35JNL_20240704_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile043.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (68/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile044.mat', 'file')
    fprintf('\n[0] (69/500) %s\n', '20240703T083739_T35JNL_20240704_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile044.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile044.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (69/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile044');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile058.mat', 'file')
    fprintf('\n[0] (70/500) %s\n', '20240703T083739_T35JNL_20240704_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile058.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile058.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (70/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile058');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile059.mat', 'file')
    fprintf('\n[0] (71/500) %s\n', '20240703T083739_T35JNL_20240704_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile059.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile059.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (71/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile059');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile060.mat', 'file')
    fprintf('\n[0] (72/500) %s\n', '20240703T083739_T35JNL_20240704_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile060.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile060.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (72/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile060');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile061.mat', 'file')
    fprintf('\n[0] (73/500) %s\n', '20240703T083739_T35JNL_20240704_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile061.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile061.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (73/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile061');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile062.mat', 'file')
    fprintf('\n[0] (74/500) %s\n', '20240703T083739_T35JNL_20240704_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile062.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile062.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (74/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile062');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile074.mat', 'file')
    fprintf('\n[0] (75/500) %s\n', '20240703T083739_T35JNL_20240704_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile074.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile074.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (75/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile074');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile075.mat', 'file')
    fprintf('\n[0] (76/500) %s\n', '20240703T083739_T35JNL_20240704_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile075.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile075.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (76/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile075');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile076.mat', 'file')
    fprintf('\n[0] (77/500) %s\n', '20240703T083739_T35JNL_20240704_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile076.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile076.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (77/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile076');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile077.mat', 'file')
    fprintf('\n[0] (78/500) %s\n', '20240703T083739_T35JNL_20240704_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile077.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile077.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (78/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile077');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile078.mat', 'file')
    fprintf('\n[0] (79/500) %s\n', '20240703T083739_T35JNL_20240704_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile078.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile078.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (79/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile078');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile079.mat', 'file')
    fprintf('\n[0] (80/500) %s\n', '20240703T083739_T35JNL_20240704_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile079.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile079.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (80/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile079');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile093.mat', 'file')
    fprintf('\n[0] (81/500) %s\n', '20240703T083739_T35JNL_20240704_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile093.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile093.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (81/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile093');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile094.mat', 'file')
    fprintf('\n[0] (82/500) %s\n', '20240703T083739_T35JNL_20240704_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile094.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile094.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (82/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile094');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile095.mat', 'file')
    fprintf('\n[0] (83/500) %s\n', '20240703T083739_T35JNL_20240704_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile095.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile095.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (83/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile095');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile096.mat', 'file')
    fprintf('\n[0] (84/500) %s\n', '20240703T083739_T35JNL_20240704_tile096');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile096.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile096.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile096.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile096,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (84/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile096');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile097.mat', 'file')
    fprintf('\n[0] (85/500) %s\n', '20240703T083739_T35JNL_20240704_tile097');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile097.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile097.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile097.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile097,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (85/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile097');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile111.mat', 'file')
    fprintf('\n[0] (86/500) %s\n', '20240703T083739_T35JNL_20240704_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile111.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile111.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (86/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile111');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile112.mat', 'file')
    fprintf('\n[0] (87/500) %s\n', '20240703T083739_T35JNL_20240704_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile112.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile112.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (87/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile112');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile113.mat', 'file')
    fprintf('\n[0] (88/500) %s\n', '20240703T083739_T35JNL_20240704_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile113.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile113.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (88/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile113');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile114.mat', 'file')
    fprintf('\n[0] (89/500) %s\n', '20240703T083739_T35JNL_20240704_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile114.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (89/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile115.mat', 'file')
    fprintf('\n[0] (90/500) %s\n', '20240703T083739_T35JNL_20240704_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile115.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile115.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (90/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile115');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile124.mat', 'file')
    fprintf('\n[0] (91/500) %s\n', '20240703T083739_T35JNL_20240704_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile124.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile124.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (91/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile124');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile125.mat', 'file')
    fprintf('\n[0] (92/500) %s\n', '20240703T083739_T35JNL_20240704_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile125.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (92/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile126.mat', 'file')
    fprintf('\n[0] (93/500) %s\n', '20240703T083739_T35JNL_20240704_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile126.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile126.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (93/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile126');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile127.mat', 'file')
    fprintf('\n[0] (94/500) %s\n', '20240703T083739_T35JNL_20240704_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile127.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (94/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile128.mat', 'file')
    fprintf('\n[0] (95/500) %s\n', '20240703T083739_T35JNL_20240704_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile128.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile128.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (95/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile128');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile129.mat', 'file')
    fprintf('\n[0] (96/500) %s\n', '20240703T083739_T35JNL_20240704_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile129.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile129.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (96/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile129');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile130.mat', 'file')
    fprintf('\n[0] (97/500) %s\n', '20240703T083739_T35JNL_20240704_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile130.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile130.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (97/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile130');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile131.mat', 'file')
    fprintf('\n[0] (98/500) %s\n', '20240703T083739_T35JNL_20240704_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile131.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile131.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (98/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile131');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile132.mat', 'file')
    fprintf('\n[0] (99/500) %s\n', '20240703T083739_T35JNL_20240704_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile132.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile132.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (99/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile132');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile133.mat', 'file')
    fprintf('\n[0] (100/500) %s\n', '20240703T083739_T35JNL_20240704_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile133.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile133.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (100/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile133');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile142.mat', 'file')
    fprintf('\n[0] (101/500) %s\n', '20240703T083739_T35JNL_20240704_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile142.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile142.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (101/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile142');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile143.mat', 'file')
    fprintf('\n[0] (102/500) %s\n', '20240703T083739_T35JNL_20240704_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile143.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile143.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (102/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile143');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile144.mat', 'file')
    fprintf('\n[0] (103/500) %s\n', '20240703T083739_T35JNL_20240704_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile144.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile144.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile144.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (103/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile144');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile145.mat', 'file')
    fprintf('\n[0] (104/500) %s\n', '20240703T083739_T35JNL_20240704_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile145.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile145.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (104/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile145');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile146.mat', 'file')
    fprintf('\n[0] (105/500) %s\n', '20240703T083739_T35JNL_20240704_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile146.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile146.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (105/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile146');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile147.mat', 'file')
    fprintf('\n[0] (106/500) %s\n', '20240703T083739_T35JNL_20240704_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile147.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile147.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (106/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile147');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile148.mat', 'file')
    fprintf('\n[0] (107/500) %s\n', '20240703T083739_T35JNL_20240704_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile148.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile148.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (107/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile148');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile149.mat', 'file')
    fprintf('\n[0] (108/500) %s\n', '20240703T083739_T35JNL_20240704_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile149.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile149.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (108/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile149');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile150.mat', 'file')
    fprintf('\n[0] (109/500) %s\n', '20240703T083739_T35JNL_20240704_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile150.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile150.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (109/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile150');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile151.mat', 'file')
    fprintf('\n[0] (110/500) %s\n', '20240703T083739_T35JNL_20240704_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile151.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile151.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (110/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile151');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile158.mat', 'file')
    fprintf('\n[0] (111/500) %s\n', '20240703T083739_T35JNL_20240704_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile158.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile158.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (111/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile158');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile159.mat', 'file')
    fprintf('\n[0] (112/500) %s\n', '20240703T083739_T35JNL_20240704_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile159.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile159.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (112/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile159');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile160.mat', 'file')
    fprintf('\n[0] (113/500) %s\n', '20240703T083739_T35JNL_20240704_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile160.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile160.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (113/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile160');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile161.mat', 'file')
    fprintf('\n[0] (114/500) %s\n', '20240703T083739_T35JNL_20240704_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile161.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile161.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (114/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile161');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile162.mat', 'file')
    fprintf('\n[0] (115/500) %s\n', '20240703T083739_T35JNL_20240704_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile162.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile162.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (115/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile162');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile163.mat', 'file')
    fprintf('\n[0] (116/500) %s\n', '20240703T083739_T35JNL_20240704_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile163.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile163.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (116/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile163');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile164.mat', 'file')
    fprintf('\n[0] (117/500) %s\n', '20240703T083739_T35JNL_20240704_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile164.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile164.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (117/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile164');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile165.mat', 'file')
    fprintf('\n[0] (118/500) %s\n', '20240703T083739_T35JNL_20240704_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile165.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile165.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (118/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile165');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile166.mat', 'file')
    fprintf('\n[0] (119/500) %s\n', '20240703T083739_T35JNL_20240704_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile166.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile166.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (119/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile166');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile167.mat', 'file')
    fprintf('\n[0] (120/500) %s\n', '20240703T083739_T35JNL_20240704_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile167.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile167.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (120/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile167');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile168.mat', 'file')
    fprintf('\n[0] (121/500) %s\n', '20240703T083739_T35JNL_20240704_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile168.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile168.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (121/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile168');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile169.mat', 'file')
    fprintf('\n[0] (122/500) %s\n', '20240703T083739_T35JNL_20240704_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile169.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile169.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (122/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile169');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile176.mat', 'file')
    fprintf('\n[0] (123/500) %s\n', '20240703T083739_T35JNL_20240704_tile176');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile176.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile176.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile176.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile176,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (123/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile176');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile177.mat', 'file')
    fprintf('\n[0] (124/500) %s\n', '20240703T083739_T35JNL_20240704_tile177');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile177.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile177.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile177.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile177,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (124/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile177');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile178.mat', 'file')
    fprintf('\n[0] (125/500) %s\n', '20240703T083739_T35JNL_20240704_tile178');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile178.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile178.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile178.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile178,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (125/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile178');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile179.mat', 'file')
    fprintf('\n[0] (126/500) %s\n', '20240703T083739_T35JNL_20240704_tile179');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile179.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile179.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile179.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile179,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (126/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile179');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile180.mat', 'file')
    fprintf('\n[0] (127/500) %s\n', '20240703T083739_T35JNL_20240704_tile180');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile180.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile180.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile180.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile180,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (127/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile180');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile181.mat', 'file')
    fprintf('\n[0] (128/500) %s\n', '20240703T083739_T35JNL_20240704_tile181');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile181.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile181.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile181.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile181,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (128/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile181');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile182.mat', 'file')
    fprintf('\n[0] (129/500) %s\n', '20240703T083739_T35JNL_20240704_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile182.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile182.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (129/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile182');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile183.mat', 'file')
    fprintf('\n[0] (130/500) %s\n', '20240703T083739_T35JNL_20240704_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile183.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile183.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (130/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile183');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile184.mat', 'file')
    fprintf('\n[0] (131/500) %s\n', '20240703T083739_T35JNL_20240704_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile184.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile184.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (131/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile184');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile185.mat', 'file')
    fprintf('\n[0] (132/500) %s\n', '20240703T083739_T35JNL_20240704_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile185.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile185.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (132/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile185');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile186.mat', 'file')
    fprintf('\n[0] (133/500) %s\n', '20240703T083739_T35JNL_20240704_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile186.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile186.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (133/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile186');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile193.mat', 'file')
    fprintf('\n[0] (134/500) %s\n', '20240703T083739_T35JNL_20240704_tile193');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile193.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile193.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile193.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile193,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (134/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile193');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile194.mat', 'file')
    fprintf('\n[0] (135/500) %s\n', '20240703T083739_T35JNL_20240704_tile194');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile194.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile194.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile194.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile194,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (135/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile194');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile196.mat', 'file')
    fprintf('\n[0] (136/500) %s\n', '20240703T083739_T35JNL_20240704_tile196');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile196.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile196.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile196.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile196,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (136/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile196');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile197.mat', 'file')
    fprintf('\n[0] (137/500) %s\n', '20240703T083739_T35JNL_20240704_tile197');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile197.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile197.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile197.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile197,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (137/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile197');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile198.mat', 'file')
    fprintf('\n[0] (138/500) %s\n', '20240703T083739_T35JNL_20240704_tile198');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile198.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile198.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile198.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile198,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (138/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile198');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile199.mat', 'file')
    fprintf('\n[0] (139/500) %s\n', '20240703T083739_T35JNL_20240704_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile199.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile199.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (139/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile199');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile200.mat', 'file')
    fprintf('\n[0] (140/500) %s\n', '20240703T083739_T35JNL_20240704_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile200.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile200.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (140/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile200');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile201.mat', 'file')
    fprintf('\n[0] (141/500) %s\n', '20240703T083739_T35JNL_20240704_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile201.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile201.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (141/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile201');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile202.mat', 'file')
    fprintf('\n[0] (142/500) %s\n', '20240703T083739_T35JNL_20240704_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile202.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile202.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (142/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile202');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile209.mat', 'file')
    fprintf('\n[0] (143/500) %s\n', '20240703T083739_T35JNL_20240704_tile209');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile209.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile209.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile209.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile209,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (143/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile209');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile210.mat', 'file')
    fprintf('\n[0] (144/500) %s\n', '20240703T083739_T35JNL_20240704_tile210');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile210.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile210.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile210.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile210,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (144/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile210');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile211.mat', 'file')
    fprintf('\n[0] (145/500) %s\n', '20240703T083739_T35JNL_20240704_tile211');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile211.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile211.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile211.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile211,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (145/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile211');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile214.mat', 'file')
    fprintf('\n[0] (146/500) %s\n', '20240703T083739_T35JNL_20240704_tile214');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile214.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile214.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile214.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile214,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (146/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile214');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile215.mat', 'file')
    fprintf('\n[0] (147/500) %s\n', '20240703T083739_T35JNL_20240704_tile215');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile215.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile215.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile215.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile215,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (147/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile215');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile216.mat', 'file')
    fprintf('\n[0] (148/500) %s\n', '20240703T083739_T35JNL_20240704_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile216.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile216.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile216.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (148/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile216');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile217.mat', 'file')
    fprintf('\n[0] (149/500) %s\n', '20240703T083739_T35JNL_20240704_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile217.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile217.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile217.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (149/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile217');
end

if ~exist('data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile218.mat', 'file')
    fprintf('\n[0] (150/500) %s\n', '20240703T083739_T35JNL_20240704_tile218');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20240703T083739_T35JNL_20240704_tile218.mat';
    msi_path = 'data/MS/EMIT32/20240703T083739_T35JNL_20240704_tile218.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20240703T083739_T35JNL_20240704_tile218.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20240703T083739_T35JNL_20240704_tile218,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (150/500) %s — skip\n', '20240703T083739_T35JNL_20240704_tile218');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile012.mat', 'file')
    fprintf('\n[0] (151/500) %s\n', '20241031T144732_T19LDC_20241101_tile012');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile012.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile012.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile012.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile012,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (151/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile012');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile023.mat', 'file')
    fprintf('\n[0] (152/500) %s\n', '20241031T144732_T19LDC_20241101_tile023');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile023.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile023.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile023.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile023,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (152/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile023');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile034.mat', 'file')
    fprintf('\n[0] (153/500) %s\n', '20241031T144732_T19LDC_20241101_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile034.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile034.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile034.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (153/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile034');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile045.mat', 'file')
    fprintf('\n[0] (154/500) %s\n', '20241031T144732_T19LDC_20241101_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile045.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile045.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (154/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile045');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile046.mat', 'file')
    fprintf('\n[0] (155/500) %s\n', '20241031T144732_T19LDC_20241101_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile046.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile046.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (155/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile046');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile056.mat', 'file')
    fprintf('\n[0] (156/500) %s\n', '20241031T144732_T19LDC_20241101_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile056.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile056.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (156/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile056');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile057.mat', 'file')
    fprintf('\n[0] (157/500) %s\n', '20241031T144732_T19LDC_20241101_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile057.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile057.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (157/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile057');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile058.mat', 'file')
    fprintf('\n[0] (158/500) %s\n', '20241031T144732_T19LDC_20241101_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile058.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile058.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (158/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile058');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile059.mat', 'file')
    fprintf('\n[0] (159/500) %s\n', '20241031T144732_T19LDC_20241101_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile059.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile059.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (159/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile059');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile067.mat', 'file')
    fprintf('\n[0] (160/500) %s\n', '20241031T144732_T19LDC_20241101_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile067.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile067.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile067.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (160/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile067');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile068.mat', 'file')
    fprintf('\n[0] (161/500) %s\n', '20241031T144732_T19LDC_20241101_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile068.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile068.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (161/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile068');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile069.mat', 'file')
    fprintf('\n[0] (162/500) %s\n', '20241031T144732_T19LDC_20241101_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile069.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile069.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (162/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile069');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile070.mat', 'file')
    fprintf('\n[0] (163/500) %s\n', '20241031T144732_T19LDC_20241101_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile070.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile070.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (163/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile070');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile078.mat', 'file')
    fprintf('\n[0] (164/500) %s\n', '20241031T144732_T19LDC_20241101_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile078.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile078.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (164/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile078');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile079.mat', 'file')
    fprintf('\n[0] (165/500) %s\n', '20241031T144732_T19LDC_20241101_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile079.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile079.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (165/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile079');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile081.mat', 'file')
    fprintf('\n[0] (166/500) %s\n', '20241031T144732_T19LDC_20241101_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile081.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile081.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (166/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile081');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile089.mat', 'file')
    fprintf('\n[0] (167/500) %s\n', '20241031T144732_T19LDC_20241101_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile089.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile089.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (167/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile089');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile090.mat', 'file')
    fprintf('\n[0] (168/500) %s\n', '20241031T144732_T19LDC_20241101_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile090.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile090.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (168/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile090');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile100.mat', 'file')
    fprintf('\n[0] (169/500) %s\n', '20241031T144732_T19LDC_20241101_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile100.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile100.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (169/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile100');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile102.mat', 'file')
    fprintf('\n[0] (170/500) %s\n', '20241031T144732_T19LDC_20241101_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile102.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile102.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (170/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile102');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile103.mat', 'file')
    fprintf('\n[0] (171/500) %s\n', '20241031T144732_T19LDC_20241101_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile103.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile103.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (171/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile103');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile111.mat', 'file')
    fprintf('\n[0] (172/500) %s\n', '20241031T144732_T19LDC_20241101_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile111.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile111.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (172/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile111');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile113.mat', 'file')
    fprintf('\n[0] (173/500) %s\n', '20241031T144732_T19LDC_20241101_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile113.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile113.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (173/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile113');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile114.mat', 'file')
    fprintf('\n[0] (174/500) %s\n', '20241031T144732_T19LDC_20241101_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile114.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (174/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile115.mat', 'file')
    fprintf('\n[0] (175/500) %s\n', '20241031T144732_T19LDC_20241101_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile115.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile115.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (175/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile115');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile116.mat', 'file')
    fprintf('\n[0] (176/500) %s\n', '20241031T144732_T19LDC_20241101_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile116.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile116.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (176/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile116');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile117.mat', 'file')
    fprintf('\n[0] (177/500) %s\n', '20241031T144732_T19LDC_20241101_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile117.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile117.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (177/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile117');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile122.mat', 'file')
    fprintf('\n[0] (178/500) %s\n', '20241031T144732_T19LDC_20241101_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile122.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile122.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (178/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile122');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile123.mat', 'file')
    fprintf('\n[0] (179/500) %s\n', '20241031T144732_T19LDC_20241101_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile123.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile123.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (179/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile123');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile124.mat', 'file')
    fprintf('\n[0] (180/500) %s\n', '20241031T144732_T19LDC_20241101_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile124.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile124.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (180/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile124');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile125.mat', 'file')
    fprintf('\n[0] (181/500) %s\n', '20241031T144732_T19LDC_20241101_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile125.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (181/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile126.mat', 'file')
    fprintf('\n[0] (182/500) %s\n', '20241031T144732_T19LDC_20241101_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile126.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile126.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (182/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile126');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile127.mat', 'file')
    fprintf('\n[0] (183/500) %s\n', '20241031T144732_T19LDC_20241101_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile127.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (183/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile135.mat', 'file')
    fprintf('\n[0] (184/500) %s\n', '20241031T144732_T19LDC_20241101_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile135.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile135.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (184/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile135');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile136.mat', 'file')
    fprintf('\n[0] (185/500) %s\n', '20241031T144732_T19LDC_20241101_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile136.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile136.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (185/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile136');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile144.mat', 'file')
    fprintf('\n[0] (186/500) %s\n', '20241031T144732_T19LDC_20241101_tile144');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile144.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile144.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile144.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile144,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (186/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile144');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile155.mat', 'file')
    fprintf('\n[0] (187/500) %s\n', '20241031T144732_T19LDC_20241101_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile155.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile155.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (187/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile155');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile157.mat', 'file')
    fprintf('\n[0] (188/500) %s\n', '20241031T144732_T19LDC_20241101_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile157.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile157.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (188/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile157');
end

if ~exist('data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile166.mat', 'file')
    fprintf('\n[0] (189/500) %s\n', '20241031T144732_T19LDC_20241101_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20241031T144732_T19LDC_20241101_tile166.mat';
    msi_path = 'data/MS/EMIT32/20241031T144732_T19LDC_20241101_tile166.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20241031T144732_T19LDC_20241101_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20241031T144732_T19LDC_20241101_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (189/500) %s — skip\n', '20241031T144732_T19LDC_20241101_tile166');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile014.mat', 'file')
    fprintf('\n[0] (190/500) %s\n', '20250124T093346_T33KVS_20250123_tile014');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile014.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile014.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile014.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile014,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (190/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile014');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile016.mat', 'file')
    fprintf('\n[0] (191/500) %s\n', '20250124T093346_T33KVS_20250123_tile016');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile016.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile016.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile016.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile016,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (191/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile016');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile017.mat', 'file')
    fprintf('\n[0] (192/500) %s\n', '20250124T093346_T33KVS_20250123_tile017');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile017.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile017.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile017.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile017,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (192/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile017');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile033.mat', 'file')
    fprintf('\n[0] (193/500) %s\n', '20250124T093346_T33KVS_20250123_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile033.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (193/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile033');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile043.mat', 'file')
    fprintf('\n[0] (194/500) %s\n', '20250124T093346_T33KVS_20250123_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (194/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile051.mat', 'file')
    fprintf('\n[0] (195/500) %s\n', '20250124T093346_T33KVS_20250123_tile051');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile051.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile051.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile051.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile051,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (195/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile051');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile054.mat', 'file')
    fprintf('\n[0] (196/500) %s\n', '20250124T093346_T33KVS_20250123_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile054.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile054.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (196/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile054');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile060.mat', 'file')
    fprintf('\n[0] (197/500) %s\n', '20250124T093346_T33KVS_20250123_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile060.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile060.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (197/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile060');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile061.mat', 'file')
    fprintf('\n[0] (198/500) %s\n', '20250124T093346_T33KVS_20250123_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile061.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile061.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (198/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile061');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile062.mat', 'file')
    fprintf('\n[0] (199/500) %s\n', '20250124T093346_T33KVS_20250123_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile062.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile062.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (199/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile062');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile063.mat', 'file')
    fprintf('\n[0] (200/500) %s\n', '20250124T093346_T33KVS_20250123_tile063');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile063.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile063.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile063.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile063,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (200/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile063');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile064.mat', 'file')
    fprintf('\n[0] (201/500) %s\n', '20250124T093346_T33KVS_20250123_tile064');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile064.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile064.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile064.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile064,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (201/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile064');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile066.mat', 'file')
    fprintf('\n[0] (202/500) %s\n', '20250124T093346_T33KVS_20250123_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile066.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile066.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (202/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile066');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile069.mat', 'file')
    fprintf('\n[0] (203/500) %s\n', '20250124T093346_T33KVS_20250123_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile069.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (203/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile069');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile072.mat', 'file')
    fprintf('\n[0] (204/500) %s\n', '20250124T093346_T33KVS_20250123_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile072.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile072.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (204/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile072');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile073.mat', 'file')
    fprintf('\n[0] (205/500) %s\n', '20250124T093346_T33KVS_20250123_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile073.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile073.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (205/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile073');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile074.mat', 'file')
    fprintf('\n[0] (206/500) %s\n', '20250124T093346_T33KVS_20250123_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile074.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile074.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (206/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile074');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile084.mat', 'file')
    fprintf('\n[0] (207/500) %s\n', '20250124T093346_T33KVS_20250123_tile084');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile084.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile084.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile084.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile084,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (207/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile084');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile089.mat', 'file')
    fprintf('\n[0] (208/500) %s\n', '20250124T093346_T33KVS_20250123_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile089.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (208/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile089');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile090.mat', 'file')
    fprintf('\n[0] (209/500) %s\n', '20250124T093346_T33KVS_20250123_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile090.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (209/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile090');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile091.mat', 'file')
    fprintf('\n[0] (210/500) %s\n', '20250124T093346_T33KVS_20250123_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile091.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (210/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile091');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile100.mat', 'file')
    fprintf('\n[0] (211/500) %s\n', '20250124T093346_T33KVS_20250123_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile100.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (211/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile100');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile102.mat', 'file')
    fprintf('\n[0] (212/500) %s\n', '20250124T093346_T33KVS_20250123_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile102.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (212/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile102');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile111.mat', 'file')
    fprintf('\n[0] (213/500) %s\n', '20250124T093346_T33KVS_20250123_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile111.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (213/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile111');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile112.mat', 'file')
    fprintf('\n[0] (214/500) %s\n', '20250124T093346_T33KVS_20250123_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile112.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (214/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile112');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile113.mat', 'file')
    fprintf('\n[0] (215/500) %s\n', '20250124T093346_T33KVS_20250123_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile113.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (215/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile113');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile114.mat', 'file')
    fprintf('\n[0] (216/500) %s\n', '20250124T093346_T33KVS_20250123_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (216/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile120.mat', 'file')
    fprintf('\n[0] (217/500) %s\n', '20250124T093346_T33KVS_20250123_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile120.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile120.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (217/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile120');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile121.mat', 'file')
    fprintf('\n[0] (218/500) %s\n', '20250124T093346_T33KVS_20250123_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile121.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (218/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile121');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile122.mat', 'file')
    fprintf('\n[0] (219/500) %s\n', '20250124T093346_T33KVS_20250123_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile122.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (219/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile122');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile123.mat', 'file')
    fprintf('\n[0] (220/500) %s\n', '20250124T093346_T33KVS_20250123_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile123.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (220/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile123');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile124.mat', 'file')
    fprintf('\n[0] (221/500) %s\n', '20250124T093346_T33KVS_20250123_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile124.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (221/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile124');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile125.mat', 'file')
    fprintf('\n[0] (222/500) %s\n', '20250124T093346_T33KVS_20250123_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (222/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile133.mat', 'file')
    fprintf('\n[0] (223/500) %s\n', '20250124T093346_T33KVS_20250123_tile133');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile133.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile133.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile133.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile133,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (223/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile133');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile134.mat', 'file')
    fprintf('\n[0] (224/500) %s\n', '20250124T093346_T33KVS_20250123_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile134.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (224/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile134');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile135.mat', 'file')
    fprintf('\n[0] (225/500) %s\n', '20250124T093346_T33KVS_20250123_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile135.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (225/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile135');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile136.mat', 'file')
    fprintf('\n[0] (226/500) %s\n', '20250124T093346_T33KVS_20250123_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093346_T33KVS_20250123_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250124T093346_T33KVS_20250123_tile136.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093346_T33KVS_20250123_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093346_T33KVS_20250123_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (226/500) %s — skip\n', '20250124T093346_T33KVS_20250123_tile136');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile090.mat', 'file')
    fprintf('\n[0] (227/500) %s\n', '20250124T093433_T33KXV_20250123_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile090.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (227/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile090');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile093.mat', 'file')
    fprintf('\n[0] (228/500) %s\n', '20250124T093433_T33KXV_20250123_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile093.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (228/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile093');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile098.mat', 'file')
    fprintf('\n[0] (229/500) %s\n', '20250124T093433_T33KXV_20250123_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile098.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (229/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile098');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile110.mat', 'file')
    fprintf('\n[0] (230/500) %s\n', '20250124T093433_T33KXV_20250123_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile110.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (230/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile110');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile127.mat', 'file')
    fprintf('\n[0] (231/500) %s\n', '20250124T093433_T33KXV_20250123_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (231/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile136.mat', 'file')
    fprintf('\n[0] (232/500) %s\n', '20250124T093433_T33KXV_20250123_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile136.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (232/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile136');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile137.mat', 'file')
    fprintf('\n[0] (233/500) %s\n', '20250124T093433_T33KXV_20250123_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile137.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (233/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile137');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile145.mat', 'file')
    fprintf('\n[0] (234/500) %s\n', '20250124T093433_T33KXV_20250123_tile145');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile145.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile145.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile145.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile145,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (234/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile145');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile146.mat', 'file')
    fprintf('\n[0] (235/500) %s\n', '20250124T093433_T33KXV_20250123_tile146');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile146.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile146.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile146.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile146,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (235/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile146');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile147.mat', 'file')
    fprintf('\n[0] (236/500) %s\n', '20250124T093433_T33KXV_20250123_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile147.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (236/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile147');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile148.mat', 'file')
    fprintf('\n[0] (237/500) %s\n', '20250124T093433_T33KXV_20250123_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile148.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (237/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile148');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile149.mat', 'file')
    fprintf('\n[0] (238/500) %s\n', '20250124T093433_T33KXV_20250123_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile149.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (238/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile149');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile150.mat', 'file')
    fprintf('\n[0] (239/500) %s\n', '20250124T093433_T33KXV_20250123_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile150.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (239/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile150');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile152.mat', 'file')
    fprintf('\n[0] (240/500) %s\n', '20250124T093433_T33KXV_20250123_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile152.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (240/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile152');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile157.mat', 'file')
    fprintf('\n[0] (241/500) %s\n', '20250124T093433_T33KXV_20250123_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile157.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile157.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (241/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile157');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile158.mat', 'file')
    fprintf('\n[0] (242/500) %s\n', '20250124T093433_T33KXV_20250123_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile158.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile158.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (242/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile158');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile159.mat', 'file')
    fprintf('\n[0] (243/500) %s\n', '20250124T093433_T33KXV_20250123_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile159.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile159.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (243/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile159');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile160.mat', 'file')
    fprintf('\n[0] (244/500) %s\n', '20250124T093433_T33KXV_20250123_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile160.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (244/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile160');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile161.mat', 'file')
    fprintf('\n[0] (245/500) %s\n', '20250124T093433_T33KXV_20250123_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile161.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (245/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile161');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile162.mat', 'file')
    fprintf('\n[0] (246/500) %s\n', '20250124T093433_T33KXV_20250123_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile162.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (246/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile162');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile163.mat', 'file')
    fprintf('\n[0] (247/500) %s\n', '20250124T093433_T33KXV_20250123_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile163.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (247/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile163');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile169.mat', 'file')
    fprintf('\n[0] (248/500) %s\n', '20250124T093433_T33KXV_20250123_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile169.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile169.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (248/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile169');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile171.mat', 'file')
    fprintf('\n[0] (249/500) %s\n', '20250124T093433_T33KXV_20250123_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile171.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile171.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (249/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile171');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile172.mat', 'file')
    fprintf('\n[0] (250/500) %s\n', '20250124T093433_T33KXV_20250123_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile172.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile172.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (250/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile172');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile173.mat', 'file')
    fprintf('\n[0] (251/500) %s\n', '20250124T093433_T33KXV_20250123_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile173.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (251/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile173');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile174.mat', 'file')
    fprintf('\n[0] (252/500) %s\n', '20250124T093433_T33KXV_20250123_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250124T093433_T33KXV_20250123_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250124T093433_T33KXV_20250123_tile174.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250124T093433_T33KXV_20250123_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250124T093433_T33KXV_20250123_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (252/500) %s — skip\n', '20250124T093433_T33KXV_20250123_tile174');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat', 'file')
    fprintf('\n[0] (253/500) %s\n', '20250830T085101_T35KKT_20250829_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile021.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile021.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (253/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile021');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat', 'file')
    fprintf('\n[0] (254/500) %s\n', '20250830T085101_T35KKT_20250829_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile032.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile032.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (254/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile032');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat', 'file')
    fprintf('\n[0] (255/500) %s\n', '20250830T085101_T35KKT_20250829_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile033.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (255/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile033');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat', 'file')
    fprintf('\n[0] (256/500) %s\n', '20250830T085101_T35KKT_20250829_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile034.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile034.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (256/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile034');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat', 'file')
    fprintf('\n[0] (257/500) %s\n', '20250830T085101_T35KKT_20250829_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (257/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat', 'file')
    fprintf('\n[0] (258/500) %s\n', '20250830T085101_T35KKT_20250829_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile044.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (258/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile044');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat', 'file')
    fprintf('\n[0] (259/500) %s\n', '20250830T085101_T35KKT_20250829_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile045.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (259/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile045');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat', 'file')
    fprintf('\n[0] (260/500) %s\n', '20250830T085101_T35KKT_20250829_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile046.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (260/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile046');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat', 'file')
    fprintf('\n[0] (261/500) %s\n', '20250830T085101_T35KKT_20250829_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile054.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (261/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile054');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat', 'file')
    fprintf('\n[0] (262/500) %s\n', '20250830T085101_T35KKT_20250829_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile055.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (262/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile055');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat', 'file')
    fprintf('\n[0] (263/500) %s\n', '20250830T085101_T35KKT_20250829_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile056.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (263/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile056');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat', 'file')
    fprintf('\n[0] (264/500) %s\n', '20250830T085101_T35KKT_20250829_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile057.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (264/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile057');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat', 'file')
    fprintf('\n[0] (265/500) %s\n', '20250830T085101_T35KKT_20250829_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile058.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (265/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile058');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat', 'file')
    fprintf('\n[0] (266/500) %s\n', '20250830T085101_T35KKT_20250829_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile059.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (266/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile059');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat', 'file')
    fprintf('\n[0] (267/500) %s\n', '20250830T085101_T35KKT_20250829_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile065.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (267/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile065');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat', 'file')
    fprintf('\n[0] (268/500) %s\n', '20250830T085101_T35KKT_20250829_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile066.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (268/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile066');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat', 'file')
    fprintf('\n[0] (269/500) %s\n', '20250830T085101_T35KKT_20250829_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile067.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile067.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (269/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile067');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat', 'file')
    fprintf('\n[0] (270/500) %s\n', '20250830T085101_T35KKT_20250829_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile068.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (270/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile068');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat', 'file')
    fprintf('\n[0] (271/500) %s\n', '20250830T085101_T35KKT_20250829_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile069.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (271/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile069');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat', 'file')
    fprintf('\n[0] (272/500) %s\n', '20250830T085101_T35KKT_20250829_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile070.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (272/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile070');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat', 'file')
    fprintf('\n[0] (273/500) %s\n', '20250830T085101_T35KKT_20250829_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile071.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (273/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile071');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat', 'file')
    fprintf('\n[0] (274/500) %s\n', '20250830T085101_T35KKT_20250829_tile076');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile076.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile076.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile076,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (274/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile076');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat', 'file')
    fprintf('\n[0] (275/500) %s\n', '20250830T085101_T35KKT_20250829_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile077.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (275/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile077');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat', 'file')
    fprintf('\n[0] (276/500) %s\n', '20250830T085101_T35KKT_20250829_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile078.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (276/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile078');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat', 'file')
    fprintf('\n[0] (277/500) %s\n', '20250830T085101_T35KKT_20250829_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile079.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (277/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile079');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat', 'file')
    fprintf('\n[0] (278/500) %s\n', '20250830T085101_T35KKT_20250829_tile080');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile080.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile080.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile080,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (278/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile080');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat', 'file')
    fprintf('\n[0] (279/500) %s\n', '20250830T085101_T35KKT_20250829_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile081.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (279/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile081');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat', 'file')
    fprintf('\n[0] (280/500) %s\n', '20250830T085101_T35KKT_20250829_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile082.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (280/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile082');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat', 'file')
    fprintf('\n[0] (281/500) %s\n', '20250830T085101_T35KKT_20250829_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile083.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (281/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile083');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat', 'file')
    fprintf('\n[0] (282/500) %s\n', '20250830T085101_T35KKT_20250829_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile087.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (282/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile087');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat', 'file')
    fprintf('\n[0] (283/500) %s\n', '20250830T085101_T35KKT_20250829_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile088.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (283/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile088');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat', 'file')
    fprintf('\n[0] (284/500) %s\n', '20250830T085101_T35KKT_20250829_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile089.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (284/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile089');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat', 'file')
    fprintf('\n[0] (285/500) %s\n', '20250830T085101_T35KKT_20250829_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile090.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (285/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile090');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat', 'file')
    fprintf('\n[0] (286/500) %s\n', '20250830T085101_T35KKT_20250829_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile091.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (286/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile091');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat', 'file')
    fprintf('\n[0] (287/500) %s\n', '20250830T085101_T35KKT_20250829_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile092.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (287/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile092');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat', 'file')
    fprintf('\n[0] (288/500) %s\n', '20250830T085101_T35KKT_20250829_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile093.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (288/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile093');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat', 'file')
    fprintf('\n[0] (289/500) %s\n', '20250830T085101_T35KKT_20250829_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile094.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (289/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile094');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat', 'file')
    fprintf('\n[0] (290/500) %s\n', '20250830T085101_T35KKT_20250829_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile095.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (290/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile095');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat', 'file')
    fprintf('\n[0] (291/500) %s\n', '20250830T085101_T35KKT_20250829_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile098.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (291/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile098');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat', 'file')
    fprintf('\n[0] (292/500) %s\n', '20250830T085101_T35KKT_20250829_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile099.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (292/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile099');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat', 'file')
    fprintf('\n[0] (293/500) %s\n', '20250830T085101_T35KKT_20250829_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile100.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (293/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile100');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat', 'file')
    fprintf('\n[0] (294/500) %s\n', '20250830T085101_T35KKT_20250829_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile101.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (294/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile101');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat', 'file')
    fprintf('\n[0] (295/500) %s\n', '20250830T085101_T35KKT_20250829_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile102.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (295/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile102');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat', 'file')
    fprintf('\n[0] (296/500) %s\n', '20250830T085101_T35KKT_20250829_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile103.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (296/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile103');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat', 'file')
    fprintf('\n[0] (297/500) %s\n', '20250830T085101_T35KKT_20250829_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile104.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (297/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile104');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat', 'file')
    fprintf('\n[0] (298/500) %s\n', '20250830T085101_T35KKT_20250829_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile105.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (298/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile105');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat', 'file')
    fprintf('\n[0] (299/500) %s\n', '20250830T085101_T35KKT_20250829_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile106.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (299/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile106');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat', 'file')
    fprintf('\n[0] (300/500) %s\n', '20250830T085101_T35KKT_20250829_tile107');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile107.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile107.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile107,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (300/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile107');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat', 'file')
    fprintf('\n[0] (301/500) %s\n', '20250830T085101_T35KKT_20250829_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile109.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (301/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile109');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat', 'file')
    fprintf('\n[0] (302/500) %s\n', '20250830T085101_T35KKT_20250829_tile110');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile110.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile110.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile110,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (302/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile110');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat', 'file')
    fprintf('\n[0] (303/500) %s\n', '20250830T085101_T35KKT_20250829_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile111.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (303/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile111');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat', 'file')
    fprintf('\n[0] (304/500) %s\n', '20250830T085101_T35KKT_20250829_tile112');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile112.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile112.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile112,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (304/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile112');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat', 'file')
    fprintf('\n[0] (305/500) %s\n', '20250830T085101_T35KKT_20250829_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile113.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (305/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile113');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat', 'file')
    fprintf('\n[0] (306/500) %s\n', '20250830T085101_T35KKT_20250829_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (306/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat', 'file')
    fprintf('\n[0] (307/500) %s\n', '20250830T085101_T35KKT_20250829_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile115.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (307/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile115');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat', 'file')
    fprintf('\n[0] (308/500) %s\n', '20250830T085101_T35KKT_20250829_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile116.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (308/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile116');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat', 'file')
    fprintf('\n[0] (309/500) %s\n', '20250830T085101_T35KKT_20250829_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile117.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (309/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile117');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat', 'file')
    fprintf('\n[0] (310/500) %s\n', '20250830T085101_T35KKT_20250829_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile118.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (310/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile118');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat', 'file')
    fprintf('\n[0] (311/500) %s\n', '20250830T085101_T35KKT_20250829_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile119.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (311/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile119');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat', 'file')
    fprintf('\n[0] (312/500) %s\n', '20250830T085101_T35KKT_20250829_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile121.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (312/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile121');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat', 'file')
    fprintf('\n[0] (313/500) %s\n', '20250830T085101_T35KKT_20250829_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile122.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (313/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile122');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat', 'file')
    fprintf('\n[0] (314/500) %s\n', '20250830T085101_T35KKT_20250829_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile123.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (314/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile123');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat', 'file')
    fprintf('\n[0] (315/500) %s\n', '20250830T085101_T35KKT_20250829_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile124.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (315/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile124');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat', 'file')
    fprintf('\n[0] (316/500) %s\n', '20250830T085101_T35KKT_20250829_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (316/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat', 'file')
    fprintf('\n[0] (317/500) %s\n', '20250830T085101_T35KKT_20250829_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile126.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (317/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile126');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat', 'file')
    fprintf('\n[0] (318/500) %s\n', '20250830T085101_T35KKT_20250829_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (318/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat', 'file')
    fprintf('\n[0] (319/500) %s\n', '20250830T085101_T35KKT_20250829_tile128');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile128.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile128.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile128,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (319/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile128');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat', 'file')
    fprintf('\n[0] (320/500) %s\n', '20250830T085101_T35KKT_20250829_tile129');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile129.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile129.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile129,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (320/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile129');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat', 'file')
    fprintf('\n[0] (321/500) %s\n', '20250830T085101_T35KKT_20250829_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile130.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (321/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile130');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat', 'file')
    fprintf('\n[0] (322/500) %s\n', '20250830T085101_T35KKT_20250829_tile134');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile134.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile134.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile134,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (322/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile134');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat', 'file')
    fprintf('\n[0] (323/500) %s\n', '20250830T085101_T35KKT_20250829_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile135.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (323/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile135');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat', 'file')
    fprintf('\n[0] (324/500) %s\n', '20250830T085101_T35KKT_20250829_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile136.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (324/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile136');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat', 'file')
    fprintf('\n[0] (325/500) %s\n', '20250830T085101_T35KKT_20250829_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile137.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (325/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile137');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat', 'file')
    fprintf('\n[0] (326/500) %s\n', '20250830T085101_T35KKT_20250829_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile138.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (326/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile138');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat', 'file')
    fprintf('\n[0] (327/500) %s\n', '20250830T085101_T35KKT_20250829_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile139.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (327/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile139');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat', 'file')
    fprintf('\n[0] (328/500) %s\n', '20250830T085101_T35KKT_20250829_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile140.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (328/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile140');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat', 'file')
    fprintf('\n[0] (329/500) %s\n', '20250830T085101_T35KKT_20250829_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile141.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (329/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile141');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat', 'file')
    fprintf('\n[0] (330/500) %s\n', '20250830T085101_T35KKT_20250829_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile147.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (330/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile147');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat', 'file')
    fprintf('\n[0] (331/500) %s\n', '20250830T085101_T35KKT_20250829_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile148.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (331/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile148');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat', 'file')
    fprintf('\n[0] (332/500) %s\n', '20250830T085101_T35KKT_20250829_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile149.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (332/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile149');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat', 'file')
    fprintf('\n[0] (333/500) %s\n', '20250830T085101_T35KKT_20250829_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile150.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (333/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile150');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat', 'file')
    fprintf('\n[0] (334/500) %s\n', '20250830T085101_T35KKT_20250829_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile151.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (334/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile151');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat', 'file')
    fprintf('\n[0] (335/500) %s\n', '20250830T085101_T35KKT_20250829_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile152.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (335/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile152');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat', 'file')
    fprintf('\n[0] (336/500) %s\n', '20250830T085101_T35KKT_20250829_tile160');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile160.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile160.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile160,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (336/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile160');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat', 'file')
    fprintf('\n[0] (337/500) %s\n', '20250830T085101_T35KKT_20250829_tile161');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile161.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile161.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile161,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (337/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile161');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat', 'file')
    fprintf('\n[0] (338/500) %s\n', '20250830T085101_T35KKT_20250829_tile162');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile162.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile162.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile162,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (338/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile162');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat', 'file')
    fprintf('\n[0] (339/500) %s\n', '20250830T085101_T35KKT_20250829_tile163');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile163.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile163.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile163,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (339/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile163');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat', 'file')
    fprintf('\n[0] (340/500) %s\n', '20250830T085101_T35KKT_20250829_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile173.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (340/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile173');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat', 'file')
    fprintf('\n[0] (341/500) %s\n', '20250830T085101_T35KKT_20250829_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile174.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (341/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile174');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat', 'file')
    fprintf('\n[0] (342/500) %s\n', '20250830T085101_T35KKT_20250829_tile175');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile175.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile175.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile175,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (342/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile175');
end

if ~exist('data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat', 'file')
    fprintf('\n[0] (343/500) %s\n', '20250830T085101_T35KKT_20250829_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    msi_path = 'data/MS/EMIT32/20250830T085101_T35KKT_20250829_tile186.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20250830T085101_T35KKT_20250829_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20250830T085101_T35KKT_20250829_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (343/500) %s — skip\n', '20250830T085101_T35KKT_20250829_tile186');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile021.mat', 'file')
    fprintf('\n[0] (344/500) %s\n', '20251101T084528_T33KWP_20251101_tile021');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile021.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile021.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile021.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile021,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (344/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile021');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile032.mat', 'file')
    fprintf('\n[0] (345/500) %s\n', '20251101T084528_T33KWP_20251101_tile032');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile032.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile032.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile032.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile032,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (345/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile032');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile033.mat', 'file')
    fprintf('\n[0] (346/500) %s\n', '20251101T084528_T33KWP_20251101_tile033');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile033.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile033.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile033.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile033,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (346/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile033');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile034.mat', 'file')
    fprintf('\n[0] (347/500) %s\n', '20251101T084528_T33KWP_20251101_tile034');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile034.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile034.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile034.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile034,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (347/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile034');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile043.mat', 'file')
    fprintf('\n[0] (348/500) %s\n', '20251101T084528_T33KWP_20251101_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile043.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (348/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile045.mat', 'file')
    fprintf('\n[0] (349/500) %s\n', '20251101T084528_T33KWP_20251101_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile045.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile045.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (349/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile045');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile046.mat', 'file')
    fprintf('\n[0] (350/500) %s\n', '20251101T084528_T33KWP_20251101_tile046');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile046.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile046.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile046.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile046,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (350/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile046');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile047.mat', 'file')
    fprintf('\n[0] (351/500) %s\n', '20251101T084528_T33KWP_20251101_tile047');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile047.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile047.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile047.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile047,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (351/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile047');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile054.mat', 'file')
    fprintf('\n[0] (352/500) %s\n', '20251101T084528_T33KWP_20251101_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile054.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile054.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (352/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile054');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile055.mat', 'file')
    fprintf('\n[0] (353/500) %s\n', '20251101T084528_T33KWP_20251101_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile055.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile055.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (353/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile055');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile056.mat', 'file')
    fprintf('\n[0] (354/500) %s\n', '20251101T084528_T33KWP_20251101_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile056.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile056.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (354/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile056');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile057.mat', 'file')
    fprintf('\n[0] (355/500) %s\n', '20251101T084528_T33KWP_20251101_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile057.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile057.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (355/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile057');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile065.mat', 'file')
    fprintf('\n[0] (356/500) %s\n', '20251101T084528_T33KWP_20251101_tile065');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile065.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile065.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile065.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile065,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (356/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile065');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile066.mat', 'file')
    fprintf('\n[0] (357/500) %s\n', '20251101T084528_T33KWP_20251101_tile066');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile066.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile066.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile066.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile066,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (357/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile066');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile067.mat', 'file')
    fprintf('\n[0] (358/500) %s\n', '20251101T084528_T33KWP_20251101_tile067');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile067.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile067.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile067.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile067,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (358/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile067');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile068.mat', 'file')
    fprintf('\n[0] (359/500) %s\n', '20251101T084528_T33KWP_20251101_tile068');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile068.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile068.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile068.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile068,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (359/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile068');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile069.mat', 'file')
    fprintf('\n[0] (360/500) %s\n', '20251101T084528_T33KWP_20251101_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile069.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile069.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (360/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile069');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile081.mat', 'file')
    fprintf('\n[0] (361/500) %s\n', '20251101T084528_T33KWP_20251101_tile081');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile081.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile081.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile081.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile081,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (361/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile081');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile082.mat', 'file')
    fprintf('\n[0] (362/500) %s\n', '20251101T084528_T33KWP_20251101_tile082');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile082.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile082.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile082.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile082,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (362/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile082');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile092.mat', 'file')
    fprintf('\n[0] (363/500) %s\n', '20251101T084528_T33KWP_20251101_tile092');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile092.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile092.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile092.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile092,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (363/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile092');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile093.mat', 'file')
    fprintf('\n[0] (364/500) %s\n', '20251101T084528_T33KWP_20251101_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile093.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile093.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (364/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile093');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile094.mat', 'file')
    fprintf('\n[0] (365/500) %s\n', '20251101T084528_T33KWP_20251101_tile094');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile094.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile094.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile094.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile094,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (365/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile094');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile102.mat', 'file')
    fprintf('\n[0] (366/500) %s\n', '20251101T084528_T33KWP_20251101_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile102.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile102.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (366/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile102');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile103.mat', 'file')
    fprintf('\n[0] (367/500) %s\n', '20251101T084528_T33KWP_20251101_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile103.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile103.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (367/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile103');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile104.mat', 'file')
    fprintf('\n[0] (368/500) %s\n', '20251101T084528_T33KWP_20251101_tile104');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile104.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile104.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile104.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile104,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (368/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile104');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile105.mat', 'file')
    fprintf('\n[0] (369/500) %s\n', '20251101T084528_T33KWP_20251101_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile105.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile105.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (369/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile105');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile106.mat', 'file')
    fprintf('\n[0] (370/500) %s\n', '20251101T084528_T33KWP_20251101_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile106.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile106.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (370/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile106');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile114.mat', 'file')
    fprintf('\n[0] (371/500) %s\n', '20251101T084528_T33KWP_20251101_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile114.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (371/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile115.mat', 'file')
    fprintf('\n[0] (372/500) %s\n', '20251101T084528_T33KWP_20251101_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile115.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile115.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (372/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile115');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile116.mat', 'file')
    fprintf('\n[0] (373/500) %s\n', '20251101T084528_T33KWP_20251101_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile116.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile116.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (373/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile116');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile125.mat', 'file')
    fprintf('\n[0] (374/500) %s\n', '20251101T084528_T33KWP_20251101_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile125.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (374/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile126.mat', 'file')
    fprintf('\n[0] (375/500) %s\n', '20251101T084528_T33KWP_20251101_tile126');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile126.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile126.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile126.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile126,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (375/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile126');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile127.mat', 'file')
    fprintf('\n[0] (376/500) %s\n', '20251101T084528_T33KWP_20251101_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile127.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (376/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile130.mat', 'file')
    fprintf('\n[0] (377/500) %s\n', '20251101T084528_T33KWP_20251101_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile130.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile130.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (377/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile130');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile138.mat', 'file')
    fprintf('\n[0] (378/500) %s\n', '20251101T084528_T33KWP_20251101_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile138.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile138.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (378/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile138');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile139.mat', 'file')
    fprintf('\n[0] (379/500) %s\n', '20251101T084528_T33KWP_20251101_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile139.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile139.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (379/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile139');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile140.mat', 'file')
    fprintf('\n[0] (380/500) %s\n', '20251101T084528_T33KWP_20251101_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251101T084528_T33KWP_20251101_tile140.mat';
    msi_path = 'data/MS/EMIT32/20251101T084528_T33KWP_20251101_tile140.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251101T084528_T33KWP_20251101_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251101T084528_T33KWP_20251101_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (380/500) %s — skip\n', '20251101T084528_T33KWP_20251101_tile140');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat', 'file')
    fprintf('\n[0] (381/500) %s\n', '20251124T142919_T19KDP_20251123_tile008');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile008.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile008.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile008,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (381/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile008');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat', 'file')
    fprintf('\n[0] (382/500) %s\n', '20251124T142919_T19KDP_20251123_tile022');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile022.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile022.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile022,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (382/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile022');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat', 'file')
    fprintf('\n[0] (383/500) %s\n', '20251124T142919_T19KDP_20251123_tile024');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile024.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile024.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile024,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (383/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile024');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat', 'file')
    fprintf('\n[0] (384/500) %s\n', '20251124T142919_T19KDP_20251123_tile025');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile025.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile025.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile025,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (384/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile025');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat', 'file')
    fprintf('\n[0] (385/500) %s\n', '20251124T142919_T19KDP_20251123_tile026');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile026.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile026.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile026,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (385/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile026');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat', 'file')
    fprintf('\n[0] (386/500) %s\n', '20251124T142919_T19KDP_20251123_tile027');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile027.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile027.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile027,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (386/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile027');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat', 'file')
    fprintf('\n[0] (387/500) %s\n', '20251124T142919_T19KDP_20251123_tile028');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile028.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile028.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile028,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (387/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile028');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat', 'file')
    fprintf('\n[0] (388/500) %s\n', '20251124T142919_T19KDP_20251123_tile037');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile037.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile037.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile037,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (388/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile037');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat', 'file')
    fprintf('\n[0] (389/500) %s\n', '20251124T142919_T19KDP_20251123_tile040');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile040.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile040.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile040,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (389/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile040');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat', 'file')
    fprintf('\n[0] (390/500) %s\n', '20251124T142919_T19KDP_20251123_tile041');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile041.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile041.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile041,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (390/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile041');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat', 'file')
    fprintf('\n[0] (391/500) %s\n', '20251124T142919_T19KDP_20251123_tile042');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile042.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile042.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile042,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (391/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile042');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat', 'file')
    fprintf('\n[0] (392/500) %s\n', '20251124T142919_T19KDP_20251123_tile043');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile043.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile043.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile043,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (392/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile043');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat', 'file')
    fprintf('\n[0] (393/500) %s\n', '20251124T142919_T19KDP_20251123_tile044');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile044.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile044.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile044,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (393/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile044');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat', 'file')
    fprintf('\n[0] (394/500) %s\n', '20251124T142919_T19KDP_20251123_tile045');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile045.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile045.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile045,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (394/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile045');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat', 'file')
    fprintf('\n[0] (395/500) %s\n', '20251124T142919_T19KDP_20251123_tile052');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile052.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile052.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile052,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (395/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile052');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat', 'file')
    fprintf('\n[0] (396/500) %s\n', '20251124T142919_T19KDP_20251123_tile053');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile053.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile053.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile053,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (396/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile053');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat', 'file')
    fprintf('\n[0] (397/500) %s\n', '20251124T142919_T19KDP_20251123_tile054');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile054.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile054.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile054,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (397/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile054');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat', 'file')
    fprintf('\n[0] (398/500) %s\n', '20251124T142919_T19KDP_20251123_tile055');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile055.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile055.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile055,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (398/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile055');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat', 'file')
    fprintf('\n[0] (399/500) %s\n', '20251124T142919_T19KDP_20251123_tile056');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile056.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile056.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile056,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (399/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile056');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat', 'file')
    fprintf('\n[0] (400/500) %s\n', '20251124T142919_T19KDP_20251123_tile057');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile057.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile057.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile057,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (400/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile057');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat', 'file')
    fprintf('\n[0] (401/500) %s\n', '20251124T142919_T19KDP_20251123_tile058');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile058.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile058.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile058,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (401/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile058');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat', 'file')
    fprintf('\n[0] (402/500) %s\n', '20251124T142919_T19KDP_20251123_tile059');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile059.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile059.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile059,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (402/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile059');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat', 'file')
    fprintf('\n[0] (403/500) %s\n', '20251124T142919_T19KDP_20251123_tile060');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile060.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile060.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile060,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (403/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile060');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat', 'file')
    fprintf('\n[0] (404/500) %s\n', '20251124T142919_T19KDP_20251123_tile061');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile061.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile061.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile061,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (404/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile061');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat', 'file')
    fprintf('\n[0] (405/500) %s\n', '20251124T142919_T19KDP_20251123_tile062');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile062.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile062.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile062,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (405/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile062');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat', 'file')
    fprintf('\n[0] (406/500) %s\n', '20251124T142919_T19KDP_20251123_tile069');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile069.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile069.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile069,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (406/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile069');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat', 'file')
    fprintf('\n[0] (407/500) %s\n', '20251124T142919_T19KDP_20251123_tile070');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile070.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile070.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile070,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (407/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile070');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat', 'file')
    fprintf('\n[0] (408/500) %s\n', '20251124T142919_T19KDP_20251123_tile071');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile071.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile071.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile071,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (408/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile071');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat', 'file')
    fprintf('\n[0] (409/500) %s\n', '20251124T142919_T19KDP_20251123_tile072');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile072.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile072.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile072,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (409/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile072');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat', 'file')
    fprintf('\n[0] (410/500) %s\n', '20251124T142919_T19KDP_20251123_tile073');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile073.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile073.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile073,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (410/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile073');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat', 'file')
    fprintf('\n[0] (411/500) %s\n', '20251124T142919_T19KDP_20251123_tile074');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile074.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile074.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile074,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (411/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile074');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat', 'file')
    fprintf('\n[0] (412/500) %s\n', '20251124T142919_T19KDP_20251123_tile075');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile075.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile075.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile075,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (412/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile075');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat', 'file')
    fprintf('\n[0] (413/500) %s\n', '20251124T142919_T19KDP_20251123_tile077');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile077.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile077.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile077,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (413/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile077');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat', 'file')
    fprintf('\n[0] (414/500) %s\n', '20251124T142919_T19KDP_20251123_tile078');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile078.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile078.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile078,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (414/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile078');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat', 'file')
    fprintf('\n[0] (415/500) %s\n', '20251124T142919_T19KDP_20251123_tile079');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile079.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile079.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile079,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (415/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile079');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat', 'file')
    fprintf('\n[0] (416/500) %s\n', '20251124T142919_T19KDP_20251123_tile083');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile083.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile083.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile083,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (416/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile083');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat', 'file')
    fprintf('\n[0] (417/500) %s\n', '20251124T142919_T19KDP_20251123_tile085');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile085.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile085.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile085,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (417/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile085');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat', 'file')
    fprintf('\n[0] (418/500) %s\n', '20251124T142919_T19KDP_20251123_tile086');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile086.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile086.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile086,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (418/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile086');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat', 'file')
    fprintf('\n[0] (419/500) %s\n', '20251124T142919_T19KDP_20251123_tile087');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile087.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile087.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile087,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (419/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile087');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat', 'file')
    fprintf('\n[0] (420/500) %s\n', '20251124T142919_T19KDP_20251123_tile088');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile088.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile088.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile088,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (420/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile088');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat', 'file')
    fprintf('\n[0] (421/500) %s\n', '20251124T142919_T19KDP_20251123_tile089');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile089.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile089.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile089,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (421/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile089');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat', 'file')
    fprintf('\n[0] (422/500) %s\n', '20251124T142919_T19KDP_20251123_tile090');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile090.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile090.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile090,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (422/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile090');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat', 'file')
    fprintf('\n[0] (423/500) %s\n', '20251124T142919_T19KDP_20251123_tile091');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile091.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile091.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile091,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (423/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile091');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat', 'file')
    fprintf('\n[0] (424/500) %s\n', '20251124T142919_T19KDP_20251123_tile093');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile093.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile093.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile093,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (424/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile093');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat', 'file')
    fprintf('\n[0] (425/500) %s\n', '20251124T142919_T19KDP_20251123_tile095');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile095.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile095.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile095,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (425/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile095');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat', 'file')
    fprintf('\n[0] (426/500) %s\n', '20251124T142919_T19KDP_20251123_tile098');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile098.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile098.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile098,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (426/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile098');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat', 'file')
    fprintf('\n[0] (427/500) %s\n', '20251124T142919_T19KDP_20251123_tile099');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile099.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile099.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile099,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (427/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile099');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat', 'file')
    fprintf('\n[0] (428/500) %s\n', '20251124T142919_T19KDP_20251123_tile100');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile100.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile100.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile100,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (428/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile100');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat', 'file')
    fprintf('\n[0] (429/500) %s\n', '20251124T142919_T19KDP_20251123_tile101');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile101.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile101.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile101,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (429/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile101');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat', 'file')
    fprintf('\n[0] (430/500) %s\n', '20251124T142919_T19KDP_20251123_tile102');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile102.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile102.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile102,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (430/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile102');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat', 'file')
    fprintf('\n[0] (431/500) %s\n', '20251124T142919_T19KDP_20251123_tile103');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile103.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile103.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile103,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (431/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile103');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat', 'file')
    fprintf('\n[0] (432/500) %s\n', '20251124T142919_T19KDP_20251123_tile105');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile105.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile105.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile105,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (432/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile105');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat', 'file')
    fprintf('\n[0] (433/500) %s\n', '20251124T142919_T19KDP_20251123_tile106');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile106.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile106.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile106,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (433/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile106');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat', 'file')
    fprintf('\n[0] (434/500) %s\n', '20251124T142919_T19KDP_20251123_tile109');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile109.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile109.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile109,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (434/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile109');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat', 'file')
    fprintf('\n[0] (435/500) %s\n', '20251124T142919_T19KDP_20251123_tile111');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile111.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile111.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile111,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (435/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile111');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat', 'file')
    fprintf('\n[0] (436/500) %s\n', '20251124T142919_T19KDP_20251123_tile113');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile113.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile113.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile113,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (436/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile113');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat', 'file')
    fprintf('\n[0] (437/500) %s\n', '20251124T142919_T19KDP_20251123_tile114');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile114.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile114.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile114,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (437/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile114');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat', 'file')
    fprintf('\n[0] (438/500) %s\n', '20251124T142919_T19KDP_20251123_tile115');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile115.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile115.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile115,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (438/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile115');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat', 'file')
    fprintf('\n[0] (439/500) %s\n', '20251124T142919_T19KDP_20251123_tile116');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile116.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile116.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile116,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (439/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile116');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat', 'file')
    fprintf('\n[0] (440/500) %s\n', '20251124T142919_T19KDP_20251123_tile117');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile117.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile117.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile117,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (440/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile117');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat', 'file')
    fprintf('\n[0] (441/500) %s\n', '20251124T142919_T19KDP_20251123_tile118');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile118.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile118.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile118,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (441/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile118');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat', 'file')
    fprintf('\n[0] (442/500) %s\n', '20251124T142919_T19KDP_20251123_tile119');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile119.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile119.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile119,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (442/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile119');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat', 'file')
    fprintf('\n[0] (443/500) %s\n', '20251124T142919_T19KDP_20251123_tile120');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile120.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile120.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile120,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (443/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile120');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat', 'file')
    fprintf('\n[0] (444/500) %s\n', '20251124T142919_T19KDP_20251123_tile121');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile121.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile121.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile121,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (444/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile121');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat', 'file')
    fprintf('\n[0] (445/500) %s\n', '20251124T142919_T19KDP_20251123_tile122');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile122.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile122.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile122,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (445/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile122');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat', 'file')
    fprintf('\n[0] (446/500) %s\n', '20251124T142919_T19KDP_20251123_tile123');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile123.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile123.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile123,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (446/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile123');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat', 'file')
    fprintf('\n[0] (447/500) %s\n', '20251124T142919_T19KDP_20251123_tile124');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile124.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile124.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile124,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (447/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile124');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat', 'file')
    fprintf('\n[0] (448/500) %s\n', '20251124T142919_T19KDP_20251123_tile125');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile125.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile125.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile125,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (448/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile125');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat', 'file')
    fprintf('\n[0] (449/500) %s\n', '20251124T142919_T19KDP_20251123_tile127');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile127.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile127.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile127,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (449/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile127');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat', 'file')
    fprintf('\n[0] (450/500) %s\n', '20251124T142919_T19KDP_20251123_tile130');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile130.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile130.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile130,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (450/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile130');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat', 'file')
    fprintf('\n[0] (451/500) %s\n', '20251124T142919_T19KDP_20251123_tile131');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile131.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile131.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile131,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (451/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile131');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat', 'file')
    fprintf('\n[0] (452/500) %s\n', '20251124T142919_T19KDP_20251123_tile132');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile132.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile132.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile132,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (452/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile132');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat', 'file')
    fprintf('\n[0] (453/500) %s\n', '20251124T142919_T19KDP_20251123_tile135');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile135.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile135.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile135,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (453/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile135');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat', 'file')
    fprintf('\n[0] (454/500) %s\n', '20251124T142919_T19KDP_20251123_tile136');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile136.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile136.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile136,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (454/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile136');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat', 'file')
    fprintf('\n[0] (455/500) %s\n', '20251124T142919_T19KDP_20251123_tile137');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile137.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile137.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile137,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (455/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile137');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat', 'file')
    fprintf('\n[0] (456/500) %s\n', '20251124T142919_T19KDP_20251123_tile138');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile138.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile138.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile138,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (456/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile138');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat', 'file')
    fprintf('\n[0] (457/500) %s\n', '20251124T142919_T19KDP_20251123_tile139');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile139.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile139.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile139,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (457/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile139');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat', 'file')
    fprintf('\n[0] (458/500) %s\n', '20251124T142919_T19KDP_20251123_tile140');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile140.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile140.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile140,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (458/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile140');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat', 'file')
    fprintf('\n[0] (459/500) %s\n', '20251124T142919_T19KDP_20251123_tile141');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile141.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile141.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile141,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (459/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile141');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat', 'file')
    fprintf('\n[0] (460/500) %s\n', '20251124T142919_T19KDP_20251123_tile142');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile142.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile142.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile142,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (460/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile142');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat', 'file')
    fprintf('\n[0] (461/500) %s\n', '20251124T142919_T19KDP_20251123_tile143');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile143.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile143.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile143,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (461/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile143');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat', 'file')
    fprintf('\n[0] (462/500) %s\n', '20251124T142919_T19KDP_20251123_tile147');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile147.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile147.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile147,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (462/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile147');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat', 'file')
    fprintf('\n[0] (463/500) %s\n', '20251124T142919_T19KDP_20251123_tile148');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile148.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile148.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile148,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (463/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile148');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat', 'file')
    fprintf('\n[0] (464/500) %s\n', '20251124T142919_T19KDP_20251123_tile149');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile149.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile149.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile149,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (464/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile149');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat', 'file')
    fprintf('\n[0] (465/500) %s\n', '20251124T142919_T19KDP_20251123_tile150');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile150.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile150.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile150,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (465/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile150');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat', 'file')
    fprintf('\n[0] (466/500) %s\n', '20251124T142919_T19KDP_20251123_tile151');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile151.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile151.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile151,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (466/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile151');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat', 'file')
    fprintf('\n[0] (467/500) %s\n', '20251124T142919_T19KDP_20251123_tile152');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile152.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile152.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile152,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (467/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile152');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat', 'file')
    fprintf('\n[0] (468/500) %s\n', '20251124T142919_T19KDP_20251123_tile153');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile153.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile153.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile153,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (468/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile153');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat', 'file')
    fprintf('\n[0] (469/500) %s\n', '20251124T142919_T19KDP_20251123_tile154');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile154.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile154.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile154,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (469/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile154');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat', 'file')
    fprintf('\n[0] (470/500) %s\n', '20251124T142919_T19KDP_20251123_tile155');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile155.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile155.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile155,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (470/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile155');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat', 'file')
    fprintf('\n[0] (471/500) %s\n', '20251124T142919_T19KDP_20251123_tile156');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile156.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile156.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile156,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (471/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile156');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat', 'file')
    fprintf('\n[0] (472/500) %s\n', '20251124T142919_T19KDP_20251123_tile157');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile157.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile157.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile157,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (472/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile157');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat', 'file')
    fprintf('\n[0] (473/500) %s\n', '20251124T142919_T19KDP_20251123_tile158');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile158.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile158.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile158,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (473/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile158');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat', 'file')
    fprintf('\n[0] (474/500) %s\n', '20251124T142919_T19KDP_20251123_tile159');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile159.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile159.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile159,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (474/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile159');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat', 'file')
    fprintf('\n[0] (475/500) %s\n', '20251124T142919_T19KDP_20251123_tile164');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile164.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile164.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile164,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (475/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile164');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat', 'file')
    fprintf('\n[0] (476/500) %s\n', '20251124T142919_T19KDP_20251123_tile165');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile165.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile165.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile165,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (476/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile165');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat', 'file')
    fprintf('\n[0] (477/500) %s\n', '20251124T142919_T19KDP_20251123_tile166');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile166.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile166.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile166,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (477/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile166');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat', 'file')
    fprintf('\n[0] (478/500) %s\n', '20251124T142919_T19KDP_20251123_tile167');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile167.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile167.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile167,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (478/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile167');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat', 'file')
    fprintf('\n[0] (479/500) %s\n', '20251124T142919_T19KDP_20251123_tile168');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile168.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile168.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile168,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (479/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile168');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat', 'file')
    fprintf('\n[0] (480/500) %s\n', '20251124T142919_T19KDP_20251123_tile169');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile169.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile169.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile169,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (480/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile169');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat', 'file')
    fprintf('\n[0] (481/500) %s\n', '20251124T142919_T19KDP_20251123_tile170');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile170.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile170.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile170,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (481/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile170');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat', 'file')
    fprintf('\n[0] (482/500) %s\n', '20251124T142919_T19KDP_20251123_tile171');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile171.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile171.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile171,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (482/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile171');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat', 'file')
    fprintf('\n[0] (483/500) %s\n', '20251124T142919_T19KDP_20251123_tile172');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile172.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile172.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile172,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (483/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile172');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat', 'file')
    fprintf('\n[0] (484/500) %s\n', '20251124T142919_T19KDP_20251123_tile173');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile173.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile173.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile173,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (484/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile173');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat', 'file')
    fprintf('\n[0] (485/500) %s\n', '20251124T142919_T19KDP_20251123_tile174');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile174.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile174.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile174,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (485/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile174');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat', 'file')
    fprintf('\n[0] (486/500) %s\n', '20251124T142919_T19KDP_20251123_tile182');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile182.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile182.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile182,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (486/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile182');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat', 'file')
    fprintf('\n[0] (487/500) %s\n', '20251124T142919_T19KDP_20251123_tile183');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile183.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile183.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile183,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (487/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile183');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat', 'file')
    fprintf('\n[0] (488/500) %s\n', '20251124T142919_T19KDP_20251123_tile184');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile184.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile184.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile184,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (488/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile184');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat', 'file')
    fprintf('\n[0] (489/500) %s\n', '20251124T142919_T19KDP_20251123_tile185');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile185.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile185.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile185,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (489/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile185');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat', 'file')
    fprintf('\n[0] (490/500) %s\n', '20251124T142919_T19KDP_20251123_tile186');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile186.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile186.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile186,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (490/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile186');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat', 'file')
    fprintf('\n[0] (491/500) %s\n', '20251124T142919_T19KDP_20251123_tile188');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile188.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile188.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile188,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (491/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile188');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat', 'file')
    fprintf('\n[0] (492/500) %s\n', '20251124T142919_T19KDP_20251123_tile199');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile199.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile199.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile199,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (492/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile199');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat', 'file')
    fprintf('\n[0] (493/500) %s\n', '20251124T142919_T19KDP_20251123_tile200');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile200.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile200.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile200,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (493/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile200');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat', 'file')
    fprintf('\n[0] (494/500) %s\n', '20251124T142919_T19KDP_20251123_tile201');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile201.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile201.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile201,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (494/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile201');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat', 'file')
    fprintf('\n[0] (495/500) %s\n', '20251124T142919_T19KDP_20251123_tile202');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile202.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile202.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile202,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (495/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile202');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat', 'file')
    fprintf('\n[0] (496/500) %s\n', '20251124T142919_T19KDP_20251123_tile204');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile204.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile204.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile204,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (496/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile204');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat', 'file')
    fprintf('\n[0] (497/500) %s\n', '20251124T142919_T19KDP_20251123_tile216');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile216.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile216.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile216,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (497/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile216');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat', 'file')
    fprintf('\n[0] (498/500) %s\n', '20251124T142919_T19KDP_20251123_tile217');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile217.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile217.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile217,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (498/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile217');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat', 'file')
    fprintf('\n[0] (499/500) %s\n', '20251124T142919_T19KDP_20251123_tile218');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile218.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile218.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile218,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (499/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile218');
end

if ~exist('data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat', 'file')
    fprintf('\n[0] (500/500) %s\n', '20251124T142919_T19KDP_20251123_tile234');
    tic;
    hsi_path = 'data/HS/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    msi_path = 'data/MS/EMIT32/20251124T142919_T19KDP_20251123_tile234.mat';
    sri_path = 'data/SR/SFIM/EMIT32/6/20251124T142919_T19KDP_20251123_tile234.mat';
    SFIM_run;
    elapsed = toc;
    fid = fopen('data/SR/SFIM/EMIT32/6/times.csv', 'a+');
    fprintf(fid, '20251124T142919_T19KDP_20251123_tile234,%.2f\n', elapsed);
    fclose(fid);
    fprintf('  Done in %.1fs\n', elapsed);
else
    fprintf('[0] (500/500) %s — skip\n', '20251124T142919_T19KDP_20251123_tile234');
end

fprintf('\n=== Worker 0 done (500 scenes) ===\n');
exit;