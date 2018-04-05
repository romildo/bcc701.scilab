clear; clc;
// Definição da função
function resposta = maior2valores(a, b)
    if a > b then
        resposta = a;
    else
        resposta = b;
    end
endfunction
// Programa principal
x1 = input("Primeiro valor .....: ");
x2 = input("Segundo valor ......: ");
maior = maior2valores(x1, x2);
printf("O maior valor é: %g\n", maior);
