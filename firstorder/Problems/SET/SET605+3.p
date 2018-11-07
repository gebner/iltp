%--------------------------------------------------------------------------
% File     : SET605+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : The difference of X and the union of X and Y is the empty set
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (76) [TS89] 

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.11 v2.7.0, 0.00 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0, 0.50 v1.0.0
%
% Syntax   : Number of formulae    :   12 (   5 unit)
%            Number of atoms       :   24 (   5 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   15 (   3 ~  ;   1  |;   2  &)
%                                         (   8 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   26 (   0 singleton;  26 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - th(31),1833190)
fof(subset_of_union,axiom,
    ( ! [B,C] : subset(B,union(B,C)) )).

%---- line(boole - th(45),1833405)
fof(difference_empty_set,axiom,
    ( ! [B,C] : 
        ( difference(B,C) = empty_set
      <=> subset(B,C) ) )).

%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(hidden - axiom129,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

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

%---- line(hidden - axiom131,1832628)
fof(empty_defn,axiom,
    ( ! [B] : 
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(hidden - axiom132,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(76),1833872)
fof(prove_th76,conjecture,
    ( ! [B,C] : difference(B,union(B,C)) = empty_set )).

%--------------------------------------------------------------------------
