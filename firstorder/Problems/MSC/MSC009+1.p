%--------------------------------------------------------------------------
% File     : MSC009+1 : ILTP v1.1.0
% Domain   : Miscellaneous
% Problem  : Definitions of a family structure
% Version  : Especial.
% English  : 

% Refs     : [FL+93] Fermuller et al. (1993), Resolution Methods for the De
% Source   : [FL+93]
% Names    : 

% Status   : Satisfiable
% Rating   : 0.00 v3.1.0, 0.17 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    7 (   0 unit)
%            Number of atoms       :   26 (   0 equality)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   21 (   2 ~  ;   1  |;  10  &)
%                                         (   7 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   10 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   13 (   0 singleton;   8 !;   5 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(female,axiom,
    ( ! [X] : 
        ( female(X)
      <=> ~ male(X) ) )).

fof(person,axiom,
    ( ! [X] : 
        ( person(X)
      <=> ? [Y] : 
            ( sex(X,Y)
            & ( male(Y)
              | female(Y) ) ) ) )).

fof(parent,axiom,
    ( ! [X] : 
        ( parent(X)
      <=> ( person(X)
          & ? [Y] : 
              ( child(X,Y)
              & person(Y) ) ) ) )).

fof(mother,axiom,
    ( ! [X] : 
        ( mother(X)
      <=> ( parent(X)
          & ? [Y] : 
              ( sex(X,Y)
              & female(Y) ) ) ) )).

fof(father,axiom,
    ( ! [X] : 
        ( father(X)
      <=> ( parent(X)
          & ~ mother(X) ) ) )).

fof(grandparent,axiom,
    ( ! [X] : 
        ( grandparent(X)
      <=> ( parent(X)
          & ? [Y] : 
              ( child(X,Y)
              & parent(Y) ) ) ) )).

fof(parent_with_sons_only,axiom,
    ( ! [X] : 
        ( parent_with_sons_only(X)
      <=> ( parent(X)
          & ! [Y] : 
              ( child(X,Y)
             => ? [Z] : 
                  ( sex(Y,Z)
                  & male(Z) ) ) ) ) )).

%--------------------------------------------------------------------------
