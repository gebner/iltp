%--------------------------------------------------------------------------
% File     : GPJ002+1 : ILTP v1.1.0
% Domain   : Non-Clausal Group Theory
% Problem  : section 7, Exercise 7
% Version  : Especial.
% English  : 

% Refs     : [CL73] C.-L. Chang & R. C.-T. Lee. Symbolic Logic and Mechanical 
%                   Theorem Proving. New York, Academic Press, 1973.
% Source   : [CL73]
% Names    :
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Comments : 
%--------------------------------------------------------------------------

fof(ax1,axiom,(
! [X] : product(identity,X,X))).

fof(ax2,axiom,(
! [X] : product(X,identity,X))).

fof(ax3,axiom,(
! [X] : product(X,inverse(X),identity))).

fof(ax4,axiom,(
! [X] : product(inverse(X),X,identity))).

fof(ax5,axiom,(
s(b))).

fof(ax6,axiom,(
! [X,Y,Z] : ((s(X) & s(Y) & product(X,inverse(Y),Z)) => s(Z)))).

fof(ax7,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(X, V, W)) => product(U, Z, W)) ) ).

fof(ax8,axiom,(
! [X,Y,U,Z,V,W] : ((product(X, Y, U) & product(Y, Z, V) & product(U, Z, W)) => product(X, V, W)) ) ).

fof(con,conjecture,(
s(inverse(b))
)).

%--------------------------------------------------------------------------
