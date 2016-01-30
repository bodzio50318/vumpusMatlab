function [X,T] = updateTrainingSet( worldList,X,T )

    x = [1,1,worldList(1).world.senses,1,1];
    t = worldList(1).move;
    X=[X,x];
    T=[T,t];
    for i=2:length(worldList)
      [xi_1, yi_1 ] = findPlayer(worldList(i-1).world);
      [x,t]=createTraingVector(xi_1,yi_1,worldList(i));
      x
      t
      X=[X,x];
      T=[T,t];
    end
end

