%--------------------------------------------------------------------------
% File     : NLP123+1 : ILTP v1.1.0
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 10
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in 
%            hollywood."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris100 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v3.1.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   68 (   0 equality)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :   69 (   2 ~  ;   0  |;  65  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   17 (   0 propositional; 1-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   22 (   0 singleton;   0 !;  22 ?)
%            Maximal term depth    :    1 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ~ ( ( ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y] : 
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
                    & in(U,Y,W) ) )
           => ? [Z] : 
                ( actual_world(Z)
                & ? [X1,X2,X3,X4,X5] : 
                    ( of(Z,X2,X1)
                    & city(Z,X1)
                    & hollywood_placename(Z,X2)
                    & placename(Z,X2)
                    & chevy(Z,X3)
                    & white(Z,X3)
                    & dirty(Z,X3)
                    & old(Z,X3)
                    & street(Z,X4)
                    & lonely(Z,X4)
                    & event(Z,X5)
                    & agent(Z,X5,X3)
                    & present(Z,X5)
                    & barrel(Z,X5)
                    & down(Z,X5,X4)
                    & in(Z,X5,X1) ) ) )
          & ( ? [Z] : 
                ( actual_world(Z)
                & ? [X1,X2,X3,X4,X5] : 
                    ( of(Z,X2,X1)
                    & city(Z,X1)
                    & hollywood_placename(Z,X2)
                    & placename(Z,X2)
                    & chevy(Z,X3)
                    & white(Z,X3)
                    & dirty(Z,X3)
                    & old(Z,X3)
                    & street(Z,X4)
                    & lonely(Z,X4)
                    & event(Z,X5)
                    & agent(Z,X5,X3)
                    & present(Z,X5)
                    & barrel(Z,X5)
                    & down(Z,X5,X4)
                    & in(Z,X5,X1) ) )
           => ? [U] : 
                ( actual_world(U)
                & ? [V,W,X,Y] : 
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
                    & in(U,Y,W) ) ) ) ) )).

%--------------------------------------------------------------------------