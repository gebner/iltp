%------------------------------------------------------------------------------
% File     : KRS052+1 : ILTP v1.1.2
% Domain   : Knowledge Representation (Semantic Web)
% Problem  : Integer multiplication in OWL DL, interacting with infinity
% Version  : Especial.
% English  : N times infinity is 2  times infinity. 
%            M times infinity is 3 times infinity. 
%            N times M times infinity is 5 times infinity.

% Refs     : [Bec03] Bechhofer (2003), Email to G. Sutcliffe
%          : [TR+04] Tsarkov et al. (2004), Using Vampire to Reason with OW
% Source   : [Bec03]
% Names    : consistent_description-logic-Manifest908 [Bec03]

% Status   : Satisfiable
% Rating   : 0.33 v3.1.0
%
% Status (intuit.) : Unsolved (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   39 (   0 unit)
%            Number of atoms       :  161 (  60 equality)
%            Maximal formula depth :   25 (   6 average)
%            Number of connectives :  138 (  16 ~  ;  21  |;  60  &)
%                                         (  10 <=>;  31 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  111 (   0 singleton;  98 !;  13 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : Sean Bechhofer says there are some errors in the encoding of
%            datatypes, so this problem may not be perfect. At least it's
%            still representative of the type of reasoning required for OWL.
%------------------------------------------------------------------------------
fof(ccardinality_N_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & ccardinality_N(A) )
       => ccardinality_N(B) ) )).

fof(ccardinality_N_times_M_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & ccardinality_N_times_M(A) )
       => ccardinality_N_times_M(B) ) )).

fof(cinfinite_substitution_1,axiom,
    ( ! [A,B] : 
        ( ( A = B
          & cinfinite(A) )
       => cinfinite(B) ) )).

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

fof(rinvP_1_to_N_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvP_1_to_N(A,C) )
       => rinvP_1_to_N(B,C) ) )).

fof(rinvP_1_to_N_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvP_1_to_N(C,A) )
       => rinvP_1_to_N(C,B) ) )).

fof(rinvQ_1_to_M_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvQ_1_to_M(A,C) )
       => rinvQ_1_to_M(B,C) ) )).

fof(rinvQ_1_to_M_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvQ_1_to_M(C,A) )
       => rinvQ_1_to_M(C,B) ) )).

fof(rinvR_N_times_M_to_1_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvR_N_times_M_to_1(A,C) )
       => rinvR_N_times_M_to_1(B,C) ) )).

fof(rinvR_N_times_M_to_1_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rinvR_N_times_M_to_1(C,A) )
       => rinvR_N_times_M_to_1(C,B) ) )).

fof(rp_N_to_1_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rp_N_to_1(A,C) )
       => rp_N_to_1(B,C) ) )).

fof(rp_N_to_1_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rp_N_to_1(C,A) )
       => rp_N_to_1(C,B) ) )).

fof(rq_M_to_1_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rq_M_to_1(A,C) )
       => rq_M_to_1(B,C) ) )).

fof(rq_M_to_1_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rq_M_to_1(C,A) )
       => rq_M_to_1(C,B) ) )).

fof(rr_N_times_M_to_1_substitution_1,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rr_N_times_M_to_1(A,C) )
       => rr_N_times_M_to_1(B,C) ) )).

fof(rr_N_times_M_to_1_substitution_2,axiom,
    ( ! [A,B,C] : 
        ( ( A = B
          & rr_N_times_M_to_1(C,A) )
       => rr_N_times_M_to_1(C,B) ) )).

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

%----Equality ccardinality_N
fof(axiom_2,axiom,
    ( ! [X] : 
        ( ccardinality_N(X)
      <=> ( ? [Y0,Y1,Y2] : 
              ( rinvQ_1_to_M(X,Y0)
              & rinvQ_1_to_M(X,Y1)
              & rinvQ_1_to_M(X,Y2)
              & Y0 != Y1
              & Y0 != Y2
              & Y1 != Y2 )
          & ! [Y0,Y1,Y2,Y3] : 
              ( ( rinvQ_1_to_M(X,Y0)
                & rinvQ_1_to_M(X,Y1)
                & rinvQ_1_to_M(X,Y2)
                & rinvQ_1_to_M(X,Y3) )
             => ( Y0 = Y1
                | Y0 = Y2
                | Y0 = Y3
                | Y1 = Y2
                | Y1 = Y3
                | Y2 = Y3 ) ) ) ) )).

%----Equality ccardinality_N
fof(axiom_3,axiom,
    ( ! [X] : 
        ( ccardinality_N(X)
      <=> ? [Y] : 
            ( rp_N_to_1(X,Y)
            & cinfinite(Y) ) ) )).

%----Equality ccardinality_N_times_M
fof(axiom_4,axiom,
    ( ! [X] : 
        ( ccardinality_N_times_M(X)
      <=> ? [Y] : 
            ( rq_M_to_1(X,Y)
            & ccardinality_N(Y) ) ) )).

%----Equality ccardinality_N_times_M
fof(axiom_5,axiom,
    ( ! [X] : 
        ( ccardinality_N_times_M(X)
      <=> ? [Y] : 
            ( rr_N_times_M_to_1(X,Y)
            & cinfinite(Y) ) ) )).

