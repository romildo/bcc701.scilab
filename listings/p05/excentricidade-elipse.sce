clear; clc;
// Excentricidade da elipse de semieixos 0<b<a
// sqrt(1 + b^2/a)

// Le os comprimentos dos 2 semieixos, como um vetor
semieixos = input("Digite os comprimentos dos semieixos da elipse: ")

n = length(semieixos)
if n<>2 | semieixos(1)<=0 | semieixos(2)<=0 then
    printf("Valor inválido")
else
    a = max(semieixos); b = min(semieixos)
    if (b^2)/a > 1 then
        printf("Não é uma elipse")
    else
        printf("Excentricidade = %g", sqrt(1-(b^2)/a))
    end
end
