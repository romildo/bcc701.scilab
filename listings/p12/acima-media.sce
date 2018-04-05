clc;
clear;
printf("Cálculo da média\n");
printf("---------------------------\n");

// entrada das notas
quant = 0;
vet = [];            // vetor nulo
nota = input("digite a nota: ");
while nota >= 0 do
    quant = quant + 1;
    vet(quant) = nota;
    nota = input("digite a nota: ");
end

// foi digitada alguma nota válida?
if quant > 0 then
    // cálculo da média
    soma = 0;
    for i = 1:quant do
        soma = soma + vet(i);
    end
    media = soma / quant;
    printf("\nmédia: %g\n", media);

    // contar as notas acima da média
    acima_media = 0;
    for i = 1 : quant do
        if vet(i) > media then
            acima_media = acima_media + 1;
        end
    end
    printf("%g notas estao acima da média\n", acima_media);
else
    printf("nenhuma nota foi digitada!\n");
end

