:- dynamic(casilla/3). % casilla tiene 3 parametros
/*
stuff
*/
p:- assert(casilla(reyNegro, f , 3)).

movimientoElegido(Pieza, Columna, Fila):-
    assert(casilla (Pieza , Coulmna , Fila)).

borrar(Pieza , Columna ,  Fila):-
    retractall(casilla(Pieza , Columna , Fila)).
/*Retract solo, elimina duplicados, pero si queremos eliminar todo usamos
retractall. Puede darse el caso de que el interprete guarde varias variables
quen luego puedan darte errores.*/