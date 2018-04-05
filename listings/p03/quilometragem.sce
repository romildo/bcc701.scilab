clc; clear;
printf("CUSTO DA LOCAÇÃO DE UM VEÍCULO\n");
printf("------------------------------------------\n");

// entrada de dados
distancia = input("distância percorrida (km): ");

// validação dos dados
if distancia <= 0 then
    printf("dados inválidos!\n");
else
    // cálculos
    if distancia <= 100 then
        custo = 1.20*distancia;
    else
        if distancia <= 300 then
            custo = 1.20*100 + 0.80*(distancia - 100);
        else
            custo = 1.20*100 + 0.80*200 + 0.70*(distancia - 300);
        end
    end
    custoMedio = custo/distancia;
    // exibição dos resultados
    printf("custo total da locação: R$%g\n", custo);
    printf("custo médio: R$%g/km\n", custoMedio);
end
