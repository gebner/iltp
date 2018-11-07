%--------------------------------------------------------------------------
% File     : GEJ038+2 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 7.2. Irreflexivity of line convergence
% Version  : [D97],[D98] axioms : Especial.
% English  : A line is not convergent to itself.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1.0
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
! [X] : (~ con(X,X))
)).

%--------------------------------------------------------------------------
