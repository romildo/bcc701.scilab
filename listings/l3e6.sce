clc;
clear;
n = 5;
for i = 1 : n do
    v(i) = input(sprintf("Digite a temperatura no dia %go dia: ", i));
end

maior = -%inf;
pos_maior = 0;
menor = %inf;
pos_menor = 0;

for i = 1 : n do
    if v(i) > maior then
        maior = v(i);
        pos_maior = i;
    end
    if v(i) < menor then
        menor = v(i);
        pos_menor = i;
    end
end

printf("A maior temperatura foi no %go dia\n", pos_maior);
printf("A menor temperatura foi no %go dia\n", pos_menor);
