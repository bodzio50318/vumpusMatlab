  function [] = printWorld( world )
dim = 4;
ratio=1/dim;
l = dim*100;
rectangle('Position',[0 -l l l],'FaceColor','w');
hold on;
for i = 1:dim
    
    line([0,l],[-i*ratio*l,-i*ratio*l]);
    line([i*ratio*l,i*ratio*l],[0,-l]);
end

% for r = 1:dim
%     for c = 1:dim

for r = 1:dim
    for c= 1:dim
        
        
        if world(r,c).player == 1
            printType(4,r,c);
            world(r,c).visible = 1;
        end
        
        
        if world(r,c).visible == 1
            printType(world(r,c).type,r,c)
            for i=1:3
                if world(r,c).senses(i)
                    printType(i+4,r,c); 
                end
            end
        end
        % in case the last move this is added
        if world(r,c).player == 1
            printType(4,r,c);
        end
        
        
    end
end

