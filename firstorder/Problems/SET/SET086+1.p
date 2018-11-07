%--------------------------------------------------------------------------
% File     : SET086+1 : ILTP v1.1.1
% Domain   : Set Theory
% Problem  : A singleton set has a member
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.22 v2.7.0, 0.33 v2.6.0, 0.29 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   98 (  19 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   62 (   6 ~  ;   4  |;  26  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   85 (   0 singleton;  79 !;   6 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----SS6: Existence of member_of
%----All four theorems are combined in one
fof(member_of_substitution,conjecture,
    ( ! [X] : 
      ? [U] : 
        ( ( member(U,universal_class)
          & X = singleton(U) )
        | ( ~ ( ? [Y] : 
                  ( member(Y,universal_class)
                  & X = singleton(Y) ) )
          & U = X ) ) )).

%--------------------------------------------------------------------------
