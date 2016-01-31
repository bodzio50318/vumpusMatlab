clear;
clc;
activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));

numOfNeurons=100;

trainingSetName='default.mat';
networkNameBase='test';

networkName=strcat(networkNameBase,num2str(numOfNeurons),'.mat');


load(strcat(activeDir,'\TrainData\',trainingSetName));

net=feedforwardnet([numOfNeurons 10]);


[net,tr] = train(net,X,T);

save(strcat(activeDir,'\Networks\',networkName),'net');
