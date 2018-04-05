clc; clear;
printf("Aposentadoria\n");
printf("------------------------------------------\n");

// entrada de dados
idade = input("Informe a idade em anos: ");
tempo = input("Informe o tempo de contribuição em anos: ");

// verificação
if idade < 50 | tempo < 30 | idade + tempo < 90 then
    printf("Ainda não pode se aposentar.\n");
else
    printf("A aposentadoria pode ser solicitada.\n");
end
