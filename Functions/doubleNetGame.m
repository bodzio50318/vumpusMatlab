function [ points ] = doubleNetGame(world,netMoveClassify,netMoveDecision )

alive=1;
points=20;

xi=1;
yi=1;

d1=1;
g1=0;
move1=2;

d=mod((world(1,1).senses(1)+world(1,1).senses(2)),2);
g=world(1,1).senses(3);

printWorld(world);
pause;

while alive
    
    finalProb=doubleNetMoveProb([xi,yi,d1,g1,move1,d,g]',netMoveClassify,netMoveDecision);
    
    
    choice=rand();
    if choice< finalProb(1)
        move=1;
    elseif choice< finalProb(2)
        move=2;
    elseif choice< finalProb(3)
        move=3;
    else
        move=4;
    end
    
    
    [newWorld,alive,points]=nextWorld(world,move,points);
    
    
    
    
    if points<0
        break;
    end
    printWorld(newWorld);
    pause(0.5);
    
    
    world=newWorld;
    
    [xi,yi]=findPlayer(world);
    
    d1=d;
    g1=g;
    move1=move;
    
    d=mod((world(xi,yi).senses(1)+world(xi,yi).senses(2)),2);
    g=world(xi,yi).senses(3);
    
    
    
end

printWorldAll(newWorld);
pause;


end

