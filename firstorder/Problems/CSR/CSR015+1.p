%--------------------------------------------------------------------------
% File     : CSR015+1 : ILTP v1.1.1
% Domain   : Commonsense Reasoning
% Problem  : Not backwards at time 1
% Version  : [Mue04] axioms : Especial.
% English  :

% Refs     : [MS05]  Mueller & Sutcliffe (2005), Reasoning in the Event Cal
%          : [Mue04] Mueller (2004), A Tool for Satisfiability-based Common
%          : [MS02]  Miller & Shanahan (2002), Some Alternative Formulation
% Source   : [MS05]
% Names    :

% Status   : Theorem
% Rating   : 0.36 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   48 (  22 unit)
%            Number of atoms       :  138 (  43 equality)
%            Maximal formula depth :   13 (   4 average)
%            Number of connectives :  123 (  33 ~  ;  13  |;  51  &)
%                                         (  16 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   13 (   0 propositional; 2-4 arity)
%            Number of functors    :   16 (  15 constant; 0-2 arity)
%            Number of variables   :   73 (   0 singleton;  64 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments :
%--------------------------------------------------------------------------
%----Include standard discrete event calculus axioms
include('Axioms/CSR001+0.ax').
%----Include supermarket trolley axioms
include('Axioms/CSR001+2.ax').
%--------------------------------------------------------------------------
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

%----Initial conditions
fof(not_forwards_0,hypothesis,
    ( ~ holdsAt(forwards,n0) )).

fof(not_backwards_0,hypothesis,
    ( ~ holdsAt(backwards,n0) )).

fof(not_splinning_0,hypothesis,
    ( ~ holdsAt(spinning,n0) )).

fof(not_releasedAt,hypothesis,
    ( ! [Fluent,Time] : ~ releasedAt(Fluent,Time) )).

fof(not_backwards_1,conjecture,
    ( ~ holdsAt(backwards,n1) )).

%--------------------------------------------------------------------------
