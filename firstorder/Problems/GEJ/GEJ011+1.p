%--------------------------------------------------------------------------
% File     : GEJ011+1 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 4.4.i (Triangle axioms)
% Version  : [P95] axioms.
% English  : If X and Y are distinct points and Z is apart from the line
%          : connecting X and Y, then X is apart from the line connecting
%          : Z and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+1.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ( dipt(X, Y) => ( apt(Z, ln(X, Y)) => apt(X, ln(Z, Y))) ) 
)).

%--------------------------------------------------------------------------
