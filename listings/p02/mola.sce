clc;         // limpa a janela do console
clear;       // remove as variáveis do ambiente

// entrada de dados
printf("Cálculo da energia armazenada em uma mola\n");
printf("-----------------------------------------\n");
k = input("constante da mola (N/m): ");
f = input("força na mola (N): ");

// cálculos
x = f / k;
energia = 0.5 * k * x^2;

// saída de dados
printf("\n")
printf("compressão da mola: %f m\n", x);
printf("energia armazenada na mola: %f J\n", energia);
