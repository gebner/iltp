%--------------------------------------------------------------------------
% File     : SET094+1 : ILTP v1.1.0
% Domain   : Set Theory
% Problem  : Property 1 of singletons
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.44 v2.7.0, 0.17 v2.6.0, 0.29 v2.5.0, 0.38 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
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
%----SS10
fof(property_of_singletons1_1,conjecture,
    ( ! [X,Y] : 
        ( ( singleton(member_of(X)) = X
          & member(Y,X) )
       => member_of(X) = Y ) )).

%--------------------------------------------------------------------------
