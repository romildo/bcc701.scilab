clc; clear;
i = input("Informe a taxa de rendimento mensal: ");
C = input("Informe o capital investido em R$: ");
n = input("Informe o período do investimento (meses): ");
M = C * (1 + i)^n;
printf("Capital atual = R$ %g\n", M);
