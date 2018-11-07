%--------------------------------------------------------------------------
% File     : NLP049+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : Mia ordered a shake, problem 7
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "Mia ordered a shake. It cost five dollars."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris026 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   57 (   1 unit)
%            Number of atoms       :  161 (  17 equality)
%            Maximal formula depth :   31 (   5 average)
%            Number of connectives :  127 (  23 ~  ;   4  |;  42  &)
%                                         (   1 <=>;  57 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   50 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  132 (   0 singleton; 117 !;  15 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ! [U,V] : 
        ( woman(U,V)
       => female(U,V) ) )).

fof(ax2,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => animate(U,V) ) )).

fof(ax3,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => human(U,V) ) )).

fof(ax4,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => living(U,V) ) )).

fof(ax5,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => impartial(U,V) ) )).

fof(ax6,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => entity(U,V) ) )).

fof(ax7,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => organism(U,V) ) )).

fof(ax8,axiom,
    ( ! [U,V] : 
        ( woman(U,V)
       => human_person(U,V) ) )).

fof(ax9,axiom,
    ( ! [U,V] : 
        ( mia_forename(U,V)
       => forename(U,V) ) )).

fof(ax10,axiom,
    ( ! [U,V] : 
        ( relation(U,V)
       => abstraction(U,V) ) )).

fof(ax11,axiom,
    ( ! [U,V] : 
        ( relname(U,V)
       => relation(U,V) ) )).

fof(ax12,axiom,
    ( ! [U,V] : 
        ( forename(U,V)
       => relname(U,V) ) )).

fof(ax13,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => unisex(U,V) ) )).

fof(ax14,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => impartial(U,V) ) )).

fof(ax15,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => nonliving(U,V) ) )).

fof(ax16,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => existent(U,V) ) )).

fof(ax17,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => specific(U,V) ) )).

fof(ax18,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => thing(U,V) ) )).

fof(ax19,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => entity(U,V) ) )).

fof(ax20,axiom,
    ( ! [U,V] : 
        ( substance_matter(U,V)
       => object(U,V) ) )).

fof(ax21,axiom,
    ( ! [U,V] : 
        ( food(U,V)
       => substance_matter(U,V) ) )).

fof(ax22,axiom,
    ( ! [U,V] : 
        ( beverage(U,V)
       => food(U,V) ) )).

fof(ax23,axiom,
    ( ! [U,V] : 
        ( shake_beverage(U,V)
       => beverage(U,V) ) )).

fof(ax24,axiom,
    ( ! [U,V] : 
        ( order(U,V)
       => event(U,V) ) )).

fof(ax25,axiom,
    ( ! [U,V] : 
        ( act(U,V)
       => event(U,V) ) )).

fof(ax26,axiom,
    ( ! [U,V] : 
        ( order(U,V)
       => act(U,V) ) )).

fof(ax27,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => unisex(U,V) ) )).

fof(ax28,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => nonexistent(U,V) ) )).

fof(ax29,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => specific(U,V) ) )).

fof(ax30,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => thing(U,V) ) )).

fof(ax31,axiom,
    ( ! [U,V] : 
        ( event(U,V)
       => eventuality(U,V) ) )).

fof(ax32,axiom,
    ( ! [U,V] : 
        ( cost(U,V)
       => event(U,V) ) )).

fof(ax33,axiom,
    ( ! [U,V] : 
        ( five(U,V)
       => group(U,V) ) )).

fof(ax34,axiom,
    ( ! [U,V] : 
        ( set(U,V)
       => multiple(U,V) ) )).

fof(ax35,axiom,
    ( ! [U,V] : 
        ( group(U,V)
       => set(U,V) ) )).

fof(ax36,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => unisex(U,V) ) )).

fof(ax37,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => general(U,V) ) )).

fof(ax38,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => nonhuman(U,V) ) )).

fof(ax39,axiom,
    ( ! [U,V] : 
        ( thing(U,V)
       => singleton(U,V) ) )).

fof(ax40,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => thing(U,V) ) )).

