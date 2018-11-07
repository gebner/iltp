%------------------------------------------------------------------------------
% File     : KRS132+1 : ILTP v1.1.1
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : The union of two classes can be defined
% Version  : Especial.
% English  : The union of two classes can be defined using OWL Lite 
%            restrictions, and owl:intersectionOf.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_I5.2-Manifest006 [Bec03]

% Status   : Theorem
% Rating   : 0.22 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   12 (   0 unit)
%            Number of atoms       :   36 (   0 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :   29 (   5 ~  ;   1  |;   8  &)
%                                         (  10 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   22 (   0 singleton;  17 !;   5 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
%----Thing and Nothing 
fof(axiom_0,axiom,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) ) )).

%----String and Integer disjoint 
fof(axiom_1,axiom,
    ( ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) ) )).

%----Equality cA
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cA(X)
      <=> ? [Y] : 
            ( rq(X,Y)
            & cowlThing(Y) ) ) )).

%----Equality cAorB
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cAorB(X)
      <=> ? [Y] : 
            ( rs(X,Y)
            & cowlThing(Y) ) ) )).

%----Equality cB
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cB(X)
      <=> ? [Y] : 
            ( rr(X,Y)
            & cowlThing(Y) ) ) )).

%----Super cNothing
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cNothing(X)
       => ? [Y0] : rp(X,Y0) ) )).

%----Super cNothing
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cNothing(X)
       => ~ ( ? [Y] : rp(X,Y) ) ) )).

%----Equality cnotA
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cnotA(X)
      <=> ! [Y] : 
            ( rq(X,Y)
           => cNothing(Y) ) ) )).

%----Equality cnotAorB
fof(axiom_8,axiom,
    ( ! [X] : 
        ( cnotAorB(X)
      <=> ! [Y] : 
            ( rs(X,Y)
           => cNothing(Y) ) ) )).

%----Equality cnotAorB
fof(axiom_9,axiom,
    ( ! [X] : 
        ( cnotAorB(X)
      <=> ( cnotB(X)
          & cnotA(X) ) ) )).

%----Equality cnotB
fof(axiom_10,axiom,
    ( ! [X] : 
        ( cnotB(X)
      <=> ! [Y] : 
            ( rr(X,Y)
           => cNothing(Y) ) ) )).

%----Thing and Nothing 
%----String and Integer disjoint 
%----Equality cAorB
fof(the_axiom,conjecture,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & ! [X] : 
        ( cAorB(X)
      <=> ( cB(X)
          | cA(X) ) ) )).

%------------------------------------------------------------------------------
