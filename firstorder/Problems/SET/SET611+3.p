%--------------------------------------------------------------------------
% File     : SET611+3 : ILTP v1.1.2
% Domain   : Set Theory (Boolean properties)
% Problem  : X ^ Y = the empty set iff X \ Y = X
% Version  : [Try89] axioms : Reduced > Incomplete.
% English  : The intersection of X and Y is the empty set iff the difference 
%            of X and Y is X.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try89] Trybulec (1989), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (84) [TS89] 

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.71 v2.5.0, 0.50 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   11 (   3 unit)
%            Number of atoms       :   25 (   6 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   17 (   3 ~  ;   0  |;   3  &)
%                                         (   9 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   25 (   0 singleton;  25 !;   0 ?)
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

%---- line(hidden - axiom149,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] : 
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- line(hidden - axiom150,1832615)
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

%---- line(hidden - axiom152,1832628)
fof(empty_defn,axiom,
    ( ! [B] : 
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(boole - th(84),1834054)
fof(prove_th84,conjecture,
    ( ! [B,C] : 
        ( intersection(B,C) = empty_set
      <=> difference(B,C) = B ) )).

%--------------------------------------------------------------------------
