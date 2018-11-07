%--------------------------------------------------------------------------
% File     : GEJ035+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 5.5
% Version  : [D97],[D98] axioms : Especial.
% English  : If the points X and Y are distinct, and the points Y and Z are
%          : equal, then X and Z are distinct, and the line connecting X 
%          : and Y is equivalent to the line connecting X and Z.

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
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ((dipt(X,Y) & (~ dipt(Y,Z))) => (dipt(X,Z) & (~ diln(ln(X,Y),ln(X,Z)))))
)).

%--------------------------------------------------------------------------
