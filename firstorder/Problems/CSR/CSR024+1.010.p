%------------------------------------------------------------------------------
% File     : CSR024+1.010 : ILTP v1.1.2
% Domain   : Commonsense Reasoning
% Problem  : Multiple trolleys, size 10
% Version  : [Mue05] axioms : Especial.
% English  : Each agent pushes and pulls, so all trolleys spin together.

% Refs     : [Mue05] Mueller (2005), Email to Geoff Sutcliffe
% Source   : [Mue05]
% Names    : 

% Status   : Theorem 
% Rating   : 0.82 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   49 (  18 unit)
%            Number of atoms       :  302 ( 171 equality)
%            Maximal formula depth :   91 (   8 average)
%            Number of connectives :  408 ( 155 ~  ;  29  |; 196  &)
%                                         (  16 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   13 (   0 propositional; 2-4 arity)
%            Number of functors    :   36 (  30 constant; 0-2 arity)
%            Number of variables   :   90 (   0 singleton;  77 !;  13 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments :
%------------------------------------------------------------------------------
%----Include standard discrete event calculus axioms
include('Axioms/CSR001+0.ax').
%----Include axioms for supermarket trolley scenario for multiple trolleys
include('Axioms/CSR001+3.ax').
%------------------------------------------------------------------------------
fof(plus0_0,axiom,
    ( plus(n0,n0) = n0 )).

fof(plus0_1,axiom,
    ( plus(n0,n1) = n1 )).

fof(plus0_2,axiom,
    ( plus(n0,n2) = n2 )).

fof(plus0_3,axiom,
    ( plus(n0,n3) = n3 )).

fof(plus1_1,axiom,
    ( plus(n1,n1) = n2 )).

fof(plus1_2,axiom,
    ( plus(n1,n2) = n3 )).

fof(plus1_3,axiom,
    ( plus(n1,n3) = n4 )).

fof(plus2_2,axiom,
    ( plus(n2,n2) = n4 )).

fof(plus2_3,axiom,
    ( plus(n2,n3) = n5 )).

fof(plus3_3,axiom,
    ( plus(n3,n3) = n6 )).

fof(symmetry_of_plus,axiom,
    ( ! [X,Y] : plus(X,Y) = plus(Y,X) )).

fof(less_or_equal,axiom,
    ( ! [X,Y] : 
        ( less_or_equal(X,Y)
      <=> ( less(X,Y)
          | X = Y ) ) )).

fof(less0,axiom,
    ( ~ ( ? [X] : less(X,n0) ) )).

fof(less1,axiom,
    ( ! [X] : 
        ( less(X,n1)
      <=> less_or_equal(X,n0) ) )).

fof(less2,axiom,
    ( ! [X] : 
        ( less(X,n2)
      <=> less_or_equal(X,n1) ) )).

fof(less3,axiom,
    ( ! [X] : 
        ( less(X,n3)
      <=> less_or_equal(X,n2) ) )).

fof(less4,axiom,
    ( ! [X] : 
        ( less(X,n4)
      <=> less_or_equal(X,n3) ) )).

fof(less5,axiom,
    ( ! [X] : 
        ( less(X,n5)
      <=> less_or_equal(X,n4) ) )).

fof(less6,axiom,
    ( ! [X] : 
        ( less(X,n6)
      <=> less_or_equal(X,n5) ) )).

fof(less7,axiom,
    ( ! [X] : 
        ( less(X,n7)
      <=> less_or_equal(X,n6) ) )).

fof(less8,axiom,
    ( ! [X] : 
        ( less(X,n8)
      <=> less_or_equal(X,n7) ) )).

fof(less9,axiom,
    ( ! [X] : 
        ( less(X,n9)
      <=> less_or_equal(X,n8) ) )).

fof(less_property,axiom,
    ( ! [X,Y] : 
        ( less(X,Y)
      <=> ( ~ less(Y,X)
          & Y != X ) ) )).

fof(happens_all_defn,axiom,
    ( ! [Event,Time] : 
        ( happens(Event,Time)
      <=> ( ( Event = pull(agent1,trolley1)
            & Time = n0 )
          | ( Event = push(agent1,trolley1)
            & Time = n0 )
          | ( Event = pull(agent2,trolley2)
            & Time = n0 )
          | ( Event = push(agent2,trolley2)
            & Time = n0 )
          | ( Event = pull(agent3,trolley3)
            & Time = n0 )
          | ( Event = push(agent3,trolley3)
            & Time = n0 )
          | ( Event = pull(agent4,trolley4)
            & Time = n0 )
          | ( Event = push(agent4,trolley4)
            & Time = n0 )
          | ( Event = pull(agent5,trolley5)
            & Time = n0 )
          | ( Event = push(agent5,trolley5)
            & Time = n0 )
          | ( Event = pull(agent6,trolley6)
            & Time = n0 )
          | ( Event = push(agent6,trolley6)
            & Time = n0 )
          | ( Event = pull(agent7,trolley7)
            & Time = n0 )
          | ( Event = push(agent7,trolley7)
            & Time = n0 )
          | ( Event = pull(agent8,trolley8)
            & Time = n0 )
          | ( Event = push(agent8,trolley8)
            & Time = n0 )
          | ( Event = pull(agent9,trolley9)
            & Time = n0 )
          | ( Event = push(agent9,trolley9)
            & Time = n0 )
          | ( Event = pull(agent10,trolley10)
            & Time = n0 )
          | ( Event = push(agent10,trolley10)
            & Time = n0 ) ) ) )).

%----Initial conditions
fof(initial_cond,hypothesis,
    ( ~ holdsAt(forwards(trolley1),n0)
    & ~ holdsAt(backwards(trolley1),n0)
    & ~ holdsAt(spinning(trolley1),n0)
    & ~ holdsAt(forwards(trolley2),n0)
    & ~ holdsAt(backwards(trolley2),n0)
    & ~ holdsAt(spinning(trolley2),n0)
    & ~ holdsAt(forwards(trolley3),n0)
    & ~ holdsAt(backwards(trolley3),n0)
    & ~ holdsAt(spinning(trolley3),n0)
    & ~ holdsAt(forwards(trolley4),n0)
    & ~ holdsAt(backwards(trolley4),n0)
    & ~ holdsAt(spinning(trolley4),n0)
    & ~ holdsAt(forwards(trolley5),n0)
    & ~ holdsAt(backwards(trolley5),n0)
    & ~ holdsAt(spinning(trolley5),n0)
    & ~ holdsAt(forwards(trolley6),n0)
    & ~ holdsAt(backwards(trolley6),n0)
    & ~ holdsAt(spinning(trolley6),n0)
    & ~ holdsAt(forwards(trolley7),n0)
    & ~ holdsAt(backwards(trolley7),n0)
    & ~ holdsAt(spinning(trolley7),n0)
    & ~ holdsAt(forwards(trolley8),n0)
    & ~ holdsAt(backwards(trolley8),n0)
    & ~ holdsAt(spinning(trolley8),n0)
    & ~ holdsAt(forwards(trolley9),n0)
    & ~ holdsAt(backwards(trolley9),n0)
    & ~ holdsAt(spinning(trolley9),n0)
    & ~ holdsAt(forwards(trolley10),n0)
    & ~ holdsAt(backwards(trolley10),n0)
    & ~ holdsAt(spinning(trolley10),n0) )).

fof(not_releasedAt,hypothesis,
    ( ! [Fluent,Time] : ~ releasedAt(Fluent,Time) )).

%----Distinct agents and trolleys:
fof(distinct_agents_and_trolleys,hypothesis,
    ( trolley1 != trolley2
    & agent1 != agent2
    & trolley1 != trolley3
    & agent1 != agent3
    & trolley1 != trolley4
    & agent1 != agent4
    & trolley1 != trolley5
    & agent1 != agent5
    & trolley1 != trolley6
    & agent1 != agent6
    & trolley1 != trolley7
    & agent1 != agent7
    & trolley1 != trolley8
    & agent1 != agent8
    & trolley1 != trolley9
    & agent1 != agent9
    & trolley1 != trolley10
    & agent1 != agent10
    & trolley2 != trolley3
    & agent2 != agent3
    & trolley2 != trolley4
    & agent2 != agent4
    & trolley2 != trolley5
    & agent2 != agent5
    & trolley2 != trolley6
    & agent2 != agent6
    & trolley2 != trolley7
    & agent2 != agent7
    & trolley2 != trolley8
    & agent2 != agent8
    & trolley2 != trolley9
    & agent2 != agent9
    & trolley2 != trolley10
    & agent2 != agent10
    & trolley3 != trolley4
    & agent3 != agent4
    & trolley3 != trolley5
    & agent3 != agent5
    & trolley3 != trolley6
    & agent3 != agent6
    & trolley3 != trolley7
    & agent3 != agent7
    & trolley3 != trolley8
    & agent3 != agent8
    & trolley3 != trolley9
    & agent3 != agent9
    & trolley3 != trolley10
    & agent3 != agent10
    & trolley4 != trolley5
    & agent4 != agent5
    & trolley4 != trolley6
    & agent4 != agent6
    & trolley4 != trolley7
    & agent4 != agent7
    & trolley4 != trolley8
    & agent4 != agent8
    & trolley4 != trolley9
    & agent4 != agent9
    & trolley4 != trolley10
    & agent4 != agent10
    & trolley5 != trolley6
    & agent5 != agent6
    & trolley5 != trolley7
    & agent5 != agent7
    & trolley5 != trolley8
    & agent5 != agent8
    & trolley5 != trolley9
    & agent5 != agent9
    & trolley5 != trolley10
    & agent5 != agent10
    & trolley6 != trolley7
    & agent6 != agent7
    & trolley6 != trolley8
    & agent6 != agent8
    & trolley6 != trolley9
    & agent6 != agent9
    & trolley6 != trolley10
    & agent6 != agent10
    & trolley7 != trolley8
    & agent7 != agent8
    & trolley7 != trolley9
    & agent7 != agent9
    & trolley7 != trolley10
    & agent7 != agent10
    & trolley8 != trolley9
    & agent8 != agent9
    & trolley8 != trolley10
    & agent8 != agent10
    & trolley9 != trolley10
    & agent9 != agent10 )).

fof(spinning_3,conjecture,
    ( holdsAt(spinning(trolley1),n1)
    & holdsAt(spinning(trolley2),n1)
    & holdsAt(spinning(trolley3),n1)
    & holdsAt(spinning(trolley4),n1)
    & holdsAt(spinning(trolley5),n1)
    & holdsAt(spinning(trolley6),n1)
    & holdsAt(spinning(trolley7),n1)
    & holdsAt(spinning(trolley8),n1)
    & holdsAt(spinning(trolley9),n1)
    & holdsAt(spinning(trolley10),n1) )).
%------------------------------------------------------------------------------
