clear; clc;
// Conta de investimento 1

printf("Conta de Investimento 1\n")
printf("-----------------------\n")
printf("Mês     Saldo\n")

invMes = 500
saldo = 0
for i = 1 : 12
    saldo = (saldo + invMes) * 1.01
    printf("%3.0f  %8.2f\n", i, saldo)
end
