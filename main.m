clear;
clc;

activeDir=pwd;
networkName='default.mat';


load(strcat(activeDir,'/Networks/',networkName));

world=worldGenerator();
figure;
printWorld(world);  
pause;

alive=1;
points=20;


while alive
    [ newWorld,alive,points]=nextWorld(world,randi([1 4],1,1),points);
    printWorld(newWorld);
    pause;
    world=newWorld;
end


    
