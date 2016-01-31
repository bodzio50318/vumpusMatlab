clear;
clc;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='manualTrainData.mat';

X = [];
T = [];
worldList = [];
points = 20;
alive = 1;
figure;

world= worldGenerator();
%% loop
while trainSetNumber <= 10  
    printWorld(world)
    userMove = getMove();
    
    worldList=[worldList,struct('world',world,'move',userMove)];
        
    [newWorld,alive,points]=nextWorld(world,userMove,points);
    
    if alive==0
            if points>0
                %% only for displaying purpose
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

