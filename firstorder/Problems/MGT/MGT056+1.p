%--------------------------------------------------------------------------
% File     : MGT056+1 : ILTP v1.1.1
% Domain   : Management (Organisation Theory)
% Problem  : Conditions for a constant then jumping hazard of mortality 2
% Version  : [Han98] axioms.
% English  : When (`eta' >= `sigma') in a drifting environment, an endowed
%            organization's hazard of mortality remains constant until age
%            `eta' and then jumps to a higher level in a drifting environment.

% Refs     : [Kam00] Kamps (2000), Email to G. Sutcliffe
%            [CH00]  Carroll & Hannan (2000), The Demography of Corporation
%            [Han98] Hannan (1998), Rethinking Age Dependence in Organizati
% Source   : [Kam00]
% Names    : LEMMA 9 [Han98]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.17 v2.6.0, 0.33 v2.5.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   10 (   0 unit)
%            Number of atoms       :   39 (   6 equality)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   32 (   3 ~  ;   4  |;  15  &)
%                                         (   4 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :   25 (   0 singleton;  25 !;   0 ?)
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

%----An organization's hazard of mortality is constant during periods
%----in which it has immunity.
fof(assumption_2,axiom,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & has_immunity(X,T0)
          & has_immunity(X,T) )
       => hazard_of_mortality(X,T0) = hazard_of_mortality(X,T) ) )).

%----An organization's hazard of mortality is lower during periods in
%----which it has immunity than in periods in which it does not.
fof(assumption_3,axiom,
    ( ! [X,T0,T] : 
        ( ( organization(X)
          & has_immunity(X,T0)
          & ~ has_immunity(X,T) )
       => greater(hazard_of_mortality(X,T),hazard_of_mortality(X,T0)) ) )).

%----Problem theorems
%----When (`eta' >= `sigma') in a drifting environment, an endowed
%----organization's hazard of mortality remains constant until age
%----`eta' and then jumps to a higher level in a drifting environment.
%----From D1, A2, A3 (text says D1-2, A1-3, 13-16; also needs D<, D<=, D>=, 
%----MP>str, MP>com, MP>tra).
fof(lemma_9,conjecture,
    ( ! [X,T0,T1,T2] : 
        ( ( organization(X)
          & has_endowment(X)
          & age(X,T0) = zero
          & smaller_or_equal(age(X,T1),eta)
          & greater(age(X,T2),eta)
          & greater_or_equal(eta,sigma)
          & greater(sigma,zero) )
       => ( greater(hazard_of_mortality(X,T2),hazard_of_mortality(X,T1))
          & hazard_of_mortality(X,T1) = hazard_of_mortality(X,T0) ) ) )).

%--------------------------------------------------------------------------
