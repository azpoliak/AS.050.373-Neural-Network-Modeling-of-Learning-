rng(1000);
initialInput = rand(1, 2);

weight = randn(2, 2);
biases = randn(2, 1);

output = weight * initialInput';

output = output + biases;

output = sigmoid(output);

ipat = [.9, .2 ;
         5,  4 ;
         2, .3 ;
         1, .1 ;
         3,  4 ;
         2,  5 ;
        .2,  1 ;
        .9,  6 ] ;
    
tpat = [1, 0 ;
        1, 0 ;
        1, 0 ;
        1, 0 ;
        0, 1 ;
        0, 1 ;
        0, 1 ;
        0, 1 ; ] ;
    
for rind = 1:size(ipat, 1)      % for now, present input patterns sequentially.
    input = ipat(rind, :)';     % transpose a row vector to a column vector
    netinput = weight * input;
    netinput = netinput + biases;
    output = sigmoid(netinput);
    outputs(rind, :) = output;
end

% Typically, we randomize the presentation order.
order = randperm(size(initialInput, 1));
for rind = order
    curr_input = initialInput(rind, :);
    disp(sprintf('pattern%02d: unit1 = %.2f, unit2 = %.2f', rind, curr_input))
    % Here present the input to the network model and compute the output.
end

total_err = 0;
for patno = order
    act_input = ipat(patno,:)' ;
    %computeact_output
    diffvec = tpat(patno,:)' - output;
    curr_err = sum(diffvec.^2);
    total_err = total_err+curr_err
end
         
