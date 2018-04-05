clear; clc;
// Controle de Qualidade de corte de tubos

printf("Controle de Qualidade de Corte de Tubos\n")
printf("---------------------------------------\n")

lenP = input("Comprimento de corte dos tubos: ")
errP = input("Erro aceitável: ")
nTubos = input("Número de tubos desejados: ")
printf("---------------------------------------\n")

tubosOk = 0  // tubos com comprimento ok 
vTubosOk = []
totTubos = 0 // total de tubos cortados
sumErr = 0   // erro acumulado
maxErr = -1  // maior erro
while tubosOk < nTubos
    len = input("Comprimento do tubo cortado: ")
    err = abs(len - lenP)
    if err <= errP then
        tubosOk = tubosOk + 1
        vTubosOk(1,tubosOk) = len
    end
    if err > maxErr then
        maxErr = err
    end
    sumErr = sumErr + err
    totTubos = totTubos + 1
end
printf("---------------------------------------\n")
printf("Desligue a máquina.\n")
printf("Total de tubos cortados = %g\n",totTubos)
printf("Total de tubos rejeitados = %g\n",totTubos-nTubos)
printf("Tubos aceitos: ")
printf(strcat(repmat("%g ",1,tubosOk)),vTubosOk)
printf("\nErro médio = %g\n", sumErr/totTubos)
printf("Maior erro = %g\n",maxErr)
