clc; clear;
printf("Cálculo do valor aproximado de pi\n");
printf("-----------------------------------\n");

n = input("Quantidade de iterações: ");
while n < 1
    printf("  Valor inválido. Tente novamente.\n\n");
    n = input("Quantidade de iterações: ");
end

soma = 0;
x = 1;
i = 0;
while i < n
    soma = soma + 1 / (x * (x+2));
    x = x + 4;
    i = i + 1;
end

piaprox = 8*soma;
printf("\npi = %.12f\n", piaprox);
