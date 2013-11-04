% Basic elements of sets theory

belongs(X, Y) :- memberOf(X, Y).
belongs(X, Y) :-
	memberOf(X, Z),
	belongs(Z, Y).
	
contains(X, Y) :- belongs(Y, X).
