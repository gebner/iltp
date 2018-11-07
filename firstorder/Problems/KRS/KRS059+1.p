%------------------------------------------------------------------------------
% File     : KRS059+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : Abstract syntax restrictions with multiple components
% Version  : Especial.
% English  : Abstract syntax restrictions with multiple components are in OWL 
%            DL.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_miscellaneous-Manifest102 [Bec03]

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :    5 (   1 unit)
%            Number of atoms       :    9 (   0 equality)
%            Maximal formula depth :    4 (   3 average)
%            Number of connectives :    6 (   2 ~  ;   0  |;   2  &)
%                                         (   1 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :    4 (   0 singleton;   3 !;   1 ?)
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

%----ii
fof(axiom_2_AndLHS,axiom,
    ( ? [X] : 
        ( rp(ii,X)
        & cs(X) ) )).

fof(axiom_2_AndRHS,axiom,
    ( ! [X] : 
        ( rp(ii,X)
       => ca(X) ) )).

%----ii
fof(axiom_3,axiom,
    ( cowlThing(ii) )).

%------------------------------------------------------------------------------
