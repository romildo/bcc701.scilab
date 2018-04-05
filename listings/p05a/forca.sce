clear;
clc;
printf("Força gravitacional\n");
printf("----------------------------\n");
m1 = input("Informe a massa do corpo 1 (em 10^24 Kg): ");
m2 = input("Informe a massa do corpo 2 (em 10^24 Kg): ");
r = input("Informe a distância entre eles (em Km): ");
G = 6.674*10^-11;
m1 = m1 * 10^24;  // convertendo para Kg
m2 = m2 * 10^24;  // convertendo para Kg
r = r * 1000;     // convertendo para m
F = G * m1 * m2 / r^2;
printf("Força gravitacional = %g Newtons\n", F);
