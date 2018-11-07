%--------------------------------------------------------------------------
% File     : GPJ001+2 : ILTP v1.1.1
% Domain   : Non-Clausal Group Theory
% Problem  : Example 4.3 (commutativity)
% Version  : [T96] : Especial.
% English  : If x*x=e for all x in group G, where * is a binary operator and
%            e is the identity in G, then G is commutative

% Refs     : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
%          : [CL73] C.-L. Chang & R. C.-T. Lee. Symbolic Logic and Mechanical 
%                   Theorem Proving. New York, Academic Press, 1973.
% Source   : [T95]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%
% Comments : reduced axioms (conditions) and different order
%--------------------------------------------------------------------------

fof(ax5,axiom,(
! [X] : product(identity, X, X)) ).

fof(ax4,axiom,(
! [X] : product(X, identity, X)) ).

fof(ax8,axiom,(
! [X] : product(X, X, identity)) ).

fof(ax9,axiom,(
product(a, b, c))).

fof(ax3,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(X, V, W)) => product(U, Z, W)) ) ).

fof(ax2,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(U, Z, W)) => product(X, V, W)) ) ).

fof(con,conjecture,(
product(b, a, c)
)).

%--------------------------------------------------------------------------
