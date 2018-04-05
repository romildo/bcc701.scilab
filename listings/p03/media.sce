clc; clear;
printf("RESULTADO DAS NOTAS\n");
printf("-------------------\n")

// entrada de dados
nota1 = input("nota 1: ");
nota2 = input("nota 2: ");
nota3 = input("nota 3: ");
nota4 = input("nota 4: ");

// média aritmética das notas
media = (nota1 + nota2 + nota3 + nota4)/4;
printf("a média aritmética das notas é %g\n", media);

// situação do aluno
if media >= 7 then
    printf("aprovado\n");
else
    printf("reprovado\n");
end
