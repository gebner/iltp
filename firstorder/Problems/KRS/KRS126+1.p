%------------------------------------------------------------------------------
% File     : KRS126+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: heinsohn1.4
% Version  : Especial.
% English  : Tbox tests from [HK+94]

% Refs     : [HK+94] Heinsohn et al. (1994), An Empirical Analysis of Termi
%          : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest644 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Theorem (Problem negated)
% Rating (intuit.) : 0.25 v1.1.0
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   23 (   0 equality)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :   15 (   4 ~  ;   0  |;   1  &)
%                                         (   5 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   15 (   0 singleton;  11 !;   4 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%          : Tests incoherency caused by disjoint concept
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

%----Super cUnsatisfiable
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cUnsatisfiable(X)
       => cd1xcomp(X) ) )).

%----Super cUnsatisfiable
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cUnsatisfiable(X)
       => cd1(X) ) )).

%----Super cc
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cc(X)
       => cdxcomp(X) ) )).

%----Equality cd
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cd(X)
      <=> ~ ( ? [Y] : ra_Px1(X,Y) ) ) )).

%----Equality cdxcomp
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cdxcomp(X)
      <=> ? [Y0] : ra_Px1(X,Y0) ) )).

%----Equality cd1
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cd1(X)
      <=> ? [Y0] : ra_Px2(X,Y0) ) )).

%----Equality cd1xcomp
fof(axiom_8,axiom,
    ( ! [X] : 
        ( cd1xcomp(X)
      <=> ~ ( ? [Y] : ra_Px2(X,Y) ) ) )).

%----Super ce3
fof(axiom_9,axiom,
    ( ! [X] : 
        ( ce3(X)
       => cc(X) ) )).

%----Super cf
fof(axiom_10,axiom,
    ( ! [X] : 
        ( cf(X)
       => cd(X) ) )).

%----i2003_11_14_17_22_23554
fof(axiom_11,axiom,
    ( cUnsatisfiable(i2003_11_14_17_22_23554) )).

%------------------------------------------------------------------------------
