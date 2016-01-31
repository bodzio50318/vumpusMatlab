clear;
clc;
activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));

numOfNeurons=100;

trainingSetName='manualTrainData.mat';
networkNameBase='manualInput';

networkName=strcat(networkNameBase,num2str(numOfNeurons),'.mat');


load(strcat(activeDir,'\TrainData\',trainingSetName));

net=feedforwardnet(numOfNeurons);


[net,tr] = train(net,X,T);

save(strcat(activeDir,'\Networks\',networkName),'net');
