clc;
clear;

printf("Cálculo da média\n");
printf("-----------------------------------\n");

quantidade = 0;
soma = 0;

nota = input("digite uma nota: ");

while nota >= 0 do
    soma = soma + nota;
    quantidade = quantidade + 1;
    nota = input("digite uma nota: ");
end

if quantidade > 0 then
    media = soma/quantidade;
    printf("média: %g\n", media);
else
    printf("não foi informada nenhuma nota\n");
end
