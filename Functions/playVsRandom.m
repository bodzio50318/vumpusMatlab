function [ pointsNet,pointsRandom,netWins,randomWins ] = playVsRandom(net)

world=worldGenerator();
netWins=0;
randomWins=0;

pointsNet=netGame(net,world);
pointsRandom=randomGame(world);

if pointsNet >0
    netWins=1;
end

if pointsRandom >0
    randomWins=1;
end

end

