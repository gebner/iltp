%--------------------------------------------------------------------------
% File     : HAL001+2 : ILTP v1.1.0
% Domain   : Homological Algebra
% Problem  : Short Five Lemma, Part 1
% Version  : [TPTP] axioms : Augmented.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 1.00 v2.7.0, 0.83 v2.6.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   33 (  18 unit)
%            Number of atoms       :   94 (  20 equality)
%            Maximal formula depth :   16 (   5 average)
%            Number of connectives :   61 (   0 ~  ;   0  |;  34  &)
%                                         (   2 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-4 arity)
%            Number of functors    :   17 (  14 constant; 0-3 arity)
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
        ( ( injection(Morphism)
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
       => injection(Morphism) ) )).

fof(alpha_morphism,axiom,
    ( morphism(alpha,a,b) )).

fof(beta_morphism,axiom,
    ( morphism(beta,b,c) )).

fof(gamma_morphism,axiom,
    ( morphism(gamma,d,e) )).

fof(delta_morphism,axiom,
    ( morphism(delta,e,r) )).

fof(f_morphism,axiom,
    ( morphism(f,a,d) )).

fof(g_morphism,axiom,
    ( morphism(g,b,e) )).

fof(h_morphism,axiom,
    ( morphism(h,c,r) )).

fof(alpha_injection,axiom,
    ( injection(alpha) )).

fof(gamma_injection,axiom,
    ( injection(gamma) )).

fof(beta_surjection,axiom,
    ( surjection(beta) )).

fof(delta_surjection,axiom,
    ( surjection(delta) )).

fof(alpha_beta_exact,axiom,
    ( exact(alpha,beta) )).

fof(gamma_delta_exact,axiom,
    ( exact(gammma,delta) )).

fof(alpha_g_f_gamma_commute,axiom,
    ( commute(alpha,g,f,gamma) )).

fof(beta_h_g_delta_commute,axiom,
    ( commute(beta,h,g,delta) )).

fof(f_injection,hypothesis,
    ( injection(f) )).

fof(h_injection,hypothesis,
    ( injection(h) )).

fof(g_injection,conjecture,
    ( injection(g) )).

%--------------------------------------------------------------------------