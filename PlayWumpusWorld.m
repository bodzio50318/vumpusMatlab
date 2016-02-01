clear;
clc;
close all;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));
numberOfWins = 0;
numberOfGames = 0;
figure;

%% loop
terminateKey = 1;

while terminateKey ~= 0
    numberOfGames = numberOfGames+1;
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

        [newWorld,alive,points]=nextWorld(world,userMove,points);
        
        if alive==0
            [newWorld]=makeWorldVisible(newWorld);
            printWorld(newWorld);
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
        
    end
    %%because the last game is always lost
    numberOfGames=numberOfGames-1;
end

disp(strcat('Won games: ',int2str(numberOfWins)));
disp(strcat('Lost games: ',int2str(numberOfGames-numberOfWins)));
disp(strcat('All games: ',int2str(numberOfGames)));
disp(strcat('Performance: ',int2str(numberOfWins*100/numberOfGames),'%'));

disp('End of program');


