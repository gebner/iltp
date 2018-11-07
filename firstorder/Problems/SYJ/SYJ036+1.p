%--------------------------------------------------------------------------
% File     : SYJ036+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : formula being Problematic for Ft-Algorithm
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franz�n and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft7c : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
q(a1, a2, a3, a4, a1, a2, a3, a4))).

fof(con,conjecture,(
( ? [X1] : ( ? [X2] : ( ? [X3] : ( ? [X4] : ( ? [Y1] : ( ? [Y2] : ( ? [Y3] : ( ? [Y4] : ( ( ( p(X1) & ( p(X2) & ( p(X3) & p(X4) ) ) ) <=> ( p(Y1) & ( p(Y2) & ( p(Y3) & p(Y4) ) ) ))  & q(X1, X2, X3, X4, Y1, Y2, Y3, Y4) )))))))))
)).

%--------------------------------------------------------------------------