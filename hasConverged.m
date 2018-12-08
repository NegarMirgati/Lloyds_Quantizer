function output = hasConverged(c_prev, c)
    differences = abs(c - c_prev);
    min_diff = min(differences);
    if(isempty(c_prev))
        output = false;
    else if(min_diff <= 0.002)
        output = true;
    else
        output = false;
    end
end

