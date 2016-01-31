clear;
clc;

activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));
networkName='manualInput100.mat';

load(strcat(activeDir,'/Networks/',networkName));

world=worldGenerator();

figure;
printWorld(world);
pause(0.5);

x = [1,1,world(1,1).senses,1,1,world(1,1).senses,1,1,world(1,1).senses]';
alive=1;
points=20;

while alive
    netOut=net(x);
    move=translator(netOut);

    [newWorld,alive,points]=nextWorld(world,move,points);
    
    printWorld(newWorld);
    pause(0.5);
    
    world=newWorld;
    x=createNextX(x,world);

    if points<0 
        break;
    end
end
