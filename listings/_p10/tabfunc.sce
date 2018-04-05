clc; clear;
// Tabela de função f(x,y)

printf("\nX/Y |     1       2       3       4       5       6       7       8");
printf("\n--------------------------------------------------------------------\n");

for x = 1:8
    printf("  %g | ", x);
    for y = 1:x
        if x == y then
            valor = (x*y) / (x+y);
        elseif modulo(x+y, 2) <> 0 then
            valor = x^2 + y^2;
        else
            valor = (x+y)^3;
        end
        printf("%6.1f  ", valor);
    end
    printf("\n");
end
