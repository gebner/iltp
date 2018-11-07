%--------------------------------------------------------------------------
% File     : MGT065+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Long-run hazard of mortality
% Version  : [Han98] axioms.
% English  : The long-run hazard of mortality for an endowed organization with
%            either a fragile or a robust position in a drifting environment
%            exceeds the hazard near founding.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : THEOREM 11 [Han98]

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   17 (   5 unit)
%            Number of atoms       :   70 (  12 equality)
%            Maximal formula depth :   18 (   5 average)
%            Number of connectives :   61 (   8 ~  ;   5  |;  28  &)
%                                         (   7 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   13 (   0 propositional; 1-3 arity)
%            Number of functors    :   11 (   9 constant; 0-2 arity)
%            Number of variables   :   29 (   0 singleton;  29 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : See MGT042+1.p for the mnemonic names.
%--------------------------------------------------------------------------
include('Axioms/MGT001+0.ax').
%--------------------------------------------------------------------------
%----Problem Axioms
%----An endowment provides an immunity that lasts until an
%----organization's age exceeds `eta'.
fof(definition_1,axiom,
    ( ! [X] : 
        ( has_endowment(X)
      <=> ! [T] : 
            ( organization(X)
            & ( smaller_or_equal(age(X,T),eta)
             => has_immunity(X,T) )
            & ( greater(age(X,T),eta)
             => ~ has_immunity(X,T) ) ) ) )).

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
%----The long-run hazard of mortality for an endowed organization with 
%----either a fragile or a robust position in a drifting environment
%----exceeds the hazard near founding.
%----From D1, D2, A13, A15, A17, A18 (text says D1,2,4 and A1,2,13-15,17-19;
%----also needs D<, D<=, MP>str, MP>com, MP>tra). 
%----
%----Expanding (age(X,T1) <= min(eta,sigma,tau)) and 
%----expanding (age(X,T1) > max(eta,sigma,tau)); 
%----Text says RB(x) & FG(x) which contradicts lemma 10; changed to |.
%----added (hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0)).
fof(theorem_11,conjecture,
    ( ! [X,T0,T1,T2] : 
        ( ( organization(X)
          & ( robust_position(X)
            | fragile_position(X) )
          & has_endowment(X)
          & age(X,T0) = zero
          & greater(sigma,zero)
          & greater(tau,zero)
          & greater(eta,zero)
          & smaller_or_equal(age(X,T1),sigma)
          & smaller_or_equal(age(X,T1),tau)
          & smaller_or_equal(age(X,T1),eta)
          & greater(age(X,T2),sigma)
          & greater(age(X,T2),tau)
          & greater(age(X,T2),eta) )
       => ( greater(hazard_of_mortality(X,T2),hazard_of_mortality(X,T1))
          & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0) ) ) )).

%--------------------------------------------------------------------------
