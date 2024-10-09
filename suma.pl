suma([] , 0).
suma([X | R], Suma):-
    suma(R, SumaResto),
    Suma is X + SumaResto.

/%
%? suma([1 , 3 ,5] ,  S). 
% S = 9
% ? suma([1 , 3 ,5] ,  9).
% true
%/
