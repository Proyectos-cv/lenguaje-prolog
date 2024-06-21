tocan(libro,taza).
arriba(libro,taza).

soporta(X, Y) :- tocan(X, Y).
soporta(X, Y) :- arriba(Z, Y), tocan(X, Z).

