%--------------------------------------------------------------------------
% File     : NLP233+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : Vincent believes that every man smokes, problem 14
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Vincent believes that every man smokes. Jules is a man. 
%            Vincent believes that jules smokes."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris210 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.25 v3.1.0, 0.83 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  168 (   0 equality)
%            Maximal formula depth :   56 (  56 average)
%            Number of connectives :  169 (   2 ~  ;   0  |; 161  &)
%                                         (   0 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 1-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   64 (   0 singleton;   4 !;  60 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7] : 
                    ( of(U,W,V)
                    & man(U,V)
                    & vincent_forename(U,W)
                    & forename(U,W)
                    & of(U,X,Y)
                    & jules_forename(U,X)
                    & forename(U,X)
                    & of(U,Z,Y)
                    & man(U,Y)
                    & vincent_forename(U,Z)
                    & forename(U,Z)
                    & proposition(U,X2)
                    & agent(U,X1,Y)
                    & theme(U,X1,X2)
                    & event(U,X1)
                    & present(U,X1)
                    & think_believe_consider(U,X1)
                    & accessible_world(U,X2)
                    & ! [X8] : 
                        ( man(X2,X8)
                       => ? [X9] : 
                            ( event(X2,X9)
                            & agent(X2,X9,X8)
                            & present(X2,X9)
                            & smoke(X2,X9) ) )
                    & of(U,X3,X4)
                    & man(U,X4)
                    & jules_forename(U,X3)
                    & forename(U,X3)
                    & man(U,X4)
                    & state(U,X5)
                    & be(U,X5,X4,X4)
                    & proposition(U,X7)
                    & agent(U,X6,V)
                    & theme(U,X6,X7)
                    & event(U,X6)
                    & present(U,X6)
                    & think_believe_consider(U,X6)
                    & accessible_world(U,X7)
                    & ? [X10] : 
                        ( event(X7,X10)
                        & agent(X7,X10,Y)
                        & present(X7,X10)
                        & smoke(X7,X10) ) ) )
           => ? [X11] : 
                ( actual_world(X11)
                & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23] : 
                    ( of(X11,X12,X13)
                    & jules_forename(X11,X12)
                    & forename(X11,X12)
                    & of(X11,X14,X13)
                    & man(X11,X13)
                    & vincent_forename(X11,X14)
                    & forename(X11,X14)
                    & of(X11,X16,X15)
                    & man(X11,X15)
                    & vincent_forename(X11,X16)
                    & forename(X11,X16)
                    & proposition(X11,X18)
                    & agent(X11,X17,X15)
                    & theme(X11,X17,X18)
                    & event(X11,X17)
                    & present(X11,X17)
                    & think_believe_consider(X11,X17)
                    & accessible_world(X11,X18)
                    & ! [X24] : 
                        ( man(X18,X24)
                       => ? [X25] : 
                            ( event(X18,X25)
                            & agent(X18,X25,X24)
                            & present(X18,X25)
                            & smoke(X18,X25) ) )
                    & of(X11,X19,X20)
                    & man(X11,X20)
                    & jules_forename(X11,X19)
                    & forename(X11,X19)
                    & man(X11,X20)
                    & state(X11,X21)
                    & be(X11,X21,X20,X20)
                    & proposition(X11,X23)
                    & agent(X11,X22,X13)
                    & theme(X11,X22,X23)
                    & event(X11,X22)
                    & present(X11,X22)
                    & think_believe_consider(X11,X22)
                    & accessible_world(X11,X23)
                    & ? [X26] : 
                        ( event(X23,X26)
                        & agent(X23,X26,X13)
                        & present(X23,X26)
                        & smoke(X23,X26) ) ) ) )
          & ( ? [X11] : 
                ( actual_world(X11)
                & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23] : 
                    ( of(X11,X12,X13)
                    & jules_forename(X11,X12)
                    & forename(X11,X12)
                    & of(X11,X14,X13)
                    & man(X11,X13)
                    & vincent_forename(X11,X14)
                    & forename(X11,X14)
                    & of(X11,X16,X15)
                    & man(X11,X15)
                    & vincent_forename(X11,X16)
                    & forename(X11,X16)
                    & proposition(X11,X18)
                    & agent(X11,X17,X15)
                    & theme(X11,X17,X18)
                    & event(X11,X17)
                    & present(X11,X17)
                    & think_believe_consider(X11,X17)
                    & accessible_world(X11,X18)
                    & ! [X24] : 
                        ( man(X18,X24)
                       => ? [X25] : 
                            ( event(X18,X25)
                            & agent(X18,X25,X24)
                            & present(X18,X25)
                            & smoke(X18,X25) ) )
                    & of(X11,X19,X20)
                    & man(X11,X20)
                    & jules_forename(X11,X19)
                    & forename(X11,X19)
                    & man(X11,X20)
                    & state(X11,X21)
                    & be(X11,X21,X20,X20)
                    & proposition(X11,X23)
                    & agent(X11,X22,X13)
                    & theme(X11,X22,X23)
                    & event(X11,X22)
                    & present(X11,X22)
                    & think_believe_consider(X11,X22)
                    & accessible_world(X11,X23)
                    & ? [X26] : 
                        ( event(X23,X26)
                        & agent(X23,X26,X13)
                        & present(X23,X26)
                        & smoke(X23,X26) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7] : 
                    ( of(U,W,V)
                    & man(U,V)
                    & vincent_forename(U,W)
                    & forename(U,W)
                    & of(U,X,Y)
                    & jules_forename(U,X)
                    & forename(U,X)
                    & of(U,Z,Y)
                    & man(U,Y)
                    & vincent_forename(U,Z)
                    & forename(U,Z)
                    & proposition(U,X2)
                    & agent(U,X1,Y)
                    & theme(U,X1,X2)
                    & event(U,X1)
                    & present(U,X1)
                    & think_believe_consider(U,X1)
                    & accessible_world(U,X2)
                    & ! [X8] : 
                        ( man(X2,X8)
                       => ? [X9] : 
                            ( event(X2,X9)
                            & agent(X2,X9,X8)
                            & present(X2,X9)
                            & smoke(X2,X9) ) )
                    & of(U,X3,X4)
                    & man(U,X4)
                    & jules_forename(U,X3)
                    & forename(U,X3)
                    & man(U,X4)
                    & state(U,X5)
                    & be(U,X5,X4,X4)
                    & proposition(U,X7)
                    & agent(U,X6,V)
                    & theme(U,X6,X7)
                    & event(U,X6)
                    & present(U,X6)
                    & think_believe_consider(U,X6)
                    & accessible_world(U,X7)
                    & ? [X10] : 
                        ( event(X7,X10)
                        & agent(X7,X10,Y)
                        & present(X7,X10)
                        & smoke(X7,X10) ) ) ) ) ) )).

%--------------------------------------------------------------------------