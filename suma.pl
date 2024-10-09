suma([] , 0).
suma([X | R], Suma):-
    suma(R, SumaResto),
    Suma is X + SumaResto.

