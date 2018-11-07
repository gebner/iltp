%------------------------------------------------------------------------------
% File     : KRS133+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : How to express mutual disjointness between classes
% Version  : Especial.
% English  : The construct used here shows how to express mutual disjointness 
%            between classes with  O(N) triples.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : positive_I5.21-Manifest002 [Bec03]

% Status   : Theorem
% Rating   : 0.78 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :  125 (  78 unit)
%            Number of atoms       :  328 (  86 equality)
%            Maximal formula depth :   71 (   3 average)
%            Number of connectives :  339 ( 136 ~  ;   0  |; 156  &)
%                                         (   2 <=>;  45 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   19 (   0 propositional; 1-2 arity)
%            Number of functors    :   12 (  12 constant; 0-0 arity)
%            Number of variables   :  138 (   0 singleton; 137 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(cAgamidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cAgamidae(A) )
       => cAgamidae(B) ) )).

fof(cAmphisbaenidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cAmphisbaenidae(A) )
       => cAmphisbaenidae(B) ) )).

fof(cAnomalepidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cAnomalepidae(A) )
       => cAnomalepidae(B) ) )).

fof(cBipedidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cBipedidae(A) )
       => cBipedidae(B) ) )).

fof(cCordylidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cCordylidae(A) )
       => cCordylidae(B) ) )).

fof(cCrocodylidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cCrocodylidae(A) )
       => cCrocodylidae(B) ) )).

fof(cEmydidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cEmydidae(A) )
       => cEmydidae(B) ) )).

fof(cGekkonidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cGekkonidae(A) )
       => cGekkonidae(B) ) )).

fof(cLeptotyphlopidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cLeptotyphlopidae(A) )
       => cLeptotyphlopidae(B) ) )).

fof(cLoxocemidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cLoxocemidae(A) )
       => cLoxocemidae(B) ) )).

fof(cReptile_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cReptile(A) )
       => cReptile(B) ) )).

fof(cSphenodontidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cSphenodontidae(A) )
       => cSphenodontidae(B) ) )).

fof(cXantusiidae_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cXantusiidae(A) )
       => cXantusiidae(B) ) )).

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

fof(rfamily_name_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rfamily_name(A,C) )
       => rfamily_name(B,C) ) )).

fof(rfamily_name_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rfamily_name(C,A) )
       => rfamily_name(C,B) ) )).

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

%----Data value
fof(axiom_2,axiom,
    ( xsd_string(xsd_string_0) )).

%----Super cAgamidae
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cAgamidae(X)
       => rfamily_name(X,xsd_string_0) ) )).

%----Super cAgamidae
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cAgamidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_5,axiom,
    ( xsd_string(xsd_string_1) )).

%----Super cAmphisbaenidae
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cAmphisbaenidae(X)
       => rfamily_name(X,xsd_string_1) ) )).

%----Super cAmphisbaenidae
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cAmphisbaenidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_8,axiom,
    ( xsd_string(xsd_string_2) )).

%----Super cAnomalepidae
fof(axiom_9,axiom,
    ( ! [X] : 
        ( cAnomalepidae(X)
       => rfamily_name(X,xsd_string_2) ) )).

