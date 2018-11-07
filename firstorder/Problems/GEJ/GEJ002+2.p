%--------------------------------------------------------------------------
% File     : GEJ001+2 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Theorem 3.2. Convergent lines are distinct
% Version  : [D97],[D98] axioms : Especial.
% English  : Two convergent lines are distinct.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------
fof(con,conjecture,(
! [X,Y] : ( con(X, Y) => diln(X, Y))
)).

%--------------------------------------------------------------------------