%--------------------------------------------------------------------------
% File     : MGT028+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : FMs have a negative growth rate in stable environments
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : First movers have negative growth rate past a certain point
%            of time (also after the appearence of efficient producers) 
%            in stable environments. 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : Theorem
% Rating   : 0.00 v2.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1
%
% Syntax   : Number of formulae    :    3 (   0 unit)
%            Number of atoms       :   23 (   0 equality)
%            Maximal formula depth :   10 (   9 average)
%            Number of connectives :   20 (   0 ~  ;   0  |;  13  &)
%                                         (   0 <=>;   7 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-4 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :   11 (   0 singleton;   7 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----MP. If first movers have negative growth rate past time t1 in a
%----stable environment, then there is also a time, t2, which is after the
%----appearence of EP,  and FM has negative growth rate past t2.
fof(mp_first_movers_negative_growth,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E)
          & ? [T1] : 
              ( in_environment(E,T1)
              & ! [T] : 
                  ( ( subpopulations(first_movers,efficient_producers,E,T)
                    & greater_or_equal(T,T1) )
                 => greater(zero,growth_rate(first_movers,T)) ) ) )
       => ? [T2] : 
            ( greater(T2,appear(efficient_producers,E))
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,T2) )
               => greater(zero,growth_rate(first_movers,T)) ) ) ) )).

%----L11. Efficient producers have positive, while first movers have
%----negative growth rate past a certain point of time in stable 
%----environments.
fof(l11,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( in_environment(E,To)
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,To) )
               => ( greater(growth_rate(efficient_producers,T),zero)
                  & greater(zero,growth_rate(first_movers,T)) ) ) ) ) )).

%----GOAL:L10. First movers have negative growth rate past a certain point
%----of time (also after the appearence of efficient producers) in stable
%----environments.
fof(prove_l10,conjecture,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( greater(To,appear(efficient_producers,E))
            & ! [T] : 
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,To) )
               => greater(zero,growth_rate(first_movers,T)) ) ) ) )).

%--------------------------------------------------------------------------