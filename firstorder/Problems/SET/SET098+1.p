%--------------------------------------------------------------------------
% File     : SET098+1 : ILTP v1.1.2
% Domain   : Set Theory
% Problem  : Corollary 1 to a class contains 0, 1, or at least 2 members
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   42 (  16 unit)
%            Number of atoms       :   98 (  18 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   61 (   5 ~  ;   5  |;  25  &)
%                                         (  18 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   26 (   5 constant; 0-3 arity)
%            Number of variables   :   86 (   0 singleton;  79 !;   7 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments :
% Bugfixes : v2.7.0 - Fixed corollary_1_to_number_of_elements_in_class to 
%                     not mention Skolem function
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----SS13: A class contains 0, 1 or at least 2 members.
%----Corollary 1
fof(corollary_1_to_number_of_elements_in_class,conjecture,
    ( ! [X] : 
        ( X = null_class
        | ? [Y] : singleton(Y) = X
        | ? [V] : 
            ( member(V,X)
            & ? [W] : 
                ( member(W,intersection(complement(singleton(V)),X))
                & member(W,X) ) ) ) )).

%--------------------------------------------------------------------------
