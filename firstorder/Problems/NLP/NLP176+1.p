%--------------------------------------------------------------------------
% File     : NLP176+1 : ILTP v1.1.2
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 63
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in 
%            hollywood. Two young fellas are in the front seat. They are 
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris153 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.25 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   67 (   1 unit)
%            Number of atoms       :  183 (   6 equality)
%            Maximal formula depth :   45 (   5 average)
%            Number of connectives :  131 (  15 ~  ;   1  |;  44  &)
%                                         (   1 <=>;  70 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   67 (   0 propositional; 1-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  158 (   0 singleton; 142 !;  16 ?)
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
        ( instrumentality(U,V)
       => artifact(U,V) ) )).

fof(ax5,axiom,
    ( ! [U,V] : 
        ( transport(U,V)
       => instrumentality(U,V) ) )).

fof(ax6,axiom,
    ( ! [U,V] : 
        ( vehicle(U,V)
       => transport(U,V) ) )).

fof(ax7,axiom,
    ( ! [U,V] : 
        ( car(U,V)
       => vehicle(U,V) ) )).

fof(ax8,axiom,
    ( ! [U,V] : 
        ( chevy(U,V)
       => car(U,V) ) )).

fof(ax9,axiom,
    ( ! [U,V] : 
        ( location(U,V)
       => object(U,V) ) )).

fof(ax10,axiom,
    ( ! [U,V] : 
        ( city(U,V)
       => location(U,V) ) )).

fof(ax11,axiom,
    ( ! [U,V] : 
        ( hollywood_placename(U,V)
       => placename(U,V) ) )).

fof(ax12,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => unisex(U,V) ) )).

fof(ax13,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => general(U,V) ) )).

fof(ax14,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => nonhuman(U,V) ) )).

fof(ax15,axiom,
    ( ! [U,V] : 
        ( abstraction(U,V)
       => thing(U,V) ) )).

fof(ax16,axiom,
    ( ! [U,V] : 
        ( relation(U,V)
       => abstraction(U,V) ) )).

fof(ax17,axiom,
    ( ! [U,V] : 
        ( relname(U,V)
       => relation(U,V) ) )).

fof(ax18,axiom,
    ( ! [U,V] : 
        ( placename(U,V)
       => relname(U,V) ) )).

fof(ax19,axiom,
    ( ! [U,V] : 
        ( way(U,V)
       => artifact(U,V) ) )).

fof(ax20,axiom,
    ( ! [U,V] : 
        ( street(U,V)
       => way(U,V) ) )).

fof(ax21,axiom,
    ( ! [U,V] : 
        ( barrel(U,V)
       => event(U,V) ) )).

fof(ax22,axiom,
    ( ! [U,V] : 
        ( state(U,V)
       => event(U,V) ) )).

fof(ax23,axiom,
    ( ! [U,V] : 
        ( state(U,V)
       => eventuality(U,V) ) )).

fof(ax24,axiom,
    ( ! [U,V] : 
        ( two(U,V)
       => group(U,V) ) )).

fof(ax25,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => male(U,V) ) )).

fof(ax26,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => animate(U,V) ) )).

fof(ax27,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => human(U,V) ) )).

fof(ax28,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => living(U,V) ) )).

fof(ax29,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => impartial(U,V) ) )).

fof(ax30,axiom,
    ( ! [U,V] : 
        ( organism(U,V)
       => entity(U,V) ) )).

fof(ax31,axiom,
    ( ! [U,V] : 
        ( human_person(U,V)
       => organism(U,V) ) )).

fof(ax32,axiom,
    ( ! [U,V] : 
        ( man(U,V)
       => human_person(U,V) ) )).

fof(ax33,axiom,
    ( ! [U,V] : 
        ( fellow(U,V)
       => man(U,V) ) )).

fof(ax34,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => unisex(U,V) ) )).

fof(ax35,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => nonexistent(U,V) ) )).

fof(ax36,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => specific(U,V) ) )).

fof(ax37,axiom,
    ( ! [U,V] : 
        ( eventuality(U,V)
       => thing(U,V) ) )).

fof(ax38,axiom,
    ( ! [U,V] : 
        ( event(U,V)
       => eventuality(U,V) ) )).

fof(ax39,axiom,
    ( ! [U,V] : 
        ( wear(U,V)
       => event(U,V) ) )).

fof(ax40,axiom,
    ( ! [U,V] : 
        ( set(U,V)
       => multiple(U,V) ) )).

fof(ax41,axiom,
    ( ! [U,V] : 
        ( group(U,V)
       => set(U,V) ) )).

fof(ax42,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => unisex(U,V) ) )).

