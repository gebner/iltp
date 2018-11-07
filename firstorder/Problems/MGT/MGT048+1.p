%--------------------------------------------------------------------------
% File     : MGT048+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Capability decreases monotonically with its age
% Version  : [Han98] axioms.
% English  : An organization's capability decreases monotonically with its age.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : LEMMA 5 [Han98]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.17 v2.5.0, 0.00 v2.4.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.0.0
%
% Syntax   : Number of formulae    :   10 (   0 unit)
%            Number of atoms       :   34 (   7 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   25 (   1 ~  ;   4  |;   9  &)
%                                         (   3 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :    4 (   0 constant; 2-2 arity)
%            Number of variables   :   25 (   0 singleton;  25 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----Increased knowledge elevates an organization's capability; and
%----increased accumulation of organizational internal frictions
%----diminishes its capability.
fof(assumption_5,axiom,
    ( ! [X,T0,T] : 
        ( organization(X)
       => ( ( ( greater(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & smaller_or_equal(internal_friction(X,T),internal_friction(X,T0)) )
           => greater(capability(X,T),capability(X,T0)) )
          & ( ( smaller_or_equal(stock_of_knowledge(X,T),stock_of_knowledge(X,T0))
              & greater(internal_friction(X,T),internal_friction(X,T0)) )
           => smaller(capability(X,T),capability(X,T0)) )
          & ( ( stock_of_knowledge(X,T) = stock_of_knowledge(X,T0)
              & internal_friction(X,T) = internal_friction(X,T0) )
           => capability(X,T) = capability(X,T0) ) ) ) )).

%----Case: liability of senescence (Ass. 10-12 replacing A7-9)!
%----
%----An organization's stock of knowledge does not vary with its age
%----(contra assumption 7).
fof(assumption_10,axiom,
    ( ! [X,T0,T] : 
        ( organization(X)
       => stock_of_knowledge(X,T) = stock_of_knowledge(X,T0) ) )).

%----The quality of an organization's internal friction increases
%----monotonically with its age (contra assumption 9).
fof(assumption_12,axiom,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & greater(age(X,T),age(X,T0)) )
       => greater(internal_friction(X,T),internal_friction(X,T0)) ) )).

%----Problem theorems
%----Case C: liability of senescence.
%----
%----An organization's capability decreases monotonically with its age.
%----From A5, A10, A12 (also needs D<=). 
%----
%----Text says mistakenly: capability(X,T) > capability(X,T0) 
fof(lemma_5,conjecture,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & greater(age(X,T),age(X,T0)) )
       => smaller(capability(X,T),capability(X,T0)) ) )).

%--------------------------------------------------------------------------
