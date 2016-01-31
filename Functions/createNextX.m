function [ x ] = createNextX( x,world)

[xi,yi]=findPlayer(world);
sensesI=world(xi,yi).senses;

xi_1=x(1);
yi_1=x(2);
sensesI_1=x(3:5)';

xi_2=x(6);
yi_2=x(7);
sensesI_2=x(8:10)';

newX=[xi,yi,sensesI,xi_1,yi_1,sensesI_1,xi_2,yi_2,sensesI_2]';

x=newX;
end

