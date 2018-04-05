clc; clear;
printf("Multiplicação de matrizes.\n");
A = input("Digite a primeira matriz: ");
B = input("Digite a segunda matriz: ");

[LinA, ColA] = size(A);
[LinB, ColB] = size(B);

if ColA == LinB then
    for i = 1 : LinA do
        for j = 1 : ColB do
            C(i,j) = 0;
            for k = 1 : ColA do
                C(i,j) = C(i,j) + A(i,k)*B(k,j);
            end
        end
    end
    printf("Produto das matrizes:\n");
    disp(A);
    disp(B);
    disp(C);
else
    printf("O produto não existe\n");
end
