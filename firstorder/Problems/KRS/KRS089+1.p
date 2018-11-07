%------------------------------------------------------------------------------
% File     : KRS089+1 : ILTP v1.1.1
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : A test for the interaction of one-of and inverse 
% Version  : Especial.
% English  : A test for the interaction of one-of and inverse using the idea 
%            of a spy point. Everything is related to the spy via the property 
%            p and we know that the spy has at most two invP successors, thus 
%            limiting the cardinality of the domain to being at most 2.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest035 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Open (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   19 (   2 unit)
%            Number of atoms       :   57 (  18 equality)
%            Maximal formula depth :   12 (   5 average)
%            Number of connectives :   43 (   5 ~  ;   2  |;  20  &)
%                                         (   2 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   2 constant; 0-0 arity)
%            Number of variables   :   41 (   0 singleton;  37 !;   4 ?)
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

fof(rinvP_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvP(A,C) )
       => rinvP(B,C) ) )).

fof(rinvP_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvP(C,A) )
       => rinvP(C,B) ) )).

fof(rp_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rp(A,C) )
       => rp(B,C) ) )).

fof(rp_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rp(C,A) )
       => rp(C,B) ) )).

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

%----Super cUnsatisfiable
fof(axiom_2,axiom,
    ( ! [X] : 
        ( cUnsatisfiable(X)
       => ? [Y0,Y1,Y2] : 
            ( rr(X,Y0)
            & rr(X,Y1)
            & rr(X,Y2)
            & Y0 != Y1
            & Y0 != Y2
            & Y1 != Y2 ) ) )).

%----Super cowlThing
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cowlThing(X)
       => ? [Y] : 
            ( rp(X,Y)
            & Y = ispy ) ) )).

%----Inverse: rp
fof(axiom_4,axiom,
    ( ! [X,Y] : 
        ( rp(X,Y)
      <=> rinvP(Y,X) ) )).

%----ispy
fof(axiom_5,axiom,
    ( ! [X0,X1,X2] : 
        ( ( rinvP(ispy,X0)
          & rinvP(ispy,X1)
          & rinvP(ispy,X2) )
       => ( X0 = X1
          | X0 = X2
          | X1 = X2 ) ) )).

%----ispy
fof(axiom_6,axiom,
    ( cowlThing(ispy) )).

%----i2003_11_14_17_19_53168
fof(axiom_7,axiom,
    ( cUnsatisfiable(i2003_11_14_17_19_53168) )).

%------------------------------------------------------------------------------
