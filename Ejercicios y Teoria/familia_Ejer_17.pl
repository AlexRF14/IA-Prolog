% Programa tomado del libro de Sterling y Shapiro, 1994.

% RULES

cousin(Cousin1, Cousin2) :-
    parent(Parent1, Cousin1),
    parent(Parent2, Cousin2),
    sibling(Parent1, Parent2).

sibling(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    \+ (Sibling1 = Sibling2).

brother(Person, Brother2) :-
    male(Brother2),
    parent(Parent, Person),
    parent(Parent, Brother2),
    \+ (Person = Brother2).

sister(Person , Sister2) :-
    female(Sister2),
    parent(Parent, Person),
    parent(Parent, Sister2),
    \+ (Person = Sister2).

nephew(Person , Nephew) :-
    male(Nephew),
    sibling(Person, X),
    parent(X, Nephew).

niece(Person , Niece) :-
    female(Niece),
    sibling(Person, X),
    parent(X , Niece).

daughter(Woman, Person) :-
    parent(Person, Woman),
    female(Woman).

grandfather(Man, Person) :-
    father(Man, Parent),
    parent(Parent, Person).

grandmother(Woman, Person) :-
    mother(Woman, Parent),
    parent(Parent, Person).

parent(Parent, Person) :-
    mother(Parent, Person); father(Parent, Person).

son(Man, Person) :-
    parent(Person, Man),
    male(Man).

uncle(Man, Person) :-
    male(Man),
    sibling(Man, Brother),
    parent(Brother, Person).

uncle_and_aunts(Person , X) :-
    parent(Parent, Person),
    sibling(Parent, X).

marriage(Parent1 , Parent2) :-
    \+ (Parent1 = Parent2),
    parent(Parent1, X),
    parent(Parent2, X).    

father_in_law(Father_in_law , Person) :-
    father(Father_in_law , X),
    marriage(Person, X),
    \+ (Father_in_law = Person).

mother_in_law(Mother_in_law , Person) :-
    mother(Mother_in_law , X),
    marriage(Person, X),
    \+ (Mother_in_law = Person).

brother_in_law(Brother , Person) :-
    brother(X , Brother),
    marriage(Person, X),
    \+ (Brother = Person).

sister_in_law(Sister , Person) :-
    sister(X , Sister),
    marriage(Person, X),
    \+ (Sister = Person).

% ascendent

ascendent(X , Y):- 
    parent(X , Y).

ascendent(X , Y) :-
    parent(X , Z),
    ascendent(Z , Y).
    
% FACTS

father(terah, abraham).
father(terah, nachor).
father(terah, haran).
father(abraham, isaac).
father(haran, lot).
father(haran, milcah).
father(haran, yiscah).

% 2 madres mas para probar.

mother(sarah, isaac).
mother(milcah, lot).
mother(yiscah, milcah).


male(terah).
male(abraham).
male(nachor).
male(haran).
male(isaac).
male(lot).

female(sarah).
female(milcah).
female(yiscah).









