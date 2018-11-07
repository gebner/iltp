%--------------------------------------------------------------------------
% File     : SYJ038+1 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : Fruit & Cheese
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft8.1 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.0.0
%

% Comments : modified original conjecture "food(X)" into "? [X] : food(X)"
%           to obtain answer "provable" instead various instances
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( ~(frUit(X)) => ( ~(apple(X)) & ~(pear(X)) )) ) )).

fof(axiom2,axiom,(
( ! [X] : ( ( frUit(X) | ( bread(X) | ( cheese(X) | whiskeY(X) ) ) ) => food(X)) ) )).

fof(axiom3,axiom,(
pear(moltke))).

fof(axiom4,axiom,(
apple(grannYsmith))).

fof(axiom5,axiom,(
apple(reddelicioUs))).

fof(axiom6,axiom,(
cheese(stilton))).

fof(axiom7,axiom,(
( apple(jUicYfrUit) | pear(jUicYfrUit) ))).

fof(axiom8,axiom,(
( bread(rYe) | whiskeY(rYe) ))).

fof(axiom9,axiom,(
( ~(cheese(brie)) => frUit(brie)) )).

fof(con,conjecture,(
( ? [X] : food(X))
)).

%--------------------------------------------------------------------------
