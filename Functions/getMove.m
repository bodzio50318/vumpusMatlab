function [ userMove ] = getMove()

properInput=0;

while properInput == 0
    key = getkey(1,'non-ascii');
    switch key
        case 'uparrow'
            userMove = 1;
            properInput = 1;
        case 'rightarrow'
            userMove = 2;
            properInput = 1;
        case 'downarrow'
            userMove = 3;
            properInput = 1;
        case 'leftarrow'
            userMove = 4;
            properInput = 1;
        case 'x'
            userMove = 9;
            properInput = 1;
        case 'q'
            userMove = 99;
            properInput = 1;    
        otherwise
            properInput = 0;
    end
    
end

