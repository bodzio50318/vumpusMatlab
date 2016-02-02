clear;
clc;

rng shuffle
vsRandom=1;
numOfGames=1000;

activeDir=pwd;

load(strcat(activeDir,'/MoveClassifier/','netMoveClassify.mat'),'net');
netMoveClassify = net;

clear net;

load(strcat(activeDir,'/MoveDecision/','netMoveDecision.mat'),'net');
netMoveDecision =net;


addpath(strcat(activeDir,'/Functions'));


sumPointsN1=0;
sumPointsN2=0;

sumOfWinsN1=0;
sumOfWinsN2=0;


    for i=1:numOfGames
        i
        world=worldGenerator();
        points=doubleNetGame(world,netMoveClassify,netMoveDecision);
        %[netWins,randomWins]=doubleVsRandom(netMoveClassify,netMoveDecision)
      
%         sumOfWinsN=sumOfWinsN+netWins;
%         sumOfWinsR=sumOfWinsR+randomWins;
    end


winRatio1=sumOfWinsN1/numOfGames

winRatio2=sumOfWinsN2/numOfGames