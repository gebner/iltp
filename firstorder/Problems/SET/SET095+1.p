%--------------------------------------------------------------------------
% File     : SET095+1 : ILTP v1.1.1
% Domain   : Set Theory
% Problem  : Property 2 of singletons
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.7.0, 0.17 v2.6.0, 0.29 v2.5.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   95 (  16 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   58 (   5 ~  ;   3  |;  23  &)
%                                         (  18 <=>;   9 =>;   0 <=)
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
%----SS11
fof(property_of_singletons2,conjecture,
    ( ! [X,Y] : 
        ( member(X,Y)
       => subclass(singleton(X),Y) ) )).

%--------------------------------------------------------------------------
