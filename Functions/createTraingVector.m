function [ x,t ] = createTraingVector(x,worldListItem )

x=createNextX(x,worldListItem.world);

netOutput=reverseTranslator( worldListItem.move );
t=netOutput;
end

