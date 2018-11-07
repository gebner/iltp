%------------------------------------------------------------------------------
% File     : KRS060+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : Description cannot be expressed as a multicomponent restriction 
% Version  : Especial.
% English  : This description cannot be expressed as a multicomponent 
%            restriction in the abstract syntax.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_miscellaneous-Manifest103 [Bec03]

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
%            Number of predicates  :    8 (   0 propositional; 1-2 arity)
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
    ( ! [X] : 
        ( rp(ii,X)
       => ca(X) ) )).

fof(axiom_2_AndRHS,axiom,
    ( ? [X] : 
        ( rq(ii,X)
        & cs(X) ) )).

%----ii
fof(axiom_3,axiom,
    ( cowlThing(ii) )).

%------------------------------------------------------------------------------