clear;
clc;

activeDir=pwd;

addpath(strcat(activeDir,'/Functions'));
networkName='randomInput.mat';


load(strcat(activeDir,'/Networks/',networkName));

world=worldGenerator();
figure;
printWorld(world);
pause;

x = [1,1,world(1,1).senses,1,1,world(1,1).senses,1,1,world(1,1).senses]';
alive=1;
points=20;



while alive
    netOut=net(x);
    move=translator(netOut);

    [newWorld,alive,points]=nextWorld(world,move,points);
    printWorld(newWorld);
    pause;
    world=newWorld;
    x=createNextX(x,world);

    if points<0 
        break;
    end
end


    
