%------------------------------------------------------------------------------
% File     : KRS114+1 : ILTP v1.1.0
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : DL Test: t12.1
% Version  : Especial.
% English  : 

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : inconsistent_description-logic-Manifest615 [Bec03]

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   34 (   1 unit)
%            Number of atoms       :   98 (  23 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   68 (   4 ~  ;   0  |;  30  &)
%                                         (  10 <=>;  24 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   18 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   76 (   0 singleton;  69 !;   7 ?)
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

fof(ca_Ax3_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & ca_Ax3(A) )
       => ca_Ax3(B) ) )).

fof(ca_Ax4_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & ca_Ax4(A) )
       => ca_Ax4(B) ) )).

fof(ca_Vx5_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & ca_Vx5(A) )
       => ca_Vx5(B) ) )).

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

fof(cpxcomp_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cpxcomp(A) )
       => cpxcomp(B) ) )).

fof(cq_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cq(A) )
       => cq(B) ) )).

fof(cqxcomp_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cqxcomp(A) )
       => cqxcomp(B) ) )).

fof(ra_Px1_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & ra_Px1(A,C) )
       => ra_Px1(B,C) ) )).

fof(ra_Px1_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & ra_Px1(C,A) )
       => ra_Px1(C,B) ) )).

fof(ra_Px2_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & ra_Px2(A,C) )
       => ra_Px2(B,C) ) )).

fof(ra_Px2_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & ra_Px2(C,A) )
       => ra_Px2(C,B) ) )).

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
      <=> ( ? [Y] : 
              ( rr(X,Y)
              & ca_Ax4(Y) )
          & ? [Y] : 
              ( rs(X,Y)
              & ca_Ax3(Y) ) ) ) )).

%----Equality cp
fof(axiom_3,axiom,
    ( ! [X] : 
        ( cp(X)
      <=> ~ ( ? [Y] : ra_Px1(X,Y) ) ) )).

%----Equality cpxcomp
fof(axiom_4,axiom,
    ( ! [X] : 
        ( cpxcomp(X)
      <=> ? [Y0] : ra_Px1(X,Y0) ) )).

%----Equality cq
fof(axiom_5,axiom,
    ( ! [X] : 
        ( cq(X)
      <=> ? [Y0] : ra_Px2(X,Y0) ) )).

%----Equality cqxcomp
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cqxcomp(X)
      <=> ~ ( ? [Y] : ra_Px2(X,Y) ) ) )).

%----Equality ca_Ax3
fof(axiom_7,axiom,
    ( ! [X] : 
        ( ca_Ax3(X)
      <=> ( cqxcomp(X)
          & cpxcomp(X) ) ) )).

%----Equality ca_Ax4
fof(axiom_8,axiom,
    ( ! [X] : 
        ( ca_Ax4(X)
      <=> ( ! [Y0,Y1] : 
              ( ( rinvR(X,Y0)
                & rinvR(X,Y1) )
             => Y0 = Y1 )
          & ? [Y] : 
              ( rinvR(X,Y)
              & ca_Vx5(Y) ) ) ) )).

%----Equality ca_Vx5
fof(axiom_9,axiom,
    ( ! [X] : 
        ( ca_Vx5(X)
      <=> ! [Y] : 
            ( rs(X,Y)
           => cp(Y) ) ) )).

%----Inverse: rinvR
fof(axiom_10,axiom,
    ( ! [X,Y] : 
        ( rinvR(X,Y)
      <=> rr(Y,X) ) )).

%----i2003_11_14_17_21_262
fof(axiom_11,axiom,
    ( cUnsatisfiable(i2003_11_14_17_21_262) )).

%------------------------------------------------------------------------------
