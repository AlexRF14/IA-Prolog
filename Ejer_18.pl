%Parte 18
%Todo objeto es parte de sí mismo.
%El objeto X es parte de Y si X es parte directa de Y .
%El objeto X es parte de Z si X es parte directa de Y e Y es parte de Z.
%El objeto X es parte propia de Y si X es parte de Y y X no es Y

parte(X , X):-
    obj(X).

parte(X , Y):-
    parte_directa(X , Y).

parte(X , Y):-
    parte_directa(X , Z),
    parte(Z , Y).

obj(a).
obj(b).
obj(c).

parte_directa(a, b).
parte_directa(b , c).
