function [ newWorld,alive ] = nextWorld( world,move )

newWorld=world;

activeDir=pwd;
addpath(strcat(activeDir,'\Functions'));


[x,y]=findPlayer(world);
newWorld(x,y).player=0;

switch move
    case 1
        y=y-1;
    case 2
        x=x+1;
    case 3
        y=y+1;
    case 4
        x=x-1;
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

alive=1;
newWorld(x,y).type
if newWorld(x,y).type~=0
    alive=0;
end


end