%----Equality cinfinite
fof(axiom_6,axiom,
    ( ! [X] : 
        ( cinfinite(X)
      <=> ( ? [Y0,Y1,Y2,Y3,Y4] : 
              ( rinvR_N_times_M_to_1(X,Y0)
              & rinvR_N_times_M_to_1(X,Y1)
              & rinvR_N_times_M_to_1(X,Y2)
              & rinvR_N_times_M_to_1(X,Y3)
              & rinvR_N_times_M_to_1(X,Y4)
              & Y0 != Y1
              & Y0 != Y2
              & Y0 != Y3
              & Y0 != Y4
              & Y1 != Y2
              & Y1 != Y3
              & Y1 != Y4
              & Y2 != Y3
              & Y2 != Y4
              & Y3 != Y4 )
          & ! [Y0,Y1,Y2,Y3,Y4,Y5] : 
              ( ( rinvR_N_times_M_to_1(X,Y0)
                & rinvR_N_times_M_to_1(X,Y1)
                & rinvR_N_times_M_to_1(X,Y2)
                & rinvR_N_times_M_to_1(X,Y3)
                & rinvR_N_times_M_to_1(X,Y4)
                & rinvR_N_times_M_to_1(X,Y5) )
             => ( Y0 = Y1
                | Y0 = Y2
                | Y0 = Y3
                | Y0 = Y4
                | Y0 = Y5
                | Y1 = Y2
                | Y1 = Y3
                | Y1 = Y4
                | Y1 = Y5
                | Y2 = Y3
                | Y2 = Y4
                | Y2 = Y5
                | Y3 = Y4
                | Y3 = Y5
                | Y4 = Y5 ) ) ) ) )).

%----Equality cinfinite
fof(axiom_7,axiom,
    ( ! [X] : 
        ( cinfinite(X)
      <=> ( ? [Y0,Y1] : 
              ( rinvP_1_to_N(X,Y0)
              & rinvP_1_to_N(X,Y1)
              & Y0 != Y1 )
          & ! [Y0,Y1,Y2] : 
              ( ( rinvP_1_to_N(X,Y0)
                & rinvP_1_to_N(X,Y1)
                & rinvP_1_to_N(X,Y2) )
             => ( Y0 = Y1
                | Y0 = Y2
                | Y1 = Y2 ) ) ) ) )).

%----Functional: rp_N_to_1
fof(axiom_8,axiom,
    ( ! [X,Y,Z] : 
        ( ( rp_N_to_1(X,Y)
          & rp_N_to_1(X,Z) )
       => Y = Z ) )).

%----Domain: rp_N_to_1
fof(axiom_9,axiom,
    ( ! [X,Y] : 
        ( rp_N_to_1(X,Y)
       => ccardinality_N(X) ) )).

%----Range: rp_N_to_1
fof(axiom_10,axiom,
    ( ! [X,Y] : 
        ( rp_N_to_1(X,Y)
       => cinfinite(Y) ) )).

%----Inverse: rp_N_to_1
fof(axiom_11,axiom,
    ( ! [X,Y] : 
        ( rp_N_to_1(X,Y)
      <=> rinvP_1_to_N(Y,X) ) )).

%----Functional: rq_M_to_1
fof(axiom_12,axiom,
    ( ! [X,Y,Z] : 
        ( ( rq_M_to_1(X,Y)
          & rq_M_to_1(X,Z) )
       => Y = Z ) )).

%----Domain: rq_M_to_1
fof(axiom_13,axiom,
    ( ! [X,Y] : 
        ( rq_M_to_1(X,Y)
       => ccardinality_N_times_M(X) ) )).

%----Range: rq_M_to_1
fof(axiom_14,axiom,
    ( ! [X,Y] : 
        ( rq_M_to_1(X,Y)
       => ccardinality_N(Y) ) )).

%----Inverse: rq_M_to_1
fof(axiom_15,axiom,
    ( ! [X,Y] : 
        ( rq_M_to_1(X,Y)
      <=> rinvQ_1_to_M(Y,X) ) )).

%----Functional: rr_N_times_M_to_1
fof(axiom_16,axiom,
    ( ! [X,Y,Z] : 
        ( ( rr_N_times_M_to_1(X,Y)
          & rr_N_times_M_to_1(X,Z) )
       => Y = Z ) )).

%----Domain: rr_N_times_M_to_1
fof(axiom_17,axiom,
    ( ! [X,Y] : 
        ( rr_N_times_M_to_1(X,Y)
       => ccardinality_N_times_M(X) ) )).

%----Range: rr_N_times_M_to_1
fof(axiom_18,axiom,
    ( ! [X,Y] : 
        ( rr_N_times_M_to_1(X,Y)
       => cinfinite(Y) ) )).

%----Inverse: rr_N_times_M_to_1
fof(axiom_19,axiom,
    ( ! [X,Y] : 
        ( rr_N_times_M_to_1(X,Y)
      <=> rinvR_N_times_M_to_1(Y,X) ) )).

%------------------------------------------------------------------------------
