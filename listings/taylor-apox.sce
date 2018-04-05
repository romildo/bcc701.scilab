x = input("valor do expoente: ");
err = input("erro de aproximação: ");

somaAnt = -%inf;
soma = 1;
num = x;
den = 1;
i = 1;
printf("%3d %10.8f %10.8f\n", i, soma, soma-somaAnt);

while soma - somaAnt >= err
    somaAnt = soma;
    soma = soma + num/den;
    i = i + 1;
    printf("%3d %10.8f %10.8f\n", i, soma, soma-somaAnt);
    num = num * x;
    den = den * i;
end

printf("valor aproximado de e^x: %g\n", soma);
printf("número de termos: %g\n", i);
