%------------------------------------------------------------------------------
% File     : KRS134+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : This is a typical definition of range from description logic
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_I5.24-Manifest003 [Bec03]

% Status   : Theorem
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1.0
%
% Syntax   : Number of formulae    :    4 (   0 unit)
%            Number of atoms       :   13 (   0 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   13 (   4 ~  ;   0  |;   4  &)
%                                         (   2 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    8 (   0 singleton;   8 !;   0 ?)
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

%----Range: rprop
fof(axiom_2,axiom,
    ( ! [X,Y] : 
        ( rprop(X,Y)
       => cA(Y) ) )).

%----Thing and Nothing 
%----String and Integer disjoint 
%----Super cowlThing
fof(the_axiom,conjecture,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & ! [X] : 
        ( cowlThing(X)
       => ! [Y] : 
            ( rprop(X,Y)
           => cA(Y) ) ) )).

%------------------------------------------------------------------------------
