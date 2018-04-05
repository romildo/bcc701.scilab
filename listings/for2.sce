clc;
clear;

nlinhas = input("Digite o número de linhas: ");

for linha = 1 : nlinhas
    for i = 1 : linha
        printf("#");
    end
    printf("\n");
end
