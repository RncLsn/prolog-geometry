%%
% Theorem: Two straight lines of a plane have either one point or no point in
% common; two planes have no point in common or a straight line in common; a plane
% and a straight line not lying in it have no point or one point in common.

%%
% Trovare una formulazione adatta a questo teorema.


%%
% Theorem: Through a straight line and a point not lying in it, or through two
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