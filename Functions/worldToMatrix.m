function [] = worldToMatrix (world)
    dim=4;
    worldTypes=zeros(4);
    for i=1:dim
        for j=1:dim
            worldTypes(i,j)=world(i,j).type;
        end
    end
    worldTypes

end

