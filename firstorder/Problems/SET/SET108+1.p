%--------------------------------------------------------------------------
% File     : SET108+1 : ILTP v1.1.1
% Domain   : Set Theory
% Problem  : 1st and 2nd make the ordered pair
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.44 v2.7.0, 0.50 v2.6.0, 0.57 v2.5.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :  101 (  20 equality)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   65 (   6 ~  ;   4  |;  29  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   87 (   0 singleton;  79 !;   8 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----OP6: Existence of 1st and 2nd.
%----All six theorems combined
fof(existence_of_first_and_second,conjecture,
    ( ! [X] : 
      ? [U,V] : 
        ( ( member(U,universal_class)
          & member(V,universal_class)
          & X = ordered_pair(U,V) )
        | ( ~ ( ? [Y,Z] : 
                  ( member(Y,universal_class)
                  & member(Z,universal_class)
                  & X = ordered_pair(Y,Z) ) )
          & U = X
          & V = X ) ) )).

%--------------------------------------------------------------------------
