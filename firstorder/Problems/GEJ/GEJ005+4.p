%--------------------------------------------------------------------------
% File     : GEJ005+4 : ILTP v1.1.0
% Domain   : Constructive Geometry
% Problem  : Lemma 4.1.i.l (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98],[T96] axioms : Especial.
% English  : If two points are distinct and a line U is apart from at least
%          : one of these points, then this line is distinct from the line
%          : connecting these points

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
%          : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
% Source   : [T96]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Comments : Shortened and Reduced axioms
%--------------------------------------------------------------------------
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : ( ( dipt(X, Y) & con(U, V) & ( apt(X, U) | apt(Y, U) )) =>  diln(U, ln(X, Y))  )
)).

%--------------------------------------------------------------------------
