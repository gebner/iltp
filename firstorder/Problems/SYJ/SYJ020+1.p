%--------------------------------------------------------------------------
% File     : SYJ020+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : Simple
% Version  : Especial.
% English  : 

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : ft6.2 : Ft benchmark formulae (pred.) (1992)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : "...just some short formulae, written sown more or less at
%            random..." [SFH92]
%--------------------------------------------------------------------------
fof(con,conjecture,(
( ~(( ? [X1] : ( ? [X2] : ( ? [X3] : ( ? [X4] : ( ? [X5] : ( ? [X6] : ( ? [X7] : ( ? [X8] : ( ? [X9] : ( ? [X10] : p(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10)))))))))))) <=> ( ! [X1] : ( ! [X2] : ( ! [X3] : ( ! [X4] : ( ! [X5] : ( ! [X6] : ( ! [X7] : ( ! [X8] : ( ! [X9] : ( ! [X10] : ~(p(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10))) ) ) ) ) ) ) ) ) ) ) 
)).

%--------------------------------------------------------------------------
