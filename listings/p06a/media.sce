clc; clear;
printf("Cálculo da média\n");
printf("----------------------------\n");
n = 0;
soma = 0;
nota = input("Digite a nota (valor negativo para terminar): ");
while nota >= 0
    n = n + 1;
    soma = soma + nota;
    nota = input("Digite a nota (valor negativo para terminar): ");  
end
printf("\n");
if n > 0 then
    media = soma / n;
    printf("Média aritmética: %.2f\n", media);
else
    printf("Nenhuma nota válida foi digitada!\n");
end
