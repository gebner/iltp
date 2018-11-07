%--------------------------------------------------------------------------
% File     : MGT062+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Condictions for decreasing hazard of mortality
% Version  : [Han98] axioms.
% English  : If environmental drift destroys alignment exactly when advantage 
%            can be gained from occupancy of a robust position, then the 
%            hazard of mortality for an unendowed organization with a robust 
%            position decreases with age.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : THEOREM 8 [Han98]

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.56 v2.7.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   14 (   1 unit)
%            Number of atoms       :   63 (  13 equality)
%            Maximal formula depth :   14 (   6 average)
%            Number of connectives :   60 (  11 ~  ;   4  |;  24  &)
%                                         (   7 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   0 propositional; 1-3 arity)
%            Number of functors    :   10 (   8 constant; 0-2 arity)
%            Number of variables   :   31 (   0 singleton;  31 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----An unendowed organization never possesses immunity.
fof(assumption_1,axiom,
    ( ! [X,T] : 
        ( ( organization(X)
          & ~ has_endowment(X) )
       => ~ has_immunity(X,T) ) )).

%----Two states of the environment are dissimilar for an organization
%----if and only if the organization cannot be aligned to both.
%----
%----Added quantification over X.
fof(definition_2,axiom,
    ( ! [X,T0,T] : 
        ( dissimilar(X,T0,T)
      <=> ( organization(X)
          & ~ ( is_aligned(X,T0)
            <=> is_aligned(X,T) ) ) ) )).

%----An organization is aligned with the state of the environment at
%----its time of founding. 
fof(assumption_13,axiom,
    ( ! [X,T] : 
        ( ( organization(X)
          & age(X,T) = zero )
       => is_aligned(X,T) ) )).

%----Environmental drift: the environments at times separated by more
%----than `sigma' are dissimilar. 
fof(assumption_15,axiom,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & age(X,T0) = zero )
       => ( greater(age(X,T),sigma)
        <=> dissimilar(X,T0,T) ) ) )).

%----An organization's position is robust if and only if it provides
%----positional advantage only after age `tau'.
%----
%----Text says fragile_position(X) instead of robust_position(X).
%----Interchanged ~ positional_advantage(X,T) and positional_advantage(X,T).
fof(definition_4,axiom,
    ( ! [X] : 
        ( robust_position(X)
      <=> ! [T] : 
            ( ( smaller_or_equal(age(X,T),tau)
             => ~ positional_advantage(X,T) )
            & ( greater(age(X,T),tau)
             => positional_advantage(X,T) ) ) ) )).

%----An organization's immunity. alignment of capability with the
%----current state of the environment and positional advantage jointly 
%----affect the hazard of mortality with the following ordinal scaling:
fof(assumption_17,axiom,
    ( ! [X,T] : 
        ( organization(X)
       => ( ( has_immunity(X,T)
           => hazard_of_mortality(X,T) = very_low )
          & ( ~ has_immunity(X,T)
           => ( ( ( is_aligned(X,T)
                  & positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = low )
              & ( ( ~ is_aligned(X,T)
                  & positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = mod1 )
              & ( ( is_aligned(X,T)
                  & ~ positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = mod2 )
              & ( ( ~ is_aligned(X,T)
                  & ~ positional_advantage(X,T) )
               => hazard_of_mortality(X,T) = high ) ) ) ) ) )).

%----Position dominates alignment:
fof(assumption_19,axiom,
    ( greater(mod2,mod1) )).

%----Problem theorems
%----Robust position without endowment when (`sigma' = `tau'): If
%----environmental drift destroys alignment exactly when advantage can 
%----be gained from occupancy of a robust position (`sigma' = `tau'), then 
%----the hazard of mortality for an unendowed organization with a
%----robust position decreases with age.
%----From D2, D4 and A1, A13, A15, A17 (text says D1,2 and A1,2,13-15,17-19;
%----also needs D<, D<=).
%----
%----Added (`sigma' = `tau') in antecedent
%----and (hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)).
fof(theorem_8,conjecture,
    ( ! [X,T0,T1,T2] : 
        ( ( organization(X)
          & robust_position(X)
          & ~ has_endowment(X)
          & age(X,T0) = zero
          & greater(sigma,zero)
          & greater(tau,zero)
          & sigma = tau
          & smaller_or_equal(age(X,T1),sigma)
          & greater(age(X,T2),sigma) )
       => ( smaller(hazard_of_mortality(X,T2),hazard_of_mortality(X,T1))
          & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0) ) ) )).

%--------------------------------------------------------------------------
