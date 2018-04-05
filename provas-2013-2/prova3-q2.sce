clc; clear;
A = input("Digite a matriz: ");
[Lin,Col] = size(A);
for i = 1:Lin
    for j = 1:Col
        At(j,i) = A(i,j);
    end
end
printf("\nMatriz transposta:\n\n");
disp(At);
