%--------------------------------------------------------------------------
% File     : NLP047+1 : ILTP v1.1.2
% Domain   : Natural Language Processing
% Problem  : Mia ordered a shake, problem 6
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Mia ordered a shake. It cost five dollars."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris024 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   96 (   0 equality)
%            Maximal formula depth :   33 (  33 average)
%            Number of connectives :   97 (   2 ~  ;   0  |;  85  &)
%                                         (   0 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   19 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   36 (   0 singleton;   8 !;  28 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z] : 
                    ( of(U,W,V)
                    & woman(U,V)
                    & mia_forename(U,W)
                    & forename(U,W)
                    & shake_beverage(U,X)
                    & event(U,Y)
                    & agent(U,Y,V)
                    & patient(U,Y,X)
                    & past(U,Y)
                    & nonreflexive(U,Y)
                    & order(U,Y)
                    & nonhuman(U,Z)
                    & ! [X1] : 
                        ( member(U,X1,Z)
                       => ? [X2] : 
                            ( event(U,X2)
                            & agent(U,X2,Z)
                            & patient(U,X2,X1)
                            & present(U,X2)
                            & nonreflexive(U,X2)
                            & cost(U,X2) ) )
                    & five(U,Z)
                    & group(U,Z)
                    & ! [X3] : 
                        ( member(U,X3,Z)
                       => dollar(U,X3) ) ) )
           => ? [X4] : 
                ( actual_world(X4)
                & ? [X5,X6,X7,X8,X9] : 
                    ( nonhuman(X4,X7)
                    & of(X4,X6,X5)
                    & woman(X4,X5)
                    & mia_forename(X4,X6)
                    & forename(X4,X6)
                    & shake_beverage(X4,X7)
                    & event(X4,X8)
                    & agent(X4,X8,X5)
                    & patient(X4,X8,X7)
                    & past(X4,X8)
                    & nonreflexive(X4,X8)
                    & order(X4,X8)
                    & ! [X10] : 
                        ( member(X4,X10,X9)
                       => ? [X11] : 
                            ( event(X4,X11)
                            & agent(X4,X11,X7)
                            & patient(X4,X11,X10)
                            & present(X4,X11)
                            & nonreflexive(X4,X11)
                            & cost(X4,X11) ) )
                    & five(X4,X9)
                    & group(X4,X9)
                    & ! [X12] : 
                        ( member(X4,X12,X9)
                       => dollar(X4,X12) ) ) ) )
          & ( ? [X4] : 
                ( actual_world(X4)
                & ? [X5,X6,X7,X8,X9] : 
                    ( nonhuman(X4,X7)
                    & of(X4,X6,X5)
                    & woman(X4,X5)
                    & mia_forename(X4,X6)
                    & forename(X4,X6)
                    & shake_beverage(X4,X7)
                    & event(X4,X8)
                    & agent(X4,X8,X5)
                    & patient(X4,X8,X7)
                    & past(X4,X8)
                    & nonreflexive(X4,X8)
                    & order(X4,X8)
                    & ! [X10] : 
                        ( member(X4,X10,X9)
                       => ? [X11] : 
                            ( event(X4,X11)
                            & agent(X4,X11,X7)
                            & patient(X4,X11,X10)
                            & present(X4,X11)
                            & nonreflexive(X4,X11)
                            & cost(X4,X11) ) )
                    & five(X4,X9)
                    & group(X4,X9)
                    & ! [X12] : 
                        ( member(X4,X12,X9)
                       => dollar(X4,X12) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z] : 
                    ( of(U,W,V)
                    & woman(U,V)
                    & mia_forename(U,W)
                    & forename(U,W)
                    & shake_beverage(U,X)
                    & event(U,Y)
                    & agent(U,Y,V)
                    & patient(U,Y,X)
                    & past(U,Y)
                    & nonreflexive(U,Y)
                    & order(U,Y)
                    & nonhuman(U,Z)
                    & ! [X1] : 
                        ( member(U,X1,Z)
                       => ? [X2] : 
                            ( event(U,X2)
                            & agent(U,X2,Z)
                            & patient(U,X2,X1)
                            & present(U,X2)
                            & nonreflexive(U,X2)
                            & cost(U,X2) ) )
                    & five(U,Z)
                    & group(U,Z)
                    & ! [X3] : 
                        ( member(U,X3,Z)
                       => dollar(U,X3) ) ) ) ) ) )).

%--------------------------------------------------------------------------
