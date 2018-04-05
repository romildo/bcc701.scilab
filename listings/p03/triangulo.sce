clc; clear;
printf("Verificação de triângulo\n");
printf("------------------------\n")

// entrada de dados
x = input("lado 1: ");
y = input("lado 2: ");
z = input("lado 3: ");

if x <= 0 | y <= 0 | z <= 0 then
    printf("valores inválidos\n");
elseif x>=y+z|y>=x+z|z>=x+y then
    printf("não formam um triângulo");
else
    printf("formam um triângulo");
    if x == y & y == z then
        printf("equiláterio");
    elseif x <> y & x <> z & y <> z then
        printf("escaleno");
    else
        printf("isósceles");
    end
end
