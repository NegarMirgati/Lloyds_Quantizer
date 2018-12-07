function samplesBetween = getSamplesBetween(samples, lowerBound, upperBound)
size = length(samples);
samplesBetween = [];
for i = 1 : size
    if(samples(1, i) > lowerBound && samples(1, i) < upperBound)
         samplesBetween = [samplesBetween, samples(1, i)]
    end
end
end

