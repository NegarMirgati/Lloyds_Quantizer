function output = hasConverged(c_prev, c)
    if(isempty(c_prev))
        output = false;
    else
        differences = abs(c - c_prev);
        max_diff = max(differences);
        disp(max_diff);
        if(max_diff <= 0.002)
            output = true;
        else
            output = false;
        end
    end
end

