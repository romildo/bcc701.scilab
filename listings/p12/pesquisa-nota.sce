clear;
clc;

aluno = [ "Peny", "Rajesh Koothrappali", ...
          "Sheldon Cooper", "Howard Wolowitz", ...
          "Leonard Hofstadter" ];
notasBCC701 = [ 6.0 8.5 10.0 9.0 9.5 ];

[m, n] = size(aluno);

printf("\nTHE BIG BANG THEORY\n");
x = input("DIGITE O NOME DO ALUNO:  ", "s");
encontrei = %f;
for i = 1:n
    if aluno(i) == x then
        k = i;
        encontrei = %t;
    end
end
if encontrei then
    printf("NOME DO ALUNO:  %s\n", aluno(k));
    printf("NOTA EM BCC701:  %g", notasBCC701(k));
else
    printf("ALUNO NÃO CADASTRADO: %s", x);
end

