%--------------------------------------------------------------------------
% File     : SET002+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : Idempotency of union
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (62) [TS89] 

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   3 unit)
%            Number of atoms       :   17 (   5 equality)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    9 (   0 ~  ;   1  |;   1  &)
%                                         (   5 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   17 (   0 singleton;  17 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - th(35),1833266)
fof(subset_union,axiom,
    ( ! [B,C] : 
        ( subset(B,C)
       => union(B,C) = C ) )).

%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

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

%---- line(hidden - axiom102,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(62),1833685)
fof(prove_idempotency_of_union,conjecture,
    ( ! [B] : union(B,B) = B )).

%--------------------------------------------------------------------------
