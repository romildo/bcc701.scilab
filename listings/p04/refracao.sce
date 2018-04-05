clc; clear;
// Refração de onda
// n1 sin(theta1) = n2 sin(theta2)

printf("Refração de onda\n");
printf("----------------\n");

// Le indices de refração dos meios e ângulo de incidência
n1 = input("indice de refração do meio 1 (>=1) = ");
n2 = input("indice de refração do meio 2 (>=1) = ");
theta1 = input("ângulo de incidência (0 a 90 graus) = ");

if n1<1 | n2<1 | theta1 <0 | theta1 > 90 then
    printf("valores inválidos\n");
else
    // Cálculo do ângulo de refração
    r = (n1/n2) * sind(theta1);
    if r > 1 then
        printf("reflexão total\n")
    else 
        printf("ângulo de refração = %g graus\n", asind(r));
    end
    // Cálculo do ângulo crítico
    if n2 <= n1 then
        printf("ângulo crítico = %g graus\n", asind(n2/n1));
    end
end
