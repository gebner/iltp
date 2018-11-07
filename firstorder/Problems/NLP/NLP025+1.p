%--------------------------------------------------------------------------
% File     : NLP025+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : Mia wants to dance, problem 3
% Version  : [Bos00b] axioms.
% English  : Eliminating non-informative interpretations in the statement
%            "Mia wants to dance. Vincent does not want to dance."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris002 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.33 v2.7.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   74 (   0 unit)
%            Number of atoms       :  233 (   2 equality)
%            Maximal formula depth :   40 (   6 average)
%            Number of connectives :  170 (  11 ~  ;   0  |;  86  &)
%                                         (   0 <=>;  73 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   37 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  205 (   0 singleton; 187 !;  18 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => male(U,V) ) )).

fof(ax2,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => human_person(U,V) ) )).

fof(ax3,axiom,
    ( ! [U,V] : 
        ( vincent_forename(U,V)
       => forename(U,V) ) )).

fof(ax4,axiom,
    ( ! [U,V] : 
        ( woman(U,V)
       => female(U,V) ) )).

fof(ax5,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => animate(U,V) ) )).

fof(ax6,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => human(U,V) ) )).

fof(ax7,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => living(U,V) ) )).

fof(ax8,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => impartial(U,V) ) )).

fof(ax9,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => existent(U,V) ) )).

fof(ax10,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => specific(U,V) ) )).

fof(ax11,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => thing(U,V) ) )).

fof(ax12,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => entity(U,V) ) )).

fof(ax13,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => organism(U,V) ) )).

fof(ax14,axiom,
    ( ! [U,V] : 
        ( woman(U,V)
       => human_person(U,V) ) )).

fof(ax15,axiom,
    ( ! [U,V] : 
        ( mia_forename(U,V)
       => forename(U,V) ) )).

fof(ax16,axiom,
    ( ! [U,V] : 
        ( relname(U,V)
       => relation(U,V) ) )).

fof(ax17,axiom,
    ( ! [U,V] : 
        ( forename(U,V)
       => relname(U,V) ) )).

fof(ax18,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => unisex(U,V) ) )).

fof(ax19,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => general(U,V) ) )).

fof(ax20,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => nonhuman(U,V) ) )).

fof(ax21,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => thing(U,V) ) )).

fof(ax22,axiom,
    ( ! [U,V] : 
        ( relation(U,V)
       => abstraction(U,V) ) )).

fof(ax23,axiom,
    ( ! [U,V] : 
        ( proposition(U,V)
       => relation(U,V) ) )).

fof(ax24,axiom,
    ( ! [U,V] : 
        ( desire_want(U,V)
       => event(U,V) ) )).

fof(ax25,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => unisex(U,V) ) )).

fof(ax26,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => nonexistent(U,V) ) )).

fof(ax27,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => specific(U,V) ) )).

fof(ax28,axiom,
    ( ! [U,V] : 
        ( thing(U,V)
       => singleton(U,V) ) )).

fof(ax29,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => thing(U,V) ) )).

fof(ax30,axiom,
    ( ! [U,V] : 
        ( event(U,V)
       => eventuality(U,V) ) )).

fof(ax31,axiom,
    ( ! [U,V] : 
        ( dance(U,V)
       => event(U,V) ) )).

fof(ax32,axiom,
    ( ! [U,V] : 
        ( existent(U,V)
       => ~ nonexistent(U,V) ) )).

fof(ax33,axiom,
    ( ! [U,V] : 
        ( male(U,V)
       => ~ female(U,V) ) )).

fof(ax34,axiom,
    ( ! [U,V] : 
        ( nonhuman(U,V)
       => ~ human(U,V) ) )).

fof(ax35,axiom,
    ( ! [U,V] : 
        ( specific(U,V)
       => ~ general(U,V) ) )).

fof(ax36,axiom,
    ( ! [U,V] : 
        ( unisex(U,V)
       => ~ female(U,V) ) )).

fof(ax37,axiom,
    ( ! [U,V] : 
        ( unisex(U,V)
       => ~ male(U,V) ) )).

fof(ax38,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & male(V,U) )
       => male(W,U) ) )).

fof(ax39,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & man(V,U) )
       => man(W,U) ) )).

fof(ax40,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & vincent_forename(V,U) )
       => vincent_forename(W,U) ) )).

fof(ax41,axiom,
    ( ! [U,V,W,X] : 
        ( ( accessible_world(W,X)
          & of(W,U,V) )
       => of(X,U,V) ) )).

fof(ax42,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & female(V,U) )
       => female(W,U) ) )).

fof(ax43,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & animate(V,U) )
       => animate(W,U) ) )).

fof(ax44,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & human(V,U) )
       => human(W,U) ) )).

fof(ax45,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & living(V,U) )
       => living(W,U) ) )).

