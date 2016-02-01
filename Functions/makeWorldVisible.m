function [world]=makeWorldVisible(world)

for r=1:4
    for c=1:4
        world(r,c).visible=1;
    end
end


end

