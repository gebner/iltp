%--------------------------------------------------------------------------
% File     : GEJ039+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Lemma 7.3
% Version  : [D97],[D98] axioms : Especial.
% English  : If the point X is incident with both the lines Y and Z, and
%          : Y and Z are parallel, then Y and Z are equal.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
include('Axioms/GEJ006+1.ax').
include('Axioms/GEJ007+1.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : (((~ apt(X,Y)) & (~ apt(X,Z)) & (~ con(Y,Z))) => (~ diln(Y,Z)))
)).

%--------------------------------------------------------------------------
