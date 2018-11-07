%--------------------------------------------------------------------------
% File     : NLP137+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 24
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in 
%            hollywood. Two young fellas are in the front seat."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris114 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  108 (   0 equality)
%            Maximal formula depth :   36 (  36 average)
%            Number of connectives :  109 (   2 ~  ;   0  |;  97  &)
%                                         (   0 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   25 (   0 propositional; 1-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   42 (   0 singleton;   8 !;  34 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z,X1] : 
                    ( of(U,W,V)
                    & city(U,V)
                    & hollywood_placename(U,W)
                    & placename(U,W)
                    & chevy(U,X)
                    & white(U,X)
                    & dirty(U,X)
                    & old(U,X)
                    & street(U,Y)
                    & lonely(U,Y)
                    & event(U,Z)
                    & agent(U,Z,X)
                    & present(U,Z)
                    & barrel(U,Z)
                    & down(U,Z,Y)
                    & in(U,Z,V)
                    & ! [X2] : 
                        ( ( frontseat(U,X2)
                          & member(U,X2,X1) )
                       => ? [X3,X4] : 
                            ( state(U,X3)
                            & be(U,X3,X2,X4)
                            & in(U,X4,X2) ) )
                    & two(U,X1)
                    & group(U,X1)
                    & ! [X5] : 
                        ( member(U,X5,X1)
                       => ( fellow(U,X5)
                          & young(U,X5) ) ) ) )
           => ? [X6] : 
                ( actual_world(X6)
                & ? [X7,X8,X9,X10,X11] : 
                    ( chevy(X6,X7)
                    & white(X6,X7)
                    & dirty(X6,X7)
                    & old(X6,X7)
                    & of(X6,X8,X9)
                    & city(X6,X9)
                    & hollywood_placename(X6,X8)
                    & placename(X6,X8)
                    & street(X6,X9)
                    & lonely(X6,X9)
                    & event(X6,X10)
                    & agent(X6,X10,X7)
                    & present(X6,X10)
                    & barrel(X6,X10)
                    & down(X6,X10,X9)
                    & in(X6,X10,X9)
                    & ! [X12] : 
                        ( member(X6,X12,X11)
                       => ? [X13,X14] : 
                            ( frontseat(X6,X14)
                            & state(X6,X13)
                            & be(X6,X13,X12,X14)
                            & in(X6,X14,X14) ) )
                    & two(X6,X11)
                    & group(X6,X11)
                    & ! [X15] : 
                        ( member(X6,X15,X11)
                       => ( fellow(X6,X15)
                          & young(X6,X15) ) ) ) ) )
          & ( ? [X6] : 
                ( actual_world(X6)
                & ? [X7,X8,X9,X10,X11] : 
                    ( chevy(X6,X7)
                    & white(X6,X7)
                    & dirty(X6,X7)
                    & old(X6,X7)
                    & of(X6,X8,X9)
                    & city(X6,X9)
                    & hollywood_placename(X6,X8)
                    & placename(X6,X8)
                    & street(X6,X9)
                    & lonely(X6,X9)
                    & event(X6,X10)
                    & agent(X6,X10,X7)
                    & present(X6,X10)
                    & barrel(X6,X10)
                    & down(X6,X10,X9)
                    & in(X6,X10,X9)
                    & ! [X12] : 
                        ( member(X6,X12,X11)
                       => ? [X13,X14] : 
                            ( frontseat(X6,X14)
                            & state(X6,X13)
                            & be(X6,X13,X12,X14)
                            & in(X6,X14,X14) ) )
                    & two(X6,X11)
                    & group(X6,X11)
                    & ! [X15] : 
                        ( member(X6,X15,X11)
                       => ( fellow(X6,X15)
                          & young(X6,X15) ) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z,X1] : 
                    ( of(U,W,V)
                    & city(U,V)
                    & hollywood_placename(U,W)
                    & placename(U,W)
                    & chevy(U,X)
                    & white(U,X)
                    & dirty(U,X)
                    & old(U,X)
                    & street(U,Y)
                    & lonely(U,Y)
                    & event(U,Z)
                    & agent(U,Z,X)
                    & present(U,Z)
                    & barrel(U,Z)
                    & down(U,Z,Y)
                    & in(U,Z,V)
                    & ! [X2] : 
                        ( ( frontseat(U,X2)
                          & member(U,X2,X1) )
                       => ? [X3,X4] : 
                            ( state(U,X3)
                            & be(U,X3,X2,X4)
                            & in(U,X4,X2) ) )
                    & two(U,X1)
                    & group(U,X1)
                    & ! [X5] : 
                        ( member(U,X5,X1)
                       => ( fellow(U,X5)
                          & young(U,X5) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------