%--------------------------------------------------------------------------
% File     : SET090+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Uniqueness of member_of of a singleton set
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
%            Number of atoms       :   96 (  18 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   59 (   5 ~  ;   3  |;  24  &)
%                                         (  18 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   27 (   5 constant; 0-3 arity)
%            Number of variables   :   84 (   0 singleton;  80 !;   4 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----SS7: Uniqueness of member_of of a singleton set
fof(member_of_singleton,conjecture,
    ( ! [X,U] : 
        ( ( member(U,universal_class)
          & X = singleton(U) )
       => member_of(X) = U ) )).

%--------------------------------------------------------------------------
