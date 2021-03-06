%--------------------------------------------------------------------------
% File     : GEJ005+2 : ILTP v1.1.2
% Domain   : Constructive Geometry
% Problem  : Lemma 4.1.i.l (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98] axioms : Especial.
% English  : If two points are distinct and a line U is apart from at least
%          : one of these points, then this line is distinct from the line
%          : connecting these points

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
% Source   : [P95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.1.0
%
% Comments : Shortened axioms
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ003+1.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ( ( dipt(X, Y) & con(U, V) & ( apt(X, U) | apt(Y, U) )) =>  diln(U, ln(X, Y))  )
)).

%--------------------------------------------------------------------------
