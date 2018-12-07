function z_arr = getSamples(sigma)
    temp = zeros(0, 1000);
    for counter = 1 : 1000
        temp(1,counter) = normrnd(0, sigma);
    end
    z_arr = sort(temp);
end

