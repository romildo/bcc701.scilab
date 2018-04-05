clc; clear;
printf("Cálculo da média\n");
printf("----------------------------\n");
n = 0;
soma = 0;
maiorNota = -%inf;
nota = input("Digite a nota (valor negativo para terminar): ");
while nota >= 0
    n = n + 1;
    soma = soma + nota;
    if nota > maiorNota then
        maiorNota = nota;
    end
    nota = input("Digite a nota (valor negativo para terminar): ");  
end
printf("\n");
if n > 0 then
    media = soma / n;
    printf("Média aritmética: %.2f\n", media);
    printf("Maior nota: %.2f\n", maiorNota);
else
    printf("Nenhuma nota válida foi digitada!\n");
end
