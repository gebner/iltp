%------------------------------------------------------------------------------
% File     : KRS023+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A minimal OWL Lite version of I5.3-005
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_I5.3-Manifest006 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :    5 (   3 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    4 (   2 average)
%            Number of connectives :    4 (   2 ~  ;   0  |;   1  &)
%                                         (   1 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   2 constant; 0-0 arity)
%            Number of variables   :    2 (   0 singleton;   2 !;   0 ?)
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

%----i2003_11_14_17_14_42352
fof(axiom_2,axiom,
    ( cowlThing(i2003_11_14_17_14_42352) )).

%----i2003_11_14_17_14_42102
fof(axiom_3,axiom,
    ( cowlThing(i2003_11_14_17_14_42102) )).

fof(axiom_4,axiom,
    ( rp(i2003_11_14_17_14_42102,i2003_11_14_17_14_42352) )).

%------------------------------------------------------------------------------
