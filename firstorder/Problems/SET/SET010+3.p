%--------------------------------------------------------------------------
% File     : SET010+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : X \ Y ^ Z = (X \ Y) U (X \ Z)
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The difference of X and the intersection of Y and Z is the 
%            union of (the difference of X and Y) and (the difference of X 
%            and Z). 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (86) [TS89] 

% Status   : Theorem
% Rating   : 1.00 v3.1.0, 0.89 v2.7.0, 1.00 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   13 (   5 unit)
%            Number of atoms       :   28 (   5 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   16 (   1 ~  ;   1  |;   4  &)
%                                         (   7 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    3 (   0 constant; 2-2 arity)
%            Number of variables   :   33 (   0 singleton;  33 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(boole - df(3),1833060)
fof(intersection_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,intersection(B,C))
      <=> ( member(D,B)
          & member(D,C) ) ) )).

%---- line(boole - df(4),1833078)
fof(difference_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,difference(B,C))
      <=> ( member(D,B)
          & ~ member(D,C) ) ) )).

%---- line(boole - th(32),1833206)
fof(union_subset,axiom,
    ( ! [B,C,D] : 
        ( ( subset(B,C)
          & subset(D,C) )
       => subset(union(B,D),C) ) )).

%---- line(boole - th(37),1833277)
fof(intersection_is_subset,axiom,
    ( ! [B,C] : subset(intersection(B,C),B) )).

%---- line(boole - th(47),1833437)
fof(subset_difference,axiom,
    ( ! [B,C,D] : 
        ( subset(B,C)
       => subset(difference(D,C),difference(D,B)) ) )).

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- property(commutativity,op(union,2,function))
fof(commutativity_of_union,axiom,
    ( ! [B,C] : union(B,C) = union(C,B) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] : 
        ( subset(B,C)
      <=> ! [D] : 
            ( member(D,B)
           => member(D,C) ) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom156,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(86),1834100)
fof(prove_difference_and_intersection_and_union,conjecture,
    ( ! [B,C,D] : difference(B,intersection(C,D)) = union(difference(B,C),difference(B,D)) )).

%--------------------------------------------------------------------------
