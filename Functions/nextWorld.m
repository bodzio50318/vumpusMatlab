function [ newWorld,alive,points ] = nextWorld( world,move,points )

newWorld=world;

activeDir=pwd;
addpath(strcat(activeDir,'/Functions'));


[x,y]=findPlayer(world);
newWorld(x,y).player=0;

switch move
    case 1
        x=x-1;
    case 2
        y=y+1;
    case 3
        x=x+1;
    case 4
        y=y-1;
end

if x==5
    x=4;
elseif x==0
    x=1;
elseif y==0
    y=1;
elseif y==5
    y=4;
end

newWorld(x,y).player=1;
newWorld(x,y).visible=1;

points=points-1;

alive=1;
if newWorld(x,y).type~=0
    alive=0;
    if(newWorld(x,y).type==1 || newWorld(x,y).type==2 )
        points=points-1000;
    else
        points=points+1000;
    end
end


end