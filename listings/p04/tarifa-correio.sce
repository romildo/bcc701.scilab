clear;clc;
// Custo de envio de um pacote pelo correio

printf("Correios: cálculo da tarifa por pacote\n");
printf("---------------------------------------");

// lê o peso do pacote
peso = input("Informe o peso do pacote (em kg): ");
// calcula tarifa
if peso <=0 then
    printf("Valor inválido");
else if peso > 50 then
    printf("Peso acima do valor permitido");
else
    tarifa = 15 + 5*ceil((peso-1)*2);
    if peso > 35 then
        tarifa = tarifa + 15;
    end
    // informa o custo de envio
    printf("Custo de envio = %5.2f",tarifa);
end
