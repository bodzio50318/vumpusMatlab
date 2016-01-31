clear;
clc;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='default.mat';

X=[];
T=[];
figure;

for i=1:100
    
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
        move=randomizeMove(xP,yP)
       printWorld(world); 
        worldList=[worldList,struct('world',world,'move',move)];
        
        for g=1:length(worldList)
            
            worldToMatrix(worldList(g).world);
        end
        
        [ newWorld,alive,points]=nextWorld(world,move,points); 
        if alive==0
            if points>0
                % tu wpisalismy 3 bo jak wygra to chyba nie robi gdzie sie
                % dalej poruszy
                worldList=[worldList,struct('world',newWorld,'move',3)];
                break; 
            else
                break;
            end
            
        end
        world=newWorld;
        
    end

    if points>0
      
       for j=1:length(worldList)    
           printWorld(worldList(j).world); 
           
           
        [X,T]=updateTrainingSet(worldList,X,T);
           pause;
       end
       pause;
    end
end


save(strcat(activeDir,'\TrainData\',trainingSetName),'X','T');
    
    

    
