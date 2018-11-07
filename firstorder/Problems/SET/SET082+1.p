%--------------------------------------------------------------------------
% File     : SET082+1 : ILTP v1.1.0
% Domain   : Set Theory
% Problem  : If X is not a set, {X} = null class
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.6.0, 0.29 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   95 (  17 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   59 (   6 ~  ;   3  |;  23  &)
%                                         (  18 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   83 (   0 singleton;  79 !;   4 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----SS4: If X is not a set, {X} = null class
fof(singleton_is_null_class,conjecture,
    ( ! [X] : 
        ( ~ member(X,universal_class)
       => singleton(X) = null_class ) )).

%--------------------------------------------------------------------------
