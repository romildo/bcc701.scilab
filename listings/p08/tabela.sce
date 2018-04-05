clc; clear;
printf("Tabela da função de duas variáveis\n");
printf("----------------------------------\n");
printf("x/y |");
for y = 0:0.2:1.4
    printf("  %5.1f", y);
end
printf("\n");
printf("-----");
for y = 0:0.2:1.4
    printf("-------");
end
printf("\n");
for x = 0:0.1:1
    printf("%3.1f |", x);
    for y = 0:0.2:1.4
        if x < y then
            z = x^2 - 3*x + y^2;
        elseif x == y then
            z = sqrt(y^2 - 4*x)/2;
        else
            z = (x*y)^(1/3);
        end
        printf("  %5.2f", z);
    end
    printf("\n");
end
