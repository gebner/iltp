%--------------------------------------------------------------------------
% File     : HAL006+1 : ILTP v1.1.1
% Domain   : Homological Algebra
% Problem  : Lemma for the short Five Lemma, Part 2
% Version  : [TPTP] axioms.
% English  :

% Refs     : [Wei94] Weibel (1994), An Introduction to Homological Algebra
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   33 (  17 unit)
%            Number of atoms       :  100 (  23 equality)
%            Maximal formula depth :   16 (   5 average)
%            Number of connectives :   67 (   0 ~  ;   0  |;  41  &)
%                                         (   2 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-4 arity)
%            Number of functors    :   17 (  14 constant; 0-3 arity)
%            Number of variables   :   79 (   0 singleton;  68 !;  11 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
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

fof(f_surjection,hypothesis,
    ( surjection(f) )).

fof(h_surjection,hypothesis,
    ( surjection(h) )).

fof(lemma3,axiom,
    ( ! [E] : 
        ( element(E,e)
       => ? [R,B1] : 
            ( element(R,r)
            & apply(delta,E) = R
            & element(B1,b)
            & apply(h,apply(beta,B1)) = R
            & apply(delta,apply(g,B1)) = R ) ) )).

fof(lemma8,axiom,
    ( ! [E] : 
        ( element(E,e)
       => ? [B1,E1,A] : 
            ( element(B1,b)
            & element(E1,e)
            & subtract(e,apply(g,B1),E) = E1
            & element(A,a)
            & apply(gamma,apply(f,A)) = E1
            & apply(g,apply(alpha,A)) = E1 ) ) )).

fof(lemma12,conjecture,
    ( ! [E] : 
        ( element(E,e)
       => ? [B1,B2] : 
            ( element(B1,b)
            & element(B2,b)
            & apply(g,subtract(b,B1,B2)) = E ) ) )).

%--------------------------------------------------------------------------
