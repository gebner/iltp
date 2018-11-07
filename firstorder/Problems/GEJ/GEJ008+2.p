%--------------------------------------------------------------------------
% File     : GEJ008+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 4.2 (Symmetry of Apartness)
% Version  : [D97],[D98] axioms : Especial.
% English  : If the points X and Y are distinct and U and V are distinct,
%          : and X or Y is apart from the line connecting U and V, then
%          : U or V are apart from the line connecting X and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ( ( dipt(X, Y) & dipt(U, V) ) => ( ( apt(X, ln(U, V)) | apt(Y, ln(U, V)) ) => ( apt(U, ln(X, Y)) | apt(V, ln(X, Y)) )) )
)).

%--------------------------------------------------------------------------
