clear;
clc;
activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));

trainingSetName='default.mat';
networkName='randomInput.mat';

net=feedforwardnet(100);

load(strcat(activeDir,'\TrainData\',trainingSetName));

[net,tr] = train(net,X,T);

save(strcat(activeDir,'\Networks\',networkName),'net');
