clear;
clc;

activeDir=pwd;
networkName='default.mat';


load(strcat(activeDir,'\Networks\',networkName));

world=worldGenerator();

world=nextWorld(world,2);
world=nextWorld(world,2);
world=nextWorld(world,2);
world=nextWorld(world,3);
world=nextWorld(world,1);
world=nextWorld(world,1);
world=nextWorld(world,4);


% 
% triningSetName='default.mat';
% load(strcat(activeDir,'\TrainData\',triningSetName));
% 
% for i=1:10
% pos=randi([1 4],2,1);
% senses=randi([0 1],3,1);
% pos1=randi([1 4],2,1);
% 
% input=[pos;senses;pos1];
% 
% output=net(input)
% move=translator(output)
% 
%end