%--------------------------------------------------------------------------
% File     : MGT061+1 : ILTP v1.1.1
% Domain   : Management (Organisation Theory)
% Problem  : Conditions for an in reasing hazard of mortality
% Version  : [Han98] axioms.
% English  : The hazard of mortality increases with age for an unendowed 
%            organization with a fragile position  in drifting environments.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : THEOREM 7 [Han98]

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.7.0, 0.17 v2.6.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   18 (   5 unit)
%            Number of atoms       :   65 (  12 equality)
%            Maximal formula depth :   12 (   5 average)
%            Number of connectives :   58 (  11 ~  ;   4  |;  22  &)
%                                         (   7 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   0 propositional; 1-3 arity)
%            Number of functors    :    9 (   7 constant; 0-2 arity)
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

%--- Case: Fragile and robust positions in drifting environments.
%--- Retracting A16!
%----
%----An organization's position is fragile if and only if it does not
%----provide advantage after age `sigma'.
%----
%----Added case:  ( smaller_or_equal(age(X,T),sigma) 
%----            => positional_advantage(X,T) )
fof(definition_3,axiom,
    ( ! [X] : 
        ( fragile_position(X)
      <=> ! [T] : 
            ( ( smaller_or_equal(age(X,T),sigma)
             => positional_advantage(X,T) )
            & ( greater(age(X,T),sigma)
             => ~ positional_advantage(X,T) ) ) ) )).

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

%----The levels of hazard of mortality are ordered:
%----
%----Split over 5 separate formulas because TPTP gives an error on top 
%----level occurrences of `&'.
fof(assumption_18a,axiom,
    ( greater(high,mod1) )).

fof(assumption_18b,axiom,
    ( greater(mod1,low) )).

fof(assumption_18c,axiom,
    ( greater(low,very_low) )).

fof(assumption_18d,axiom,
    ( greater(high,mod2) )).

fof(assumption_18e,axiom,
    ( greater(mod2,low) )).

%----Problem theorems
%----Fragile position without endowment: The hazard of mortality
%----increases with age for an unendowed organization with a fragile
%----position  in drifting environments.
%----From D2, D3 and A1, A13, A15, A17, A18 (text says D1,2 and A1,2,13-15,
%----A17-19; also needs D<=, MP>com, MP>tra).
%----
%----Added (hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)).
fof(theorem_7,conjecture,
    ( ! [X,T0,T1,T2] : 
        ( ( organization(X)
          & fragile_position(X)
          & ~ has_endowment(X)
          & age(X,T0) = zero
          & greater(sigma,zero)
          & smaller_or_equal(age(X,T1),sigma)
          & greater(age(X,T2),sigma) )
       => ( greater(hazard_of_mortality(X,T2),hazard_of_mortality(X,T1))
          & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0) ) ) )).

%--------------------------------------------------------------------------
