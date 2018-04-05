clear;
clc;
printf("Cálculo da média aritmética das notas\n");
printf("=====================================\n");
printf("\n");
quant = input("Informe a quantidade de alunos na turma: ")
printf("\n");
soma = 0;
contador = 1;
while contador <= quant do
    nota = input("Informe a nota do aluno: ");
    soma = soma + nota;
    contador = contador + 1;
end
printf("\n");
if quant > 0 then
    media = soma/quant;
    printf("Média calculada: %.2f\n", media)
else
    printf("Não há alunos na turma\n")
end
