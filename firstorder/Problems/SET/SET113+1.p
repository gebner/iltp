%--------------------------------------------------------------------------
% File     : SET113+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Uniqueness of 1st and 2nd when X is not an ordered pair of sets
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 1.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :  100 (  21 equality)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :   63 (   5 ~  ;   4  |;  28  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   87 (   0 singleton;  81 !;   6 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----OP8: Uniqueness of 1st and 2nd when X is not an ordered pair of sets
%----All four theorems combined.
fof(unique_1st_and_2nd_in_pair_of_non_sets1,conjecture,
    ( ! [U,V,X] : 
        ( ( ? [Y,Z] : 
              ( member(Y,universal_class)
              & member(Z,universal_class)
              & X = ordered_pair(Y,Z) )
          & X = U
          & V = X )
        | ( first(X) = U
          & second(X) = V ) ) )).

%--------------------------------------------------------------------------
