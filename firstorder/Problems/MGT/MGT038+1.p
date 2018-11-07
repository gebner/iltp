%--------------------------------------------------------------------------
% File     : MGT038+1 : ILTP v1.1.1
% Domain   : Management (Organisation Theory)
% Problem  : FMs become extinct in stable environments
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : First movers become extinct past a certain point in time 
%            in stable environments. 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :    8 (   1 unit)
%            Number of atoms       :   27 (   2 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   19 (   0 ~  ;   0  |;  12  &)
%                                         (   0 <=>;   7 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-2 arity)
%            Number of functors    :    9 (   7 constant; 0-2 arity)
%            Number of variables   :   15 (   0 singleton;  12 !;   3 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP7. The cardinality of the first mover set is always integer.
fof(mp7_first_movers_exist,axiom,
    ( finite_set(first_movers) )).

%----MP. First movers appear in stable environments.
fof(mp_stable_first_movers,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => in_environment(E,appear(first_movers,E)) ) )).

%----MP. If a set with finitely many elements always contracts past a
%----certain point of time, then it becomes empty sooner or later.
fof(mp_contracting_time,axiom,
    ( ! [S,To] : 
        ( ( finite_set(S)
          & contracts_from(To,S) )
       => ? [T2] : 
            ( greater(T2,To)
            & cardinality_at_time(s,t2) = zero ) ) )).

%----MP. Stable environments are long.
fof(mp_long_stable_environments,axiom,
    ( ! [E,T1,T2] : 
        ( ( environment(E)
          & stable(E)
          & in_environment(E,T1)
          & greater(T2,T1) )
       => in_environment(E,T2) ) )).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ( ! [X,Y,Z] : 
        ( ( greater(X,Y)
          & greater(Y,Z) )
       => greater(X,Z) ) )).

%----L9. The first mover set begins to contract past a certain time in
%----stable environments.
fof(l9,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( greater(To,appear(efficient_producers,E))
            & contracts_from(To,first_movers) ) ) )).

%----A13. First movers appear sooner in the environment, than efficient
%----producers.
fof(a13,hypothesis,
    ( ! [E] : 
        ( environment(E)
       => greater(appear(efficient_producers,e),appear(first_movers,E)) ) )).

%----GOAL: T7. First movers disappear past a certain time after their
%----appearence in stable environments.
fof(prove_t7,conjecture,
    ( ! [E] : 
        ( ( environment(E)
          & stable(E) )
       => ? [To] : 
            ( in_environment(E,To)
            & greater(To,appear(first_movers,E))
            & cardinality_at_time(first_movers,to) = zero ) ) )).

%--------------------------------------------------------------------------
