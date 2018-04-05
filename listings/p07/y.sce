clc;
clear;
printf("Tabela da função dada\n")
printf("===============================\n");
printf("t     y(t)\n");
printf("===============================\n");
for t = -9 : 0.5 : 9 do
    if t < 0 then
        y = 3*t^2 + 5
    else
        y = -3*t^2 + 5
    end
    printf("%4.1f %9.4f\n", t, y)
end
