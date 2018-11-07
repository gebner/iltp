%--------------------------------------------------------------------------
% File     : GEJ001+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 3.1. Uniqueness of constructed lines
% Version  : [P95] axioms.
% English  : If two distinct points are incident with a line, then this line
%          : is equivalent with the connecting line of these points.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------
fof(con,conjecture,(
( ! [X,Y,Z] : ( ( dipt(X, Y) & ( ~(apt(X, Z)) & ~(apt(Y, Z)) ) ) => ~(diln(Z, ln(X, Y)))) )
)).

%--------------------------------------------------------------------------
