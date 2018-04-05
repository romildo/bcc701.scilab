clc; clear;
printf("Movimentos de uma torre no xadrez.\n");
linha = input("Digite a linha em que a torre se encontra: ");
coluna = input("Digite a coluna em que a torre se encontra: ");
printf("\nMovimentos possíveis:\n\n");
printf("     1  2  3  4  5  6  7  8\n");
printf("    -----------------------\n");
for i = 1 : 8 do
    printf("%g |", i);
    for j = 1 : 8 do
        if i == linha | j == coluna then
            printf("  1");
        else
            printf("  0");
        end
    end
    printf("\n");
end
