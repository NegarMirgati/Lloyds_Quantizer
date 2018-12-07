function c = findOptimalRegions(samples, regions, numRegions)

for i = 2: numRegions - 1
    lowerBound = regions(1, i);
    upperBound = regions(1, i + 1);
    sum = [];
    for x = floor(lowerBound) : floor(upperBound) 
        samplesBetween = getSamplesBetween(samples, lowerBound, upperBound);
        numOfSamplesBetween = length(samplesBetween);
        temp = 0;
        for k = 1 : numOfSamplesBetween
            temp = temp + power(samplesBetween(1, k) - x, 2);
        end
        sum = [sum, temp];
    end
    c(1, i) = min(sum);
end
  
end

