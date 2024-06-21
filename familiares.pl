varon(eduardo).
varon(francisco).
varon(luis).
varon(mario).

mujer(alicia).
mujer(veronica).
mujer(victoria).
mujer(beatriz).

padres(eduardo,francisco,victoria).
padres(alicia,francisco,victoria).
padres(luis,eduardo,veronica).
padres(beatriz,alicia,mario).

esposos(eduardo,veronica).
esposos(mario,alicia).
esposos(francisco,victoria).

hermana(Ella,X) :-mujer(Ella), padres(Ella,M,P),padres(X,M,P).
hermano(El,X) :- varon(El), padres(El,M,P),padres(X,M,P).

hijo(El,X) :- varon(El), padres(El,X,_).
hijo(El,X) :- varon(El), padres(El,_,X).

hija(Ella,X) :- mujer(Ella), padres(Ella,X,_).
hija(Ella,X) :- mujer(Ella), padres(Ella,_,X).

% abuelos
abuelos(Abuelo, Nieto) :- padres(Nieto,Padre,_), padres(Padre,Abuelo,_).
abuelos(Abuelo, Nieto) :- padres(Nieto,_,Madre), padres(Madre,Abuelo,_).
abuelos(Abuelo, Nieto) :- padres(Nieto,Padre,_), padres(Padre,_,Abuelo).
abuelos(Abuelo, Nieto) :- padres(Nieto,_,Madre), padres(Madre,_,Abuelo).

%sobrinos

cunado(El, Y) :- varon(El), padres(El,M,P),padres(X,M,P), esposos(Y,X).
cunada(Ella, Y) :- mujer(Ella), padres(Ella,M,P),padres(X,M,P),esposos(X,Y).

