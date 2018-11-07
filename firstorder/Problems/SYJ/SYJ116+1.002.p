%--------------------------------------------------------------------------
% File     : SYJ116+1.002 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
%            Problem formulation : Intuit. Valid  Size 2
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
%            [ES98] U. Egly & S. Schmitt. Intuitionistic proof 
%                   transformations and their application to constructive 
%                   program synthesis, In J. Calmet & J. Plaza (Eds.), 
%                   Proceedings of the 4th International Conference on 
%                   Artificial Intelligence and Symbolic Computation, 
%                   LNAI 1476, p. 132-144, Springer Verlag, 1998
% Source   : [SN00]
% Names    : fo_n2 : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : cause exponential proof length in EVERY LJ proof wrt. the 
%            proof length of a given LJmc proof in first-order 
%            intuitionistic logic 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [W] : a2(W)) )).

fof(axiom2,axiom,(
( ! [X] : ( ( b | a(X) ) | b )) )).

fof(axiom3,axiom,(
~(( b & ( ! [Y] : a1(Y))  )))).

fof(axiom4,axiom,(
~(( b1 & ( ! [Y] : a2(Y))  )))).

fof(axiom5,axiom,(
( ! [X] : ( ( b1 | a1(X) ) | b1 )) )).

fof(con,conjecture,(
( ! [Z] : a(Z)) 
)).

%--------------------------------------------------------------------------
