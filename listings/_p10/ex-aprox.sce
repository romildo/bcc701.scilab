clear; clc; 
// e^x - aproximação pela série de Taylor

printf("e^x - aproximação\n");
printf("-----------------\n");

x = input("Digite o valor de x: ");
termos = input("Digite o número de termos da série: ");

ex = 0;
num = 1;
den = 1;
for i = 1 : termos
    ex = ex + num/den;
    num = num * x;
    den = den * i;
end

printf("Valor aproximado de e^x = %g\n", ex);
