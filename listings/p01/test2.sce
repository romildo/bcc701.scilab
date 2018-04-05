// Cria um vetor de entrada correspondente ao intervao de -2*%pi até 2*%pi
t = -2*%pi : %pi/10 : 2*%pi;

// Calcula |sin(t)|
x = abs(sin(t));

// Plota o resultado
plot(t, x);
