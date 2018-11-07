%--------------------------------------------------------------------------
% File     : GEJ026+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Collary 4.10.iii
% Version  : [D97],[D98] axioms : Especial.
% English  : If the lines X, Y, and Z are pairwise convergent, and the
%          : intersection point of X and Y is apart from a line Z, then
%          : the intersection point of Y and X is apart from Z.

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
! [X,Y,Z] : ((con(X,Y) & con(Z,Y) & con(X,Z)) => (apt(pt(X,Y),Z) => apt(pt(Y,X),Z)))
)).

%--------------------------------------------------------------------------
