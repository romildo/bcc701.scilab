clc;
clear;

k = input("Digite o valor limite: ");

for nat = 0 : k do
    if modulo(nat, 10) == 0 then
        printf("\n");
    end
    printf("%5.0f ", nat);
end
