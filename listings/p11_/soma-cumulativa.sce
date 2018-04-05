clc;
clear;
printf("Cálculo da soma acumulada de um vetor\n");
printf("-------------------------------------\n");
printf("Digite os elementos do vetor.\n");
printf("Para encerrar digite um número negativo\n");
n = 0;
x = input("  digite um elemento do vetor: ");
while x >= 0 do
    n = n + 1;
    v(n) = x;
    x = input("  digite um elemento do vetor: ");
end
if n == 0 then
    somaAc = [];
else
    somaAc(1) = v(1);
    for i = 2:n do
        somaAc(i) = somaAc(i-1) + v(i);
    end
end
printf("\nVetor dado:\n[");
for i = 1:n do
    printf(" %g", v(i));
end
printf(" ]\n");
printf("\nSoma cumulativa do vetor dado:\n[");
for i = 1:n do
    printf(" %g", somaAc(i));
end
printf(" ]\n");
