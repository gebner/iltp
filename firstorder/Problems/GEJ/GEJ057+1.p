% Test
%--------------------------------------------------------------------------.1
% File     : GEJ057+1 : ILTP v1.1
% Domain   : Constructive Geometry
% Problem  : Existence. Example 2 (Ordered Geometry)
% Version  : [P98] axioms.
% English  : Assume orthogonal geometry. Given a point and a line, to find 
%          : a point incident with the line.

% Refs     : [P98] J. von Plato. A Constructive Theory of Ordered Affine
%                  Geometry. Indagationes Mathematicae, vol. 9: 549-562, 
%                  1998.
% Source   : [P98]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1.0
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
include('Axioms/GEJ006+1.ax').
include('Axioms/GEJ007+1.ax').
include('Axioms/GEJ008+1.ax').
include('Axioms/GEJ009+1.ax').
include('Axioms/GEJ010+1.ax').
include('Axioms/GEJ011+1.ax').
include('Axioms/GEJ015+1.ax').
include('Axioms/GEJ016+1.ax').
include('Axioms/GEJ018+1.ax').
%-----------------------------

fof(con,conjecture,(
((! [L,M] : (line(L) & line(M) & con(L,M))) => (? [X] : (point(X) => ((~ apt(X,L)) & (~ apt(X,M))))))
)).
