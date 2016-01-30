clear;
clc;
activeDir=pwd;
trainingSetName='default.mat';
networkName='randomInput.mat';

net=feedforwardnet(20);

load(strcat(activeDir,'\TrainData\',trainingSetName));

[net,tr] = train(net,X,T);

save(strcat(activeDir,'\Networks\',networkName),'net');
