function samplesBetween = getSamplesBetween(samples, lowerBound, upperBound)
    size = length(samples);
    samplesBetween = [];
    temp = [];
    for i = 1 : size
        if(samples(1, i) > lowerBound && samples(1, i) < upperBound)
            temp = [temp, samples(1, i)];
        end
        
    if(isempty(temp))
        if(lowerBound ~= Inf && upperBound ~= Inf)
            newRand = (upperBound - lowerBound)* normrnd(0,1) + lowerBound;
            temp = [temp, newRand];
        else if (lowerBound == -Inf) 
             newRand = (upperBound - upperBound/2)* normrnd(0,1) + upperBound/2;
             temp = [temp, newRand];
        else if (upperBound == Inf) 
             newRand = (2 * lowerBound - lowerBound)* normrnd(0,1) + lowerBound;
             temp = [temp, newRand];
            end
            end
        end
    end
    samplesBetween = temp;
end
end

