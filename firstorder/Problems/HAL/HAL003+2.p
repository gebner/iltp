%--------------------------------------------------------------------------
% File     : HAL003+2 : ILTP v1.1.2
% Domain   : Homological Algebra
% Problem  : Short Five Lemma, Part 2
% Version  : [TPTP] axioms : Reduced > Incomplete.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.67 v3.1.0, 1.00 v2.6.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   27 (  14 unit)
%            Number of atoms       :   80 (  16 equality)
%            Maximal formula depth :   16 (   5 average)
%            Number of connectives :   53 (   0 ~  ;   0  |;  30  &)
%                                         (   2 <=>;  21 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-4 arity)
%            Number of functors    :   17 (  14 constant; 0-3 arity)
%            Number of variables   :   69 (   0 singleton;  65 !;   4 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : Remove unnecessary constraints on the diagram
%--------------------------------------------------------------------------
%----Include Standard homological algebra axioms
include('Axioms/HAL001+0.ax').
%--------------------------------------------------------------------------
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

fof(beta_surjection,axiom,
    ( surjection(beta) )).

fof(gamma_delta_exact,axiom,
    ( exact(gammma,delta) )).

fof(alpha_g_f_gamma_commute,axiom,
    ( commute(alpha,g,f,gamma) )).

fof(beta_h_g_delta_commute,axiom,
    ( commute(beta,h,g,delta) )).

fof(f_surjection,hypothesis,
    ( surjection(f) )).

fof(h_surjection,hypothesis,
    ( surjection(h) )).

fof(g_surjection,conjecture,
    ( surjection(g) )).

%--------------------------------------------------------------------------
