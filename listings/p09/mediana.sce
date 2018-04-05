clc;
clear;

v = [10,8,20,3,2,5,9];

w = [];

for i = 1 : length(v) do
    // procurar a posição correta em w
    j = 1;
    while j <= length(w) & w(j) < v(i) do
        j = j + 1;
    end
    // deslocamento dos elementos em w que são maiores que v(i)
    for k = length(w) : -1 : j do
        w(k+1) = w(k);
    end
    // finalmente, coloca v(i) na posição correta em w
    w(j) = v(i);
end
disp(v);
disp(w);

meio = length(w)/2;
if modulo(length(w), 2) == 0 then
    mediana = (w(meio) + w(meio + 1))/2;
else
    mediana = w(ceil(meio));
end
disp(mediana);
