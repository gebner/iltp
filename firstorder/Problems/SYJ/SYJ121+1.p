%--------------------------------------------------------------------------
% File     : SYJ121+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
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
% Names    : mult_no_rename : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : it requires the permutation-based proof transformations from
%            [ES98]
%            embedding multiple use of eigenvariable formula WITHOUT
%            eigenvariable renaming 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : ( a(X) | ( ? [A] : b(X, A)) )) )).

fof(axiom2,axiom,(
( ( ? [Y] : a(Y)) => ( ? [Z] : ~(a(Z)))) )).

fof(con,conjecture,(
( ? [X] : ( ? [Y] : b(X, Y)))
)).

%--------------------------------------------------------------------------