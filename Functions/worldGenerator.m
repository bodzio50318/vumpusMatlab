function [ world ] = worldGenerator()
%% constants
dim = 4;
nWumpus = 1;
nHoles = 3;
nGold = 1;

%% declarations
world = [];
clear world;

%% world generation
world(1:dim,1:dim) = struct('type',0,'senses',zeros(1,3),'player',0,'visible',0);
world(1,1).player = 1;
world(1,1).visible = 1;

for i = 1:nHoles 
    
    x = round(3*rand+1);
    y = round(3*rand+1);
    while(world(x,y).type ~= 0 || x*y == 1)
        x = round(3*rand+1);
        y = round(3*rand+1);
    end
   
    world(x,y).type = 1;
   
end
for i = 1:nWumpus 
    
    x = round(3*rand+1);
    y = round(3*rand+1);
    while(world(x,y).type ~= 0 || x*y == 1)
        x = round(3*rand+1);
        y = round(3*rand+1);
    end
   
    world(x,y).type = 2;
   
end
for i = 1:nGold 
    
    x = round(3*rand+1);
    y = round(3*rand+1);
    while(world(x,y).type ~= 0 || x*y == 1)
        x = round(3*rand+1);
        y = round(3*rand+1);
    end
   
    world(x,y).type = 3;
   
end

for r =1:dim
    for c = 1:dim
        type = world(r,c).type;
        if type== 0
            continue;
        end
        if r>1 
            world(r-1,c).senses(type)= 1; %up
        end
        if r<4
            world(r+1,c).senses(type)= 1; %down
        end
        if c>1
            world(r,c-1).senses(type)= 1; %left
        end
        if c<4
            world(r,c+1).senses(type)= 1; %right 
        end
    end
end
   
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        





end

