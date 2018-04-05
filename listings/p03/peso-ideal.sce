clc; clear;
printf("Cálculo do peso ideal\n");
printf("------------------------------------------\n");

// entrada de dados
altura = input("Qual é a altura (em metros)? ");
sexo = input("Qual é o sexo (m/f)? ", "string");

// validação dos dados de entrada
if altura < 0 | ~(sexo == "m" | sexo == "f") then
    printf("Dados inválidos!\n");
else
    // cálculo do peso ideal
    if sexo == "m" then
        peso_ideal = 72.7 * altura - 58;
    else
        peso_ideal = 62.1 * altura - 44.7;
    end
    // exibição do resultado
    printf("O peso ideal é %g kg\n", peso_ideal);
end
