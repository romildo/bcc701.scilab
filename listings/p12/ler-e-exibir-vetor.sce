clc;
clear;

n = 5;

for i = 1:n do
    vet(i) = input("digite um elemento: ");
end

printf("\n");
codigo = input("digite o código (0, 1, ou 2): ");
printf("\n");

if codigo == 1 then
    printf("elementos do vetor em ordem direta:\n");
    for i = 1:n do
        printf("%g ", vet(i));
    end
elseif codigo == 2 then
    printf("elementos do vetor em ordem inversa:\n");
    for i = n:-1:1 do
        printf("%g ", vet(i));
    end
elseif codigo <> 0 then
    printf("código inválido");
end
