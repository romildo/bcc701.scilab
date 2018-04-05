clc;
clear;
printf("Alunos matriculados em Programação de Computadores:\n");
a = 0;
x = input("matrícula (0 para terminar): ");
while x > 0 do
    a = a + 1;
    v(a) = x;
    x = input("matrícula (0 para terminar): ");
end
printf("\nAlunos matriculados em Programação de Computadores:\n");
b = 0;
x = input("matrícula (0 para terminar): ");
while x > 0 do
    b = b + 1;
    w(b) = x;
    x = input("matrícula (0 para terminar): ");
end
printf("\nAlunos matriculados nos nois cursos:\n");
for i = 1 : length(v) do
    for j = 1 : length(w) do
        if v(i) == w(j) then
            printf("%g ", v(i));
        end
    end
end
