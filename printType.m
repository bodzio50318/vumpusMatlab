function [] = printType(type,r,c)
    if type == 0
        return;
    end
    
    l=100;
    if type == 1
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor','c','LineWidth',0.01);
    elseif type == 2
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor','r','LineWidth',0.01);
    elseif type == 3
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor','y','LineWidth',0.01);
    elseif type == 4
        rectangle('Position',[(c-1)*l+10 -(r)*l+10 20 20 ],'FaceColor','black','LineWidth',0.01);
    end
    
end
