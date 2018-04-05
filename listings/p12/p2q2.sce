clc; clear;
valordisp = input("valor disponível: ");
preco = input("preço: ");
inicial = valordisp;
while preco > 0 do
    if valordisp >= preco then
        valordisp = valordisp - preco
        printf("produto incluído\n");
    else
        printf("produto não incluído\n");
    end
    printf("valor ainda disponível: %f\n", valordisp);
    preco = input("preço: ");
end
totalcompra = inicial - valordisp;
printf("valor disponível inicialmente: %g\n", inicial);
printf("total da compra: %g\n", totalcompra);
printf("FIM DO PROGRAMA\n");
