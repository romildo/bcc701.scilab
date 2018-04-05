clear; clc;
// Calculo de f(x) para os valores de x lidos
// f(x) = (x^(sqrt(2)+0.02) + e^x)^1.8

printf("Tabela de valores de f(x) para x=-5:1:5");
// Le o vetor de valores de x
xs = -5:1:5;

// Calculo dos valores de f(x)
fxs = (xs ^ 2 .* %e ^ (xs ./ 2)) ^(sqrt(2)+0.02);

// Monta e imprime a tabela
printf("\n--------------------------------------\n");
printf(" x       f(x)\n");
printf("%2.0f   %9.4f \n",[xs' fxs']);
printf("---------------------------------------\n");
[m,xi]=min(fxs);
printf("Valor mínimo de f(x) = %9.4f, para x = %2.0f",m,xi);
