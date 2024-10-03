% parte 18


parte(X , Y):-
    forma(a , b),
    forma(b , c),
    parte2(a , c).

parte2(X , Y):-
    parte(X , Z),
    parte(Z , Y).

forma(a , a).
forma(b , b).
forma(c , c).

forma(a , b).
forma(b , c).
