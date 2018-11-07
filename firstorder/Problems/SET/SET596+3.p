%--------------------------------------------------------------------------
% File     : SET596+3 : ILTP v1.1.0
% Domain   : Set Theory (Boolean properties)
% Problem  : If X (= Y and Y ^ Z = the empty set, then X ^ Z = the empty set
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y and the intersection of Y and Z is the 
%            empty set, then the intersection of X and Z is the empty set.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (55) [TS89] 

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   11 (   3 unit)
%            Number of atoms       :   24 (   6 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :   15 (   2 ~  ;   0  |;   3  &)
%                                         (   6 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   24 (   0 singleton;  24 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - th(30),1833179)
fof(subset_of_empty_set_is_empty_set,axiom,
    ( ! [B] : 
        ( subset(B,empty_set)
       => B = empty_set ) )).

%---- line(boole - th(40),1833318)
fof(intersection_of_subset,axiom,
    ( ! [B,C,D] : 
        ( subset(B,C)
       => subset(intersection(B,D),intersection(C,D)) ) )).

%---- line(hidden - axiom79,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

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

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom81,1832628)
fof(empty_defn,axiom,
    ( ! [B] : 
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(hidden - axiom82,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(55),1833564)
fof(prove_th55,conjecture,
    ( ! [B,C,D] : 
        ( ( subset(B,C)
          & intersection(C,D) = empty_set )
       => intersection(B,D) = empty_set ) )).

%--------------------------------------------------------------------------
