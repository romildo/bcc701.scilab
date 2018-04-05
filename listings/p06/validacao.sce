clc;
clear;

x = input("digite um número não negativo: ");

tentativas = 1;

while x < 0 & tentativas < 5
    printf("\nvalor inválido. presta mais atenção!\n");
    printf("restan %g tentativas\n", 5 - tentativas);
    x = input("digite um número não negativo: ");
    tentativas = tentativas + 1;
end

if x < 0 then
    printf("BURRO!\n");
else
    printf("\nvalor digitado: %g\n", x);
end
