%--------------------------------------------------------------------------
% File     : SET580+3 : ILTP v1.1.0
% Domain   : Set Theory (Boolean properties)
% Problem  : x is in X sym\ Y iff x is in X iff x is not in Y
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : x is in the symmetric difference of X and Y iff it is not the 
%            case x is in X iff x is in Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (23) [TS89] 

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.29 v2.5.0, 0.38 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    7 (   3 unit)
%            Number of atoms       :   15 (   4 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   10 (   2 ~  ;   1  |;   1  &)
%                                         (   6 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    3 (   0 constant; 2-2 arity)
%            Number of variables   :   18 (   0 singleton;  18 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(boole - df(4),1833078)
fof(difference_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,difference(B,C))
      <=> ( member(D,B)
          & ~ member(D,C) ) ) )).

%---- line(boole - df(7),1833089)
fof(symmetric_difference_defn,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = union(difference(B,C),difference(C,B)) )).

%---- property(commutativity,op(union,2,function))
fof(commutativity_of_union,axiom,
    ( ! [B,C] : union(B,C) = union(C,B) )).

%---- property(commutativity,op(symmetric_difference,2,function))
fof(commutativity_of_symmetric_difference,axiom,
    ( ! [B,C] : symmetric_difference(B,C) = symmetric_difference(C,B) )).

%---- line(hidden - axiom18,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(23),1833126)
fof(prove_th23,conjecture,
    ( ! [B,C,D] : 
        ( member(B,symmetric_difference(C,D))
      <=> ~ ( member(B,C)
          <=> member(B,D) ) ) )).

%--------------------------------------------------------------------------
