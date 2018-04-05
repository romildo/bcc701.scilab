function [r1, r2] = eq2g(a, b, c)
    pause;
    delta = b^2 - 4*a*c;
    r1 = (-b + sqrt(delta))/(2*a);
    r2 = (-b - sqrt(delta))/(2*a);
endfunction
