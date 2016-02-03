clc;
clear;
activeDir=pwd;
load(strcat(activeDir,'/MoveClassifier/','netMoveClassify.mat'),'net');
netMoveClassify = net;

clear net;

load(strcat(activeDir,'/MoveDecision/','netMoveDecision.mat'),'net');
netMoveDecision =net;


inputData=[];
for xi=1:4
    for yi=1:4
        for d1=0:1
            for g1=0:1
                for move=1:4
                    for d=0:1
                        for g=0:1
                             if g1 ==1 && g == 1 
                                continue; 
                             end
                            x=[xi,yi,d1,g1,move,d,g]';
                            inputData=[inputData,x];
                        end
                    end
                end
            end
        end
    end
end

output=[];

for i =1:length(inputData);
    finalProb=doubleNetMoveProb(inputData(:,i),netMoveClassify,netMoveDecision);
    output=[output,finalProb];
end

save(strcat(activeDir,'\MoveAndDecision\','traindata.mat'),'inputData','output');
