clear; clc;

// função para verificar os lados de um triângulo
function t = e_triangulo(a, b, c)
    t = a < b + c & b < a + c & c < a + b;
endfunction

// função para classificar o triângulo quanto aos lados
function c = classifica_t(a, b, c)
    if a == b & b == c then
        c = "equilátero"
    elseif a == b | a == c | b == c then
        c = "isósceles"
    else
        c = "escaleno"
    end
endfunction

// programa principal
printf("Triângulos\n");
printf("===============================\n");

lado1 = input("primeiro lado: ");
lado2 = input("segundo lado: ");
lado3 = input("terceiro lado: ");

if e_triangulo(lado1, lado2, lado3) then
    printf("\nclassificação: %s\n", classifica_t(lado1, lado2, lado3));
else
    printf("\nnão é triângulo\n");
end
