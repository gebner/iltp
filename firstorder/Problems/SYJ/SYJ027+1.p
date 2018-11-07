%--------------------------------------------------------------------------
% File     : SYJ027+1 : ILTP v1.1.1
% Domain   : Intuitionistic Syntactic
% Problem  : Simple
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft6.9 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.0.0
%

% Comments : "...just some short formulae, written sown more or less at
%            random..." [SFH92]
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( p(X) => ( r(X) | ( ? [Y] : q(X, Y)) )) ) )).

fof(axiom2,axiom,(
( ! [X] : ( r(X) => ~(( ? [X] : p(X)))) ) )).

fof(axiom3,axiom,(
( ? [X] : p(X)))).

fof(con,conjecture,(
( ? [X] : ( ? [Y] : q(X, Y)))
)).

%--------------------------------------------------------------------------
