clc; clear;
printf("Cálculo aproximado de pi\n");
printf("-----------------------------------\n");
printf("Valor de pi pré-definido no scilab: %.10f\n", %pi);
n = input("Digite o número de termos da série: ");
soma = 0;
sinal = 1;
x = 1;
y = 0;
printf("-----------------------------------------\n");
printf("%6s %13s %14s\n", "termos", "pi calculado", "erro absoluto");
printf("-----------------------------------------\n");
for i = 1:n
    soma = soma + sinal * 1 / (x * 3^y);
    piaprox = sqrt(12) * soma;
    erro = abs(piaprox - %pi);
    printf("%6i %13.10f %14.11f\n", i, piaprox, erro);
    sinal = - sinal;
    x = x + 2;
    y = y + 1;
end
