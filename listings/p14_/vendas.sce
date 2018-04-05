clear; clc;

// Matriz de vendas semanais
A = [10, 31, 28, 11
     37, 42, 33, 11
     0,  34, 36, 10
     16, 43, 9,  44
     33, 3,  27, 32
    ];

// Exibe a matriz de vendas semanais
printf("Matriz de vendas:")
disp(A);

// dimensões da matriz
[numVendedores,numSemanas] = size(A);

// Total de vendas de cada semana
printf("\n");
for sem = 1 : numSemanas
    total = 0;
    for ven = 1:numVendedores
        total = total + A(ven,sem);
    end
    printf("Vendas da semana %g: %g\n", sem, total);
end

// Total de vendas de cada vendedor
printf("\n");
for ven = 1:numVendedores
    total = 0;
    for sem = 1 : numSemanas
        total = total + A(ven,sem);
    end
    printf("Vendas do vendedor %g: %g\n", ven, total);
end

// Total de vendas
printf("\n");
total = 0;
for ven = 1:numVendedores
    for sem = 1 : numSemanas
        total = total + A(ven,sem);
    end
end
printf("Vendas no mês: %g\n", total);
