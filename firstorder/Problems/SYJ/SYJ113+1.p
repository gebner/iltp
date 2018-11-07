%--------------------------------------------------------------------------
% File     : SYJ113+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
%            [OK96] J. Otten und C. Kreitz. A uniform proof procedure
%                   for classical and non-classical logics. In KI-96: 
%                   Advances in Artificial Intelligence, LNAI 1137, 
%                   p. 307-319, 1996.
% Source   : [SN00]
% Names    : jens_fo_fv : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%

% Comments : refers to the ORIGINAL first-order example in [OK96]
%            It needs two instances of the (! [X] : s(X)) subformula 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ! [X] : s(X)) )).

fof(axiom2,axiom,(
( ! [Y] : ( ~(( t(Y) => r(Y)) ) => p(Y)) ) )).

fof(con,conjecture,(
( ~(( ? [Z] : ( ( p(Z) => q(Z))  & ( t(Z) => r(Z))  ))) => ( ~(~(p(a))) & ( s(a) & s(b) ) )) 
)).

%--------------------------------------------------------------------------
