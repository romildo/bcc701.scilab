clc; clear;
printf("Cálculo da quantidade de peças de ladrilho\n");
printf("------------------------------------------\n");

// entrada de dados
area = input("Área da sala (em cm^2): ");
tipo = input("Tipo do ladrilho (1/2/3): ");

// validação dos dados
if area < 0 | ~ (tipo == 1 | tipo == 2 | tipo == 3) then
    printf("\nDados inválidos!\n");
else
    // cálculo
    if tipo == 1 then
        quantidade = ceil(area/80);
    else
        if tipo == 2 then
            quantidade = ceil(area/60);
        else
            quantidade = ceil(area/40);
        end
    end
    // exibição da quantidade de ladrilhos
    printf("\nQuantidade de ladrilhos necessários: %g\n", quantidade);
end
