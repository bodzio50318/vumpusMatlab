clear;
clc;
close all;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));

trainingSetName='manualTrainData.mat';

Xcurrent = [];
Tcurrent = [];
figure;

%% loop
terminateKey = 1;

while terminateKey ~= 0
    worldList = [];
    points = 20;
    alive = 1;
    testSetNumber=0;
    
    
    world= worldGenerator();
    
    
    while 1
        printWorld(world)
        userMove = getMove()
        %         pause;
        % discard the world
        if userMove == 9
            points = -1;
            disp('Run was discarded')
            break;
        % quit the program
        elseif userMove == 99
            terminateKey = 0;
            points= -1;
            disp('Termination Key pressed')
            break
        end
        
        worldList=[worldList,struct('world',world,'move',userMove)];
        
        [newWorld,alive,points]=nextWorld(world,userMove,points);
        
        if alive==0
            [newWorld]=makeWorldVisible(newWorld);
            printWorld(newWorld);
            pause;
            if points>0
                % only for displaying purpose
                worldList=[worldList,struct('world',newWorld,'move','Uwin')];
                break;
            else
                break;
            end
            
        end
        world=newWorld;
        
        
    end
    
    disp('End of game!')
    points
    % if player is dead but points are >0 than he won and we are saving the data
    if points>0
        % printing the last step
        printWorld(world)
        [Xcurrent,Tcurrent]=updateTrainingSet(worldList,Xcurrent,Tcurrent);
        testSetNumber = testSetNumber+1;
        
    end
    
end
disp('Saving data results...');
load(strcat(activeDir,'/TrainData/',trainingSetName),'X','T');
X=[X,Xcurrent];
T=[T,Tcurrent];

save(strcat(activeDir,'/TrainData/',trainingSetName),'X','T');
disp('End of program');