fof(ax41,axiom,
    ( ! [U,V] : 
        ( possession(U,V)
       => abstraction(U,V) ) )).

fof(ax42,axiom,
    ( ! [U,V] : 
        ( currency(U,V)
       => possession(U,V) ) )).

fof(ax43,axiom,
    ( ! [U,V] : 
        ( cash(U,V)
       => currency(U,V) ) )).

fof(ax44,axiom,
    ( ! [U,V] : 
        ( dollar(U,V)
       => cash(U,V) ) )).

fof(ax45,axiom,
    ( ! [U,V] : 
        ( animate(U,V)
       => ~ nonliving(U,V) ) )).

fof(ax46,axiom,
    ( ! [U,V] : 
        ( existent(U,V)
       => ~ nonexistent(U,V) ) )).

fof(ax47,axiom,
    ( ! [U,V] : 
        ( nonhuman(U,V)
       => ~ human(U,V) ) )).

fof(ax48,axiom,
    ( ! [U,V] : 
        ( nonliving(U,V)
       => ~ living(U,V) ) )).

fof(ax49,axiom,
    ( ! [U,V] : 
        ( present(U,V)
       => ~ past(U,V) ) )).

fof(ax50,axiom,
    ( ! [U,V] : 
        ( singleton(U,V)
       => ~ multiple(U,V) ) )).

fof(ax51,axiom,
    ( ! [U,V] : 
        ( specific(U,V)
       => ~ general(U,V) ) )).

fof(ax52,axiom,
    ( ! [U,V] : 
        ( unisex(U,V)
       => ~ female(U,V) ) )).

fof(ax53,axiom,
    ( ! [U,V,W] : 
        ( ( entity(U,V)
          & forename(U,W)
          & of(U,W,V) )
       => ~ ( ? [X] : 
                ( forename(U,X)
                & X != W
                & of(U,X,V) ) ) ) )).

fof(ax54,axiom,
    ( ! [U,V,W,X] : 
        ( ( nonreflexive(U,V)
          & agent(U,V,W)
          & patient(U,V,X) )
       => W != X ) )).

fof(ax55,axiom,
    ( ! [U,V] : 
        ( five(U,V)
      <=> ? [W] : 
            ( member(U,W,V)
            & ? [X] : 
                ( member(U,X,V)
                & X != W
                & ? [Y] : 
                    ( member(U,Y,V)
                    & Y != X
                    & Y != W
                    & ? [Z] : 
                        ( member(U,Z,V)
                        & Z != Y
                        & Z != X
                        & Z != W
                        & ? [X1] : 
                            ( member(U,X1,V)
                            & X1 != Z
                            & X1 != Y
                            & X1 != X
                            & X1 != W
                            & ! [X2] : 
                                ( member(U,X2,V)
                               => ( X2 = X1
                                  | X2 = Z
                                  | X2 = Y
                                  | X2 = X
                                  | X2 = W ) ) ) ) ) ) ) ) )).

fof(ax56,axiom,
    ( ! [U] : ~ ( ? [V] : member(U,V,V) ) )).

fof(co1,conjecture,
    ( ~ ( ? [U] : 
            ( actual_world(U)
            & ? [V,W,X,Y,Z,X1] : 
                ( nonhuman(U,V)
                & of(U,X,W)
                & woman(U,W)
                & mia_forename(U,X)
                & forename(U,X)
                & shake_beverage(U,Y)
                & event(U,Z)
                & agent(U,Z,W)
                & patient(U,Z,Y)
                & past(U,Z)
                & nonreflexive(U,Z)
                & order(U,Z)
                & ! [X2] : 
                    ( member(U,X2,X1)
                   => ? [X3] : 
                        ( event(U,X3)
                        & agent(U,X3,V)
                        & patient(U,X3,X2)
                        & present(U,X3)
                        & nonreflexive(U,X3)
                        & cost(U,X3) ) )
                & five(U,X1)
                & group(U,X1)
                & ! [X4] : 
                    ( member(U,X4,X1)
                   => dollar(U,X4) ) ) ) ) )).

%--------------------------------------------------------------------------