%--------------------------------------------------------------------------
% File     : MGT040+1 : ILTP v1.1.0
% Domain   : Management (Organisation Theory)
% Problem  : Selection favours FMs above EPs if change is not extreme
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : Selection favors first movers above efficient producers if
%            environmental change is rapid but not extreme during the 
%            observational period. 

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
% Syntax   : Number of formulae    :   16 (   2 unit)
%            Number of atoms       :   60 (   2 equality)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   52 (   8 ~  ;   1  |;  24  &)
%                                         (   0 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   11 (   0 propositional; 1-3 arity)
%            Number of functors    :    6 (   3 constant; 0-2 arity)
%            Number of variables   :   22 (   0 singleton;  22 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP3. If selection favors organizations of a certain propagation
%----strategy, s1, above an other, s2, at the endpoints of all 
%----environments in the observational period, then it favors s1 above 
%----s2 during the whole observational period.  
%----Instantiation: EP = s1 ; FM = s2
fof(mp3_favoured_trategy,axiom,
    ( ! [P] : 
        ( ( observational_period(P)
          & propagation_strategy(first_movers)
          & propagation_strategy(efficient_producers)
          & ! [E] : 
              ( ( environment(E)
                & in_environment(P,E) )
             => selection_favors(efficient_producers,first_movers,end_time(E)) ) )
       => selection_favors(efficient_producers,first_movers,P) ) )).

%----MP5. If environmental change is rapid during an observational period,
%----then no environment in the observational period contains a critical
%----point.
fof(mp5_rapid_change_is_non_critical,axiom,
    ( ! [P] : 
        ( ( observational_period(P)
          & rapid_change(P) )
       => ! [E] : 
            ( ( environment(E)
              & in_environment(P,E) )
           => ~ in_environment(E,critical_point(E)) ) ) )).

%----MP6. If environmental change is not extreme during an observational
%----period, then no environment stays empty during this period.
fof(mp6_not_extreme_change_means_not_empty,axiom,
    ( ! [P] : 
        ( ( observational_period(P)
          & ~ extreme(P) )
       => ! [E] : 
            ( ( environment(E)
              & in_environment(P,E) )
           => ~ empty(E) ) ) )).

%----MP. First movers and efficient producers are organizational sets of a
%----certain propagation strategy.
fof(mp_organizational_sets1,axiom,
    ( propagation_strategy(first_movers) )).

fof(mp_organizational_sets2,axiom,
    ( propagation_strategy(efficient_producers) )).

%----MP. The endpoint of an environment belongs to the environment.
fof(mp_endpoint_in_environment,axiom,
    ( ! [E] : 
        ( environment(E)
       => in_environment(E,end_time(E)) ) )).

%----MP. The critical point can not occur before the environment opens.
fof(mp_critical_point_not_before_opening,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & ~ in_environment(E,critical_point(E)) )
       => greater(critical_point(E),end_time(E)) ) )).

%----MP. If an environment does not remain empty, then organizations appear
%----in it before it ends.
fof(mp_non_empty_means_organisations,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & ~ empty(E) )
       => greater_or_equal(end_time(E),appear(an_organisation,E)) ) )).

%----MP. If appearance of organizations in an environment precedes the end
%----of the environment, then they appear during the environment holds.
fof(mp_appearance_before_end_holds,axiom,
    ( ! [E] : 
        ( ( environment(E)
          & greater_or_equal(end_time(E),appear(an_organisation,E)) )
       => in_environment(E,appear(an_organisation,E)) ) )).

%----MP. If selection favors a group of organizations, s, until a certain
%----point of time in the environment, to, then selection would have also
%----favored "s" until the ending point of this environment if the
%----environment had closed before to was reached.
%----INSTANTIATION: s = FM ; to = critical_point(e)
fof(mp_selection_favours_in_time,axiom,
    ( ! [E,T] : 
        ( ( environment(E)
          & greater_or_equal(T,appear(efficient_producers,E))
          & greater(critical_point(E),T)
          & ( in_environment(E,critical_point(E))
           => selection_favors(first_movers,efficient_producers,T) ) )
       => ( ~ in_environment(E,critical_point(E))
         => selection_favors(first_movers,efficient_producers,end_time(E)) ) ) )).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ( ! [X,Y] : 
        ( greater_or_equal(X,Y)
       => ( greater(X,Y)
          | X = Y ) ) )).

%----MP. on appearance of EP
fof(mp_appearance_of_EP,axiom,
    ( ! [E,T] : 
        ( ( in_environment(E,T)
          & ~ greater(appear(efficient_producers,E),T) )
       => greater_or_equal(T,appear(efficient_producers,E)) ) )).

%----T2. Selection favors first movers above efficient producers
%----between the appearence of first movers and the appearence of efficient
%----producers.
fof(t2,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,T)
          & greater_or_equal(T,appear(first_movers,E))
          & greater(appear(efficient_producers,E),T) )
       => selection_favors(first_movers,efficient_producers,T) ) )).

%----T3. Selection favors first movers above efficient producers
%----between the appearence of efficient producers and the critical point.
fof(t3,hypothesis,
    ( ! [E,T] : 
        ( ( environment(E)
          & in_environment(E,critical_point(E))
          & greater_or_equal(T,appear(efficient_producers,E))
          & greater(critical_point(E),T) )
       => selection_favors(first_movers,efficient_producers,T) ) )).

%----L13. First movers are the first organizations that appear in the
%----environment.
fof(l13,hypothesis,
    ( ! [E] : 
        ( ( environment(E)
          & in_environment(E,appear(an_organisation,E)) )
       => appear(an_organisation,E) = appear(first_movers,E) ) )).

%----GOAL: T9. Selection favors first movers to efficient producers if
%----environmental change is rapid, provided that environmental change
%----during the observational period is not extreme.
fof(prove_t9,conjecture,
    ( ! [P] : 
        ( ( observational_period(P)
          & rapid_change(P)
          & ~ extreme(P) )
       => selection_favors(first_movers,efficient_producers,P) ) )).

%--------------------------------------------------------------------------