clear;
clc;
activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='manualTrainData.mat';

load(strcat(pwd,'/TrainData/',trainingSetName),'X','T');
X=[];
T=[];
save(strcat(pwd,'/TrainData/',trainingSetName),'X','T');