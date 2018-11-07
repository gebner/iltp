%--------------------------------------------------------------------------
% File     : SET591+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : If X (= Y \ X, then X = the empty set
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : If X is a subset of the difference of Y and X, then X is the 
%            empty set.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (50) [TS89] 

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.00 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1.0, 0.50 v1.0.0
%
% Syntax   : Number of formulae    :    7 (   2 unit)
%            Number of atoms       :   15 (   2 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   11 (   3 ~  ;   0  |;   2  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   14 (   0 singleton;  14 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] : 
        ( subset(B,C)
      <=> ! [D] : 
            ( member(D,B)
           => member(D,C) ) ) )).

%---- line(boole - df(4),1833078)
fof(difference_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,difference(B,C))
      <=> ( member(D,B)
          & ~ member(D,C) ) ) )).

%---- line(hidden - axiom66,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom68,1832628)
fof(empty_defn,axiom,
    ( ! [B] : 
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(boole - th(50),1833476)
fof(prove_th50,conjecture,
    ( ! [B,C] : 
        ( subset(B,difference(C,B))
       => B = empty_set ) )).

%--------------------------------------------------------------------------
