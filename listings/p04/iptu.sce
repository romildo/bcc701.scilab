clc; clear;
printf("Cálculo do IPTU\n");
printf("------------------------------------------\n");

tipo = input("Informe o tipo do loteamento (1 ou 2): ");
area = input("Informe a área do imóvel em m^2: ");

if (tipo == 1 | tipo == 2) & area >= 0 then
    if tipo == 1 then
        if area < 200 then
            iptu = area * 1.0;
        else
            iptu = area * 1.2
        end
    else
        if area < 200 then
            iptu = area * 1.1
        else
            iptu = area * 1.3
        end
    end
    printf("O valor do IPTU é R$ %g.\n", iptu);
else
    printf("Dados inválidos.\n")
end
