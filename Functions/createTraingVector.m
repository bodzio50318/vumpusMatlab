function [ x,t ] = createTraingVector(xi_1,yi_1,worldListItem )
[xi,yi]=findPlayer(worldListItem.world);
senses=worldListItem.world(xi,yi).senses;

netOutput=reverseTranslator( worldListItem.move );

x=[xi,yi,senses,xi_1,yi_1]';
t=netOutput;

end

