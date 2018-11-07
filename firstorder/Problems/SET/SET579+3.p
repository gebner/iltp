%--------------------------------------------------------------------------
% File     : SET579+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : Trybulec's 20th Boolean property of sets
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : 

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (20) [TS89] 

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.43 v2.5.0, 0.50 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0, 0.50 v1.0.0
%
% Syntax   : Number of formulae    :    5 (   1 unit)
%            Number of atoms       :   14 (   2 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   11 (   2 ~  ;   0  |;   3  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   13 (   0 singleton;  13 !;   0 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
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

%---- line(boole - th(20),1833115)
fof(prove_th20,conjecture,
    ( ! [B,C,D] : 
        ( ! [E] : 
            ( member(E,B)
          <=> ( member(E,C)
              & ~ member(E,D) ) )
       => B = difference(C,D) ) )).

%--------------------------------------------------------------------------
