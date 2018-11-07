%--------------------------------------------------------------------------
% File     : MGT035+2 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : EPs outcompete FMs in stable environments
% Version  : [PM93] axioms.
% English  : Efficient producers outcompete first movers past a certain
%            time in stable environments. 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing
% Source   : [PM93]
% Names    : THEOREM 4 [PM93]
%          : T4 [PB+94]

% Status   : Theorem
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   20 (   0 unit)
%            Number of atoms       :   95 (  10 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   80 (   5 ~  ;   7  |;  39  &)
%                                         (   2 <=>;  27 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   0 propositional; 1-4 arity)
%            Number of functors    :    9 (   3 constant; 0-2 arity)
%            Number of variables   :   50 (   0 singleton;  47 !;   3 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP. If first movers and efficient producers are present in an
%----environment  at a certain point of time, then this time-point belongs
%----to the the environment.
fof(mp_time_point_in_environment,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T) )
       => in_environment(E,T) ) )).

%----MP. If first movers and efficient producers are present in an
%----environment  at a certain point of time, then then the environment
%----is not empty at this time.
fof(mp_environment_not_empty,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T) )
       => greater(number_of_organizations(E,T),zero) ) )).

%----MP. If there are only first movers and efficient producers in an
%----environment, then the number of organizations is the sum of members
%----in these groups.
fof(mp_only_members,axiom,
    ( ! [E,X,T] : 
        ( ( environment(E)
          & subpopulation(X,E,T)
          & ( greater(cardinality_at_time(X,T),zero)
           => ( X = efficient_producers
              | X = first_movers ) ) )
       => number_of_organizations(E,T) = sum(cardinality_at_time(first_movers,T),cardinality_at_time(efficient_producers,T)) ) )).

%----MP. First movers and efficient producers are organisational groups.
fof(mp_FM_and_EP_organisational,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T) )
       => ( subpopulation(first_movers,E,T)
          & subpopulation(efficient_producers,E,T) ) ) )).

%----MP. If a constant "a" is the sum of "b" and "c", then either "b" and
%----"c" are also constants, or one of the two additives increases, while
%----the other decreases.
fof(mp_abc_sum_increase,axiom,
    ( ! [A,B,C] : 
        ( ( A = sum(B,C)
          & constant(A) )
       => ( ( constant(B)
            & constant(C) )
          | ( increases(B)
            & decreases(C) )
          | ( decreases(B)
            & increases(C) ) ) ) )).

%----MP. If the number of a non-empty subpopulation is constant or
%----increases or decreases, then its growth rate is, respectively, zero 
%----or positive or negative.
fof(mp_growth_rate,axiom,
    ( ! [X,E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero) )
       => ( ( constant(cardinality_at_time(X,T))
           => growth_rate(X,T) = zero )
          & ( increases(cardinality_at_time(X,T))
           => greater(growth_rate(X,T),zero) )
          & ( decreases(cardinality_at_time(X,T))
           => greater(zero,growth_rate(X,T)) ) ) ) )).

%----MP. If a population in a certain environment consists of a first mover
%----and an efficient producer subpopulation at a certain point in time,
%----then the number of efficient producers are both positive at this time.
fof(mp_positive_number_of_organizations,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T) )
       => ( greater(cardinality_at_time(first_movers,T),zero)
          & greater(cardinality_at_time(efficient_producers,T),zero) ) ) )).

%----MP. on inequality
fof(mp6_1,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & X = Y ) )).

fof(mp6_2,axiom,
    ( ! [X,Y] : ~ ( greater(X,Y)
        & greater(Y,X) ) )).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ( ! [X,Y,Z] : 
        ( ( greater(X,Y)
          & greater(Y,Z) )
       => greater(X,Z) ) )).

%----MP. times in environment
fof(mp_times_in_environment,axiom,
    ( ! [E,T1,T2] : 
        ( ( in_environment(E,T1)
          & in_environment(E,T2) )
       => ( greater(T2,T1)
          | T2 = T1
          | greater(T1,T2) ) ) )).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ( ! [X,Y] : 
        ( greater_or_equal(X,Y)
      <=> ( greater(X,Y)
          | X = Y ) ) )).

%----MP. on equilibrium
fof(mp_equilibrium,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & greater_or_equal(T,equilibrium(E)) )
       => ~ greater(equilibrium(E),T) ) )).

%----D2. A subpopulation outcompetes an other in an environment at a 
%----certain time, if and only if, it has non-negative growth rate while 
%----the other subpopulation has negative growth rate.
fof(d2,hypothesis,
    ( ! [E,S1,S2,T] : 
        ( ( environment(E)
          & subpopulations(S1,S2,E,T) )
       => ( ( greater_or_equal(growth_rate(S2,T),zero)
            & greater(zero,growth_rate(S1,T)) )
        <=> outcompetes(S2,S1,T) ) ) )).

%----A4. Resource availability decreases until equilibrium is reached.
fof(a4,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(number_of_organizations(E,T),zero) )
       => ( ( greater(equilibrium(E),T)
           => decreases(resources(E,T)) )
          & ( ~ greater(equilibrium(E),T)
           => constant(resources(E,T)) ) ) ) )).

%----A5. The state of equilibrium is reached in stable environments.
fof(a5,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [T] : 
            ( in_environment(E,T)
            & greater_or_equal(T,equilibrium(E)) ) ) )).

%----A7. If resource availability decreases, then the number of
%----organizations increases or constant.
fof(a7,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T) )
       => ( ( decreases(resources(E,T))
           => ~ decreases(number_of_organizations(E,T)) )
          & ( constant(resources(E,T))
           => constant(number_of_organizations(E,T)) ) ) ) )).

%----A11. The population contains only first movers and efficient producers.
fof(a11,hypothesis,
    ( ! [E,X,T] : 
        ( ( environment(E)
          & subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero) )
       => ( X = efficient_producers
          | X = first_movers ) ) )).

%----L1. The growth rate of efficient producers exceeds the growth rate of
%----first movers past a certain time in stable environments.
fof(l1,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( in_environment(E,To)
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,To) )
               => greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ) ) )).

%----GOAL: T4. Efficient producers outcompete first movers past a certain
%----point of time in stable environments.
fof(prove_t4,conjecture,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( in_environment(E,To)
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,To) )
               => outcompetes(efficient_producers,first_movers,T) ) ) ) )).

%--------------------------------------------------------------------------
