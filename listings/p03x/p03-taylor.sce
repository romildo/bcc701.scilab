clear; clc;

// Cálculo aproximado do logaritmo natural pela a série de Taylor 
// O logaritmando deve ser um número real z t.q. 0 < z < 2

// Leitura dos dados
printf("Cálculo aproximado do logaritmo de z (0<z<2)\n");
printf("--------------------------------------------\n");

z = input("Digite um número no intervalo (0-2): ");

n = input("Digite o número de termos para o cálculo: ");

// Cálculo do logaritmo
I = 1:n;
LogZ = sum(((-1)^(I-1) .* (z-1)^I) ./ I);

// Exibição do resultado
printf("\n");
printf("Valor aproximado do logaritmo de %g = %g\n", z, LogZ);
printf("Usando a função predefinida = %g\n", log(z));
