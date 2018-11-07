%--------------------------------------------------------------------------
% File     : SYJ014+1 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : Using Existence-quantor
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft4.2 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.50 v1.0.0
%

% Comments : 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( p(X) => ( p(h(X)) | p(g(X)) )) ) )).

fof(axiom2,axiom,(
( ? [X] : p(X)))).

fof(axiom3,axiom,(
( ! [X] : ~(p(h(X)))) )).

fof(con,conjecture,(
( ? [X] : p(g(g(g(g(g(g(X))))))))
)).

%--------------------------------------------------------------------------
