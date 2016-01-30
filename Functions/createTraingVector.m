function [ x,t ] = createTraingVector(xi_1,yi_1,worldListItem )
[xi,yi]=findPlayer(worldListItem.world);
senses=worldListItem.world(xi,yi).senses;

move=0;
switch worldListItem.move
    case 1
        move=45;
    case 2
        move=315;
    case 3
        move=225;
    case 4
        move=135;
end

x=[xi,yi,senses,xi_1,yi_1]';
t=move;

end

