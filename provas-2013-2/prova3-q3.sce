clc; clear;
Apostas = [ 19 24 25 28 42 58;
19 20 25 28 30 58;
20 21 22 30 40 51;
19 24 25 28 42 58;
10 24 25 28 42 47
];

Sorteio = [ 19 24 25 28 42 58 ];

[L,C] = size(Apostas);

printf("Resultado do sorteio da geta sena\n");

cont = 0;
for i = 1:L
    if Apostas(i,:) == Sorteio then
        cont = cont + 1;
        ganhadores(cont) = i
        ganhadores = [ganhadores i]
    end
end
printf("\n");

if cont > 0 then
    printf("As apostas quer acertaram na Mega Sena foram: ");
    for i = 1:cont
        printf("%g ", ganhadores(i));
    end
    premio = 10484290 / cont;
    printf("O prêmio de cada aposta ganhadora é de R$%.2f\n", premio);
else
    printf("Não houve ganhadores\n");
end
