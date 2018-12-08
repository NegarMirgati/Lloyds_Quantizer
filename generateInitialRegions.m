function initialRegions = generateInitialRegions(samples, numRegions)
initialRegions = zeros(0, numRegions + 1);
initialRegions(1, 1) = -Inf;
initialRegions(1, numRegions + 1) = Inf;
randIdcs = randperm(length(samples),numRegions - 1);
initialRegions(1:1, 2:numRegions) = samples(randIdcs);
initialRegions = sort(initialRegions);
end

