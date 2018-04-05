clear;
clc;
printf("Contagem dos número naturais pares\n");
printf("==================================\n");
a = input("limite inferior do intervalo: ");
b = input("limite superior do intervalo: ");
contador = a;
while contador <= b do
    printf("%g ", contador);
    contador = contador + 2;
end
printf("\n==================================\n");
