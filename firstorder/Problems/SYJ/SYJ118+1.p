%--------------------------------------------------------------------------
% File     : SYJ118+1 : ILTP v1.1.0
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
% Names    : deadlock2 : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : Some weired LJ deadlock
%            shows a deeper difference between the rule non-permutabilities 
%            of the sequent calculi LJmc and LJ.
%            it requires the permutation-based proof transformations from
%            [ES98]
%--------------------------------------------------------------------------
fof(con,conjecture,(
(( ! [X] : ( ! [Y] : ( p(X, Y) | b(X, Y) )) ) &
( ( ? [X] : ( ? [Y] : p(X, Y))) => ( ? [A] : a(A, C))) & 
( ! [Z] : ( a(Z, C) => ( ? [B] : ~(p(Z, B)))) )) =>
( ? [X] : ( ? [Y] : b(X, Y)))
)).

%--------------------------------------------------------------------------