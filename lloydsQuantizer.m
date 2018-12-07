function outputs = lloydsQuantizer(samples, regions, numRegions)
 i = 0;
 c = [];
 while (i < 100)
     c = findOptimalRegions(samples, regions, numRegions);
     disp(i);
     updateRegions(c, numRegions -1);
     i = i + 1;
 end
    outputs = c;

end

