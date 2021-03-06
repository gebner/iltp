%--------------------------------------------------------------------------
% File     : NLP159+1 : ILTP v1.1.2
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 46
% Version  : [Bos00b] axioms.
% English  : Eliminating non-informative interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in 
%            hollywood. Two young fellas are in the front seat."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris136 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.17 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   62 (   1 unit)
%            Number of atoms       :  174 (   5 equality)
%            Maximal formula depth :   35 (   5 average)
%            Number of connectives :  126 (  14 ~  ;   1  |;  48  &)
%                                         (   1 <=>;  62 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   60 (   0 propositional; 1-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  144 (   0 singleton; 127 !;  17 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ! [U,V] : 
        ( furniture(U,V)
       => instrumentality(U,V) ) )).

fof(ax2,axiom,
    ( ! [U,V] : 
        ( seat(U,V)
       => furniture(U,V) ) )).

fof(ax3,axiom,
    ( ! [U,V] : 
        ( frontseat(U,V)
       => seat(U,V) ) )).

fof(ax4,axiom,
    ( ! [U,V] : 
        ( location(U,V)
       => object(U,V) ) )).

fof(ax5,axiom,
    ( ! [U,V] : 
        ( city(U,V)
       => location(U,V) ) )).

fof(ax6,axiom,
    ( ! [U,V] : 
        ( hollywood_placename(U,V)
       => placename(U,V) ) )).

fof(ax7,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => unisex(U,V) ) )).

fof(ax8,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => general(U,V) ) )).

fof(ax9,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => nonhuman(U,V) ) )).

fof(ax10,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => thing(U,V) ) )).

fof(ax11,axiom,
    ( ! [U,V] : 
        ( relation(U,V)
       => abstraction(U,V) ) )).

fof(ax12,axiom,
    ( ! [U,V] : 
        ( relname(U,V)
       => relation(U,V) ) )).

fof(ax13,axiom,
    ( ! [U,V] : 
        ( placename(U,V)
       => relname(U,V) ) )).

fof(ax14,axiom,
    ( ! [U,V] : 
        ( way(U,V)
       => artifact(U,V) ) )).

fof(ax15,axiom,
    ( ! [U,V] : 
        ( street(U,V)
       => way(U,V) ) )).

fof(ax16,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => unisex(U,V) ) )).

fof(ax17,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => impartial(U,V) ) )).

fof(ax18,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => nonliving(U,V) ) )).

fof(ax19,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => entity(U,V) ) )).

fof(ax20,axiom,
    ( ! [U,V] : 
        ( artifact(U,V)
       => object(U,V) ) )).

fof(ax21,axiom,
    ( ! [U,V] : 
        ( instrumentality(U,V)
       => artifact(U,V) ) )).

fof(ax22,axiom,
    ( ! [U,V] : 
        ( transport(U,V)
       => instrumentality(U,V) ) )).

fof(ax23,axiom,
    ( ! [U,V] : 
        ( vehicle(U,V)
       => transport(U,V) ) )).

fof(ax24,axiom,
    ( ! [U,V] : 
        ( car(U,V)
       => vehicle(U,V) ) )).

fof(ax25,axiom,
    ( ! [U,V] : 
        ( chevy(U,V)
       => car(U,V) ) )).

fof(ax26,axiom,
    ( ! [U,V] : 
        ( barrel(U,V)
       => event(U,V) ) )).

fof(ax27,axiom,
    ( ! [U,V] : 
        ( event(U,V)
       => eventuality(U,V) ) )).

fof(ax28,axiom,
    ( ! [U,V] : 
        ( state(U,V)
       => event(U,V) ) )).

fof(ax29,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => unisex(U,V) ) )).

fof(ax30,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => nonexistent(U,V) ) )).

fof(ax31,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => specific(U,V) ) )).

fof(ax32,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => thing(U,V) ) )).

fof(ax33,axiom,
    ( ! [U,V] : 
        ( state(U,V)
       => eventuality(U,V) ) )).

fof(ax34,axiom,
    ( ! [U,V] : 
        ( two(U,V)
       => group(U,V) ) )).

fof(ax35,axiom,
    ( ! [U,V] : 
        ( set(U,V)
       => multiple(U,V) ) )).

fof(ax36,axiom,
    ( ! [U,V] : 
        ( group(U,V)
       => set(U,V) ) )).

fof(ax37,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => male(U,V) ) )).

fof(ax38,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => animate(U,V) ) )).

