clear;
clc;

vsRandom=1;
numOfGames=5 00;

activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));
networkName1='manualInput100.mat';
%networkName2='manualInput1000.mat';


sumPointsN1=0;
sumPointsN2=0;
sumOfWinsN1=0
sumOfWinsN2=0
if(vsRandom==1)
    for i=1:numOfGames
        i
        [pointsN1,pointsN2,net1Wins,net2Wins]=playVsRandom(networkName1);
        sumPointsN1=sumPointsN1+pointsN1;
        sumPointsN2=sumPointsN2+pointsN2;
        
        sumOfWinsN1=sumOfWinsN1+net1Wins;
        sumOfWinsN2=sumOfWinsN2+net2Wins;
    end
else
     for i=1:numOfGames
        i
        [pointsN1, pointsN2] = netVsNet(networkName1,networkName2);
        sumPointsN1=sumPointsN1+pointsN1;
        sumPointsN2=sumPointsN2+pointsN2;

        sumOfWinsN1=sumOfWinsN1+net1Wins;
        sumOfWinsN2=sumOfWinsN2+net2Wins;
     end
end

avg1=sumPointsN1/numOfGames
winRatio1=sumOfWinsN1/numOfGames

avg2=sumPointsN2/numOfGames
winRatio2=sumOfWinsN2/numOfGames