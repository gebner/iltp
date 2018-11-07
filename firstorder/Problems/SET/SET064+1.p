%--------------------------------------------------------------------------
% File     : SET064+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Uniqueness of null class
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0
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
%            Number of variables   :   84 (   0 singleton;  79 !;   5 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
% Bugfixes : v2.7.0 - Fixed null_class_is_unique to not mention Skolem
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----SP4: Uniqueness of null class
fof(null_class_is_unique,conjecture,
    ( ! [Z] : 
        ( Z = null_class
        | ? [Y] : member(Y,Z) ) )).

%--------------------------------------------------------------------------
