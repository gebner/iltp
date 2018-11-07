% Test
%--------------------------------------------------------------------------.0
% File     : GEJ056+1 : ILTP v1.1
% Domain   : Constructive Geometry
% Problem  : Existence. Example 1
% Version  : [P95] axioms.
% English  : When there are two distinct points, then a line connecting 
%          : them can be constructed.
% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :

% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
% Syntax   : 
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
include('Axioms/GEJ015+1.ax').
include('Axioms/GEJ016+1.ax').
%-----------------------------

fof(con,conjecture,(
((! [A,B] : (point(A) & point(B) & dipt(A,B))) => (? [X] : (line(X) => ((~ apt(A,X)) & (~ apt(B,X))))))
)).
