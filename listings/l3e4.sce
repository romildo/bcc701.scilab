clc;
clear;
v = input("Digite o vetor do número em binário: ");
n = length(v);
x = 0;
for i = 0 : n - 1 do
    x = x + v(n - i)*2^i
end
printf("Correspondente em decimal: %g\n", x);
