clear; clc;
// Dias decorridos desde o início do ano

// número de dias de cada mês
Dm = [31 28 31 30 31 30 31 31 30 31 31 31];

// Le a data 
data = input("Digite a data no formato [d m a]: ");
d = data(1); m=data(2); a=data(3);

// calcula se o ano é bissexto e
// determina o número de dias de fevereiro
e_bissexto = modulo(a,400)==0 | (modulo(a,100)<>0 & modulo(d,4)==0);
if e_bissexto then
    Dm(2) = 29;
end

// Determina se a data é válida
if a<0 | m<1 | m>12 | d<1 | d>Dm(m)
    printf("Data inválida");
else 
    ndias = sum(Dm(1:m-1)) + d;
end

printf("Número de dias decorridos = %g",ndias);
