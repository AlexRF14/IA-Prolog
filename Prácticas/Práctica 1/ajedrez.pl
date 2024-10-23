tablero([a8 , b8 , c8 , d8 , e8 , f8 , g8 , h8],
        [a7 , b7 , c7 , d7 , e7 , f7 , g7 , h7],
        [a6 , b6 , c6 , d6 , e6 , f6 , g6 , h6],
        [a5 , b5 , c5 , d5 , e5 , f5 , g5 , h5],
        [a4 , b4 , c4 , d4 , e4 , f4 , g4 , h4],
        [a3 , b3 , c3 , d3 , e3 , f3 , g3 , h3],
        [a2 , b2 , c2 , d2 , e2 , f2 , g2 , h2],
        [a1 , b1 , c1 , d1 , e1 , f1 , g1 , h1]).

% Peones blancos
casilla(peonBlanco , a2).
casilla(peonBlanco , b2).
casilla(peonBlanco , c2).
casilla(peonBlanco , d2).
casilla(peonBlanco , e2).
casilla(peonBlanco , f2).
casilla(peonBlanco , g2).
casilla(peonBlanco , h2).

% Torres
casilla(torre, a1).
casilla(torre, h1).
casilla(torre, a8).
casilla(torre, h8).

% Caballos
casilla(caballo,  b1).
casilla(caballo,  g1).
casilla(caballo,  b8).
casilla(caballo,  g8).

% Alfil
casilla(alfil, c1).
casilla(alfil, f1).
casilla(alfil, c8).
casilla(alfil, f8).

% Reina
casilla(reina, d1).
casilla(reina, d8).

%  Rey
casilla(rey, e1).
casilla(rey, e8).

% Peones negras
casilla(peonNegro , a7).
casilla(peonNegro , b7).
casilla(peonNegro , c7).
casilla(peonNegro , d7).
casilla(peonNegro , e7).
casilla(peonNegro , f7).
casilla(peonNegro , g7).
casilla(peonNegro , h7).

