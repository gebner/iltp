%--------------------------------------------------------------------------
% File     : NLP032+1 : ILTP v1.1.2
% Domain   : Natural Language Processing
% Problem  : Three young guys, problem 7
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Three young guys sit at a table with hamburgers."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris009 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.50 v3.1.0, 0.67 v2.7.0, 0.83 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   72 (   0 equality)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   73 (   2 ~  ;   0  |;  53  &)
%                                         (   0 <=>;  18 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   14 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   36 (   0 singleton;  16 !;  20 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V] : 
                    ( ! [W] : 
                        ( member(U,W,V)
                       => ? [X,Y] : 
                            ( table(U,X)
                            & ! [Z] : 
                                ( member(U,Z,Y)
                               => ? [X1] : 
                                    ( event(U,X1)
                                    & agent(U,X1,Z)
                                    & present(U,X1)
                                    & sit(U,X1)
                                    & at(U,X1,X)
                                    & with(U,X1,W) ) )
                            & three(U,Y)
                            & group(U,Y)
                            & ! [X2] : 
                                ( member(U,X2,Y)
                               => ( guy(U,X2)
                                  & young(U,X2) ) ) ) )
                    & group(U,V)
                    & ! [X3] : 
                        ( member(U,X3,V)
                       => hamburger(U,X3) ) ) )
           => ? [X4] : 
                ( actual_world(X4)
                & ? [X5] : 
                    ( ! [X6] : 
                        ( member(X4,X6,X5)
                       => ? [X7] : 
                            ( ! [X8] : 
                                ( member(X4,X8,X7)
                               => ? [X9,X10] : 
                                    ( table(X4,X9)
                                    & event(X4,X10)
                                    & agent(X4,X10,X8)
                                    & present(X4,X10)
                                    & sit(X4,X10)
                                    & at(X4,X10,X9)
                                    & with(X4,X10,X6) ) )
                            & three(X4,X7)
                            & group(X4,X7)
                            & ! [X11] : 
                                ( member(X4,X11,X7)
                               => ( guy(X4,X11)
                                  & young(X4,X11) ) ) ) )
                    & group(X4,X5)
                    & ! [X12] : 
                        ( member(X4,X12,X5)
                       => hamburger(X4,X12) ) ) ) )
          & ( ? [X4] : 
                ( actual_world(X4)
                & ? [X5] : 
                    ( ! [X6] : 
                        ( member(X4,X6,X5)
                       => ? [X7] : 
                            ( ! [X8] : 
                                ( member(X4,X8,X7)
                               => ? [X9,X10] : 
                                    ( table(X4,X9)
                                    & event(X4,X10)
                                    & agent(X4,X10,X8)
                                    & present(X4,X10)
                                    & sit(X4,X10)
                                    & at(X4,X10,X9)
                                    & with(X4,X10,X6) ) )
                            & three(X4,X7)
                            & group(X4,X7)
                            & ! [X11] : 
                                ( member(X4,X11,X7)
                               => ( guy(X4,X11)
                                  & young(X4,X11) ) ) ) )
                    & group(X4,X5)
                    & ! [X12] : 
                        ( member(X4,X12,X5)
                       => hamburger(X4,X12) ) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V] : 
                    ( ! [W] : 
                        ( member(U,W,V)
                       => ? [X,Y] : 
                            ( table(U,X)
                            & ! [Z] : 
                                ( member(U,Z,Y)
                               => ? [X1] : 
                                    ( event(U,X1)
                                    & agent(U,X1,Z)
                                    & present(U,X1)
                                    & sit(U,X1)
                                    & at(U,X1,X)
                                    & with(U,X1,W) ) )
                            & three(U,Y)
                            & group(U,Y)
                            & ! [X2] : 
                                ( member(U,X2,Y)
                               => ( guy(U,X2)
                                  & young(U,X2) ) ) ) )
                    & group(U,V)
                    & ! [X3] : 
                        ( member(U,X3,V)
                       => hamburger(U,X3) ) ) ) ) ) )).

%--------------------------------------------------------------------------
