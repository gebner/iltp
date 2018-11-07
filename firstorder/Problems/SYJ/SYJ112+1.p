%--------------------------------------------------------------------------
% File     : SYJ112+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
% Source   : [SN00]
% Names    : fv2 : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : a(X, b)) )).

fof(con,conjecture,(
a(f(c), b)
)).

%--------------------------------------------------------------------------