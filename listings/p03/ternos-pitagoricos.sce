clc; clear;
printf("Verificação de ternos pitagóricos\n");
printf("------------------------------------------\n");

// entrada de dados
a = input("Digite o valor de a: ");
b = input("Digite o valor de b: ");
c = input("Digite o valor de c: ");

// validação dos dados de entrada
if int(a) <> a | int(b) <> b | int(c) <> c | a < 0 | b < 0 | c < 0 then
    printf("Valores inválidos!\n");
else
    // verificação de terno pitagórico
    if a^2 + b^2 == c^2 then
        printf("%g, %g e %g representam um terno pitagórico\n", a, b, c);
    else
        printf("Os valores não representam um terno pitagórico\n");
    end
end
