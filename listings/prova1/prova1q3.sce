clc; clear;
printf("Cálculo de pi Usando a Fórmula de Euler\n")
n = input("Número de Termos da Série: ");
i = [1:n];
termos = 1 ./ i.^2;
soma = sum(termos);
pi = sqrt(6*soma);
printf("Valor Aproximado de pi: %g\n", pi);
