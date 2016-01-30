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
        printType(world(r,c).type,r,c)
        
        if world(r,c).player == 1
            printType(4,r,c);
        end
        
        if sum(world(r,c).senses)== 0 || world(r,c).type ~= 0
            continue;
        else
            for i=1:3
                if world(r,c).senses(i)
                    printType(i+4,r,c); 
                end
            end
        end
        
        
        
    end
end

