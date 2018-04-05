clc;
clear;

function segundos = horario(h, m, s)
    segundos = (h*60 + m)*60 + s;
endfunction

printf("Conversão de horário\n");
printf("------------------------------------\n");
horas = input("horas: ");
minutos = input("minutos: ");
segundos = input("segundos: ");
total_segundos = horario(horas, minutos, segundos);
printf("\ntotal de segundos: %g\n", total_segundos);
