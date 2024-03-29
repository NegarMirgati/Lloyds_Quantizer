function output = hasConverged(c_prev, c, numIters)
    threshold = 0.002;
    if(isempty(c_prev))
        output = false;
    else
        if(mod(numIters, 300) == 0)
            threshold = threshold * (numIters / 300) + threshold;
        end
        differences = abs(c - c_prev);
        max_diff = max(differences);
        if(max_diff <= threshold)
            output = true;
        else
            output = false;
        end
    end
end

