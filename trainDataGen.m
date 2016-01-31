clear;
clc;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='default.mat';

X=[];
T=[];
figure;

for i=1:500
    
    alive=1;
    points=20;
    clear worldList;
    
    world=worldGenerator();
    % move=randomizeMove(1,1)
    % pause;
    % worldList(1) = struct('world',world,'move',move);
    worldList=[];
    while 1
        [xP,yP]=findPlayer(world);
        
        
        move=randomizeMove(xP,yP);
        worldList=[worldList,struct('world',world,'move',move)];
        
        [newWorld,alive,points]=nextWorld(world,move,points);
        
        
        if alive==0
            if points>0
                worldList=[worldList,struct('world',newWorld,'move','Uwin')];
                break;
            else
                break;
            end
            
        end
        world=newWorld;
        
    end
    
    if points>0
        i
        [X,T]=updateTrainingSet(worldList,X,T);
    end
end


save(strcat(activeDir,'\TrainData\',trainingSetName),'X','T');




