potencia(Base , 0 , 1).
potencia(Base , E , R):-
    E > 0,
    E1 is E - 1,
    potencia(Base , E1 , R1),
    R is Base * R1.

/%
Para evitar erores con la linea 1,
incluimos un _ a Base.
El error viene de que se intancia una
variable a la cual no se hae referencia
durante la ejecución de la regla.

potencia(_Base , 0 , 1).
potencia(Base , E , R):-
    E > 0,
    E1 is E - 1,
    potencia(Base , E1 , R1),
    R is Base * R1.
*/