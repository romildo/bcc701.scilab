clear; clc;

// Matriz das vendas
A = [ 10, 31, 28, 11
      37, 42, 33, 11
      0,  34, 36, 10
      16, 43,  9, 44
      33, 3,  27, 32
    ];

// Exibe a matriz de vendas
printf("Matriz de vendas:");
disp(A);

// Dimensões da matriz de vendas
[numVendedores,numSemanas] = size(A);

// Totaliza por semanas
printf("\n");
for semana = 1 : numSemanas
    total = 0;
    for vendedor = 1 : numVendedores
        total = total + A(vendedor,semana);
    end
    printf("Vendas da semana %g: %g\n", semana, total);
end

// Totaliza por vendedores
printf("\n");
totalMes = 0;
for vendedor = 1 : numVendedores
    total = 0;
    for semana = 1 : numSemanas
        total = total + A(vendedor,semana);
    end
    printf("Vendas do vendedor %g: %g\n", vendedor, total);
    totalMes = totalMes + total;
end
printf("Vendas no mês: %g\n", totalMes);

// Total geral
printf("\n");
total = 0;
for vendedor = 1 : numVendedores
    for semana = 1 : numSemanas
        total = total + A(vendedor,semana);
    end
end
printf("Vendas no mês: %g\n", total);

