clear;
clc;

vsRandom=0;
numOfGames=100;

activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));
networkName1='randomInput99.mat';
networkName2='randomInput7N.mat';


sumPointsN1=0;
sumPointsN2=0;
if(vsRandom==1)
    for i=1:numOfGames
        i
        [pointsN1,pointsN2]=playVsRandom(networkName1);
        sumPointsN1=sumPointsN1+pointsN1;
        sumPointsN2=sumPointsN2+pointsN2;
    end
else
     for i=1:numOfGames
        i
        [pointsN1, pointsN2] = netVsNet(networkName1,networkName2);
        sumPointsN1=sumPointsN1+pointsN1;
        sumPointsN2=sumPointsN2+pointsN2;
     end
end

avg1=sumPointsN1/numOfGames
avg2=sumPointsN2/numOfGames