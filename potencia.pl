potencia(Base , 0 , 1).
potencia(Base , E , R):-
    E > 0,
    E1 is E - 1,
    potencia(Base , E1 , R1),
    R is Base * R1.