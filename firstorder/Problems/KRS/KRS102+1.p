%------------------------------------------------------------------------------
% File     : KRS102+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : This is the classic 3 SAT problem
% Version  : Especial.
% English  :

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest502 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.33 v3.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   83 (  21 unit)
%            Number of atoms       :  205 ( 161 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :  125 (   3 ~  ; 100  |;   6  &)
%                                         (  11 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :   20 (  20 constant; 0-0 arity)
%            Number of variables   :   22 (   0 singleton;  22 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(cTorF_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cTorF(A) )
       => cTorF(B) ) )).

fof(cowlNothing_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cowlNothing(A) )
       => cowlNothing(B) ) )).

fof(cowlThing_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cowlThing(A) )
       => cowlThing(B) ) )).

fof(xsd_integer_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & xsd_integer(A) )
       => xsd_integer(B) ) )).

fof(xsd_string_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & xsd_string(A) )
       => xsd_string(B) ) )).

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

%----Enumeration cTorF
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus1
          | X = iminus1 ) ) )).

%----Enumeration cTorF
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iminus4
          | X = iplus4 ) ) )).

%----Enumeration cTorF
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus2
          | X = iminus2 ) ) )).

%----Enumeration cTorF
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus7
          | X = iminus7 ) ) )).

%----Enumeration cTorF
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus5
          | X = iminus5 ) ) )).

%----Enumeration cTorF
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus3
          | X = iminus3 ) ) )).

%----Enumeration cTorF
fof(axiom_8,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iT
          | X = iF ) ) )).

%----Enumeration cTorF
fof(axiom_9,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iplus8
          | X = iminus8 ) ) )).

%----Enumeration cTorF
fof(axiom_10,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iminus6
          | X = iplus6 ) ) )).

%----Enumeration cTorF
fof(axiom_11,axiom,
    ( ! [X] : 
        ( cTorF(X)
      <=> ( X = iminus9
          | X = iplus9 ) ) )).

%----iF
fof(axiom_12,axiom,
    ( cowlThing(iF) )).

%----iT
fof(axiom_13,axiom,
    ( iT = iminus6
    | iT = iplus2
    | iT = iplus1 )).

%----iT
fof(axiom_14,axiom,
    ( iT = iminus6
    | iT = iplus9
    | iT = iminus7 )).

%----iT
fof(axiom_15,axiom,
    ( iT = iplus8
    | iT = iminus3
    | iT = iplus7 )).

%----iT
fof(axiom_16,axiom,
    ( iT = iplus5
    | iT = iplus9
    | iT = iminus7 )).

%----iT
fof(axiom_17,axiom,
    ( iT = iminus6
    | iT = iplus1
    | iT = iplus9 )).

%----iT
fof(axiom_18,axiom,
    ( iT = iplus3
    | iT = iminus9
    | iT = iplus4 )).

%----iT
fof(axiom_19,axiom,
    ( iT = iminus9
    | iT = iminus6
    | iT = iplus1 )).

%----iT
fof(axiom_20,axiom,
    ( cowlThing(iT) )).

%----iT
fof(axiom_21,axiom,
    ( iT = iminus8
    | iT = iminus4
    | iT = iplus9 )).

%----iT
fof(axiom_22,axiom,
    ( iT = iplus3
    | iT = iplus6
    | iT = iplus4 )).

%----iT
fof(axiom_23,axiom,
    ( iT = iplus1
    | iT = iplus7
    | iT = iplus4 )).

%----iT
fof(axiom_24,axiom,
    ( iT = iplus3
    | iT = iminus8
    | iT = iminus2 )).

%----iT
fof(axiom_25,axiom,
    ( iT = iminus8
    | iT = iplus6
    | iT = iplus4 )).

%----iT
fof(axiom_26,axiom,
    ( iT = iplus3
    | iT = iminus9
    | iT = iminus2 )).

%----iT
fof(axiom_27,axiom,
    ( iT = iplus6
    | iT = iminus2
    | iT = iminus7 )).

%----iT
fof(axiom_28,axiom,
    ( iT = iplus6
    | iT = iminus4
    | iT = iminus3 )).

%----iT
fof(axiom_29,axiom,
    ( iT = iminus6
    | iT = iplus1
    | iT = iminus4 )).

%----iT
fof(axiom_30,axiom,
    ( iT = iplus1
    | iT = iminus4
    | iT = iplus9 )).

%----iT
fof(axiom_31,axiom,
    ( iT = iplus8
    | iT = iplus2
    | iT = iminus4 )).

%----iT
fof(axiom_32,axiom,
    ( iT = iplus5
    | iT = iminus4
    | iT = iplus9 )).

%----iT
fof(axiom_33,axiom,
    ( iT = iminus5
    | iT = iplus6
    | iT = iplus4 )).

%----iT
fof(axiom_34,axiom,
    ( iT = iplus8
    | iT = iminus5
    | iT = iplus7 )).

