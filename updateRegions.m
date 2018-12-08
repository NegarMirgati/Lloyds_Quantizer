function u = updateRegions(c, N)
    u = zeros(1, N + 1);
    u(1,1) = - Inf;
    u(1, N + 1) = Inf;
    for i = 2 : N 
        u(1,i) = (c(1,i - 1) + c(1, i)) / 2;
    end
end

