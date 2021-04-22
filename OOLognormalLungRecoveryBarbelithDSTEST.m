function OOLognormalLungRecoveryBarbelithDSTEST(strExperimentID, strModelFilenameIn)
poolobj = gcp('nocreate');
delete(poolobj);
setenv('LNLDATA',['/Users/chrisf/Documents/Physiology/lnlmatlab/DSTESTVER/' strExperimentID '_lung']);
setenv('CODE','/Users/chrisf/Documents/Physiology/lnlmatlab/DSTESTVER/OOLogNormalLung');
setenv('SLURM_JOB_ID', num2str(sum(clock)));
addpath(genpath(getenv('CODE')));
OOLognormalLungRecovery(strExperimentID, strModelFilenameIn);
end
