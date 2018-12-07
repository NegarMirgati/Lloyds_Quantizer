function initialRegions = generateInitialRegions(numRegions)
initialRegions = zeros(0, numRegions + 2);
initialRegions(1, 1) = -Inf;
initialRegions(1, numRegions + 2) = Inf;
initialRegions(1:1, 2:numRegions + 1) = randi([-1000, 1000], 1 , numRegions);
initialRegions = sort(initialRegions);

end

