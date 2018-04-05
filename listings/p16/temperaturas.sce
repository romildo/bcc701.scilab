clc; clear;

function f = fahrenheit(c)
    f = 9*c/5 + 32
endfunction

printf("Tabela de temperaturas\n")
printf("-------------------------------\n");
printf("T(C)    T(F)\n");
for t = 0 : 2 : 30
    printf("%4.0f   %5.1f\n", t, fahrenheit(t));
end
