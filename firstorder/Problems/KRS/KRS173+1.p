%------------------------------------------------------------------------------
% File     : KRS173+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A simple infinite loop for implementors to avoid
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_someValuesFrom-Manifest003 [Bec03]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    5 (   1 unit)
%            Number of atoms       :   17 (   0 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   16 (   4 ~  ;   0  |;   9  &)
%                                         (   3 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :    3 (   3 constant; 0-0 arity)
%            Number of variables   :    6 (   0 singleton;   5 !;   1 ?)
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

%----Equality cperson
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cperson(X)
      <=> ? [Y] : 
            ( rparent(X,Y)
            & cperson(Y) ) ) )).

%----ifred
fof(axiom_3,axiom,
    ( cperson(ifred) )).

%----Thing and Nothing 
%----String and Integer disjoint 
%----ifred
%----i2003_11_14_17_14_14920
%----i2003_11_14_17_14_14998
fof(the_axiom,conjecture,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & cowlThing(ifred)
    & rparent(ifred,i2003_11_14_17_14_14998)
    & cowlThing(i2003_11_14_17_14_14920)
    & cowlThing(i2003_11_14_17_14_14998)
    & rparent(i2003_11_14_17_14_14998,i2003_11_14_17_14_14920) )).

%------------------------------------------------------------------------------
