clear;
clc;
printf("Cálculo da série\n");
printf("=========================\n");
quant = input("Digite a quantidade de termos: ")
soma = 0;
for i = 1 : quant do
    soma = soma + 1/(2* i)
end
printf("Valor da série com %g parcelas: %g\n", quant, soma);
