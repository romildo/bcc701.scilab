clc; clear;
printf("Pesquisa de nota\n");
printf("-----------------------\n");
tabela = [1001, 7.0
          1010, 6.0
          2017, 2.0
          1507, 0.5
          2014, 9.1
          3050, 5.8
         ];
[NLin,Ncol] = size(tabela);
matricula = input("matrícula: ");
i = 1;
while i <= NLin & tabela(i,1) <> matricula do
    i = i + 1;
end
if i > NLin then
    printf("Matrícula não encontrada!");
else
    printf("Nota: %g\n", tabela(i,2));
end
