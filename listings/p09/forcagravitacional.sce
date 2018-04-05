clear; clc;

// função para calcular a força gravitacional
function F = forcaGravitacional(m1, m2, r)
    G = 6.67E-11;
    F = G * m1 * m2 / r^2;
endfunction

// programa principal
massaSatelite = 800;
massaTerra = 5.98E24;
distancia = 38000E3;
forca = forcaGravitacional(massaSatelite, massaTerra, distancia);
printf("força gravitacional: %g N\n", forca);
