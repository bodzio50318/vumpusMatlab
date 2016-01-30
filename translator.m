function [ direction ] = translator( netOut )
activeDir=pwd;
addpath(strcat(activeDir,'\Functions'));

if(isWithin(netOut, 0,90))
    direction=1;
elseif (isWithin(netOut, 90,180))
    direction=4;
elseif (isWithin(netOut, 180,270))
    direction=3;    
else
    direction=2;        
end

end

