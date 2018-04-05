N = 200;
x = [0];
y = [0];
for i = 2:N
    x(i) = i;
    z = rand();
    if z > 0.5 then
        passo = 1;
    else
        passo = -1;
    end
    y(i) = y(i-1) + passo;
end
plot(x,y);
