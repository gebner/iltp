%------------------------------------------------------------------------------
% File     : KRS077+1 : ILTP v1.1.1
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t11.1
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest014 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Open (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   18 (   1 unit)
%            Number of atoms       :   55 (  13 equality)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   40 (   3 ~  ;   0  |;  19  &)
%                                         (   3 <=>;  15 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   10 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   42 (   0 singleton;  40 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(cUnsatisfiable_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cUnsatisfiable(A) )
       => cUnsatisfiable(B) ) )).

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

fof(cp_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cp(A) )
       => cp(B) ) )).

fof(rinvS_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvS(A,C) )
       => rinvS(B,C) ) )).

fof(rinvS_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvS(C,A) )
       => rinvS(C,B) ) )).

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

fof(rs_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rs(A,C) )
       => rs(B,C) ) )).

fof(rs_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rs(C,A) )
       => rs(C,B) ) )).

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
      <=> ( ! [Y0,Y1] : 
              ( ( rr(X,Y0)
                & rr(X,Y1) )
             => Y0 = Y1 )
          & ? [Y] : 
              ( rr(X,Y)
              & ! [Z] : 
                  ( rinvS(Y,Z)
                 => cp(Z) ) )
          & ~ cp(X)
          & ? [Y] : 
              ( rs(X,Y)
              & cp(Y) ) ) ) )).

%----Inverse: rinvS
fof(axiom_3,axiom,
    ( ! [X,Y] : 
        ( rinvS(X,Y)
      <=> rs(Y,X) ) )).

%----i2003_11_14_17_19_09372
fof(axiom_4,axiom,
    ( cUnsatisfiable(i2003_11_14_17_19_09372) )).

fof(axiom_5,axiom,
    ( ! [X,Y] : 
        ( rs(X,Y)
       => rr(X,Y) ) )).

%------------------------------------------------------------------------------
