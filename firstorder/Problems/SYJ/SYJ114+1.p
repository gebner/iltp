%--------------------------------------------------------------------------
% File     : SYJ114+1 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
% Source   : [SN00]
% Names    : fun1 : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.0.0
%

% Comments : example with function symbols 
%            <size> function symbols in the righmost implication's 
%            conclusion 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
p(a))).

fof(axiom2,axiom,(
( ! [X] : ( p(X) => p(f(X))) ) )).

fof(con,conjecture,(
p(f(f(f(f(a)))))
)).

%--------------------------------------------------------------------------
