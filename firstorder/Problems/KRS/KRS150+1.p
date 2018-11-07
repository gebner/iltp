%------------------------------------------------------------------------------
% File     : KRS150+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: k_lin ABox test from DL98 systems comparison
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_description-logic-Manifest205 [Bec03]

% Status   : Theorem
% Rating   : 0.11 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   25 (  11 unit)
%            Number of atoms       :   59 (   0 equality)
%            Maximal formula depth :   11 (   3 average)
%            Number of connectives :   48 (  14 ~  ;   0  |;  21  &)
%                                         (  11 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-2 arity)
%            Number of functors    :    3 (   3 constant; 0-0 arity)
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

%----Equality cC10
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cC10(X)
      <=> ? [Y] : 
            ( rR1(X,Y)
            & ~ cC2(Y) ) ) )).

%----Equality cC12
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cC12(X)
      <=> ( ~ cC2(X)
          & ~ cC10(X) ) ) )).

%----Equality cC14
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cC14(X)
      <=> ? [Y] : 
            ( rR1(X,Y)
            & cC12(Y) ) ) )).

%----Equality cC16
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cC16(X)
      <=> ( cC14(X)
          & cC8(X) ) ) )).

%----Equality cC18
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cC18(X)
      <=> ( cTOP(X)
          & cC16(X) ) ) )).

%----Equality cC4
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cC4(X)
      <=> ? [Y] : 
            ( rR1(X,Y)
            & ~ cC2(Y) ) ) )).

%----Equality cC6
fof(axiom_8,axiom,
    ( ! [X] : 
        ( cC6(X)
      <=> ( ~ cC2(X)
          & ~ cC4(X) ) ) )).

%----Equality cC8
fof(axiom_9,axiom,
    ( ! [X] : 
        ( cC8(X)
      <=> ? [Y] : 
            ( rR1(X,Y)
            & cC6(Y) ) ) )).

%----Equality cTEST
fof(axiom_10,axiom,
    ( ! [X] : 
        ( cTEST(X)
      <=> ( cC18(X)
          & cTOP(X) ) ) )).

%----iV16560
fof(axiom_11,axiom,
    ( cTOP(iV16560) )).

%----iV16560
fof(axiom_12,axiom,
    ( cTEST(iV16560) )).

%----iV16560
fof(axiom_13,axiom,
    ( cowlThing(iV16560) )).

fof(axiom_14,axiom,
    ( rR1(iV16560,iV16562) )).

fof(axiom_15,axiom,
    ( rR1(iV16560,iV16561) )).

%----iV16561
fof(axiom_16,axiom,
    ( ~ cC4(iV16561) )).

%----iV16561
fof(axiom_17,axiom,
    ( cowlThing(iV16561) )).

%----iV16561
fof(axiom_18,axiom,
    ( ! [X] : 
        ( rR1(iV16561,X)
       => cC2(X) ) )).

%----iV16561
fof(axiom_19,axiom,
    ( ~ cC2(iV16561) )).

%----iV16562
fof(axiom_20,axiom,
    ( ~ cC10(iV16562) )).

%----iV16562
fof(axiom_21,axiom,
    ( ~ cC2(iV16562) )).

%----iV16562
fof(axiom_22,axiom,
    ( cowlThing(iV16562) )).

%----iV16562
fof(axiom_23,axiom,
    ( ! [X] : 
        ( rR1(iV16562,X)
       => cC2(X) ) )).

%----Thing and Nothing 
%----String and Integer disjoint 
%----iV16560
%----iV16560
%----iV16560
%----iV16560
%----iV16560
%----iV16561
%----iV16561
%----iV16562
%----iV16562
fof(the_axiom,conjecture,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & cC18(iV16560)
    & cC16(iV16560)
    & cowlThing(iV16560)
    & cC14(iV16560)
    & cC8(iV16560)
    & cowlThing(iV16561)
    & cC6(iV16561)
    & cowlThing(iV16562)
    & cC12(iV16562) )).

%------------------------------------------------------------------------------
