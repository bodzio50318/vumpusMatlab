clear;
clc;


activeDir=pwd;
triningSetName='default.mat';

N=10000;

pos=randi([1 4],2,N);
senses=randi([0 1],3,N);
pos1=randi([1 4],2,N);

X=[pos;senses;pos1];

options=[45,135,225,315];

chosen=randi([1 4],1,N);

for i=1:N
   T(i)=options(chosen(i)); 
end

T
save(strcat(activeDir,'\TrainData\',triningSetName),'X','T');