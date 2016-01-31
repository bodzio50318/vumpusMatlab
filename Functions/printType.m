function [] = printType(type,r,c)
    if type == 0
        return;
    end
    
    l=100;
    if type == 1
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor',[0.5 0.5 0.5],'LineWidth',0.01);
    elseif type == 2
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor','r','LineWidth',0.01);
    elseif type == 3
        rectangle('Position',[(c-1)*l -(r)*l l l ],'FaceColor','y','LineWidth',0.01);
    elseif type == 4
        rectangle('Position',[(c-1)*l+10 -(r)*l+10 20 20 ],'FaceColor','black','LineWidth',0.01);
    elseif type == 5
        label = 'wind';
        text((c-1)*l+40, -(r)*l+80,label,'FontSize',12);
    elseif type == 6
        label = 'smell';
        text((c-1)*l+40, -(r)*l+60,label,'FontSize',12);
    elseif type == 7
        label = 'glitter';
        text((c-1)*l+40, -(r)*l+40,label,'FontSize',12);
    end
    
    
end
