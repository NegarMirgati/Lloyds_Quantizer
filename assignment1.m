sigma = input('Enter Sigma: ');
b = input('Enter b: ');
samples = getSamples(sigma);

numRegions = power(2,b) - 1;
r = randi([-1000, 1000], 1 , numRegions);