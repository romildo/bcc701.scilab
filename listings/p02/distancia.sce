clc;       // limpa a janela do console
clear;     // remove as variáveis do ambiente

// entrada de dados
printf("Cálculo da distância entre dois pontos\n");
printf("--------------------------------------\n");
x1 = input("x1: ");
y1 = input("y1: ");
x2 = input("x1: ");
y2 = input("y1: ");

// cácuculo
d = sqrt((x1-x2)^2 + (y1-y2)^2);

// saída de dados
printf("\n")
printf("distância: %g\n", d);
