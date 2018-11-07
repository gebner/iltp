%--------------------------------------------------------------------------
% File     : SET624+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : X intersects Y U Z iff X intersects Y or X intersects Z
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : X intersects the union of Y and Z iff X intersects Y or X 
%            intersects Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (100) [TS89] 

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.67 v2.7.0, 0.50 v2.6.0, 0.43 v2.5.0, 0.50 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    6 (   1 unit)
%            Number of atoms       :   15 (   2 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :    9 (   0 ~  ;   2  |;   1  &)
%                                         (   5 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   16 (   0 singleton;  15 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] : 
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(boole - df(5),1833080)
fof(intersect_defn,axiom,
    ( ! [B,C] : 
        ( intersect(B,C)
      <=> ? [D] : 
            ( member(D,B)
            & member(D,C) ) ) )).

%---- property(commutativity,op(union,2,function))
fof(commutativity_of_union,axiom,
    ( ! [B,C] : union(B,C) = union(C,B) )).

%---- property(symmetry,op(intersect,2,predicate))
fof(symmetry_of_intersect,axiom,
    ( ! [B,C] : 
        ( intersect(B,C)
       => intersect(C,B) ) )).

%---- line(hidden - axiom186,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ! [D] : 
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(100),1834297)
fof(prove_intersect_with_union,conjecture,
    ( ! [B,C,D] : 
        ( intersect(B,union(C,D))
      <=> ( intersect(B,C)
          | intersect(B,D) ) ) )).

%--------------------------------------------------------------------------
