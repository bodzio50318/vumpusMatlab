function [ finalProb ] = doubleNetMoveProb( inputX,netMoveClassify,netMoveDecision )
    activeDir=pwd;
    addpath(strcat(activeDir,'/Functions'));



    possibleMoves=netMoveClassify(inputX(1:2));
    moveDecision=netMoveDecision(inputX(3:7));
    
    finalProb=possibleMoves.*moveDecision;
    
    finalProb=finalProb/norm(finalProb,1);
    finalProb=cumsum(finalProb);  
end

