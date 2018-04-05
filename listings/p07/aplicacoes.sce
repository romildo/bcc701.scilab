clc;
clear;

printf("Comparação de duas aplicações\n");
printf("======================================\n");

sal_charlie = input("Informe o salário de Charlie ...: ");
sal_alan = input("Informe o salário de Alan ......: ");

apl_charlie = 0;
apl_alan = 0;

meses = 0
while apl_alan <= apl_charlie
    meses = meses + 1;
    apl_charlie = apl_charlie * 1.02 + 0.80 * sal_charlie;
    apl_alan = apl_alan * 1.05 + 0.50 * sal_alan;
end

printf("Após %g meses de aplicação:\n", meses);
printf("Rendimentos de Charlie: %.2f\n", apl_charlie);
printf("Rendimentos de Alan: %.2f\n", apl_alan);
