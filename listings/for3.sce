clc;
clear;

printf("\n     ")
for j = 1:10
    printf("%4g", j);
end
printf("\n--------------------------------------------\n");

for i = 1:10
    printf("%2g | ", i);
    for j = 1:10
        printf("%4.0f", i*j);
    end
    printf("\n");
end
