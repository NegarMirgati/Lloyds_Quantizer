sigma = input('Enter Sigma: ');
b = input('Enter b: ');
samples = sort(normrnd(0, sigma, [1, 1500]));
numRegions = power(2,b);
initialRegions = generateInitialRegions(samples, numRegions);
outputs = lloydsQuantizer(samples, initialRegions, numRegions);
disp(outputs);