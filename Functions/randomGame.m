function [ points ] = randomGame( world )

  alive=1;
  points=20;
  
 
    while 1
       [xP,yP]=findPlayer(world);   
        move=randomizeMove(xP,yP);
        
        [newWorld,alive,points]=nextWorld(world,move,points);
        
        
        if alive==0 || points<0
                break;
        end
        world=newWorld;
        
    end


end

