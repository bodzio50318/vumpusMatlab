function [ points ] = netGame( networkName,world )

activeDir=pwd;

load(strcat(activeDir,'/Networks/',networkName));


x = [1,1,world(1,1).senses,1,1,world(1,1).senses,1,1,world(1,1).senses]';
alive=1;
points=20;

while alive
    netOut=net(x);
    move=translator(netOut);
    
    [newWorld,alive,points]=nextWorld(world,move,points);
        
    world=newWorld;
    x=createNextX(x,world);
    
    if points<0
        break;
    end
end

end

