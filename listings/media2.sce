clc;
clear;

printf("Cálculo da média\n");
printf("-----------------------------------\n");

contador = 0;
soma = 0;

quantidade = input("quantidade de alunos: ");

while contador < quantidade do
    nota = input("digite uma nota: ");
    soma = soma + nota;
    contador = contador + 1;
end

if quantidade > 0 then
    media = soma/quantidade;
    printf("média: %g\n", media);
else
    printf("não foi informada nenhuma nota\n");
end