fof(ax43,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => impartial(U,V) ) )).

fof(ax44,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => nonliving(U,V) ) )).

fof(ax45,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => existent(U,V) ) )).

fof(ax46,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => specific(U,V) ) )).

fof(ax47,axiom,
    ( ! [U,V] : 
        ( thing(U,V)
       => singleton(U,V) ) )).

fof(ax48,axiom,
    ( ! [U,V] : 
        ( entity(U,V)
       => thing(U,V) ) )).

fof(ax49,axiom,
    ( ! [U,V] : 
        ( object(U,V)
       => entity(U,V) ) )).

fof(ax50,axiom,
    ( ! [U,V] : 
        ( artifact(U,V)
       => object(U,V) ) )).

fof(ax51,axiom,
    ( ! [U,V] : 
        ( clothes(U,V)
       => artifact(U,V) ) )).

fof(ax52,axiom,
    ( ! [U,V] : 
        ( coat(U,V)
       => clothes(U,V) ) )).

fof(ax53,axiom,
    ( ! [U,V] : 
        ( animate(U,V)
       => ~ nonliving(U,V) ) )).

fof(ax54,axiom,
    ( ! [U,V] : 
        ( existent(U,V)
       => ~ nonexistent(U,V) ) )).

fof(ax55,axiom,
    ( ! [U,V] : 
        ( nonhuman(U,V)
       => ~ human(U,V) ) )).

fof(ax56,axiom,
    ( ! [U,V] : 
        ( nonliving(U,V)
       => ~ living(U,V) ) )).

fof(ax57,axiom,
    ( ! [U,V] : 
        ( singleton(U,V)
       => ~ multiple(U,V) ) )).

fof(ax58,axiom,
    ( ! [U,V] : 
        ( specific(U,V)
       => ~ general(U,V) ) )).

fof(ax59,axiom,
    ( ! [U,V] : 
        ( unisex(U,V)
       => ~ male(U,V) ) )).

fof(ax60,axiom,
    ( ! [U,V] : 
        ( white(U,V)
       => ~ black(U,V) ) )).

fof(ax61,axiom,
    ( ! [U,V] : 
        ( young(U,V)
       => ~ old(U,V) ) )).

fof(ax62,axiom,
    ( ! [U,V,W] : 
        ( ( entity(U,V)
          & placename(U,W)
          & of(U,W,V) )
       => ~ ( ? [X] : 
                ( placename(U,X)
                & X != W
                & of(U,X,V) ) ) ) )).

fof(ax63,axiom,
    ( ! [U,V,W,X] : 
        ( be(U,V,W,X)
       => W = X ) )).

fof(ax64,axiom,
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

fof(ax65,axiom,
    ( ! [U,V,W,X] : 
        ( ( nonreflexive(U,V)
          & agent(U,V,W)
          & patient(U,V,X) )
       => W != X ) )).

fof(ax66,axiom,
    ( ! [U] : ~ ( ? [V] : member(U,V,V) ) )).

fof(co1,conjecture,
    ( ~ ( ? [U] : 
            ( actual_world(U)
            & ? [V,W,X,Y,Z,X1,X2,X3] : 
                ( group(U,V)
                & frontseat(U,W)
                & of(U,X,Y)
                & city(U,Y)
                & hollywood_placename(U,X)
                & placename(U,X)
                & chevy(U,Y)
                & white(U,Y)
                & dirty(U,Y)
                & old(U,Y)
                & street(U,Z)
                & lonely(U,Z)
                & event(U,X1)
                & agent(U,X1,Y)
                & present(U,X1)
                & barrel(U,X1)
                & down(U,X1,Z)
                & in(U,X1,Y)
                & ! [X4] : 
                    ( member(U,X4,X2)
                   => ? [X5,X6] : 
                        ( state(U,X5)
                        & be(U,X5,X4,X6)
                        & in(U,X6,W) ) )
                & two(U,X2)
                & group(U,X2)
                & ! [X7] : 
                    ( member(U,X7,X2)
                   => ( fellow(U,X7)
                      & young(U,X7) ) )
                & ! [X8] : 
                    ( member(U,X8,X3)
                   => ! [X9] : 
                        ( member(U,X9,V)
                       => ? [X10] : 
                            ( event(U,X10)
                            & agent(U,X10,X9)
                            & patient(U,X10,X8)
                            & present(U,X10)
                            & nonreflexive(U,X10)
                            & wear(U,X10) ) ) )
                & group(U,X3)
                & ! [X11] : 
                    ( member(U,X11,X3)
                   => ( coat(U,X11)
                      & black(U,X11)
                      & cheap(U,X11) ) ) ) ) ) )).

%--------------------------------------------------------------------------
