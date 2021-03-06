%--------------------------------------------------------------------------
% File     : SYJ001+1 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : Alternations of quantifiers
% Version  : Especial.
%          : Theorem formulation : For N = SIZE. Size 2
% English  : All x1.Ex x2.All x3... xn.(p1(x1)&p2(x2)&p3(x3)&..pn(xn)) <->
%            ..  xn... All x3.Ex x2.All x1.(p1(x1)&p2(x2)&p3(x3)&..pn(xn))

% Refs     : [SFH92] Dan Sahlin, Torkel Franz�n and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : 
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1.0
%

% Comments : 
%--------------------------------------------------------------------------
fof(con,conjecture,(
(! [X1] : (? [X2] : 
(p1(X1) & p2(X2)))) <=> 
(? [X2] : (! [X1] : 
(p1(X1) & p2(X2))))
)).

%--------------------------------------------------------------------------
