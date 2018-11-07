%------------------------------------------------------------------------------
% File     : KRS039+1 : ILTP v1.1.1
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t8.1
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest034 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Unsolved (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :    5 (   1 unit)
%            Number of atoms       :   16 (   0 equality)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   14 (   3 ~  ;   0  |;   4  &)
%                                         (   3 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   11 (   0 singleton;   9 !;   2 ?)
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
              & ! [Z] : 
                  ( rinvR(Y,Z)
                 => ! [W] : 
                      ( rr1(Z,W)
                     => cp(W) ) ) )
          & ? [Y] : 
              ( rr(X,Y)
              & ! [Z] : 
                  ( rinvR(Y,Z)
                 => ! [W] : 
                      ( rr1(Z,W)
                     => ~ cp(W) ) ) ) ) ) )).

%----Inverse: rinvR
fof(axiom_3,axiom,
    ( ! [X,Y] : 
        ( rinvR(X,Y)
      <=> rr(Y,X) ) )).

%----i2003_11_14_17_15_58383
fof(axiom_4,axiom,
    ( cSatisfiable(i2003_11_14_17_15_58383) )).

%------------------------------------------------------------------------------
