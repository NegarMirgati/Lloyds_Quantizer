function c = findOptimalRegions(samples, regions, numRegions)
c = zeros(0, numRegions);
for i = 1 : numRegions
    lowerBound = regions(1, i);
    upperBound = regions(1, i + 1);
    samplesBetween = getSamplesBetween(samples, lowerBound, upperBound);
    %disp(length(samplesBetween));
    sum_dists = zeros(1, length(samplesBetween));
    for x = 1 : numel(samplesBetween)
        temp = 0;
        for xk = 1 : numel(samplesBetween)
            temp = temp + power(samplesBetween(1, x) - samplesBetween(1, xk), 2);
        end
        sum_dists(1, x) = temp;
    end
    [val, idx] = min(sum_dists);
    c(1, i) = idx ;
end
  
end

