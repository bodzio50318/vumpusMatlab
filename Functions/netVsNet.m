function [ pointsNet1, pointsNet2 ] = netVsNet( networkName1,networkName2 )

world=worldGenerator();

pointsNet1=netGame(networkName1,world);
pointsNet2=netGame(networkName2,world);

end

