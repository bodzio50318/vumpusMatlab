function [ netOutput ] = reverseTranslator( move )

netOutput=0;
switch move
    case 1
        netOutput=45;
    case 2
        netOutput=315;
    case 3
        netOutput=225;
    case 4
        netOutput=135;
end

end

