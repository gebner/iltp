%--------------------------------------------------------------------------
% File     : SYJ028+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : Simple
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franz�n and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft6.10 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : "...just some short formulae, written sown more or less at
%            random..." [SFH92]
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ? [X] : ( p(X) & ( ! [Y] : ( q(Y) => ( r(X, Y) | r(Y, X) )) )  )))).

fof(axiom2,axiom,(
( ? [X] : ( q(X) & ( ! [Y] : ( p(Y) => ~(r(X, Y))) )  )))).

fof(con,conjecture,(
( ? [X] : ( ? [Y] : ( p(X) & ( q(Y) & r(X, Y) ) )))
)).

%--------------------------------------------------------------------------