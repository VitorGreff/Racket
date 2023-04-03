% Defina um predicado ultimo(L, X) que  ́e verdadeiro se X  ́e o  ́ultimo elemento da lista L.
ultimo([L|[]], X):-
    L = X.

ultimo([_|LS], X):-
    ultimo(LS, X).

% Defina um predicado pares(L, P) que  ́e verdadeiro se P  ́e uma lista com os numeros pares de L (na mesma ordem).
pares([],[]).

% par
pares([X|L], [X|P]):-
    0 is mod(X, 2),
    pares(L, P).
    
% impar ou diferente
pares([X|L], P):-
    1 is mod(X, 2),
    pares(L, P).

% Defina um predicado lista soma(XS, A, YS) que  ́e verdadeiro se a lista YS  ́e a lista XS + A (cada elemento de XS somado com A).  
lista_soma([],_,[]).

lista_soma([X|XS],A,[Y|YS]):-
    Y is X + A,
    lista_soma(XS,A,YS).

% Defina um predicado maximo(XS, M) que  ́e verdadeiro se M  ́e o valor m ́aximo da lista XS
maximo(X,M):-
    max_list(X,M).

% Defina um predicado removido em(L, X, I, R) que  ́e verdadeiro se R  ́e a lista L com o elemento X removido da posicao I.
removido(L ,X, I, R):-
    % unifica X com o elemento do indice I retirado de L
    nth0(I, L, X), 
    % unifica a lista R com a lista L sem o elemento X (anteriormente unificado)
    select(X, L, R).

% Defina um predicado inserido em (L, X, I, R) que  ́e verdadeiro se R  ́e a lista L com o elemento X inserido da posicao I.
% indice correto
inserido(L, X, 0, [X|L]).

% indice errado
inserido([E|LS], X, I, [E|RS]):-
    I > 0,
    IO is I - 1,
    inserido(LS,X,IO,RS).

% Defina um predicado sub lista(L, I, J, S) que  ́e verdadeiro se S  ́e uma sub lista de L com os elementos das posicoes de I a J (inclusive).

sub_lista([_|LS], -1, -1, [_|RS]):-
    sub_lista(LS, -1, -1, RS). 

% Fim do intervalo
sub_lista([X|LS], 0, 0, [X,RS]):- 
    I = -1,
    J = -1,
    sub_lista(LS, I, J, RS).

% Inicio do intervalo
sub_lista([X|LS], 0, J, [X,RS]):-
    J > 0,
    JO = J - 1,
    sub_lista(LS, 0, JO, RS).

% Intervalo errado
sub_lista([_|LS], I, J, S):-
    I > 0,
    J > 0,
    IO is I - 1,
    sub_lista(LS, IO, J, S).