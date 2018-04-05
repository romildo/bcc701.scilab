clc;
clear;

function soma = serie(n)
    soma = 1;
    denominador = 1;
    for i = 1:n do
        denominador = denominador * i;
        soma = soma + 1/denominador;
    end
endfunction

printf("Cálculo da soma da série\n");
printf("------------------------------------\n");
n = input("n: ");
total = serie(n);
printf("\nsoma da série: %g\n", total);
