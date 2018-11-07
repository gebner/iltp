%--------------------------------------------------------------------------
% File     : GPJ001+1 : ILTP v1.1.0
% Domain   : Non-Clausal Group Theory
% Problem  : Example 4.3 (Commutativity)
% Version  : Especial.
% English  : If x*x=e for all x in group G, where * is a binary operator and
%            e is the identity in G, then G is commutative

% Refs     : [CL73] C.-L. Chang & R. C.-T. Lee. Symbolic Logic and Mechanical 
%                   Theorem Proving. New York, Academic Press, 1973.
% Source   : [CL73]
% Names    :
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Comments : 
%--------------------------------------------------------------------------

fof(ax1,axiom,(
! [X,Y] : product(X,Y,f(X,Y)) )).

fof(ax2,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(U, Z, W)) => product(X, V, W)) ) ).

fof(ax3,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(X, V, W)) => product(U, Z, W)) ) ).

fof(ax4,axiom,(
! [X] : product(X, identity, X)) ).

fof(ax5,axiom,(
! [X] : product(identity, X, X)) ).

fof(ax6,axiom,(
! [X] : product(X, inverse(X), identity)
)).

fof(ax7,axiom,(
! [X] : product(inverse(X), X, identity)
)).

fof(ax8,axiom,(
! [X] : product(X, X, identity)) ).

fof(ax9,axiom,(
product(a, b, c))).

fof(con,conjecture,(
product(b, a, c)
)).

%--------------------------------------------------------------------------
