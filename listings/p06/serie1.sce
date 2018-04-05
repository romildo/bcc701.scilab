clc;
clear;

printf("Cálculo da série\n");

soma = 0;

num = 1;
den = 1;

while den <= 50
    termo = num / den;
    soma = soma + termo;
    num = num + 2;
    den = den + 1;
end

printf("Soma: %g\n", soma);
