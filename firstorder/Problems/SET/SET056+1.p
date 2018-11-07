%--------------------------------------------------------------------------
% File     : SET056+1 : ILTP v1.1.1
% Domain   : Set Theory
% Problem  : Expanded equality definition
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   98 (  17 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   63 (   7 ~  ;   5  |;  25  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   86 (   0 singleton;  80 !;   6 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
% Bugfixes : v2.7.0 - Combined SET05[6789] to a single conjecture
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----EQ2: Expanded equality definition
fof(equality1,conjecture,
    ( ! [X,Y] : 
        ( X = Y
        | ? [U] : 
            ( member(U,X)
            & ~ member(U,Y) )
        | ? [W] : 
            ( member(W,Y)
            & ~ member(W,X) ) ) )).

%--------------------------------------------------------------------------
