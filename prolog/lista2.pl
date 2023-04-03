% 2.7
triangulo(A, B, C ,T):-
    A = B,
    B = C,
    T = 'equilatero'.

triangulo(A, B, C ,T):-
    A \= B;
    A \= C,
    T = 'isosceles'.

triangulo(A, B, C, T):-
    A \= B,
    B \= C,
    A \= C,
    T = 'escaleno'.

% 2.8
area(circulo(R), A):-
    A is 3.14 * (R*R).

area(quadrado(L), A):-
    A is L * L.

area(retangulo(X, Y), A):-
    A is X * Y.

% 2.9
maior(X, Y, Z, M):-
    (X >=Y, X>=Z) -> M = X;
    (Y >=X, Y>=Z) -> M = Y;
    M = Z.

segundo_maior(X, Y, Z, SM):-
    maior(X, Y, Z, M),
 

soma quadrado maiores(A, B, C, S):-
