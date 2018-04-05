clc;
clear;
A = [ 2 5 7 3 2;
      3 5 6 2 6;
      1 8 9 3 5;
      3 5 6 2 1;
      4 9 9 0 4 ];
      
[m,n] = size(A);
      
for i = 1:m do
    s = 0;
    for j = 1:n do
        s = s + A(i, j);
    end
    printf("Soma da linha %g: %g\n", i, s);
end
