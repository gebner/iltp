%--------------------------------------------------------------------------
% File     : SET144+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : If X is a subset of Z, then X U Y ^ Z = (X U Y) ^ Z
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : If X is a subset of Z, then the union of X and the intersection 
%            of Y and Z is the intersection of (the union of X and Y) and Z. 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (44) [TS89] 

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    9 (   3 unit)
%            Number of atoms       :   20 (   5 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :   11 (   0 ~  ;   1  |;   2  &)
%                                         (   6 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   0 constant; 2-2 arity)
%            Number of variables   :   22 (   0 singleton;  22 !;   0 ?)
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

%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] : 
        ( subset(B,C)
      <=> ! [D] : 
            ( member(D,B)
           => member(D,C) ) ) )).

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

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom57,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(44),1833382)
fof(prove_th44,conjecture,
    ( ! [B,C,D] : 
        ( subset(B,C)
       => union(B,intersection(D,C)) = intersection(union(B,D),C) ) )).

%--------------------------------------------------------------------------
