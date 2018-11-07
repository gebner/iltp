%--------------------------------------------------------------------------
% File     : HAL002+1 : ILTP v1.1.0
% Domain   : Homological Algebra
% Problem  : Equivalence of injection axioms
% Version  : [TPTP] axioms.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.67 v2.6.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   79 (  20 equality)
%            Maximal formula depth :   16 (   9 average)
%            Number of connectives :   62 (   0 ~  ;   0  |;  34  &)
%                                         (   3 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-4 arity)
%            Number of functors    :    6 (   3 constant; 0-3 arity)
%            Number of variables   :   77 (   0 singleton;  73 !;   4 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include Standard homological algebra axioms
include('Axioms/HAL001+0.ax').
%--------------------------------------------------------------------------
%----Alternative defn of injection
fof(injection_properties_2,axiom,
    ( ! [Morphism,Dom,Cod] : 
        ( ( injection_2(Morphism)
          & morphism(Morphism,Dom,Cod) )
       => ! [El] : 
            ( ( element(El,Dom)
              & apply(Morphism,El) = zero(Cod) )
           => El = zero(Dom) ) ) )).

fof(properties_for_injection_2,axiom,
    ( ! [Morphism,Dom,Cod] : 
        ( ( morphism(Morphism,Dom,Cod)
          & ! [El] : 
              ( ( element(El,Dom)
                & apply(Morphism,El) = zero(Cod) )
             => El = zero(Dom) ) )
       => injection_2(Morphism) ) )).

fof(x_morphism,hypothesis,
    ( morphism(x,any1,any2) )).

fof(my,conjecture,
    ( injection(x)
  <=> injection_2(x) )).

%--------------------------------------------------------------------------
