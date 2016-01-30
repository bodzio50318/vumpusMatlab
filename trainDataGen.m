clear;
clc;

activeDir=pwd;
networkName='default.mat';
load(strcat(activeDir,'/Networks/',networkName));

for i=1:100
    

alive=1;
points=20;
clear worldList;

    world=worldGenerator();
    worldList(1) = struct('world',world);
    while alive
        [ newWorld,alive,points]=nextWorld(world,randi([1 4],1,1),points);
        world=newWorld;
        worldList=[worldList,struct('world',world)];
    end

    if points>=0
       figure;
       for j=1:length(worldList)    
           printWorld(worldList(j).world);  
           pause;
       end
    end
end
    
    

    
