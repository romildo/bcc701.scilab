clear;
clc;
printf("Excentricidade da elipse\n");
printf("-------------------------\n");
vet = input("Digite os comprimentos dos semieixos da elipse: ");
if length(vet) == 2 & vet(1) > 0 & vet(2) > 0 then
    if vet(1) > vet(2) then
        a = vet(1);
        b = vet(2);
    else
        a = vet(2);
        b = vet(1);
    end
    // ou
    //a = max(vet);
    //b = min(vet);
    if b^2/a <= 1 then
        exc = sqrt(1 - b^2/a);
        printf("excentricidade = %g\n", exc);
    else
        printf("Não é uma elipse\n");
    end
else
    printf("Dados inválidos")
end
