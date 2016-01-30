clear;
clc;




activeDir=pwd;
networkName='default.mat';

load(strcat(activeDir,'\Networks\',networkName));


triningSetName='default.mat';
load(strcat(activeDir,'\TrainData\',triningSetName));


rand=randi([1 10000],1,1);

output1=net(X(:,rand))


move=translator(output1)