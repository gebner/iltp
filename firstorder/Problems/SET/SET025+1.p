%--------------------------------------------------------------------------
% File     : SET025+1 : ILTP v1.1.0
% Domain   : Set Theory
% Problem  : An ordered pair is a set
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.11 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.12 v2.4.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   42 (  17 unit)
%            Number of atoms       :   94 (  16 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   57 (   5 ~  ;   3  |;  23  &)
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
%----OP1: An ordered pair is a set.
fof(ordered_pair_is_set,conjecture,
    ( ! [X,Y] : member(ordered_pair(X,Y),universal_class) )).

%--------------------------------------------------------------------------
