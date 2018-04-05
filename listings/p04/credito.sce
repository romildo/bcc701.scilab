clc; clear;
printf("Linha de crédito\n");
printf("------------------------------------------\n");

salario = input("Digite o valor do salário bruto: ");
prestacao = input("Qual o valor da prestação a ser paga? ");

liquido = salario - 0.09*salario;
limite = 0.30 * liquido;

if prestacao <= limite then
    printf("O empréstimo pode ser concedido!\n");
else
    printf("O empréstimo não pode ser concedido!\n");
end

printf("Salário líquido: %g\n", liquido);
printf("Valor máximo da prestação: %g\n", limite);
