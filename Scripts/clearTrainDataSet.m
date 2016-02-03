clear;
clc;
close all;

trainDataName = 'Simon';

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));
load(strcat(activeDir,'/TrainData/',trainDataName),'worldList');
worldList=[];
save(strcat(activeDir,'/TrainData/',trainDataName),'worldList');