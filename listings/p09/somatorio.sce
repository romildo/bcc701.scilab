clc;
clear;

function y = f(x)
    y = x - sin(x);
endfunction

function y = g(x)
    y = x^3 - cos(2*x);
endfunction

function somatorio = h(numParcelas)
    somatorio = 0;
    for i = 1 : numParcelas do
        somatorio = somatorio + f(i)/g(i);
    end
endfunction

printf("Cálculo da série\n");
printf("---------------------\n");
n = input("número de parcelas: ");
printf("resposta: %g\n", h(n));
