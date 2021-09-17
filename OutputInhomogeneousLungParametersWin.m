function OutputInhomogeneousLungParametersWin(strExperimentID, strModelFilenameIn)

poolobj = gcp('nocreate');
delete(poolobj);

setenv('LNLDATA',['\Users\Username\Documents\Data\' strExperimentID '_lung']);
setenv('CODE','\Users\Username\Documents\Code\OOLogNormalLung\');
setenv('SLURM_JOB_ID', num2str(sum(clock)));
addpath(genpath(getenv('CODE')));

OutputInhomogeneousLungParameters(strExperimentID, strModelFilenameIn);

end
