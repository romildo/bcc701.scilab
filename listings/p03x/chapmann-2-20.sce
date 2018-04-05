clear; clc;

// Trajetória circular EX2.20

// aceleração a = v^2/r

// acelaração gravitacional (m/s^2)
g = 9.81;
// velocidade do som (m/s)
Mach = 340;

// Raio versus velocidade tangencial
// vetor de velocidades (fração de Mach)
v = [0.5:0.1:2.0];
// cálculo do raio da trajetória, para a=g
r = (v^2*Mach)/g

// gráfico v versus r para a = 2g e a = 7g
figure(1);
clf;
plot(v,r/2);
plot(v,r/7, 'green');
title("Trajetória Circular: Raio da Órbita x Velocidade Tangencial");
xlabel("velocidade (m/s)");
ylabel("raio (m)");
legend("a = 2g","a = 7g");
set(gca(), 'grid', [1 1]);

// Raio versus aceleração, para vt = 0.85 Mach
vt = 0.85;
// vetor de acelerações (unidades de g)
a = [2:8];
r = (vt^2*Mach)/(a*g);
// gráfico de raio versus aceleração
figure(2);
clf;
plot(a,r);
title("Trajetória Circular: Raio da Órbita x Aceleração Centrípeta");
xlabel("aceleração (unidades de g)");
ylabel("raio (m)");
set(gca(), 'grid', [1 1]);
