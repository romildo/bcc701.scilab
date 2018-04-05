clear; clc;
printf("Sequência de Collatz\n");
printf("---------------------\n");
n = input("Digite um número inteiro não negativo: ");
while int(n) <> n | n <= 0 do
    printf("Valor inválido.");
    n = input("Digite um número inteiro não negativo: ");
end
cont = 1;     // quantidade de números na sequência
printf("\nSequência: %g", n);   // exibe o primeiro
while n <> 1
    if modulo(n, 2) == 0 then   // par
        n = n / 2;
    else                        // ímpar
        n = 3 * n + 1;
    end
    printf(" %g", n);
    cont = cont + 1;
end
printf("\nComprimento da sequência: %g\n", cont);
