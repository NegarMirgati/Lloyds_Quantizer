sigma = input('Enter Sigma: ');
b = input('Enter b: ');
samples = getSamples(sigma);
numRegions = power(2,b) - 1;
initialRegions = generateInitialRegions(numRegions);
outputs = lloydsQuantizer(samples, initialRegions, numRegions);