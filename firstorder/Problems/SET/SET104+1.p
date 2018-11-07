%--------------------------------------------------------------------------
% File     : SET104+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Special member 2 of an ordered pair
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
%            Number of atoms       :   95 (  17 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   58 (   5 ~  ;   4  |;  23  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   84 (   0 singleton;  80 !;   4 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----OP3: Special Cases.
fof(property_2_of_ordered_pair,conjecture,
    ( ! [X,Y] : 
        ( unordered_pair(null_class,singleton(singleton(Y))) = ordered_pair(X,Y)
        | member(X,universal_class) ) )).

%--------------------------------------------------------------------------
