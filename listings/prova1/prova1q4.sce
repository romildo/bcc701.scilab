clc; clear;
printf("CUSTO DA LOCAÇÃO DE UM VEÍCULO\n")
distancia = input("QUILOMETRAGEM PERCORRIDA (KM): ");
if distancia <= 100 then
    custo = distancia*1;
elseif distancia <= 300 then
    custo = 100 + (distancia - 100)*0.8;
else
    custo = 100 + 200*0.8 + (distancia - 300)*0.7;
end
customedio = custo / distancia
printf("CUSTO TOTAL DA LOCAÇÃO (R$): %g\n", custo);
printf("CUSTO MÉDIO POR Km (R$/Km): %g\n", customedio);
