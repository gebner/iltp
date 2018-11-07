%--------------------------------------------------------------------------
% File     : SET067+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : If one argument is a proper class, pair contains only the other
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.56 v2.7.0, 0.33 v2.6.0, 0.57 v2.5.0, 0.50 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
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
%----UP2: If one argument is a proper class, pair contains only the other
fof(pair_contains_other,conjecture,
    ( ! [X,Y] : subclass(unordered_pair(X,X),unordered_pair(X,Y)) )).

%--------------------------------------------------------------------------