fof(ax39,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => human(U,V) ) )).

fof(ax40,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => living(U,V) ) )).

fof(ax41,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => impartial(U,V) ) )).

fof(ax42,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => existent(U,V) ) )).

fof(ax43,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => specific(U,V) ) )).

fof(ax44,axiom,
    ( ! [U,V] : 
        ( thing(U,V)
       => singleton(U,V) ) )).

fof(ax45,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => thing(U,V) ) )).

fof(ax46,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => entity(U,V) ) )).

fof(ax47,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => organism(U,V) ) )).

fof(ax48,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => human_person(U,V) ) )).

fof(ax49,axiom,
    ( ! [U,V] : 
        ( fellow(U,V)
       => man(U,V) ) )).

fof(ax50,axiom,
    ( ! [U,V] : 
        ( animate(U,V)
       => ~ nonliving(U,V) ) )).

fof(ax51,axiom,
    ( ! [U,V] : 
        ( existent(U,V)
       => ~ nonexistent(U,V) ) )).

fof(ax52,axiom,
    ( ! [U,V] : 
        ( nonhuman(U,V)
       => ~ human(U,V) ) )).

fof(ax53,axiom,
    ( ! [U,V] : 
        ( nonliving(U,V)
       => ~ living(U,V) ) )).

fof(ax54,axiom,
    ( ! [U,V] : 
        ( singleton(U,V)
       => ~ multiple(U,V) ) )).

fof(ax55,axiom,
    ( ! [U,V] : 
        ( specific(U,V)
       => ~ general(U,V) ) )).

fof(ax56,axiom,
    ( ! [U,V] : 
        ( unisex(U,V)
       => ~ male(U,V) ) )).

fof(ax57,axiom,
    ( ! [U,V] : 
        ( young(U,V)
       => ~ old(U,V) ) )).

fof(ax58,axiom,
    ( ! [U,V,W] : 
        ( ( entity(U,V)
          & placename(U,W)
          & of(U,W,V) )
       => ~ ( ? [X] : 
                ( placename(U,X)
                & X != W
                & of(U,X,V) ) ) ) )).

fof(ax59,axiom,
    ( ! [U,V,W,X] : 
        ( be(U,V,W,X)
       => W = X ) )).

fof(ax60,axiom,
    ( ! [U,V] : 
        ( two(U,V)
      <=> ? [W] : 
            ( member(U,W,V)
            & ? [X] : 
                ( member(U,X,V)
                & X != W
                & ! [Y] : 
                    ( member(U,Y,V)
                   => ( Y = X
                      | Y = W ) ) ) ) ) )).

fof(ax61,axiom,
    ( ! [U] : ~ ( ? [V] : member(U,V,V) ) )).

fof(co1,conjecture,
    ( ~ ( ? [U] : 
            ( actual_world(U)
            & ? [V,W,X,Y] : 
                ( of(U,V,W)
                & city(U,W)
                & hollywood_placename(U,V)
                & placename(U,V)
                & street(U,W)
                & lonely(U,W)
                & chevy(U,X)
                & white(U,X)
                & dirty(U,X)
                & old(U,X)
                & event(U,Y)
                & agent(U,Y,X)
                & present(U,Y)
                & barrel(U,Y)
                & down(U,Y,W)
                & in(U,Y,W) ) )
        & ~ ( ? [Z] : 
                ( actual_world(Z)
                & ? [V,W,X,Y,X1] : 
                    ( of(Z,V,W)
                    & city(Z,W)
                    & hollywood_placename(Z,V)
                    & placename(Z,V)
                    & street(Z,W)
                    & lonely(Z,W)
                    & chevy(Z,X)
                    & white(Z,X)
                    & dirty(Z,X)
                    & old(Z,X)
                    & event(Z,Y)
                    & agent(Z,Y,X)
                    & present(Z,Y)
                    & barrel(Z,Y)
                    & down(Z,Y,W)
                    & in(Z,Y,W)
                    & ! [X2] : 
                        ( member(Z,X2,X1)
                       => ? [X3,X4] : 
                            ( frontseat(Z,X4)
                            & state(Z,X3)
                            & be(Z,X3,X2,X4)
                            & in(Z,X4,X4) ) )
                    & two(Z,X1)
                    & group(Z,X1)
                    & ! [X5] : 
                        ( member(Z,X5,X1)
                       => ( fellow(Z,X5)
                          & young(Z,X5) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
