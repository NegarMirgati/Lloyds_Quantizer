function z_arr = getSamples(sigma)
    z_arr = zeros(5000);
    for counter = 1 : 5000
        z_arr(1,counter) = normrnd(0, sigma);
    end
end

