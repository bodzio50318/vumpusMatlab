clear;
clc;
activeDir=pwd;
triningSetName='default.mat';
networkName='default.mat';

net=feedforwardnet(10);

load(strcat(activeDir,'\TrainData\',triningSetName));


[net,tr] = train(net,X,T);


save(strcat(activeDir,'\Networks\',networkName),'net');
