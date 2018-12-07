function u = updateRegions(c, N)
    u = zeros(1, N);
    for i = 1 : N - 1
        u(1,i) = (c(1,i) + c(1, i + 1)) / 2;
    end
end

