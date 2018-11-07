%--------------------------------------------------------------------------
% File     : NLP105+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : Every customer in a restaurant, problem 12
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "Every customer in a restaurant saw a person who drank a
%            coffee."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris082 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   35 (   0 unit)
%            Number of atoms       :   90 (   1 equality)
%            Maximal formula depth :   24 (   5 average)
%            Number of connectives :   60 (   5 ~  ;   0  |;  20  &)
%                                         (   0 <=>;  35 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   34 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   79 (   0 singleton;  74 !;   5 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ! [U,V] : 
        ( artifact(U,V)
       => object(U,V) ) )).

fof(ax2,axiom,
    ( ! [U,V] : 
        ( building(U,V)
       => artifact(U,V) ) )).

fof(ax3,axiom,
    ( ! [U,V] : 
        ( restaurant(U,V)
       => building(U,V) ) )).

fof(ax4,axiom,
    ( ! [U,V] : 
        ( customer(U,V)
       => human_person(U,V) ) )).

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
        ( organism(U,V)
       => entity(U,V) ) )).

fof(ax10,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => organism(U,V) ) )).

fof(ax11,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => unisex(U,V) ) )).

fof(ax12,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => impartial(U,V) ) )).

fof(ax13,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => nonliving(U,V) ) )).

fof(ax14,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => existent(U,V) ) )).

fof(ax15,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => specific(U,V) ) )).

fof(ax16,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => thing(U,V) ) )).

fof(ax17,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => entity(U,V) ) )).

fof(ax18,axiom,
    ( ! [U,V] : 
        ( substance_matter(U,V)
       => object(U,V) ) )).

fof(ax19,axiom,
    ( ! [U,V] : 
        ( food(U,V)
       => substance_matter(U,V) ) )).

fof(ax20,axiom,
    ( ! [U,V] : 
        ( beverage(U,V)
       => food(U,V) ) )).

fof(ax21,axiom,
    ( ! [U,V] : 
        ( coffee(U,V)
       => beverage(U,V) ) )).

fof(ax22,axiom,
    ( ! [U,V] : 
        ( drink(U,V)
       => event(U,V) ) )).

fof(ax23,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => unisex(U,V) ) )).

fof(ax24,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => nonexistent(U,V) ) )).

fof(ax25,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => specific(U,V) ) )).

fof(ax26,axiom,
    ( ! [U,V] : 
        ( thing(U,V)
       => singleton(U,V) ) )).

fof(ax27,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => thing(U,V) ) )).

fof(ax28,axiom,
    ( ! [U,V] : 
        ( event(U,V)
       => eventuality(U,V) ) )).

fof(ax29,axiom,
    ( ! [U,V] : 
        ( see(U,V)
       => event(U,V) ) )).

fof(ax30,axiom,
    ( ! [U,V] : 
        ( animate(U,V)
       => ~ nonliving(U,V) ) )).

fof(ax31,axiom,
    ( ! [U,V] : 
        ( existent(U,V)
       => ~ nonexistent(U,V) ) )).

fof(ax32,axiom,
    ( ! [U,V] : 
        ( nonliving(U,V)
       => ~ living(U,V) ) )).

fof(ax33,axiom,
    ( ! [U,V,W,X] : 
        ( ( drink(U,V)
          & agent(U,V,W)
          & patient(U,V,X) )
       => beverage(U,X) ) )).

fof(ax34,axiom,
    ( ! [U,V,W,X] : 
        ( ( nonreflexive(U,V)
          & agent(U,V,W)
          & patient(U,V,X) )
       => W != X ) )).

fof(co1,conjecture,
    ( ~ ( ? [U] : 
            ( actual_world(U)
            & ! [V,W] : 
                ( ( customer(U,V)
                  & restaurant(U,W)
                  & in(U,V,W) )
               => ? [X,Y,Z,X1] : 
                    ( human_person(U,X)
                    & coffee(U,Y)
                    & event(U,Z)
                    & agent(U,Z,X)
                    & patient(U,Z,Y)
                    & past(U,Z)
                    & nonreflexive(U,Z)
                    & drink(U,Z)
                    & event(U,X1)
                    & agent(U,X1,V)
                    & patient(U,X1,X)
                    & past(U,X1)
                    & nonreflexive(U,X1)
                    & see(U,X1) ) ) ) ) )).

%--------------------------------------------------------------------------