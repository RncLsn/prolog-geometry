% If X, Y, Z are points of a straight line and Y lies between X and Z, then Y lies also between Z and X.
liesBetween(X, Y, Z) :-
	order(X, Y), order(Y, Z),
	liesUpon(X, A), liesUpon(Y, A), liesUpon(Z, A),
	point(X), point(Y), point(Z), line(A),
	\+ X = Y, \+ X = Z, \+ Y = Z;
	order(Z, Y), order(Y, X),
	liesUpon(X, A), liesUpon(Y, A), liesUpon(Z, A),
	point(X), point(Y), point(Z), line(A),
	\+ X = Y, \+ X = Z, \+ Y = Z.

% TODO
% If A and C are two points of a straight line, then there exists at least one point B
% lying between A and C and at least one point D so situated that C lies between A and D.


% TODO
% Of any three points situated on a straight line, there is always one and only one which lies between the other two.

% TODO
% Any four points A, B, C, D of a straight line can always be so arranged that B
% shall lie between A and C and also between A and D, and, furthermore, that C shall
% lie between A and D and also between B and D.

% Definition: We will call the system of two points A and B, lying upon a straight
% line, a segment and denote it by AB or BA.

% TODO
% Let A, B, C be three points not lying in the same straight line and let a be a
% straight line lying in the plane ABC and not passing through any of the points A,
% B, C. Then, if the straight line a passes through a point of the segment AB, it will
% also pass through either a point of the segment BC or a point of the segment AC.

