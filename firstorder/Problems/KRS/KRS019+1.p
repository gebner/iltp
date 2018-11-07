%------------------------------------------------------------------------------
% File     : KRS019+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : The complement of a class can be defined using OWL Lite 
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_I5.2-Manifest003 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :    6 (   0 unit)
%            Number of atoms       :   14 (   0 equality)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :   11 (   3 ~  ;   0  |;   2  &)
%                                         (   3 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   10 (   0 singleton;   7 !;   3 ?)
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

%----Super cNothing
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cNothing(X)
       => ~ ( ? [Y] : rp(X,Y) ) ) )).

%----Super cNothing
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cNothing(X)
       => ? [Y0] : rp(X,Y0) ) )).

%----Equality cnotA
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cnotA(X)
      <=> ! [Y] : 
            ( rq(X,Y)
           => cNothing(Y) ) ) )).

%------------------------------------------------------------------------------
