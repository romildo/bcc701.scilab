clc;
clear;

n = 4;

printf("digite os elementos do primeiro vetor:\n");
for i = 1:n do
    u(i) = input("digite um elemento: ");
end

printf("\n");
printf("digite os elementos do segundo vetor:\n");
for i = 1:n do
    v(i) = input("digite um elemento: ");
end

for i = 1:n do
    w(i) = 2*(u(i) + v(i));
end

printf("\n");
printf("elementos do vetor calculado:\n");
for i = 1:n do
    printf("%g ", w(i));
end
