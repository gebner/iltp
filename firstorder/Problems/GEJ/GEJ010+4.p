%--------------------------------------------------------------------------
% File     : GEJ010+4 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Lemma 4.3.ii (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98],[T96] axioms : Especial.
% English  : If two points X and Y are distinct and a point Z is apart from
%          : the line connecting X and Y, then the line connecting X and Y
%          : is distinct from the line connecting Z and X and distinct from
%          : the line connecting Z and Y.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
%          : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
% Source   : [T96]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Comments : Shortened and Reduced axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,Z] : ( ( dipt(X, Y) & apt(Z, ln(X, Y)) ) => ( diln(ln(X, Y), ln(Z, X)) & diln(ln(X, Y), ln(Z, Y)) ))
)).

%--------------------------------------------------------------------------
