%--------------------------------------------------------------------------
% File     : GEJ013+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 4.4.iii (Triangle axioms)
% Version  : [D97],[D98] axioms : Especial.
% English  : If X and Y are distinct points and Z is apart from the line
%          : connecting X and Y, then Z is apart from the line connecting
%          : Y and X.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ( dipt(X, Y) => ( apt(Z, ln(X, Y)) => apt(Z, ln(Y, X))) )
)).

%--------------------------------------------------------------------------