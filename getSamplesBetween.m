function samplesBetween = getSamplesBetween(samples, lowerBound, upperBound)
size = length(samples);
samplesBetween = [];
temp = [];
for i = 1 : size
    if(samples(1, i) > lowerBound && samples(1, i) < upperBound)
         temp = [temp, samples(1, i)];
    end
    samplesBetween = temp;
end
end

