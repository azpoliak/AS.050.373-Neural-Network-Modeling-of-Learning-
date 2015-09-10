%% Problem 1

input = [1 0 1 0]
inputWeight = [-2.0 1.3 -0.2 3.0 ;
                4.5 -3   2.0 0.1]
            
hiddenBiases = [-1 -2]

inputWeightInverse = inputWeight'

hiddenPreBiases = input * inputWeightInverse
   
hidden = hiddenPreBiases + hiddenBiases

hiddenWeight = [-0.9 -0.6 -0.4 ;
                 1.5  0.7  1.2]
             
outBiases = [-0.1 0.3 -0.2]

%sigmoid

%addition 
