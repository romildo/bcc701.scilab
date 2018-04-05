clc; clear;

function y = dfat(n)
    y = 1;
    //if modulo(n, 2) == 0 then
    //    for cont = n : -2 : 2 do
    //        y = y * cont;
    //    end
    //else
        for cont = n : -2 : 1 do
            y = y * cont;
        end
    //end
endfunction

printf("Cálculo do fatorial duplo.\n");
num = input("Digite um número inteiro positivo: ");
while num <= 0 | num <> int(num) do
    printf("Valor inválido!\n") 
    num = input("Digite um número inteiro positivo: ");
end
printf("%g!! = %g\n", num, dfat(num));
