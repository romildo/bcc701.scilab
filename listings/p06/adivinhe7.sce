clear; clc;
// Cálculo do menor no. par que é divisível por 7
// e cujo cubo é maior do que 4.000

n = 14
while n^3 < 4000
    n = n+14 
end
printf("O menor número par que é divisível por 7\n")
printf("e cujo cubo é maior do que 4.000 é: %g\n",n)
