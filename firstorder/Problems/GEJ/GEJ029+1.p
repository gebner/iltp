%--------------------------------------------------------------------------
% File     : GEJ029+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Collary 4.12.ii
% Version  : [P95] axioms.
% English  : If the lines X, Y, and Z are pairwise convergent, and the 
%          : intersection point of X and Y is incident with Z, then the
%          : intersection point of X and Z is incident with Y.

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
! [X,Y,Z] : ((con(X,Y) & con(Z,Y) & con(X,Z) & (~ apt(pt(X,Y),Z))) => (~ apt(pt(X,Z),Y)))
)).

%--------------------------------------------------------------------------
