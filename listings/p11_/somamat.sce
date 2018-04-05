clc;
clear;

A = [ 1, 8, 3; 2, 0, 5 ];

B = [ 0, -5, 4
      4, 10, 17 ];
      
disp(A);
disp(B);

[m,n] = size(A);

for i = 1 : m do
    for j = 1 : n do
        C(i,j) = A(i,j) + B(i,j);
    end
end

disp(C);

for i = 1 : m do
    for j = 1 : n do
        TA(j,i) = A(i,j);
    end
end
disp(TA);

[m,n] = size(TA);
[p,q] = size(B);
for i = 1 : m do
    for j = 1 : q do
        PROD(i,j) = 0;
        for k = 1 : n do
            PROD(i,j) = PROD(i,j) + TA(i,k) * B(k,j)
        end
    end
end
disp(PROD);
