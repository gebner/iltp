%--------------------------------------------------------------------------
% File     : MGT027+1 : ILTP v1.1.1
% Domain   : Management (Organisation Theory)
% Problem  : The FM set contracts in stable environments
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : The first mover set begins to contract past a certain time 
%            in stable environments. 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.17 v2.6.0, 0.29 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    9 (   0 unit)
%            Number of atoms       :   40 (   1 equality)
%            Maximal formula depth :   10 (   7 average)
%            Number of connectives :   31 (   0 ~  ;   1  |;  19  &)
%                                         (   1 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-4 arity)
%            Number of functors    :    6 (   3 constant; 0-2 arity)
%            Number of variables   :   21 (   0 singleton;  19 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP on "contracts from"
fof(mp_contracts_from,axiom,
    ( ! [E,To] : 
        ( ( environment(E)
          & stable(E)
          & in_environment(E,To)
          & ! [T] : 
              ( ( greater(cardinality_at_time(first_movers,T),zero)
                & greater_or_equal(T,To) )
             => greater(zero,growth_rate(first_movers,T)) ) )
       => contracts_from(To,first_movers) ) )).

%----MP. If FM and EP have members in the environment, then they are
%----non-empty subpopulations.
fof(mp_non_empty_fm_and_ep,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(cardinality_at_time(first_movers,T),zero)
          & greater(cardinality_at_time(efficient_producers,T),zero) )
       => subpopulations(first_movers,efficient_producers,E,T) ) )).

%----MP. Stable environments are long.
fof(mp_long_stable_environments,axiom,
    ( ! [E,T1,T2] : 
        ( ( environment(E)
          & stable(E)
          & in_environment(E,T1)
          & greater(T2,T1) )
       => in_environment(E,T2) ) )).

%----MP. Efficient producers appear in stable environments.
fof(mp_EP_in_stable_environments,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => in_environment(E,appear(efficient_producers,E)) ) )).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ( ! [X,Y,Z] : 
        ( ( greater(X,Y)
          & greater(Y,Z) )
       => greater(X,Z) ) )).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ( ! [X,Y] : 
        ( greater_or_equal(X,Y)
      <=> ( greater(X,Y)
          | X = Y ) ) )).

%----T6. Once appeared in an environment, efficient producers do not
%----disappear.
fof(t6,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater_or_equal(T,appear(efficient_producers,E)) )
       => greater(cardinality_at_time(efficient_producers,T),zero) ) )).

%----L10. First movers have negative growth rate past a certain point of
%----time (also after the appearence of efficient producers) in stable
%----environments.
fof(l10,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( greater(To,appear(efficient_producers,E))
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,To) )
               => greater(zero,growth_rate(first_movers,T)) ) ) ) )).

%----GOAL: L9. The first mover set begins to contract past a certain time 
%----in stable environments.
fof(prove_l9,conjecture,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( greater(To,appear(efficient_producers,E))
            & contracts_from(To,first_movers) ) ) )).

%--------------------------------------------------------------------------
