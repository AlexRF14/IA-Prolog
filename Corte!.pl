%10/10/24
p(X) :- q(X) , r(X).
p(X) :- s(X).
q(a).
q(b).
r(a).
r(b).
s(c).

/*
Regla 1: true si X = a o X = b, q(a) y r(a)  y, q(b) y r(b)
Regla 2: true si c, s(c)
Si le damos a ;, explora la siguiente opción, por ejemplo, en este
caso, la primera rama en explorar sería la primera regla con la a, 
si usamos ";" con la b y, luego la segunda si volvemos a utilizar ";".
*/

p(X) :- ! ,q(X) , r(X).
p(X) :- s(X).
q(a).
q(b).
r(a).
r(b).
s(c).

/*  
Cuando  se usa el operador "!" en la regla 1, no se desarrollan
el resto de  las reglas, por lo que solo se desarrolla la primera 
y se deja sin desarrollar la segunda
*/

/*
Consultamos P(X), y ve que de primeras hay dos reglas posibles o disponibles,
pero cuando entra en profundidad, y se da cuenta que esta !, entonces 
automaticamente desactiva la rama o regla 2
*/

/*
De forma más técnica, "Con corte al principio del antecedente de la 1º  regla"
Cuando se encuentra con la 2º regla, la descarta, y sigue su proceso con normalidad

Regla 1: true si X = a o X = b, q(a) y r(a)  y, q(b) y r(b)
*/

p(X) :- q(X), ! , r(X).
p(X) :- s(X).
q(a).
q(b).
r(a).
r(b).
s(c).

/* 
De forma más técnica, "Con corte entre la q y la r de la 1º regla"
Cuando llega a la primera regla, avanza por la primera rama y confirma
que q(a) y q(b) existe, pero deja como en cuarentena q(b) (Con esto
me refiero a que no la usa, pero no la descarta de momento, solo la usaría
en caso de que r(a) no exista / q(b) mejor dicho, quedaría anotado pero
no desarrollado), y luego pasa a la segunda rama y confirma 
r(a), por lo que no considera q(b) para seguir avanzando, 
y ni siquiera mira de la existencia de r(b), 
Posteriormente descarta la 2º regla
*/

/*
Por lo que he entendido, no es que se descarte como tal, simplemente
no lo desarrolla si no se le pide con ";", Decide seguir un camino 
sabiendo que le queda pendiente un camino que no desarrolla, pero que
si se le pide, lo desarrolla, y si no se le pide, no lo desarrolla
*/