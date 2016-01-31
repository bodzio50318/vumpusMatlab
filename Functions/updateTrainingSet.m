function [X,T] = updateTrainingSet( worldList,X,T )

x = [1,1,worldList(1).world(1,1).senses,1,1]';
t = reverseTranslator(worldList(1).move);
X=[X,x];
T=[T,t];
%last world brings no value since there is no more moves
for i=2:length(worldList)-1
    [xi_1, yi_1 ] = findPlayer(worldList(i-1).world);
    [x,t]=createTraingVector(xi_1,yi_1,worldList(i));
    X=[X,x];
    T=[T,t];
end
end

