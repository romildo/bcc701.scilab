clc; clear;
printf("Cálculo da média geométrica\n");
printf("-----------------------------------\n");
n = input("quantidade de números: ");
produto = 1;
for i = 1:n
    x = input("digite o próximo número: ");
    produto = produto * x;
end
m = produto ^ (1/n);
printf("\nmédia geométrica: %g\n", m);
