%--------------------------------------------------------------------------
% File     : NLP066+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : A man comes out of the bathroom, problem 8
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "A man comes out of the bathroom with a magnum in his hand.
%            The man fires six shots from his canon."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris043 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   68 (   0 equality)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :   69 (   2 ~  ;   0  |;  57  &)
%                                         (   0 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   24 (   0 singleton;  12 !;  12 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V] : 
                    ( ! [W,X] : 
                        ( ( male(U,W)
                          & man(U,W)
                          & of(U,X,W)
                          & cannon(U,X)
                          & member(U,X,V) )
                       => ? [Y] : 
                            ( event(U,Y)
                            & agent(U,Y,W)
                            & patient(U,Y,X)
                            & present(U,Y)
                            & nonreflexive(U,Y)
                            & fire(U,Y)
                            & from_loc(U,Y,X) ) )
                    & six(U,V)
                    & group(U,V)
                    & ! [Z] : 
                        ( member(U,Z,V)
                       => shot(U,Z) ) ) )
           => ? [X1] : 
                ( actual_world(X1)
                & ? [X2] : 
                    ( male(X1,X2)
                    & ! [X3,X4] : 
                        ( ( man(X1,X3)
                          & of(X1,X4,X2)
                          & cannon(X1,X4)
                          & member(X1,X4,X2) )
                       => ? [X5] : 
                            ( event(X1,X5)
                            & agent(X1,X5,X3)
                            & patient(X1,X5,X4)
                            & present(X1,X5)
                            & nonreflexive(X1,X5)
                            & fire(X1,X5)
                            & from_loc(X1,X5,X4) ) )
                    & six(X1,X2)
                    & group(X1,X2)
                    & ! [X6] : 
                        ( member(X1,X6,X2)
                       => shot(X1,X6) ) ) ) )
          & ( ? [X1] : 
                ( actual_world(X1)
                & ? [X2] : 
                    ( male(X1,X2)
                    & ! [X3,X4] : 
                        ( ( man(X1,X3)
                          & of(X1,X4,X2)
                          & cannon(X1,X4)
                          & member(X1,X4,X2) )
                       => ? [X5] : 
                            ( event(X1,X5)
                            & agent(X1,X5,X3)
                            & patient(X1,X5,X4)
                            & present(X1,X5)
                            & nonreflexive(X1,X5)
                            & fire(X1,X5)
                            & from_loc(X1,X5,X4) ) )
                    & six(X1,X2)
                    & group(X1,X2)
                    & ! [X6] : 
                        ( member(X1,X6,X2)
                       => shot(X1,X6) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V] : 
                    ( ! [W,X] : 
                        ( ( male(U,W)
                          & man(U,W)
                          & of(U,X,W)
                          & cannon(U,X)
                          & member(U,X,V) )
                       => ? [Y] : 
                            ( event(U,Y)
                            & agent(U,Y,W)
                            & patient(U,Y,X)
                            & present(U,Y)
                            & nonreflexive(U,Y)
                            & fire(U,Y)
                            & from_loc(U,Y,X) ) )
                    & six(U,V)
                    & group(U,V)
                    & ! [Z] : 
                        ( member(U,Z,V)
                       => shot(U,Z) ) ) ) ) ) )).

%--------------------------------------------------------------------------