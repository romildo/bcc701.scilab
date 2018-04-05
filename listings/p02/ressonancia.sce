clc;         // limpa o console
clear;       // limpa as variáveis do ambiente

// entrada de dados
printf("Cálculo da frequência de ressonância\n");
printf("------------------------------------\n");
L = input("digite a indutância em henry: ");
C = input("digite a capacitância em farad: ");

// cálculo da frequência de ressonância
f0 = 1 / (2 * %pi * sqrt(L * C));

// saída de dados
printf("\n")
printf("frequência de ressonância: %g Hz\n", f0);
