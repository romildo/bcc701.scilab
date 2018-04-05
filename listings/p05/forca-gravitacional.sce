clear; clc;
// Força Gravitacional
// F = g (m1 m2)/r^2

printf("Força Gravitacional")
printf("-------------------")
g = 6.674

// Le massas dos corpos e distância entre eles
m1 = input("Informe a massa do corpo 1 (em 10^24 kg): ")
m2 = input("Informe a massa do corpo 2 (em 10^24 kg): ")
r  = input("Informe a distância entre eles (em km): ")

// Calcula e imprime o valor da força
F = g * ((m1*m2)/(r^2)) * 10^31
printf("Força Gravitacional = %g Newtons",F)
