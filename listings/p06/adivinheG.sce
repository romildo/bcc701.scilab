clear; clc;
printf("Cálculo do menor n tal que n|a, n|b e n^k > c\n");
printf("---------------------------------------------\n")

a = input("a = ")
b = input("b = ")
c = input("c = ")
k = input("k = ")

// calcula mdc(a,b)
m = a; n = b;
while n <> 0
    aux = n
    n = modulo(m,n)
    m = aux
end
// inicializa n e incr com mmc(a,b)
incr = (a*b)/m; n = incr;
while (n^k < c)
    n = n + incr
end
printf("n = %g\n",n)
