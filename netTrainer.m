clear;
clc;
activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));

numOfNeurons=99;

trainingSetName='default.mat';
networkNameBase='randomInput';

networkName=strcat(networkNameBase,num2str(numOfNeurons),'.mat');


load(strcat(activeDir,'\TrainData\',trainingSetName));

net=feedforwardnet(numOfNeurons);


[net,tr] = train(net,X,T);

save(strcat(activeDir,'\Networks\',networkName),'net');
