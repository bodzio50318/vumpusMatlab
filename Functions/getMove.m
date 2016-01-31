function [ userMove ] = getMove()

    key = getkey(1,'non-ascii');
    switch key
        case 'uparrow'
            userMove = 1;
        case 'rightarrow'
            userMove = 2;
        case 'downarrow'
            userMove = 3;
        case 'leftarrow'
            userMove = 4;
    end

end