%----Super cAnomalepidae
fof(axiom_10,axiom,
    ( ! [X] : 
        ( cAnomalepidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_11,axiom,
    ( xsd_string(xsd_string_3) )).

%----Super cBipedidae
fof(axiom_12,axiom,
    ( ! [X] : 
        ( cBipedidae(X)
       => rfamily_name(X,xsd_string_3) ) )).

%----Super cBipedidae
fof(axiom_13,axiom,
    ( ! [X] : 
        ( cBipedidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_14,axiom,
    ( xsd_string(xsd_string_4) )).

%----Super cCordylidae
fof(axiom_15,axiom,
    ( ! [X] : 
        ( cCordylidae(X)
       => rfamily_name(X,xsd_string_4) ) )).

%----Super cCordylidae
fof(axiom_16,axiom,
    ( ! [X] : 
        ( cCordylidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_17,axiom,
    ( xsd_string(xsd_string_5) )).

%----Super cCrocodylidae
fof(axiom_18,axiom,
    ( ! [X] : 
        ( cCrocodylidae(X)
       => rfamily_name(X,xsd_string_5) ) )).

%----Super cCrocodylidae
fof(axiom_19,axiom,
    ( ! [X] : 
        ( cCrocodylidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_20,axiom,
    ( xsd_string(xsd_string_6) )).

%----Super cEmydidae
fof(axiom_21,axiom,
    ( ! [X] : 
        ( cEmydidae(X)
       => rfamily_name(X,xsd_string_6) ) )).

%----Super cEmydidae
fof(axiom_22,axiom,
    ( ! [X] : 
        ( cEmydidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_23,axiom,
    ( xsd_string(xsd_string_7) )).

%----Super cGekkonidae
fof(axiom_24,axiom,
    ( ! [X] : 
        ( cGekkonidae(X)
       => rfamily_name(X,xsd_string_7) ) )).

%----Super cGekkonidae
fof(axiom_25,axiom,
    ( ! [X] : 
        ( cGekkonidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_26,axiom,
    ( xsd_string(xsd_string_8) )).

%----Super cLeptotyphlopidae
fof(axiom_27,axiom,
    ( ! [X] : 
        ( cLeptotyphlopidae(X)
       => rfamily_name(X,xsd_string_8) ) )).

%----Super cLeptotyphlopidae
fof(axiom_28,axiom,
    ( ! [X] : 
        ( cLeptotyphlopidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_29,axiom,
    ( xsd_string(xsd_string_9) )).

%----Super cLoxocemidae
fof(axiom_30,axiom,
    ( ! [X] : 
        ( cLoxocemidae(X)
       => rfamily_name(X,xsd_string_9) ) )).

%----Super cLoxocemidae
fof(axiom_31,axiom,
    ( ! [X] : 
        ( cLoxocemidae(X)
       => cReptile(X) ) )).

%----Super cReptile
fof(axiom_32,axiom,
    ( ! [X] : 
        ( cReptile(X)
       => ( ? [Y0] : rfamily_name(X,Y0)
          & ! [Y0,Y1] : 
              ( ( rfamily_name(X,Y0)
                & rfamily_name(X,Y1) )
             => Y0 = Y1 ) ) ) )).

%----Data value
fof(axiom_33,axiom,
    ( xsd_string(xsd_string_10) )).

%----Super cSphenodontidae
fof(axiom_34,axiom,
    ( ! [X] : 
        ( cSphenodontidae(X)
       => rfamily_name(X,xsd_string_10) ) )).

%----Super cSphenodontidae
fof(axiom_35,axiom,
    ( ! [X] : 
        ( cSphenodontidae(X)
       => cReptile(X) ) )).

%----Data value
fof(axiom_36,axiom,
    ( xsd_string(xsd_string_11) )).

%----Super cXantusiidae
fof(axiom_37,axiom,
    ( ! [X] : 
        ( cXantusiidae(X)
       => rfamily_name(X,xsd_string_11) ) )).

%----Super cXantusiidae
fof(axiom_38,axiom,
    ( ! [X] : 
        ( cXantusiidae(X)
       => cReptile(X) ) )).

%----String value disjoint
fof(axiom_39,axiom,
    (  xsd_string_0 != xsd_string_1 )).

%----String value disjoint
fof(axiom_40,axiom,
    (  xsd_string_0 != xsd_string_2 )).

%----String value disjoint
fof(axiom_41,axiom,
    (  xsd_string_0 != xsd_string_3 )).

%----String value disjoint
fof(axiom_42,axiom,
    (  xsd_string_0 != xsd_string_4 )).

%----String value disjoint
fof(axiom_43,axiom,
    (  xsd_string_0 != xsd_string_5 )).

%----String value disjoint
fof(axiom_44,axiom,
    (  xsd_string_0 != xsd_string_6 )).

%----String value disjoint
fof(axiom_45,axiom,
    (  xsd_string_0 != xsd_string_7 )).

%----String value disjoint
fof(axiom_46,axiom,
    (  xsd_string_0 != xsd_string_8 )).

%----String value disjoint
fof(axiom_47,axiom,
    (  xsd_string_0 != xsd_string_9 )).

%----String value disjoint
fof(axiom_48,axiom,
    (  xsd_string_0 != xsd_string_10 )).

%----String value disjoint
fof(axiom_49,axiom,
    (  xsd_string_0 != xsd_string_11 )).

%----String value disjoint
fof(axiom_50,axiom,
    (  xsd_string_1 != xsd_string_2 )).

%----String value disjoint
fof(axiom_51,axiom,
    (  xsd_string_1 != xsd_string_3 )).

%----String value disjoint
fof(axiom_52,axiom,
    (  xsd_string_1 != xsd_string_4 )).

%----String value disjoint
fof(axiom_53,axiom,
    (  xsd_string_1 != xsd_string_5 )).

%----String value disjoint
fof(axiom_54,axiom,
    (  xsd_string_1 != xsd_string_6 )).

%----String value disjoint
fof(axiom_55,axiom,
    (  xsd_string_1 != xsd_string_7 )).

%----String value disjoint
fof(axiom_56,axiom,
    (  xsd_string_1 != xsd_string_8 )).

%----String value disjoint
fof(axiom_57,axiom,
    (  xsd_string_1 != xsd_string_9 )).

%----String value disjoint
fof(axiom_58,axiom,
    (  xsd_string_1 != xsd_string_10 )).

%----String value disjoint
fof(axiom_59,axiom,
    (  xsd_string_1 != xsd_string_11 )).

%----String value disjoint
fof(axiom_60,axiom,
    (  xsd_string_2 != xsd_string_3 )).

%----String value disjoint
fof(axiom_61,axiom,
    (  xsd_string_2 != xsd_string_4 )).

%----String value disjoint
fof(axiom_62,axiom,
    (  xsd_string_2 != xsd_string_5 )).

%----String value disjoint
fof(axiom_63,axiom,
    (  xsd_string_2 != xsd_string_6 )).

%----String value disjoint
fof(axiom_64,axiom,
    (  xsd_string_2 != xsd_string_7 )).

%----String value disjoint
fof(axiom_65,axiom,
    (  xsd_string_2 != xsd_string_8 )).

%----String value disjoint
fof(axiom_66,axiom,
    (  xsd_string_2 != xsd_string_9 )).

%----String value disjoint
fof(axiom_67,axiom,
    (  xsd_string_2 != xsd_string_10 )).

%----String value disjoint
fof(axiom_68,axiom,
    (  xsd_string_2 != xsd_string_11 )).

%----String value disjoint
fof(axiom_69,axiom,
    (  xsd_string_3 != xsd_string_4 )).

%----String value disjoint
fof(axiom_70,axiom,
    (  xsd_string_3 != xsd_string_5 )).

%----String value disjoint
fof(axiom_71,axiom,
    (  xsd_string_3 != xsd_string_6 )).

%----String value disjoint
fof(axiom_72,axiom,
    (  xsd_string_3 != xsd_string_7 )).

%----String value disjoint
fof(axiom_73,axiom,
    (  xsd_string_3 != xsd_string_8 )).

%----String value disjoint
fof(axiom_74,axiom,
    (  xsd_string_3 != xsd_string_9 )).

%----String value disjoint
fof(axiom_75,axiom,
    (  xsd_string_3 != xsd_string_10 )).

%----String value disjoint
fof(axiom_76,axiom,
    (  xsd_string_3 != xsd_string_11 )).

%----String value disjoint
fof(axiom_77,axiom,
    (  xsd_string_4 != xsd_string_5 )).

%----String value disjoint
fof(axiom_78,axiom,
    (  xsd_string_4 != xsd_string_6 )).

%----String value disjoint
fof(axiom_79,axiom,
    (  xsd_string_4 != xsd_string_7 )).

%----String value disjoint
fof(axiom_80,axiom,
    (  xsd_string_4 != xsd_string_8 )).

%----String value disjoint
fof(axiom_81,axiom,
    (  xsd_string_4 != xsd_string_9 )).

%----String value disjoint
fof(axiom_82,axiom,
    (  xsd_string_4 != xsd_string_10 )).

%----String value disjoint
fof(axiom_83,axiom,
    (  xsd_string_4 != xsd_string_11 )).

%----String value disjoint
fof(axiom_84,axiom,
    (  xsd_string_5 != xsd_string_6 )).

%----String value disjoint
fof(axiom_85,axiom,
    (  xsd_string_5 != xsd_string_7 )).

%----String value disjoint
fof(axiom_86,axiom,
    (  xsd_string_5 != xsd_string_8 )).

%----String value disjoint
fof(axiom_87,axiom,
    (  xsd_string_5 != xsd_string_9 )).

%----String value disjoint
fof(axiom_88,axiom,
    (  xsd_string_5 != xsd_string_10 )).

%----String value disjoint
fof(axiom_89,axiom,
    (  xsd_string_5 != xsd_string_11 )).

%----String value disjoint
fof(axiom_90,axiom,
    (  xsd_string_6 != xsd_string_7 )).

%----String value disjoint
fof(axiom_91,axiom,
    (  xsd_string_6 != xsd_string_8 )).

%----String value disjoint
fof(axiom_92,axiom,
    (  xsd_string_6 != xsd_string_9 )).

%----String value disjoint
fof(axiom_93,axiom,
    (  xsd_string_6 != xsd_string_10 )).

%----String value disjoint
fof(axiom_94,axiom,
    (  xsd_string_6 != xsd_string_11 )).

%----String value disjoint
fof(axiom_95,axiom,
    (  xsd_string_7 != xsd_string_8 )).

%----String value disjoint
fof(axiom_96,axiom,
    (  xsd_string_7 != xsd_string_9 )).

%----String value disjoint
fof(axiom_97,axiom,
    (  xsd_string_7 != xsd_string_10 )).

%----String value disjoint
fof(axiom_98,axiom,
    (  xsd_string_7 != xsd_string_11 )).

%----String value disjoint
fof(axiom_99,axiom,
    (  xsd_string_8 != xsd_string_9 )).

%----String value disjoint
fof(axiom_100,axiom,
    (  xsd_string_8 != xsd_string_10 )).

%----String value disjoint
fof(axiom_101,axiom,
    (  xsd_string_8 != xsd_string_11 )).

%----String value disjoint
fof(axiom_102,axiom,
    (  xsd_string_9 != xsd_string_10 )).

%----String value disjoint
fof(axiom_103,axiom,
    (  xsd_string_9 != xsd_string_11 )).

%----String value disjoint
fof(axiom_104,axiom,
    (  xsd_string_10 != xsd_string_11 )).

%----Thing and Nothing 
%----String and Integer disjoint 
fof(the_axiom,conjecture,
    ( ! [X] : 
        ( cowlThing(X)
        & ~ cowlNothing(X) )
    & ! [X] : 
        ( xsd_string(X)
      <=> ~ xsd_integer(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cBipedidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cAnomalepidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cGekkonidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cGekkonidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cAgamidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cCrocodylidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cAgamidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cCrocodylidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cAgamidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cAgamidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cAmphisbaenidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cSphenodontidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cCordylidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cAgamidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cAgamidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cCordylidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cAgamidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cGekkonidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cBipedidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cAmphisbaenidae(X) )
    & ! [X] : ~ ( cSphenodontidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cAnomalepidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cBipedidae(X)
        & cAmphisbaenidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cAgamidae(X) )
    & ! [X] : ~ ( cSphenodontidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cAmphisbaenidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cSphenodontidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cEmydidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cAnomalepidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cAnomalepidae(X) )
    & ! [X] : ~ ( cCordylidae(X)
        & cCrocodylidae(X) )
    & ! [X] : ~ ( cXantusiidae(X)
        & cAnomalepidae(X) )
    & ! [X] : ~ ( cAnomalepidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cXantusiidae(X) )
    & ! [X] : ~ ( cGekkonidae(X)
        & cAgamidae(X) )
    & ! [X] : ~ ( cAgamidae(X)
        & cCordylidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cEmydidae(X)
        & cLoxocemidae(X) )
    & ! [X] : ~ ( cLeptotyphlopidae(X)
        & cSphenodontidae(X) )
    & ! [X] : ~ ( cAmphisbaenidae(X)
        & cAgamidae(X) ) )).

%------------------------------------------------------------------------------
