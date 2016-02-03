clear;
clc;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='default.mat';

X=[];
T=[];


for i=1:5000
    
    alive=1;
    points=20;
    clear worldList;
    
    world=worldGenerator();
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




