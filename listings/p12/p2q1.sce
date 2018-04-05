clc; clear;
n = input("número de parcelas: ");
k = 30;
m = 40;
soma = 0;
sinal = 1;
d = 1;
fatd = 1;
for i = 1:n
    termo = (i*k + sinal*i*m)/fatd;
    soma = soma + termo;
    sinal = -1 * sinal;
    d = d + 2;
    fatd = fatd * (d-1) * d
end
printf("somatório com %g parcelas: %g\n", n, soma);
