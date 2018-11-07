%--------------------------------------------------------------------------
% File     : SYJ125+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
% Source   : [SN00]
% Names    : agatha : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1
%

% Comments : 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
l(b))).

fof(con,conjecture,(
( h(a, a) => ( h(a, c) => ( ( ! [X] : ( ( l(X) => h(b, X))  | r(X, a) ))  => ( ( ! [X] : ( h(a, X) => ~(h(c, X))) )  => ( ( ! [X] : ( ! [Y] : ( k(X, Y) => h(X, Y)) ) )  => ( ( ! [X] : ( ~(h(X, a)) | ( ~(h(X, b)) | ~(h(X, c)) ) ))  => ( ( ! [X] : ( ! [Y] : ( k(X, Y) => ~(r(X, Y))) ) )  => ( ( ! [X] : ( h(a, X) => h(b, X)) )  => ( ~(k(b, a)) & ~(k(c, a)) )) ) ) ) ) ) ) ) 
)).

%--------------------------------------------------------------------------