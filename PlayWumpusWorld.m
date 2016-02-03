clear;
clc;
close all;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));
numberOfWins = 0;
numberOfGames = 0;
worldListCurrent = [];
playerName='';
playerName =input('Podaj nazwe gracza: ','s')
%% loop
terminateKey = 1;
figure;
while terminateKey ~= 0
    numberOfGames = numberOfGames+1;
    
    points = 20;
    alive = 1;
    testSetNumber=0;
    
    
    world= worldGenerator();
    
    
    while 1
        printWorld(world)
        userMove = getMove();
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
        worldListCurrent=[worldListCurrent,struct('world',world,'move',userMove)];

        [newWorld,alive,points]=nextWorld(world,userMove,points);
        
        if alive==0
            worldListCurrent=[worldListCurrent,struct('world',newWorld,'move','Uwin')];
            printWorldAll(newWorld);
            pause;
            break;
   
        end
        world=newWorld;
        
        
    end
    
    disp('End of game!')
    points
    
    % if player is dead but points are >0 than he won and we are saving the data
    if points>0
        numberOfWins = numberOfWins +1;
        % printing the last step
        printWorld(world)
        
        testSetNumber = testSetNumber+1;
       
    else
        numberOfGames=numberOfGames+1;
    end
    
    
end
%%because the last game is always lost
numberOfGames=numberOfGames-1;
performance = round(numberOfWins*100/numberOfGames);
disp('Saving data results...');
fileName = strcat(playerName,'_P',int2str(performance),'_G',int2str(numberOfGames));
save(strcat(activeDir,'/TrainData/',fileName),'worldListCurrent');
disp('End of program');

disp(strcat('Won games: ',int2str(numberOfWins)));
disp(strcat('Lost games: ',int2str(numberOfGames-numberOfWins)));
disp(strcat('All games: ',int2str(numberOfGames)));
disp(strcat('Performance: ',int2str(performance),'%'));

disp('End of program');


