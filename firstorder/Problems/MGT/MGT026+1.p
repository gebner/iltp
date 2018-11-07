%--------------------------------------------------------------------------
% File     : MGT026+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Selection favors efficient producers past the critical point
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.22 v2.7.0, 0.33 v2.6.0, 0.43 v2.5.0, 0.38 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   11 (   0 unit)
%            Number of atoms       :   44 (   3 equality)
%            Maximal formula depth :   10 (   6 average)
%            Number of connectives :   34 (   1 ~  ;   1  |;  20  &)
%                                         (   1 <=>;  11 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-4 arity)
%            Number of functors    :    7 (   3 constant; 0-2 arity)
%            Number of variables   :   27 (   0 singleton;  27 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP1. Selection favors subpopulations with higher growth rates.
fof(mp1_high_growth_rates,axiom,
    ( ! [E,S1,S2,T] : 
        ( ( environment(E)
          & subpopulations(S1,S2,E,T)
          & greater(growth_rate(S2,T),growth_rate(S1,T)) )
       => selection_favors(S2,S1,T) ) )).

%----MP2. Selection favors organizational sets with members to set without
%----members.
fof(mp2_favour_members,axiom,
    ( ! [E,S1,S2,T] : 
        ( ( environment(E)
          & subpopulation(S1,E,T)
          & subpopulation(S2,E,T)
          & greater(cardinality_at_time(S1,T),zero)
          & cardinality_at_time(S2,T) = zero )
       => selection_favors(S1,S2,T) ) )).

%----MP. If FM and EP have members in the environment, then they are
%----non-empty subpopulations.
fof(mp_non_empty_fm_and_ep,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(cardinality_at_time(first_movers,T),zero)
          & greater(cardinality_at_time(efficient_producers,T),zero) )
       => subpopulations(first_movers,efficient_producers,E,T) ) )).

%----MP. The number of first movers cannot be negative.
fof(mp_first_movers_exist,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T) )
       => greater_or_equal(cardinality_at_time(first_movers,T),zero) ) )).

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T) )
       => ( subpopulation(first_movers,E,T)
          & subpopulation(efficient_producers,E,T) ) ) )).

%----MP. The critical point cannot precede the appearence of efficient
%----producers.
fof(mp_critical_point_after_EP,axiom,
    ( ! [E] : 
        ( environment(E)
       => greater_or_equal(critical_point(E),appear(efficient_producers,E)) ) )).

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

%----D1(<=). If a time-point is the critical point of the environment,
%----then it is the earliest time past which the growth rate of efficient
%----producers permanently exceeds growth rate of first movers.
fof(d1,hypothesis,
    ( ! [E,Tc] : 
        ( ( environment(E)
          & Tc = critical_point(E) )
       => ( ~ greater(growth_rate(efficient_producers,Tc),growth_rate(first_movers,Tc))
          & ! [T] : 
              ( ( subpopulations(first_movers,efficient_producers,E,T)
                & greater(T,Tc) )
             => greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ) ) )).

%----T6. Once appeared in an environment, efficient producers do not
%----disappear.
fof(t6,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater_or_equal(T,appear(efficient_producers,E)) )
       => greater(cardinality_at_time(efficient_producers,T),zero) ) )).

%----GOAL: L8. Selection favors efficient producers above first movers
%----past the critical point.
fof(prove_l8,conjecture,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(T,critical_point(E)) )
       => selection_favors(efficient_producers,first_movers,T) ) )).

%--------------------------------------------------------------------------
