%--------------------------------------------------------------------------
% File     : SET616+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : If X \ Y = Y \ X, then X = Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : If the difference of X and Y is the difference of Y and X, then 
%            X is Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (90) [TS89] 

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.33 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    7 (   1 unit)
%            Number of atoms       :   18 (   5 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   12 (   1 ~  ;   0  |;   2  &)
%                                         (   6 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   17 (   0 singleton;  17 !;   0 ?)
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

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- line(hidden - axiom163,1832615)
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

%---- line(boole - th(90),1834200)
fof(prove_th90,conjecture,
    ( ! [B,C] : 
        ( difference(B,C) = difference(C,B)
       => B = C ) )).

%--------------------------------------------------------------------------
