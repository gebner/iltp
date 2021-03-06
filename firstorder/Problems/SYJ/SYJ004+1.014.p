%--------------------------------------------------------------------------
% File     : SYJ004+1 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : Append.
% Version  : Especial.
%          : Theorem formulation : For N = SIZE. Size 14
% English  : All x. append(nil,X,X) &  
%          : All x. All y. All z. All w. append(y,z,w)->append(cons(x,y),z,cons(x,w)) ->
%          : Ex x. append(cons(a1,cons(a2,cons( .. (an,nil)))),nil,x)

% Refs     : [SFH92] Dan Sahlin, Torkel Franz�n and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : 
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0
%

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,(
! [X] : append(nil,X,X))).

fof(ax2,axiom,(
! [X,Y,Z,W] : (append(Y,Z,W) => append(cons(X,Y),Z,cons(X,W))))).


fof(con,conjecture,(
? [X] : append(cons(a1,cons(a2,cons(a3,cons(a4,cons(a5,cons(a6,cons(a7,cons(a8,cons(a9,cons(a10,cons(a11,cons(a12,cons(a13,cons(a14,nil)))))))))))))),nil,X)
)).

%--------------------------------------------------------------------------
