clc;
clear;

function y = f(x)
    y = x - sqrt(x);
endfunction

printf("Exercício com funções\n")
printf("---------------------------------\n");
n = input("deseja fazer o cálculo para quantos números? ");
soma = 0;
for i = 1:n do
    num = input("digite um número: ");
    soma = soma + f(num);
end
printf("somatório: %g\n", soma);
