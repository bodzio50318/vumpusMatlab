function [ pointsNet1, pointsNet2,net1Wins,net2Wins ] = netVsNet( networkName1,networkName2 )
net1Wins=0;
net2Wins=0;

world=worldGenerator();

pointsNet1=netGame(networkName1,world);
pointsNet2=netGame(networkName2,world);


if pointsNet >0
    net1Wins=1;
end

if pointsRandom >0
    net2Wins=1;
end




end

