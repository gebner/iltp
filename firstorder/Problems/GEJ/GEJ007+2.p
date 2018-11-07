%--------------------------------------------------------------------------
% File     : GEJ007+2 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Lemma 4.1.ii.l (Theorems 4: symmetry in apartness and incidence)
% Version  : [D97],[D98] axioms : Especial.
% English  : If two lines are convergent and a point is apart from at least
%          : one of these lines, then this point is distinct from the
%          : intersection point of these lines.

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
%-----------------------------

fof(con,conjecture,(
! [X,Y,U,V] : (( dipt(X, Y) & con(U, V) & ( apt(X, U) | apt(X, V) ) ) => dipt(X, pt(U, V))) 
)).

%--------------------------------------------------------------------------
