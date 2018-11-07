%--------------------------------------------------------------------------
% File     : GEJ008+3 : ILTP v1.1.1
% Domain   : Constructive Geometry
% Problem  : Theorem 4.2 (Symmetry of Apartness)
% Version  : [T96] axioms : Especial.
% English  : If the points X and Y are distinct and U and V are distinct,
%          : and X or Y is apart from the line connecting U and V, then
%          : U or V are apart from the line connecting X and Y.

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
% Comments : Reduced axioms, using lemma 4.1.i.r and 4.1.i.l
%--------------------------------------------------------------------------

include('Axioms/GEJ001+1.ax').
%-----------------------------

fof(a1,axiom,(
! [X,Y,U,V] : (( dipt(X, Y) & con(U, V) & dipt(X, pt(U, V)) ) => ( apt(X, U) | apt(X, V) ))
)).

fof(a2,axiom,(
! [X,Y,U,V] : (( dipt(X, Y) & con(U, V) & ( apt(X, U) | apt(X, V) ) ) => dipt(X, pt(U, V)))
)).

fof(con,conjecture,(
! [X,Y,U,V] : ( ( dipt(X, Y) & dipt(U, V) ) => ( ( apt(X, ln(U, V)) | apt(Y, ln(U, V)) ) => ( apt(U, ln(X, Y)) | apt(V, ln(X, Y)) )) )
)).

%--------------------------------------------------------------------------
