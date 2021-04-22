function OOLognormalLungRecoveryLCI(strExperimentID, strModelFilenameIn)
poolobj = gcp('nocreate');
delete(poolobj);
setenv('LNLDATA',['/Users/chrisf/Documents/Physiology/lnlmatlab/data_for_testing/LCI_synth_data/' strExperimentID '_lung']);
setenv('CODE','/Users/chrisf/Documents/Physiology/lnlmatlab/LCI_version/OOLogNormalLung');
setenv('SLURM_JOB_ID', num2str(sum(clock)));
addpath(genpath(getenv('CODE')));
OOLognormalLungRecovery(strExperimentID, strModelFilenameIn);
end
