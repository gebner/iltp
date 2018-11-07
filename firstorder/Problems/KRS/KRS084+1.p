%------------------------------------------------------------------------------
% File     : KRS084+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t6f.1 Double blocking example
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest027 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   25 (   1 unit)
%            Number of atoms       :   73 (  16 equality)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   52 (   4 ~  ;   0  |;  24  &)
%                                         (   5 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   58 (   0 singleton;  55 !;   3 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%          : The concept should be incoherent but needs double blocking
%------------------------------------------------------------------------------
fof(cUnsatisfiable_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cUnsatisfiable(A) )
       => cUnsatisfiable(B) ) )).

fof(cc_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cc(A) )
       => cc(B) ) )).

fof(cd_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cd(A) )
       => cd(B) ) )).

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

fof(rf_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rf(A,C) )
       => rf(B,C) ) )).

fof(rf_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rf(C,A) )
       => rf(C,B) ) )).

fof(rinvF_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvF(A,C) )
       => rinvF(B,C) ) )).

fof(rinvF_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvF(C,A) )
       => rinvF(C,B) ) )).

fof(rinvR_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvR(A,C) )
       => rinvR(B,C) ) )).

fof(rinvR_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvR(C,A) )
       => rinvR(C,B) ) )).

fof(rr_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rr(A,C) )
       => rr(B,C) ) )).

fof(rr_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rr(C,A) )
       => rr(C,B) ) )).

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

%----Equality cUnsatisfiable
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cUnsatisfiable(X)
      <=> ( ? [Y] : 
              ( rinvF(X,Y)
              & cd(Y) )
          & ! [Y] : 
              ( rinvR(X,Y)
             => ? [Z] : 
                  ( rinvF(Y,Z)
                  & cd(Z) ) )
          & ~ cc(X) ) ) )).

%----Equality cd
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cd(X)
      <=> ( ? [Y] : 
              ( rf(X,Y)
              & ~ cc(Y) )
          & cc(X) ) ) )).

%----Functional: rf
fof(axiom_4,axiom,
    ( ! [X,Y,Z] : 
        ( ( rf(X,Y)
          & rf(X,Z) )
       => Y = Z ) )).

%----Inverse: rinvF
fof(axiom_5,axiom,
    ( ! [X,Y] : 
        ( rinvF(X,Y)
      <=> rf(Y,X) ) )).

%----Inverse: rinvR
fof(axiom_6,axiom,
    ( ! [X,Y] : 
        ( rinvR(X,Y)
      <=> rr(Y,X) ) )).

%----Transitive: rr
fof(axiom_7,axiom,
    ( ! [X,Y,Z] : 
        ( ( rr(X,Y)
          & rr(Y,Z) )
       => rr(X,Z) ) )).

%----i2003_11_14_17_19_35232
fof(axiom_8,axiom,
    ( cUnsatisfiable(i2003_11_14_17_19_35232) )).

fof(axiom_9,axiom,
    ( ! [X,Y] : 
        ( rf(X,Y)
       => rr(X,Y) ) )).

%------------------------------------------------------------------------------