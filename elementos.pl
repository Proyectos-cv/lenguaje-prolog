% Hechos
%hombre(juan).
%hombre(pedro).
%mujer(maria).
%mujer(ana).
padre(juan, pedro).
padre(juan, maria).
madre(ana, maria).

% Reglas
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
hermana(X, Y) :- madre(Z, X), madre(Z, Y), X \= Y.

nieto(X, Y) :- padre(Y, Z), padre(Z, X).














padre(juan, alberto).
padre(luis, alberto).
madre(alberto, leoncio).
padre(geronimo, leoncio).
madre(luisa, geronimo).

%hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.

%nieto(X, Y) :- padre(Y, Z), padre(Z, X).


