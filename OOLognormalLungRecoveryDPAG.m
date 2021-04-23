function OOLognormalLungRecoveryDPAG(strExperimentID, strModelFilenameIn)
poolobj = gcp('nocreate');
delete(poolobj);
setenv('LNLDATA',['\Users\cfullerton\Documents\Physiology\lnlmatlab\data_for_testing\' strExperimentID '_lung']);
setenv('CODE','\Users\cfullerton\Documents\Physiology\lnlmatlab\OOLogNormalLung\');
setenv('SLURM_JOB_ID', num2str(sum(clock)));
addpath(genpath(getenv('CODE')));
OOLognormalLungRecovery(strExperimentID, strModelFilenameIn);
end
