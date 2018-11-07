%--------------------------------------------------------------------------
% File     : GPJ003+1 : ILTP v1.1.1
% Domain   : Non-Clausal Group Theory
% Problem  : section 7, Exercise 8
% Version  : Especial.
% English  : 

% Refs     : [CL73] C.-L. Chang & R. C.-T. Lee. Symbolic Logic and Mechanical 
%                   Theorem Proving. New York, Academic Press, 1973.
%          : [T96] T. Tammet. A resolution theorem prover for intuitionistic 
%                  logic. 13th CADE, LNAI 1104, pp. 2-16, Springer, 1996. 
% Source   : [CL73]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1.0
%
% Comments :
%--------------------------------------------------------------------------

fof(ax1,axiom,(
! [X] : product(inverse(X), X, identity)) ).

fof(ax2,axiom,(
! [X] : product(identity, X, X)) ).

fof(ax3,axiom,(
! [X,Y,U,Z,V,W] : ( ( product(X, Y, U) & product(Y, Z, V) & product(U, Z, W) ) => product(X, V, W)) ) ).

fof(ax4,axiom,(
! [X,Y,U,Z,V,W] : ( ( product(X, Y, U) & product(Y, Z, V) & product(X, V, W) ) => product(U, Z, W)) ) ).


fof(con,conjecture,(
product(a, identity, a)
)).

%--------------------------------------------------------------------------
