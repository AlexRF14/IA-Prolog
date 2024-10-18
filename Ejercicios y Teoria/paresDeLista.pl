paresDeLista([_], 0).
resta(1 , 0).
resta(R , 1):-
    R1 is R - 1,
    paresDeLista([X | M], R1).

paresDeLista([X | R], N):-
    N > 0,
    R1 is  N - 1,
    resta(R1 , 1),
    Par is R1  mod 2 =:=  0,
    paresDeLista([Par], R1).

/*
Solución del Profesor:

Una opción:

paresDeLista([] , []).
paresDeLista([X | R] , [X | Lp]):-
    X rem 2 =:= 0,
    paresDeLista(R , Lp).
paresDeLista([X |  R] , Lp):-
    X rem 2 =/= 0,
Otra opción de la fila 24  => X rem  2 =:= 1,
    paresDeLista(R , Lp).

Segunda opción:


*/