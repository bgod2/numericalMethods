function [L,U] = myLU( A )

sizeA = size(A);

U = A;
L = eye(sizeA);

for i = 1:sizeA
    [mk,lk] = elimMat(U,i);
    U = mk * U;
    L = lk * L;

end