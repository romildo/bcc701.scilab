clear; clc; clf;

// funções hiperbólicas
function y = senoh(x)
    y = (exp(x) - exp(-x))/2;
endfunction

function y = cossenoh(x)
    y = (exp(x) + exp(-x))/2;
endfunction

function y = tangenteh(x)
    y = (exp(x) - exp(-x))/(exp(x) + exp(-x));
endfunction

// programa principal
x = [-5:5];
plot(x, senoh(x), x, cossenoh(x), x, tangenteh(x));
title("Funções hiperbólicas");
xlabel("x");
ylabel("y");
legend("sinh", "cosh", "tanh");
set(gca(), "grid", [1 1]);
