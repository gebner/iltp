%--------------------------------------------------------------------------
% File     : SET620+3 : ILTP v1.1.0
% Domain   : Set Theory (Boolean properties)
% Problem  : X sym\ Y = (X U Y) \ X ^ Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The symmetric difference of X and Y is the difference of (the 
%            union of X and Y) and the intersection of X and Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (96) [TS89] 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   14 (   8 unit)
%            Number of atoms       :   26 (   9 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   13 (   1 ~  ;   1  |;   3  &)
%                                         (   7 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    4 (   0 constant; 2-2 arity)
%            Number of variables   :   33 (   0 singleton;  33 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - df(7),1833089)
fof(symmetric_difference_defn,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = union(difference(B,C),difference(C,B)) )).

%---- line(boole - th(77),1833883)
fof(difference_into_intersection,axiom,
    ( ! [B,C] : difference(B,intersection(B,C)) = difference(B,C) )).

%---- line(boole - th(89),1834187)
fof(difference_distributes_over_union,axiom,
    ( ! [B,C,D] : difference(union(B,C),D) = union(difference(B,D),difference(C,D)) )).

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

%---- line(hidden - axiom177,1832615)
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

%---- line(boole - th(96),1834227)
fof(prove_th96,conjecture,
    ( ! [B,C] : symmetric_difference(B,C) = difference(union(B,C),intersection(B,C)) )).

%--------------------------------------------------------------------------
