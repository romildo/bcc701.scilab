clear; clc;
// Conta de investimento 2

printf("Conta de Investimento 2\n");
printf("-----------------------\n");

C = input("Valor do capital desejado: ");

invMes = 500;
saldo = 0;
mes = 0;
while saldo < C
    saldo = (saldo + invMes) * 1.01;
    mes = mes + 1;
end

printf("Período mínimo de investimento = %g meses", mes)
