clc;
clear;

//NOTAS = [ 10.0  5.0  7.8
//           5.0  3.0  6.0
//           9.0  7.1  8.4
//           0.6  1.8  7.1
//        ];

NumAlunos = input("Número de alunos: ");
NumProvas = input("Número de provas: ");

printf("Digite as notas dos alunos:\n");
for i = 1:NumAlunos do
    printf(" Aluno %g\n", i);
    for j = 1:NumProvas do
        printf("    Prova %g", j);
        NOTAS(i,j) = input("      nota obtida: ");
    end
end
        
[NLin, NCol] = size(NOTAS);

cont = 0;

for i = 1 : NLin do
    // calcular a média do i-esimo aluno
    soma = 0;
    for j = 1 : NCol do
        soma = soma + NOTAS(i, j);
    end
    media = soma / NCol;
    printf("Média %g: %g\n", i, media);
    if media >= 6 then
        cont = cont + 1;
    end
end

printf("Número de aprovados: %g\n", cont);
