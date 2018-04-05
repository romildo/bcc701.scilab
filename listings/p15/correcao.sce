clc; clear;

gabarito = [1, 4, 2, 3, 3, 4, 1, 1, 3, 2];

provas  = [ 1, 2, 2, 3, 3, 4, 4, 1, 3, 2;    // prova 1
            1, 2, 2, 3, 3, 4, 4, 1, 3, 2;    // prova 2
            2, 4, 2, 3, 3, 1, 4, 1, 3, 1;    // prova 3
            1, 4, 2, 3, 3, 4, 1, 1, 3, 2;    // prova 4
            1, 1, 1, 3, 1, 1, 1, 1, 3, 2 ];  // prova 5

[numCandidatos, numQuestoes] = size(provas);
printf("RESULTADO DA PROVA\n\n");
soma = 0;
for candidato = 1 : numCandidatos
    nota = 0;
    for questao = 1 : numQuestoes
        if provas(candidato, questao) == gabarito(questao) then
            nota = nota + 1;
        end
    end
    printf("Nota do candidato nº %g: %g\n", candidato, nota);
    soma = soma + nota;
end
printf("\nMédia das notas: %g\n", soma/numCandidatos);
