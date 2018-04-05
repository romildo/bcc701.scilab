clc;      // limpa a janela do console
clf;      // limpa a janela de desenho
clear;    // limpa as variáveis do ambiente de trabalho

// entrada de dados
printf("Lançamento de uma bola\n");
printf("----------------------\n");
h0 = input("altura inicial da bola (m): ");
v0 = input("velociade de lançamento da bola (m/s): ");

// cálculos
g = -9.81;
t = [0 : 0.2 : 10];
h = 0.5 * g * t .^ 2 + v0 .* t + h0;
v = g .* t + v0;

// desenho do Gráfico
title("Lançamento de uma bola");
xlabel("Tempo (s)");
ylabel("Altura (m) e Velocidade (m/s)");
legend("Altura", "Velocidade");
set(gca(), "grid", [1 1]);
plot(t, h, t, v);
