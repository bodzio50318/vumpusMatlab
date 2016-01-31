function [ pointsNet,pointsRandom ] = playVsRandom(networkName)

world=worldGenerator();

pointsNet=netGame(networkName,world);
pointsRandom=randomGame(world);
end

