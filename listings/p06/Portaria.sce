clear; clc;
printf("Portaria da festa BARANGA 2014/2\n");
printf("--------------------------------\n");

homens = 0;    // contador do número de homens
mulheres = 0;  // contador do número de mulheres
quem = input("Quem chegou (h/m/q): ", "s");
while quem <> 'q'
    if quem == 'h' then
        homens = homens + 1;
    elseif quem == 'm' then
        mulheres = mulheres + 1;
    end
    quem = input("Quem chegou (h/m/q): ", "s");
end
arrecadacaoH = homens * 12.50;
arrecadacaoM = mulheres * 7.40;
arrecadacaoT = arrecadacaoH + arrecadacaoM;
printf("\nQuantidade de homens ......: %g", homens);
printf("\nQuantidade de mulheres ....: %g", mulheres);
printf("\nArrecadação com homens ....: R$ %.2f", arrecadacaoH);
printf("\nArrecadação com mulheres ..: R$ %.2f", arrecadacaoM);
printf("\nArrecadação total .........: R$ %.2f", arrecadacaoT);
