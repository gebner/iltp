%--------------------------------------------------------------------------
% File     : SET076+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : If both members of a pair belong to a set, the pair is a subset
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.67 v2.7.0, 0.83 v2.6.0, 0.71 v2.5.0, 0.75 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   96 (  16 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   59 (   5 ~  ;   3  |;  24  &)
%                                         (  18 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   85 (   0 singleton;  81 !;   4 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----UP7: If both members of a pair belong to a set, the pair is a subset
fof(unordered_pair_is_subset,conjecture,
    ( ! [X,Y,Z] : 
        ( ( member(X,Z)
          & member(Y,Z) )
       => subclass(unordered_pair(X,Y),Z) ) )).

%--------------------------------------------------------------------------
