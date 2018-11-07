%--------------------------------------------------------------------------
% File     : GEJ001+3 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 3.1. Uniqueness of constructed lines
% Version  : [T96] axioms : Especial.
% English  : If two distinct points are incident with a line, then this line
%          : is equivalent with the connecting line of these points.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
%          : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
% Source   : [T96]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%
% Comments : Reduced axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
%-----------------------------
fof(con,conjecture,(
( ! [X,Y,Z] : ( ( dipt(X, Y) & ( ~(apt(X, Z)) & ~(apt(Y, Z)) ) ) => ~(diln(Z, ln(X, Y)))) )
)).

%--------------------------------------------------------------------------