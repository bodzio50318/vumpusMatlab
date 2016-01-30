function [X,T] = updateTrainingSet( worldList,X,T )

for i=2:length(worldList)
  [x,t]=createTraingVector(1,1,worldList(i));
  X=[X,x];
  T=[T,t];
end
end

