:- dynamic father/2  % 2 es el numero de argumentos

%para añadir cosas he de hacer assertz(father(felipe, sofia)).
father(felipe, leonor).
mother(sofia, felipe). % no podria hacer assertz de mother pq lo hice de father

% retract() hace lo contrario que aseertz (tambien existe retract all) ( retractall(father(felipe, _)).) (me quita los que añadi y los del fichero)
% retract(father(felipe, leonor)). % quita el padre de leonor





bird(a).
bird(b).
bird(c).
penguin(c).

fly(X) :- bird(X), /+ penguin(X).  % /+ busca el no, es decir, si no es un pingüino. Primero mira si es un pájaro y luego si no es un pingüino. Si no es un pingüino, puede volar.
fly2(X) :- /+penguin(X), bird(X). % esto esta mal. Ya que para prolog es como decir que no existe ningun pingüino.




findall/3

findall(X,G,L) :-
    G, % G es la condicion que tiene que cumplir el elemento X para que se añada a la lista L.
%L = [1, 2, 3, 4, 5, 6], findall(N,(member(N,L)X =< 3, N is X * 2), R). es decir, que si el elemento N es menor o igual que 3, entonces se multiplica por 2 y se añade a la lista R. 