fof(ax46,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & impartial(V,U) )
       => impartial(W,U) ) )).

fof(ax47,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & existent(V,U) )
       => existent(W,U) ) )).

fof(ax48,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & entity(V,U) )
       => entity(W,U) ) )).

fof(ax49,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & organism(V,U) )
       => organism(W,U) ) )).

fof(ax50,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & human_person(V,U) )
       => human_person(W,U) ) )).

fof(ax51,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & woman(V,U) )
       => woman(W,U) ) )).

fof(ax52,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & mia_forename(V,U) )
       => mia_forename(W,U) ) )).

fof(ax53,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & relname(V,U) )
       => relname(W,U) ) )).

fof(ax54,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & forename(V,U) )
       => forename(W,U) ) )).

fof(ax55,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & general(V,U) )
       => general(W,U) ) )).

fof(ax56,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & nonhuman(V,U) )
       => nonhuman(W,U) ) )).

fof(ax57,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & abstraction(V,U) )
       => abstraction(W,U) ) )).

fof(ax58,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & relation(V,U) )
       => relation(W,U) ) )).

fof(ax59,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & proposition(V,U) )
       => proposition(W,U) ) )).

fof(ax60,axiom,
    ( ! [U,V,W,X] : 
        ( ( accessible_world(W,X)
          & theme(W,U,V) )
       => theme(X,U,V) ) )).

fof(ax61,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & desire_want(V,U) )
       => desire_want(W,U) ) )).

fof(ax62,axiom,
    ( ! [U,V,W,X] : 
        ( ( accessible_world(W,X)
          & agent(W,U,V) )
       => agent(X,U,V) ) )).

fof(ax63,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & present(V,U) )
       => present(W,U) ) )).

fof(ax64,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & unisex(V,U) )
       => unisex(W,U) ) )).

fof(ax65,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & nonexistent(V,U) )
       => nonexistent(W,U) ) )).

fof(ax66,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & specific(V,U) )
       => specific(W,U) ) )).

fof(ax67,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & singleton(V,U) )
       => singleton(W,U) ) )).

fof(ax68,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & thing(V,U) )
       => thing(W,U) ) )).

fof(ax69,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & eventuality(V,U) )
       => eventuality(W,U) ) )).

fof(ax70,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & event(V,U) )
       => event(W,U) ) )).

fof(ax71,axiom,
    ( ! [U,V,W] : 
        ( ( accessible_world(V,W)
          & dance(V,U) )
       => dance(W,U) ) )).

fof(ax72,axiom,
    ( ! [U,V,W] : 
        ( ( entity(U,V)
          & forename(U,W)
          & of(U,W,V) )
       => ~ ( ? [X] : 
                ( forename(U,X)
                & X != W
                & of(U,X,V) ) ) ) )).

fof(ax73,axiom,
    ( ! [U,V,W,X,Y] : 
        ( ( desire_want(U,V)
          & proposition(U,X)
          & theme(U,V,X)
          & desire_want(U,W)
          & proposition(U,Y)
          & theme(U,W,Y) )
       => X = Y ) )).

fof(co1,conjecture,
    ( ~ ( ? [U] : 
            ( actual_world(U)
            & ? [V,W,X,Y] : 
                ( of(U,W,V)
                & woman(U,V)
                & mia_forename(U,W)
                & forename(U,W)
                & proposition(U,X)
                & present(U,Y)
                & theme(U,Y,X)
                & desire_want(U,Y)
                & agent(U,Y,V)
                & accessible_world(U,X)
                & ? [Z] : 
                    ( event(X,Z)
                    & agent(X,Z,V)
                    & present(X,Z)
                    & dance(X,Z) ) ) )
        & ~ ( ? [X1] : 
                ( actual_world(X1)
                & ? [X2,X3,V,W,X,Y] : 
                    ( of(X1,X3,X2)
                    & man(X1,X2)
                    & vincent_forename(X1,X3)
                    & forename(X1,X3)
                    & of(X1,W,V)
                    & woman(X1,V)
                    & mia_forename(X1,W)
                    & forename(X1,W)
                    & proposition(X1,X)
                    & present(X1,Y)
                    & theme(X1,Y,X)
                    & desire_want(X1,Y)
                    & agent(X1,Y,V)
                    & accessible_world(X1,X)
                    & ? [Z] : 
                        ( event(X,Z)
                        & agent(X,Z,V)
                        & present(X,Z)
                        & dance(X,Z) )
                    & ~ ( ? [X4,X5] : 
                            ( proposition(X1,X4)
                            & present(X1,X5)
                            & theme(X1,X5,X4)
                            & desire_want(X1,X5)
                            & agent(X1,X5,X2)
                            & accessible_world(X1,X4)
                            & ? [X6] : 
                                ( event(X4,X6)
                                & agent(X4,X6,X2)
                                & present(X4,X6)
                                & dance(X4,X6) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------