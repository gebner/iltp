%--------------------------------------------------------------------------
% File     : GEJ033+1 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Theorem 5.3
% Version  : [P95] axioms.
% English  : If the point X is distinct to the points Y and Z, and the lines
%          : connecting X and Y, and connecting X and Z are convergent, then
%          : the intersection point of these lines is equal to X.

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
! [X,Y,Z] : ((dipt(X,Y) & dipt(X,Z) & con(ln(X,Y),ln(X,Z))) => (~ dipt(pt(ln(X,Y),ln(X,Z)),X)))
)).

%--------------------------------------------------------------------------
