%------------------------------------------------------------------------------
% File     : KRS050+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t8.1
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest634 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Unsolved (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   11 (   1 unit)
%            Number of atoms       :   28 (   0 equality)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :   20 (   3 ~  ;   0  |;   4  &)
%                                         (   9 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   15 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   19 (   0 singleton;  15 !;   4 ?)
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

%----Equality cSatisfiable
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cSatisfiable(X)
      <=> ( ? [Y] : 
              ( rr(X,Y)
              & ca_Vx4(Y) )
          & ? [Y] : 
              ( rr(X,Y)
              & ca_Vx5(Y) ) ) ) )).

%----Equality cp
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cp(X)
      <=> ~ ( ? [Y] : ra_Px1(X,Y) ) ) )).

%----Equality cpxcomp
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cpxcomp(X)
      <=> ? [Y0] : ra_Px1(X,Y0) ) )).

%----Equality ca_Vx2
fof(axiom_5,axiom,
    ( ! [X] : 
        ( ca_Vx2(X)
      <=> ! [Y] : 
            ( rr1(X,Y)
           => cp(Y) ) ) )).

%----Equality ca_Vx3
fof(axiom_6,axiom,
    ( ! [X] : 
        ( ca_Vx3(X)
      <=> ! [Y] : 
            ( rr1(X,Y)
           => cpxcomp(Y) ) ) )).

%----Equality ca_Vx4
fof(axiom_7,axiom,
    ( ! [X] : 
        ( ca_Vx4(X)
      <=> ! [Y] : 
            ( rinvR(X,Y)
           => ca_Vx2(Y) ) ) )).

%----Equality ca_Vx5
fof(axiom_8,axiom,
    ( ! [X] : 
        ( ca_Vx5(X)
      <=> ! [Y] : 
            ( rinvR(X,Y)
           => ca_Vx3(Y) ) ) )).

%----Inverse: rinvR
fof(axiom_9,axiom,
    ( ! [X,Y] : 
        ( rinvR(X,Y)
      <=> rr(Y,X) ) )).

%----i2003_11_14_17_16_39209
fof(axiom_10,axiom,
    ( cSatisfiable(i2003_11_14_17_16_39209) )).

%------------------------------------------------------------------------------
