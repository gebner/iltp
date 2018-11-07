%--------------------------------------------------------------------------
% File     : SET016+1 : ILTP v1.1.0
% Domain   : Set Theory
% Problem  : First components of equal ordered pairs are equal
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 1.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   96 (  18 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   59 (   5 ~  ;   3  |;  24  &)
%                                         (  18 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   86 (   0 singleton;  82 !;   4 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----OP10: Improved version of (OP4)
fof(ordered_pair_determines_components1,conjecture,
    ( ! [W,X,Y,Z] : 
        ( ( ordered_pair(W,X) = ordered_pair(Y,Z)
          & member(W,universal_class) )
       => W = Y ) )).

%--------------------------------------------------------------------------
