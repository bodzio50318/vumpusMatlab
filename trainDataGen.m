clear;
clc;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='default.mat';

X=[];
T=[];
for i=1:100
    

alive=1;
points=20;
clear worldList;

    world=worldGenerator();
    worldList(1) = struct('world',world,'move','null');
    while alive && points>0
        move=randi([1 4],1,1);
        [ newWorld,alive,points]=nextWorld(world,move,points);
        world=newWorld;
        worldList=[worldList,struct('world',world,'move',move)];
    end

    if points>0
       i
       for j=1:length(worldList)    
%            printWorld(worldList(j).world);  
%            pause;
        [X,T]=updateTrainingSet(worldList,X,T);

       end
    end
end


save(strcat(activeDir,'\TrainData\',trainingSetName),'X','T');
    
    

    
