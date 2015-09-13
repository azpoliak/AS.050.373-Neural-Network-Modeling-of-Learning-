% Problem 2
rng(1000);

input = round(rand(1, 20));

input = sigmoid(input);
 
inputWeights = randn(20,10);
hiddenBiases = randn(1,10);

hiddenPreBiases = input * inputWeights;
   
hidden = hiddenPreBiases + hiddenBiases;

hiddenWeights = randn(10,3) ;
outBiases = randn(1,3) ;

outPreBiases = hidden * hiddenWeights ;

output = outPreBiases + outBiases ;

output = sigmoid(output)