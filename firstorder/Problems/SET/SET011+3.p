%--------------------------------------------------------------------------
% File     : SET011+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : X \ (X \ Y) = X ^ Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The difference of X and (the difference of X and Y) is the 
%            intersection of X and Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (82) [TS89] 

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0, 0.50 v2.6.0, 0.57 v2.5.0, 0.75 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    8 (   3 unit)
%            Number of atoms       :   18 (   4 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   11 (   1 ~  ;   0  |;   3  &)
%                                         (   6 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    2 (   0 constant; 2-2 arity)
%            Number of variables   :   19 (   0 singleton;  19 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

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

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

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

%---- line(hidden - axiom146,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(82),1833997)
fof(prove_difference_difference_intersection,conjecture,
    ( ! [B,C] : difference(B,difference(B,C)) = intersection(B,C) )).

%--------------------------------------------------------------------------
