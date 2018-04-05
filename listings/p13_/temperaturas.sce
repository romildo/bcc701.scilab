clear; clc;

TCH = [75 79 86 86 79 81 73 89 91 86 81 82 86 88 89 ...
       90 82 84 81 79 73 69 73 79 82 72 66 71 69 66 66];

TSF = [69 79 70 73 72 71 69 76 85 87 74 84 76 68 79 ...
       75 68 68 81 72 79 68 68 69 71 70 89 95 90 66 69];

printf("Datas em que ocorreram a mesma temperatura: ");

contador = 0;

for i = 1 : length(TCH)
    if TCH(i) == TSF(i) then
        printf(" %d", i);
        contador = contador + 1;
    end
end

printf("\nQuantidade de dias que ocorreram a mesma temperatura: %g\n", ...
       contador);
