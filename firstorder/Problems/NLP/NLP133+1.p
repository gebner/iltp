%--------------------------------------------------------------------------
% File     : NLP133+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 20
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in 
%            hollywood. Two young fellas are in the front seat."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris110 [Bos00b]

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
%            Number of variables   :   40 (   0 singleton;   8 !;  32 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z] : 
                    ( of(U,V,W)
                    & city(U,W)
                    & hollywood_placename(U,V)
                    & placename(U,V)
                    & chevy(U,W)
                    & white(U,W)
                    & dirty(U,W)
                    & old(U,W)
                    & street(U,X)
                    & lonely(U,X)
                    & event(U,Y)
                    & agent(U,Y,W)
                    & present(U,Y)
                    & barrel(U,Y)
                    & down(U,Y,X)
                    & in(U,Y,W)
                    & ! [X1] : 
                        ( member(U,X1,Z)
                       => ? [X2,X3] : 
                            ( frontseat(U,X3)
                            & state(U,X2)
                            & be(U,X2,X1,X3)
                            & in(U,X3,X3) ) )
                    & two(U,Z)
                    & group(U,Z)
                    & ! [X4] : 
                        ( member(U,X4,Z)
                       => ( fellow(U,X4)
                          & young(U,X4) ) ) ) )
           => ? [X5] : 
                ( actual_world(X5)
                & ? [X6,X7,X8,X9,X10] : 
                    ( chevy(X5,X6)
                    & white(X5,X6)
                    & dirty(X5,X6)
                    & old(X5,X6)
                    & of(X5,X7,X8)
                    & city(X5,X8)
                    & hollywood_placename(X5,X7)
                    & placename(X5,X7)
                    & street(X5,X8)
                    & lonely(X5,X8)
                    & event(X5,X9)
                    & agent(X5,X9,X6)
                    & present(X5,X9)
                    & barrel(X5,X9)
                    & down(X5,X9,X8)
                    & in(X5,X9,X8)
                    & ! [X11] : 
                        ( ( frontseat(X5,X11)
                          & member(X5,X11,X10) )
                       => ? [X12,X13] : 
                            ( state(X5,X12)
                            & be(X5,X12,X11,X13)
                            & in(X5,X13,X11) ) )
                    & two(X5,X10)
                    & group(X5,X10)
                    & ! [X14] : 
                        ( member(X5,X14,X10)
                       => ( fellow(X5,X14)
                          & young(X5,X14) ) ) ) ) )
          & ( ? [X5] : 
                ( actual_world(X5)
                & ? [X6,X7,X8,X9,X10] : 
                    ( chevy(X5,X6)
                    & white(X5,X6)
                    & dirty(X5,X6)
                    & old(X5,X6)
                    & of(X5,X7,X8)
                    & city(X5,X8)
                    & hollywood_placename(X5,X7)
                    & placename(X5,X7)
                    & street(X5,X8)
                    & lonely(X5,X8)
                    & event(X5,X9)
                    & agent(X5,X9,X6)
                    & present(X5,X9)
                    & barrel(X5,X9)
                    & down(X5,X9,X8)
                    & in(X5,X9,X8)
                    & ! [X11] : 
                        ( ( frontseat(X5,X11)
                          & member(X5,X11,X10) )
                       => ? [X12,X13] : 
                            ( state(X5,X12)
                            & be(X5,X12,X11,X13)
                            & in(X5,X13,X11) ) )
                    & two(X5,X10)
                    & group(X5,X10)
                    & ! [X14] : 
                        ( member(X5,X14,X10)
                       => ( fellow(X5,X14)
                          & young(X5,X14) ) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z] : 
                    ( of(U,V,W)
                    & city(U,W)
                    & hollywood_placename(U,V)
                    & placename(U,V)
                    & chevy(U,W)
                    & white(U,W)
                    & dirty(U,W)
                    & old(U,W)
                    & street(U,X)
                    & lonely(U,X)
                    & event(U,Y)
                    & agent(U,Y,W)
                    & present(U,Y)
                    & barrel(U,Y)
                    & down(U,Y,X)
                    & in(U,Y,W)
                    & ! [X1] : 
                        ( member(U,X1,Z)
                       => ? [X2,X3] : 
                            ( frontseat(U,X3)
                            & state(U,X2)
                            & be(U,X2,X1,X3)
                            & in(U,X3,X3) ) )
                    & two(U,Z)
                    & group(U,Z)
                    & ! [X4] : 
                        ( member(U,X4,Z)
                       => ( fellow(U,X4)
                          & young(U,X4) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------