clear; clc;
printf("Controle de Qualidade de Corte de Tubos\n");
printf("---------------------------------------\n");

compCorte = input("Comprimento de corte dos tubos: ");
erroAceitavel = input("Erro aceitável: ");
nTubos = input("Número de tubos desejados: ");
printf("---------------------------------------\n");

tubosOk = 0;  // tubos com primento ok 
totTubos = 0; // total de tubos cortados
while tubosOk < nTubos
    comprimento = input("Comprimento do tubo cortado: ");
    erro = abs(comprimento - compCorte);
    if erro <= erroAceitavel then
        tubosOk = tubosOk + 1;
    end
    totTubos = totTubos + 1;
end
printf("---------------------------------------\n");
printf("Desligue a máquina.\n");
printf("Total de tubos cortados = %g\n", totTubos);
printf("Total de tubos rejeitados = %g\n", totTubos-nTubos);
