clc; clear;
printf("Listagem dos aprovados\n");
printf("-----------------------\n");
tabela = [1001, 7.0
          1010, 6.0
          2017, 2.0
          1507, 0.5
          2014, 9.1
          3050, 5.8
         ];
[NLin,Ncol] = size(tabela);

printf("%10s %8s\n", "matricula", "nota")
// percorre as linhas da tabela, analisando cada uma delas
i = 1;
while i <= NLin do
    if tabela(i,2) >= 6 then
        printf("%10g %8.2f\n", tabela(i,1), tabela(i,2));
    end
    i = i + 1;
end
    
