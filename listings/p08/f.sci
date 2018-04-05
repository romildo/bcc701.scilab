clc; clear;

function y = f(x)
    y = 2*x + 1
endfunction

num = input("digite um número: ");
x = -21;
a = x + 1;
z = f(num);
printf("resultado da funçào: %g\n", z);
