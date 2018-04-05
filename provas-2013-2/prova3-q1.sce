clc; clear;
printf("Acréscimo de pontuação - partida 2\n");
partida1 = [22 14 26 18 17 32 26 10 21 28];
partida2 = [20 16 18 20 24 22 24 20 12 16];
for i = 1 : length(partida2)
    diferenca = partida2(i) - partida1(i);
    if diferenca > 0 then
        printf("O jogador %g pontuou %g pontos a mais!\n", i, diferenca);
    end
end
soma = 0;
for i = 1 : length(partida2)
    soma = soma + partida2(i)
end
media = soma/length(partida2);
//media = sum(partida2)/length(partida2);
printf("\nMédia de pontos da partida 2: %g\n", media)