%----iT
fof(axiom_35,axiom,
    ( iT = iminus5
    | iT = iminus9
    | iT = iminus2 )).

%----iT
fof(axiom_36,axiom,
    ( iT = iminus4
    | iT = iminus3
    | iT = iminus7 )).

%----iT
fof(axiom_37,axiom,
    ( iT = iplus2
    | iT = iplus4
    | iT = iminus1 )).

%----iT
fof(axiom_38,axiom,
    ( iT = iminus2
    | iT = iplus1
    | iT = iminus3 )).

%----iT
fof(axiom_39,axiom,
    ( iT = iplus3
    | iT = iplus6
    | iT = iminus4 )).

%----iT
fof(axiom_40,axiom,
    ( iT = iminus8
    | iT = iminus9
    | iT = iminus4 )).

%----iT
fof(axiom_41,axiom,
    ( iT = iplus3
    | iT = iplus1
    | iT = iplus4 )).

%----iT
fof(axiom_42,axiom,
    ( iT = iplus8
    | iT = iplus2
    | iT = iminus3 )).

%----iT
fof(axiom_43,axiom,
    ( iT = iplus3
    | iT = iminus8
    | iT = iplus9 )).

%----iT
fof(axiom_44,axiom,
    ( iT = iplus8
    | iT = iplus3
    | iT = iminus7 )).

%----iT
fof(axiom_45,axiom,
    ( iT = iminus5
    | iT = iminus8
    | iT = iminus3 )).

%----iT
fof(axiom_46,axiom,
    ( iT = iplus3
    | iT = iplus9
    | iT = iplus4 )).

%----iT
fof(axiom_47,axiom,
    ( iT = iminus8
    | iT = iplus6
    | iT = iminus7 )).

%----iT
fof(axiom_48,axiom,
    ( iT = iminus9
    | iT = iminus2
    | iT = iplus7 )).

%----iT
fof(axiom_49,axiom,
    ( iT = iplus5
    | iT = iminus8
    | iT = iminus3 )).

%----iT
fof(axiom_50,axiom,
    ( iT = iminus5
    | iT = iplus2
    | iT = iminus7 )).

%----iT
fof(axiom_51,axiom,
    ( iT = iplus6
    | iT = iminus2
    | iT = iplus9 )).

%----iT
fof(axiom_52,axiom,
    ( iT = iplus2
    | iT = iplus1
    | iT = iminus4 )).

%----iT
fof(axiom_53,axiom,
    ( iT = iplus6
    | iT = iminus4
    | iT = iminus1 )).

%----iT
fof(axiom_54,axiom,
    ( iT = iminus5
    | iT = iplus3
    | iT = iminus9 )).

%----iT
fof(axiom_55,axiom,
    ( iT = iplus5
    | iT = iplus2
    | iT = iplus9 )).

%----iT
fof(axiom_56,axiom,
    ( iT = iminus6
    | iT = iminus2
    | iT = iplus4 )).

%----iT
fof(axiom_57,axiom,
    ( iT = iplus8
    | iT = iplus6
    | iT = iminus4 )).

%----iT
fof(axiom_58,axiom,
    ( iT = iminus4
    | iT = iplus7
    | iT = iplus9 )).

%----iminus1
fof(axiom_59,axiom,
    ( cowlThing(iminus1) )).

%----iminus2
fof(axiom_60,axiom,
    ( cowlThing(iminus2) )).

%----iminus3
fof(axiom_61,axiom,
    ( cowlThing(iminus3) )).

%----iminus4
fof(axiom_62,axiom,
    ( cowlThing(iminus4) )).

%----iminus5
fof(axiom_63,axiom,
    ( cowlThing(iminus5) )).

%----iminus6
fof(axiom_64,axiom,
    ( cowlThing(iminus6) )).

%----iminus7
fof(axiom_65,axiom,
    ( cowlThing(iminus7) )).

%----iminus8
fof(axiom_66,axiom,
    ( cowlThing(iminus8) )).

%----iminus9
fof(axiom_67,axiom,
    ( cowlThing(iminus9) )).

%----iplus1
fof(axiom_68,axiom,
    ( cowlThing(iplus1) )).

%----iplus2
fof(axiom_69,axiom,
    ( cowlThing(iplus2) )).

%----iplus3
fof(axiom_70,axiom,
    ( cowlThing(iplus3) )).

%----iplus4
fof(axiom_71,axiom,
    ( cowlThing(iplus4) )).

%----iplus5
fof(axiom_72,axiom,
    ( cowlThing(iplus5) )).

%----iplus6
fof(axiom_73,axiom,
    ( cowlThing(iplus6) )).

%----iplus7
fof(axiom_74,axiom,
    ( cowlThing(iplus7) )).

%----iplus8
fof(axiom_75,axiom,
    ( cowlThing(iplus8) )).

%----iplus9
fof(axiom_76,axiom,
    ( cowlThing(iplus9) )).

fof(axiom_77,axiom,
    (  iT != iF )).

%------------------------------------------------------------------------------
