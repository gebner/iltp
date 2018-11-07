%--------------------------------------------------------------------------
% File     : SET629+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : X ^ Y is disjoint from X \ Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The intersection of X and Y is disjoint from the difference of 
%            X and Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (111) [TS89] 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   2 unit)
%            Number of atoms       :   18 (   2 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   12 (   2 ~  ;   0  |;   3  &)
%                                         (   6 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   0 constant; 2-2 arity)
%            Number of variables   :   20 (   0 singleton;  19 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
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

%---- line(boole - df(5),1833080)
fof(intersect_defn,axiom,
    ( ! [B,C] : 
        ( intersect(B,C)
      <=> ? [D] : 
            ( member(D,B)
            & member(D,C) ) ) )).

%---- line(boole - axiom199,1833083)
fof(disjoint_defn,axiom,
    ( ! [B,C] : 
        ( disjoint(B,C)
      <=> ~ intersect(B,C) ) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- property(symmetry,op(intersect,2,predicate))
fof(symmetry_of_intersect,axiom,
    ( ! [B,C] : 
        ( intersect(B,C)
       => intersect(C,B) ) )).

%---- line(hidden - axiom201,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(111),1834358)
fof(prove_intersection_and_difference_disjoint,conjecture,
    ( ! [B,C] : disjoint(intersection(B,C),difference(B,C)) )).

%--------------------------------------------------------------------------
