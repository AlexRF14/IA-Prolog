
% Peones blancos
casilla(peonBlanco , 1 , 2).
casilla(peonBlanco , 2 , 2).
casilla(peonBlanco , 3 , 2).
casilla(peonBlanco , 4 , 2).
casilla(peonBlanco , 5 , 2).
casilla(peonBlanco , 6 , 2).
casilla(peonBlanco , 7 , 2).
casilla(peonBlanco , 8 , 2).

casilla(torreBlanco, 1 , 1).
casilla(torreBlanco, 8 , 1).
casilla(torreNegro, 1 , 8).
casilla(torreNegro, 8 , 8).

% Caballos
casilla(caballoBlanco, 2 , 1).
casilla(caballoBlanco, 7 , 1).
casilla(caballoNegro, 2 , 8).
casilla(caballoNegro, 7 , 8).

% Alfil
casilla(alfilBlanco, 3 , 1).
casilla(alfilBlanco, 6 , 1).
casilla(alfilNegro, 3 , 8).
casilla(alfilNegro, 6 , 8).

% Reina
casilla(reinaBlanco, 4 , 1).
casilla(reinaNegro, 4 , 8).

%  Rey
casilla(reyBlanco, 5 , 1).
casilla(reyNegro, 5 , 8).

% Peones negras
casilla(peonNegro , 1 , 7).
casilla(peonNegro , 2 , 7).
casilla(peonNegro , 3 , 7).
casilla(peonNegro , 4 , 7).
casilla(peonNegro , 5 , 7).
casilla(peonNegro , 6 , 7).
casilla(peonNegro , 7 , 7).
casilla(peonNegro , 8 , 7).

% Movimientos sin comer

movi(peonBlanco , Col , Fil):-
        prox_fil is Fil + 1,
        Fil >= 1 , Fil <=  8,
        Col >= 1, Col =< 8,
        casilla(peonBlanco , Col , Fil),
        not (casilla(_, Col, prox_fil)),
        assert(casilla(peonBlanco , Col , prox_fil)),
        retract(casilla(peonBlanco , Col , Fil)).

movi(peonBlanco , Col , Fil):-
        (prox_fil is Fil + 1, prox_col is + Col + 1;
         prox_fil is Fil + 1, prox_col is + Col - 1),
        Fil >= 1 , Fil <=  8,
        Col >= 1, Col =< 8,
        casilla(peonBlanco , Col , Fil),
        casilla(_, prox_col , prox_fil),
        not casilla((peonBlanco, torreBlanco , alfilBlanco , reyBlanco ,  caballoBlanco , reinaBlanco) ,  prox_col , prox_fil),
        assert(casilla(peonBlanco, prox_col , prox_fil)),
        retract(casilla(_, prox_col , prox_fil)).
        retract(casilla(peonBlanco , Col , Fil)).



movi(peonNegro , Col , Fil):-
        prox_fil is Fil - 1,
        Fil >= 1 , Fil <=  8,
        Col >= 1, Col =< 8,
        casilla(peonNegro , Col , Fil),
        not (casilla(_, Col, prox_fil)),
        assert(casilla(peonNegro , Col , prox_fil)),
        retract(casilla(peonNegro , Col , Fil)).

movi(peonNegro , Col , Fil):-
        (prox_fil is Fil - 1, prox_col is + Col + 1;
         prox_fil is Fil - 1, prox_col is + Col - 1),
        Fil >= 1 , Fil <=  8,
        Col >= 1, Col =< 8,
        casilla(peonNegro , Col , Fil),
        casilla(_, prox_col , prox_fil),
        not casilla((peonNegro, torreNegro , alfilNegro , reyNegro ,  caballoNegro , reinaNegro) ,  prox_col , prox_fil),
        assert(casilla(peonNegro, prox_col , prox_fil)),
        retract(casilla(_, prox_col , prox_fil)).
        retract(casilla(peonNegro , Col , Fil)).



movi(caballoBlanco ,  Col , Fil , Prox_col , Prox_fil):-
        (Prox_fil is Fil + 2, Prox_col is Col + 1;
        Prox_fil is Fil + 2, Prox_col is Col - 1;
        Prox_fil is Fil - 2, Prox_col is Col + 1;
        Prox_fil is Fil - 2, Prox_col is Col - 1;
        Prox_fil is Fil + 1, Prox_col is Col + 2;
        Prox_fil is Fil + 1, Prox_col is Col - 2;
        Prox_fil is Fil - 1, Prox_col is Col + 2;
        Prox_fil is Fil - 1, Prox_col is Col - 2),
        Fil >= 1 , Fil <=  8,
        Col >= 1, Col =< 8,
        casilla(caballoBlanco , Col , Fil),
        casilla(caballoBlanco , Prox_col , Prox_fil),
        not (casilla(_, Prox_col, Prox_fil)),
        assert(casilla(caballoBlanco , Prox_col , Prox_fil)),
        retract(casilla(caballoBlanco , Col , Fil)).

movi(alfilBlanco , Col , Fil , Prox_fil, Prox_col):-

movi(alfilNegro  , Col , Fil , Prox_fil, Prox_col):-






/*
p:- assert(casilla(reyNegro, f , 3)).

movimientoElegido(Pieza, Columna, Fila):-
    assert(casilla (Pieza , Coulmna , Fila)).

borrar(Pieza , Columna ,  Fila):-
    retractall(casilla(Pieza , Columna , Fila)).
*/

/* 
Usar assertz y retract  para agregar y eliminar hechos, como las posiciones iniciales de las piezas

*/