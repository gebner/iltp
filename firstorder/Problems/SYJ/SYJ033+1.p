%--------------------------------------------------------------------------
% File     : SYJ033+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : Simple
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franz�n and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft6.15 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : "...just some short formulae, written sown more or less at
%            random..." [SFH92]
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( p(X) => ~(( ? [Y] : ( q(Y) & r(X, Y) )))) ) )).

fof(axiom2,axiom,(
( ! [X1] : ( t(X1) => ( ? [Y1] : ( s(Y1) & r(X1, Y1) ))) ) )).

fof(axiom3,axiom,(
( ! [X2] : ( p(X2) => ~(~(t(X2)))) ) )).

fof(axiom4,axiom,(
( ! [Y2] : ( s(Y2) => q(Y2)) ) )).

fof(con,conjecture,(
~(( ? [X3] : p(X3)))
)).

%--------------------------------------------------------------------------