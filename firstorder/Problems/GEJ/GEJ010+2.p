%--------------------------------------------------------------------------
% File     : GEJ010+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Lemma 4.3.ii (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98] axioms : Especial.
% English  : If two points X and Y are distinct and a point Z is apart from
%          : the line connecting X and Y, then the line connecting X and Y
%          : is distinct from the line connecting Z and X and distinct from
%          : the line connecting Z and Y.

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
! [X,Y,Z] : ( ( dipt(X, Y) & apt(Z, ln(X, Y)) ) => ( diln(ln(X, Y), ln(Z, X)) & diln(ln(X, Y), ln(Z, Y)) ))
)).

%--------------------------------------------------------------------------
