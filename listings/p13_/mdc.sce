clear; clc;

// DEFINIÇÃO DA FUNÇÃO
function resposta = MDC(dividendo, divisor)
    while divisor <> 0
        resto = modulo(dividendo, divisor);
        dividendo = divisor;
        divisor = resto;
    end
    resposta = dividendo;
endfunction

// PROGRAMA PRINCIPAL
printf("Cálculo do mínimo múltiplo comum de dois números\n");
printf("=========================================================\n");
N1 = input("Digite um inteiro........: ");
N2 = input("Digite outro inteiro.....: ");
if N1 == 0  |  N2 == 0 then
    printf("O mínimo múltiplo comum não pode ser calculado.");
else
    mmc = (N1*N2) / MDC(N1, N2);
    printf("MMC(%g, %g) = %g", N1, N2, mmc);
end
