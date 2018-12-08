function outputs = lloydsQuantizer(samples, regions, numRegions)
 i = 0;
 c = [];
 c_prev = [];
 while (hasConverged(c_prev, c) == false)
     c = findOptimalRegions(samples, regions, numRegions);
     regions = updateRegions(c, numRegions);
     i = i + 1;
     c_prev = c ;
 end
    outputs = c;

end

