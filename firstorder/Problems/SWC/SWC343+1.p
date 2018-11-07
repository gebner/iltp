%--------------------------------------------------------------------------
% File     : SWC343+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_front2_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_run_strict_ord_front2_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.67 v2.5.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  424 (  83 equality)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :  361 (  33 ~  ;  17  |;  49  &)
%                                         (  26 <=>; 236 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 199 !;  18 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/SWC001+0.ax').
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ! [U] : 
        ( ssList(U)
       => ! [V] : 
            ( ssList(V)
           => ! [W] : 
                ( ssList(W)
               => ! [X] : 
                    ( ssList(X)
                   => ( V != X
                      | U != W
                      | ! [Y] : 
                          ( ssList(Y)
                         => ( app(W,Y) != X
                            | ~ strictorderedP(W)
                            | ? [Z] : 
                                ( ssItem(Z)
                                & ? [X1] : 
                                    ( ssList(X1)
                                    & app(cons(Z,nil),X1) = Y
                                    & ? [X2] : 
                                        ( ssItem(X2)
                                        & ? [X3] : 
                                            ( ssList(X3)
                                            & app(X3,cons(X2,nil)) = W
                                            & lt(X2,Z) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( ? [X4] : 
                            ( ssList(X4)
                            & app(U,X4) = V
                            & ! [X5] : 
                                ( ssItem(X5)
                               => ! [X6] : 
                                    ( ssList(X6)
                                   => ( app(cons(X5,nil),X6) != X4
                                      | ! [X7] : 
                                          ( ssItem(X7)
                                         => ! [X8] : 
                                              ( ssList(X8)
                                             => ( app(X8,cons(X7,nil)) != U
                                                | ~ lt(X7,X5) ) ) ) ) ) )
                            & strictorderedP(U) )
                        & ( nil != U
                          | nil = V ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
