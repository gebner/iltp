%--------------------------------------------------------------------------
% File     : MGT031+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : First movers appear first in an environment
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : 

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   10 (   0 unit)
%            Number of atoms       :   32 (   4 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   24 (   2 ~  ;   2  |;  10  &)
%                                         (   1 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-3 arity)
%            Number of functors    :    8 (   5 constant; 0-2 arity)
%            Number of variables   :   19 (   0 singleton;  18 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP. The number of organizations is positive in the environment when
%----they appear in this environment.
fof(mp_positive_number_when_appear,axiom,
    ( ! [E] : 
        ( environment(E)
       => greater(number_of_organizations(e,appear(an_organisation,E)),zero) ) )).

%----MP. If the number of organizations is positive in the environment,
%----then there is a non-empty subpopulation in the environment.
fof(mp_number_mean_non_empty,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & greater(number_of_organizations(E,T),zero) )
       => ? [S] : 
            ( subpopulation(S,E,T)
            & greater(cardinality_at_time(S,T),zero) ) ) )).

%----MP. There are no EP in the environment before their appearence.
fof(mp_no_EP_before_appearance,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(appear(efficient_producers,E),T) )
       => ~ greater(cardinality_at_time(efficient_producers,T),zero) ) )).

%----MP. There are no FM in the environment before their appearence.
fof(mp_no_FM_before_appearance,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater(appear(first_movers,E),T) )
       => ~ greater(cardinality_at_time(first_movers,T),zero) ) )).

%----MP. The appearence of FM cannot precede the appearence of the first
%----organization in the environment.
fof(mp_FM_not_precede_first,axiom,
    ( ! [E] : 
        ( environment(E)
       => greater_or_equal(appear(first_movers,E),appear(an_organisation,E)) ) )).

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

%----A9. The population contains only first movers and efficient
%----producers.
fof(a9,hypothesis,
    ( ! [E,X,T] : 
        ( ( environment(E)
          & subpopulation(X,E,T)
          & greater(cardinality_at_time(X,T),zero) )
       => ( X = efficient_producers
          | X = first_movers ) ) )).

%----A13. First movers appear sooner in the environment, than efficient
%----producers.
fof(a13,hypothesis,
    ( ! [E] : 
        ( environment(E)
       => greater(appear(efficient_producers,e),appear(first_movers,E)) ) )).

%----GOAL:L13. First movers are the first organizations that appear in the
%----environment.
fof(prove_l13,conjecture,
    ( ! [E] : 
        ( ( environment(E)
          & in_environment(E,appear(an_organisation,E)) )
       => appear(an_organisation,E) = appear(first_movers,E) ) )).

%--------------------------------------------------------------------------
