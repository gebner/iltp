%--------------------------------------------------------------------------
% File     : SET200+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : Union is monotonic
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y and Z is a subset of V, then the union of 
%            X and Z is a subset of the union of Y and V.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (34) [TS89] 

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.17 v2.6.0, 0.29 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0, 0.75 v1.0.0
%
% Syntax   : Number of formulae    :    6 (   2 unit)
%            Number of atoms       :   14 (   2 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :    8 (   0 ~  ;   1  |;   1  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   16 (   0 singleton;  16 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] : 
        ( subset(B,C)
      <=> ! [D] : 
            ( member(D,B)
           => member(D,C) ) ) )).

%---- property(commutativity,op(union,2,function))
fof(commutativity_of_union,axiom,
    ( ! [B,C] : union(B,C) = union(C,B) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom41,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(34),1833242)
fof(prove_th34,conjecture,
    ( ! [B,C,D,E] : 
        ( ( subset(B,C)
          & subset(D,E) )
       => subset(union(B,D),union(C,E)) ) )).

%--------------------------------------------------------------------------
