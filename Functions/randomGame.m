function [ points ] = randomGame( world )

alive=1;
points=20;


% printWorld(world)

while 1
    randomMove=randi([1 4],1,1);
    [newWorld,alive,points]=nextWorld(world,randomMove,points);
    world=newWorld;

    if alive==0 || points<0
        break;
    end
    
   
%     printWorld(world);
%     pause(0.5);
end

%     printWorld(world)
%     pause(2);

end

