function [ move ] = randomizeMove(x0,y0)
    
    flag=1;
    while flag==1
        x=x0;
        y=y0;
        move = randi([1 4],1,1);
        switch move
            case 1
                x=x-1;
            case 2
                y=y+1;
            case 3
                x=x+1;
            case 4
                y=y-1;
        end
        flag=0;
        if x==5 
            flag=1;
        elseif x==0
            flag=1;
        elseif y==0
            flag=1;
        elseif y==5
            flag=1;
        end
       
    end
end

