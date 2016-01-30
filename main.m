clear;
clc;

activeDir=pwd;
networkName='default.mat';


% load(strcat(activeDir,'\Networks\',networkName));

world=worldGenerator();
figure;
printWorld(world);  
pause;

alive=1;



while alive
    [ newWorld,alive]=nextWorld(world,randi([1 4],1,1));
    printWorld(newWorld);
    pause;
    world=newWorld;
end

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