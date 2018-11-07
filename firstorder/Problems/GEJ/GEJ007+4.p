%--------------------------------------------------------------------------
% File     : GEJ007+4 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Lemma 4.1.ii.l (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98],[T96] axioms : Especial.
% English  : If two lines are convergent and a point is apart from at least
%          : one of these lines, then this point is distinct from the
%          : intersection point of these lines.

% Refs     : [P95] J. von Plato. The Axioms of Constructive Geometry. Annals
%                  of Pure and Applied Logic 76 (2): 169-200, 1995.
%          : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
% Source   : [T96]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1.0
%
% Comments : Shortened and Reduced axioms
%--------------------------------------------------------------------------
include('Axioms/GEJ002+2.ax').
include('Axioms/GEJ004+2.ax').
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : (( dipt(X, Y) & con(U, V) & ( apt(X, U) | apt(X, V) ) ) => dipt(X, pt(U, V))) 
)).

%--------------------------------------------------------------------------
