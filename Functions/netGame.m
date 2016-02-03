function [ points ] = netGame( net,world )
xi=1;
yi=1;

d1=1;
g1=0;
move1=2;

d=mod((world(1,1).senses(1)+world(1,1).senses(2)),2);
g=world(1,1).senses(3);


alive=1;
points=20;

while alive
    x = [xi,yi,d1,g1,move1,d,g]';
    finalProb=net(x);
    
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
    
    world=newWorld;
    
    [xi,yi]=findPlayer(world);
    d1=d;
    g1=g;
    move1=move;
    
    d=mod((world(1,1).senses(1)+world(1,1).senses(2)),2);
    g=world(1,1).senses(3);
    
    if points<0
        break;
    end
end

end

