printf("Pesquisa em vetor\n");
printf("-----------------------\n");
vet = [5 2 3 0 1 2 6 9 4 8];
x = input("valor a ser pesquisado: ");
N = length(vet);
i = 1;
while i <= N & vet(i) <> x do
    printf("vet(%g) = %g  ==> não é este!\n", i, vet(i));
    i = i + 1;
end
if i > N then
    printf("Sorry!");
else
    printf("Valor encontrado na posição %g\n", i);
    disp(vet(1:i-1));
end
