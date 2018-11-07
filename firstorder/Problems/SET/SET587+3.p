%--------------------------------------------------------------------------
% File     : SET587+3 : ILTP v1.1.0
% Domain   : Set Theory (Boolean properties)
% Problem  : X \ Y = the empty set iff X (= Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The difference of X and Y is the empty set iff X is a subset of 
%            Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (45) [TS89] 

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.33 v2.6.0, 0.29 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    9 (   2 unit)
%            Number of atoms       :   21 (   4 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   15 (   3 ~  ;   0  |;   2  &)
%                                         (   8 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   20 (   0 singleton;  20 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(tarski - th(2),1832736)
fof(member_equal,axiom,
    ( ! [B,C] : 
        ( ! [D] : 
            ( member(D,B)
          <=> member(D,C) )
       => B = C ) )).

%---- line(boole - df(4),1833078)
fof(difference_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,difference(B,C))
      <=> ( member(D,B)
          & ~ member(D,C) ) ) )).

%---- line(hidden - axiom58,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

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

%---- line(hidden - axiom59,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom61,1832628)
fof(empty_defn,axiom,
    ( ! [B] : 
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(boole - th(45),1833405)
fof(prove_difference_empty_set,conjecture,
    ( ! [B,C] : 
        ( difference(B,C) = empty_set
      <=> subset(B,C) ) )).

%--------------------------------------------------------------------------
