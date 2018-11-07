%--------------------------------------------------------------------------
% File     : SET622+3 : ILTP v1.1.1
% Domain   : Set Theory (Boolean properties)
% Problem  : X \ (Y sym\ Z) = (X \ (Y U Z)) U X ^ Y ^ Z
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The difference of X and (the symmetric difference of Y and Z) 
%            is the union of (the difference of X and (the union of Y and Z)) 
%            and the intersection of X and the intersection of Y and Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (98) [TS89] 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   15 (   9 unit)
%            Number of atoms       :   27 (  10 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   13 (   1 ~  ;   1  |;   3  &)
%                                         (   7 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    4 (   0 constant; 2-2 arity)
%            Number of variables   :   37 (   0 singleton;  37 !;   0 ?)
%            Maximal term depth    :    4 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - th(67),1833740)
fof(associativity_of_intersection,axiom,
    ( ! [B,C,D] : intersection(intersection(B,C),D) = intersection(B,intersection(C,D)) )).

%---- line(boole - th(81),1833972)
fof(difference_difference_union2,axiom,
    ( ! [B,C,D] : difference(B,difference(C,D)) = union(difference(B,C),intersection(B,D)) )).

%---- line(boole - th(96),1834227)
fof(symmetric_difference_and_difference,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = difference(union(B,C),intersection(B,C)) )).

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

%---- line(boole - df(7),1833089)
fof(symmetric_difference_defn,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = union(difference(B,C),difference(C,B)) )).

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

%---- property(commutativity,op(symmetric_difference,2,function))
fof(commutativity_of_symmetric_difference,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = symmetric_difference(C,B) )).

%---- line(hidden - axiom181,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

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

%---- line(boole - th(98),1834245)
fof(prove_th98,conjecture,
    ( ! [B,C,D] : difference(B,symmetric_difference(C,D)) = union(difference(B,union(C,D)),intersection(intersection(B,C),D)) )).

%--------------------------------------------------------------------------
