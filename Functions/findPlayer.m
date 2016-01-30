function [ x,y ] = findPlayer( world )
for i=1:4
    for j=1:4
        if world(i,j).player==1
            x=i;
            y=j;
            return;
        end
    end
end
end

