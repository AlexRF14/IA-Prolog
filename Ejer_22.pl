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

solapan(X , Y):-
    parte(Z , X),
    parte(X , Y).

%Ejemplo
solapan(espama , africa):-
    parte(ceuta , espama),
    parte(ceuta , africa).

%Disjunto si no se solapan

disjunto(X , Y):-
    \+ solapan(X , Y).

obj(a).
obj(b).
obj(c).
%Solo se solapa consigo mismo
obj(d).

parte_directa(a, b).
parte_directa(b , c).
