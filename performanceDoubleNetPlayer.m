clear;
clc;
close all;
rng shuffle
vsRandom=1;
numOfGames=1500;

activeDir=pwd;

load(strcat(activeDir,'/MoveClassifier/','netMoveClassify.mat'),'net');
netMoveClassify = net;

clear net;

load(strcat(activeDir,'/MoveDecision/','netMoveDecision.mat'),'net');
netMoveDecision =net;


addpath(strcat(activeDir,'/Functions'));


netWins=0;
randomWins=0;
figure;

    for i=1:numOfGames
        i
        world=worldGenerator();
        netPoints=doubleNetGame(world,netMoveClassify,netMoveDecision);
        if netPoints >0
           netWins=netWins+1; 
        end
        
        
        
%         randomPoints=randomGame(world);
%         if randomPoints >0
%            randomWins=randomWins+1; 
%         end
        
        %[netWins,randomWins]=doubleVsRandom(netMoveClassify,netMoveDecision)
      
%         sumOfWinsN=sumOfWinsN+netWins;
%         sumOfWinsR=sumOfWinsR+randomWins;
    end


netRatio=netWins/numOfGames
randoiomRat=randomWins/numOfGames