clear;
clc;

activeDir=pwd;
networkName='randomInput.mat';


load(strcat(activeDir,'/Networks/',networkName));

world=worldGenerator();
figure;
printWorld(world);
pause;
x=[1,1,world(1,1).senses,1,1]';
alive=1;
points=20;



while alive
    netOut=net(x);
    move=translator(netOut);

    [newWorld,alive,points]=nextWorld(world,move,points);
    printWorld(newWorld);
    pause;
    world=newWorld;
    [xi,yi]=findPlayer(world);
    x=[xi,yi,world(xi,yi).senses,x(1),x(2)]';

    if points<0 
        break;
    end
end


    
