clc;
clear;
n = input("Digite a quantidade de elementos do vetor: ");
printf("Início da leitura dos elementos do vetor...\n");
for i = 1 : n
    printf("Elemento %g: ", i);
    vetor(i) = input("  digite o valor --> ");
end
// IMPRESSÃO DO VETOR ORIGINAL
printf("\nVetor original:\n");
for i = 1 : n
    printf("%g  ", vetor(i));
end
//
contNulo = 0;
contPos = 0;
contNeg = 0;
for i = 1:n
    if vetor(i) == 0 then
        contNulo = contNulo + 1;
    elseif vetor(i) < 0 then
        contNeg = contNeg + 1;
    else     // É POSITIVO
        contPos = contPos + 1;
    end
end
printf("\n\nElementos nulos     --> %g", contNulo);
printf("\nElementos positivos --> %g", contPos);
printf("\nElementos negativos --> %g", contNeg);
