%--------------------------------------------------------------------------
% File     : MGT025+1 : ILTP v1.1.2
% Domain   : Management (Organisation Theory)
% Problem  : Constant population means opposite growth rates
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : If one of the two subpopulations has positive growth rate, 
%            then the other subpopulation must have negative growth rate 
%            if the total number of organizations is constant. 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.50 v2.6.0, 0.43 v2.5.0, 0.38 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   0 unit)
%            Number of atoms       :   49 (   9 equality)
%            Maximal formula depth :    9 (   7 average)
%            Number of connectives :   41 (   0 ~  ;   6  |;  23  &)
%                                         (   0 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-4 arity)
%            Number of functors    :    7 (   3 constant; 0-2 arity)
%            Number of variables   :   20 (   0 singleton;  20 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
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

%----MP. First movers and efficient producers are subpopulations.
fof(mp_subpopulations,axiom,
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

%----MP. If the population is composed of first movers and of efficient
%----producers, then their number is not zero.
fof(mp_non_zero_producers,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T) )
       => ( greater(cardinality_at_time(first_movers,T),zero)
          & greater(cardinality_at_time(efficient_producers,T),zero) ) ) )).

%----MP. The time points when FM and EP are present in the environment
%----occur during the environment sustains.
fof(mp_time_point_occur,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T) )
       => in_environment(E,T) ) )).

%----A9. The population contains only first movers and efficient producers.
fof(a9,hypothesis,
    ( ! [E,X,T] : 
        ( ( environment(E)
          & subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero) )
       => ( X = efficient_producers
          | X = first_movers ) ) )).

%----GOAL: L7. If one of the two subpopulations has positive growth rate, 
%----then the other subpopulation must have negative growth rate if the 
%----total number of organizations is constant.
fof(prove_l7,conjecture,
    ( ! [E,T] : 
        ( ( environment(E)
          & subpopulations(first_movers,efficient_producers,E,T)
          & constant(number_of_organizations(E,T)) )
       => ( ( growth_rate(first_movers,T) = zero
            & growth_rate(efficient_producers,T) = zero )
          | ( greater(growth_rate(first_movers,T),zero)
            & greater(zero,growth_rate(efficient_producers,T)) )
          | ( greater(growth_rate(efficient_producers,T),zero)
            & greater(zero,growth_rate(first_movers,T)) ) ) ) )).

%--------------------------------------------------------------------------
