function outputs = lloydsQuantizer(samples, regions, numRegions)
 i = 0;
 c = [];
 c_prev = [];
 done = false;
 while (done == false)
     c = findOptimalRegions(samples, regions, numRegions);
     regions = updateRegions(c, numRegions);
     i = i + 1;
     done = hasConverged(c_prev, c);
     c_prev = c ;
 end
    disp(i);
    outputs = c;

end

