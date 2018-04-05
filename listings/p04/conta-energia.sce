clear; clc;
// Conta de Energia Elétrica

printf("Cálculo da Conta de Energia Elétrica\n");
printf("------------------------------------\n");

tservico = 5.0;
// Lê o consumo de energia
consumo = input("Informe o consume de energia: ");
if consumo <= 0 | int(consumo) <> consumo then
    printf("O consumo deve ser inteiro e positivo!\n");
else
    if consumo <= 500 then
        custo = consumo * 0.02;
    elseif consumo <= 1000 then
        custo = 500* 0.1 + (consumo - 500) * 0.05;
    else 
        custo = 1000 * 0.35 + (consumo - 1000) * 0.1;
    end
    // imprime a conta de energia
    printf("--------------------------------------\n");
    printf("Consumo                    = %g \n", consumo);
    printf("Custo da energia consumida = R$ %6.2f \n", custo);
    printf("Tarifa básica de serviço   = R$ %6.2f \n", tservico);
    printf("Valor a pagar              = R$ %6.2f \n", custo + tservico);
    printf("--------------------------------------");
end
