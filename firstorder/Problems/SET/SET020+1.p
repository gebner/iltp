%--------------------------------------------------------------------------
% File     : SET020+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Uniqueness of 1st and 2nd when X is an ordered pair of sets
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 1.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   98 (  19 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   61 (   5 ~  ;   3  |;  26  &)
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
%----OP7: Uniqueness of 1st and 2nd when X is an ordered pair of sets
%----All 2 theorems combined
fof(unique_1st_and_2nd_in_pair_of_sets1,conjecture,
    ( ! [U,V,X] : 
        ( ( member(U,universal_class)
          & member(V,universal_class)
          & X = ordered_pair(U,V) )
       => ( first(X) = U
          & second(X) = V ) ) )).

%--------------------------------------------------------------------------
