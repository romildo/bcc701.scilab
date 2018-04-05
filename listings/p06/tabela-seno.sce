clc;
clear;

printf("Tabela de senos\n");

angulo = 0;

printf("ângulo(radianos)\t seno\n");

while angulo <= 2 * %pi
    printf("%16.1f\t%5.2f\n", angulo, sin(angulo));
    angulo = angulo + 0.2;
end
