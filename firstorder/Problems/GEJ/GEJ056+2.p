%--------------------------------------------------------------------------
% File     : GEJ056+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Existence. Example 1
% Version  : [D97],[D98] axioms : Especial.
% English  : Assume orthogonal geometry. Given a point and a line, to find 
%          : a point incident with the line.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1.0
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
include('Axioms/GEJ015+1.ax').
include('Axioms/GEJ016+1.ax').
%-----------------------------

fof(con,conjecture,(
((! [A,B] : (point(A) & point(B) & dipt(A,B))) => (? [X] : (line(X) => ((~ apt(A,X)) & (~ apt(B,X))))))
)).
