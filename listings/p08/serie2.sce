clc;
clear;
printf("Cálculo da série:\n");
printf("-----------------------------\n");
n = input("Digite a quantidade de parcelas: ");
soma = 0;
for i = 1 : n
    soma = soma + i / (n - i + 1);
end
printf("Valor da série com %g termos: %g", n, soma);
