%--------------------------------------------------------------------------
% File     : SYJ031+1 : ILTP v1.1.1
% Domain   : Intuitionistic Syntactic
% Problem  : Simple
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft6.13 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.0.0
%

% Comments : "...just some short formulae, written sown more or less at
%            random..." [SFH92]
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( p(X) <=> ( q(X) | ( r(X) | ( ? [Y] : s(X, Y)) ) )) ) )).

fof(axiom2,axiom,(
( ? [X1] : ( ? [Y1] : ( s(Y1, X1) | g(X1) ))))).

fof(axiom3,axiom,(
( ! [X2] : ( g(X2) <=> ( ( ? [Y2] : s(X2, Y2)) | ( ? [Z] : ( r(Z) | ( q(Z) | s(a, Z) ) )) )) ) )).

fof(con,conjecture,(
( ( ? [X3] : q(X3)) | ( ( ? [X4] : r(X4)) | ( ? [X5] : ( ? [Y5] : s(X5, Y5))) ) )
)).

%--------------------------------------------------------------------------
