clear;
clc;

rng shuffle


numOfGames=500;

activeDir=pwd;


addpath(strcat(activeDir,'/Functions'));
networkName1='netMoveAndDecision.mat';

load(strcat(activeDir,'/MoveAndDecision/',networkName1));

%networkName2='manualInput1000.mat';


sumOfWinsN1=0;
sumOfWinsN2=0;

% figure;


for i=1:numOfGames
    i
    pointsNet=0;
    world=worldGenerator();
    pointsNet=netGame(net,world);
    if pointsNet>0
        sumOfWinsN1=sumOfWinsN1+1;
    end
end


winRatio1=sumOfWinsN1/numOfGames

