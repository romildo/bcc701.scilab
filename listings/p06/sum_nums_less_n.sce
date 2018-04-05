clear; clc;
// Menor conjunto de inteiros não negativos cuja soma é maior ou igual a n
n = input("Digite um número inteiro positivo:  ")
nums = [ ]       // conjunto de números considerados na soma 
soma = 0         // soma de todos os valores do conjunto nums
next = 1         // próximo inteiro a ser inc;uído no conjunto
while soma < n  
    nums = [nums next]     // inclui o próximo número inteiro no conjunto nums
	soma = soma + next     // adiciona este número à soma dos elementos do conjunto
    next = next + 1        // calcula o próximo número a ser considerado no conjunto
end
printf("\nO menor conjunto de inteiros cuja soma é >= a \%g é:", n)
disp(nums) 
