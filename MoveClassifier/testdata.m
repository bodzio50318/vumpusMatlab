netInputs = [  3 1; 3 2; 3 3; 3 4; 4 1; 4 2; 4 3; 4 4;]'
netOutputs= [   1 1 1 0;
                1 1 1 1;
                1 1 1 1;
                1 0 1 1;
                1 1 0 0;
                1 1 0 1;
                1 1 0 1;
                1 0 0 1;]'
            
trainData =[1 1 1 1 2 2 2 2;
            1 2 3 4 1 2 3 4]


                

T=[0 0 0 0 1 1 1 1;
1 1 1 0 1 1 1 0;
1 1 1 1 1 1 1 1;
0 1 1 1 0 1 1 1]

netInputs=[trainData,netInputs];
netOutputs=[T,netOutputs];