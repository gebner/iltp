%--------------------------------------------------------------------------
% File     : SET063+1 : ILTP v1.1.0
% Domain   : Set Theory
% Problem  : If X is a subset of the empty set, then X is the empty set
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.00 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.12 v2.4.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   95 (  17 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   58 (   5 ~  ;   3  |;  23  &)
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
%----SP3: Null class is a subclass of every class corollary
fof(corollary_of_null_class_is_subclass,conjecture,
    ( ! [X] : 
        ( subclass(X,null_class)
       => X = null_class ) )).

%--------------------------------------------------------------------------
