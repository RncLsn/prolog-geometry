% Basic elements of sets theory

belongs(X, Y) :- memberOf(X, Y).
belongs(X, Y) :-
	memberOf(X, Z),
	belongs(Z, Y).
	
contains(X, Y) :- belongs(Y, X).

%% Axioms %%

% Two distinct points X and Y always completely determine a straight line A.
determine(X, Y, A) :- 
	belongs(X, A),
	belongs(Y, A),
	point(X), point(Y), line(A),
	\+ X = Y.

% Any two distinct points of a straight line completely determine that line,
% hence if they belong to two lines A and B then these are the same line.
equal(A, B) :-
	determine(X, Y, A),
	determine(X, Y, B),
	\+ A = B.

liesUpon(X, A) :-
	belongs(X, A),
	point(X), line(A).

lieUponTheSameLine(X, Y, Z) :-
	belongs(X, A),
	belongs(Y, A),
	belongs(Z, A),
	point(X), point(Y), point(Z), line(A),
	\+ X = Y, \+ X = Z, \+ Y = Z.

% Three points X, Y, Z not situated in the same straight line always completely determine a plane Alpha.
determine(X, Y, Z, Alpha) :-
	belongs(X, Alpha),
	belongs(Y, Alpha),
	belongs(Z, Alpha),
	point(X), point(Y), point(Z), plane(Alpha),
	\+ lieUponTheSameLine(X, Y, Z),
	\+ X = Y, \+ X = Z, \+ Y = Z.

% Any three points X, Y, Z of a plane, which do not lie in the same straight line, completely determine that plane,
% hence if they belongs to two planes Alpha and Beta then these are the same plane.
equal(Alpha, Beta) :-
	determine(X, Y, Z, Alpha),
	determine(X, Y, Z, Beta),
	\+ Alpha = Beta.

% If two points X, Y of a straight line A lie in a plane Alpha, then every point of A lies in Alpha.
liesUpon(A, Alpha) :-
	belongs(A, Alpha),
	line(A), plane(Alpha);
	determine(X, Y, A),
	belongs(X, Alpha),
	belongs(Y, Alpha),
	line(A), plane(Alpha), point(X), point(Y).

liesUpon(X, Alpha) :-
	belongs(X, Alpha),
	point(X), plane(Alpha);
	belongs(X, A),
	liesUpon(A, Alpha),
	point(X), plane(Alpha), line(A).

% Upon every straight line there exist at least two points, in every plane at least three
% points not lying in the same straight line, and in space there exist at least four points
% not lying in a plane.
exists(A) :-
	determine(X, Y, A),
	point(X), point(Y), line(A),
	\+ X = Y.
	
exists(Alpha) :-
	determine(X, Y, Z, Alpha),
	point(X), point(Y), point(Z), plane(Alpha),
	\+ X = Y, \+ X = Z, \+ Y = Z.

%% Example
%% Theorem: Through a straight line and a point not lying in it, or through two
%		distinct straight lines having a common point, one and only one plane may be made to pass.
%	We can verify that alpha and beta are equal and gamma and delta are equal too.

point(p1).
point(p2).
point(p3).
line(a).
memberOf(p1, a).
memberOf(p2, a).
plane(alpha).
memberOf(a, alpha).
memberOf(p3, alpha).
plane(beta).
memberOf(a, beta).
memberOf(p3, beta).

point(p4).
point(p5).
point(p6).
line(b).
line(c).
memberOf(p4, b).
memberOf(p5, b).
memberOf(p5, c).
memberOf(p6, c).
plane(gamma).
memberOf(b, gamma).
memberOf(c, gamma).
plane(delta).
memberOf(b, delta).
memberOf(c, delta).

%%