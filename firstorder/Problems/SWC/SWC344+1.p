%--------------------------------------------------------------------------
% File     : SWC344+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_run_strict_ord_max2_x_run_strict_ord_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_run_strict_ord_max2_x_run_strict_ord_max2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  440 (  87 equality)
%            Maximal formula depth :   32 (   7 average)
%            Number of connectives :  380 (  36 ~  ;  20  |;  57  &)
%                                         (  26 <=>; 241 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  227 (   0 singleton; 204 !;  23 ?)
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
                         => ! [Z] : 
                              ( ssList(Z)
                             => ( app(app(Y,W),Z) != X
                                | ~ strictorderedP(W)
                                | ? [X1] : 
                                    ( ssItem(X1)
                                    & ? [X2] : 
                                        ( ssList(X2)
                                        & app(X2,cons(X1,nil)) = Y
                                        & ? [X3] : 
                                            ( ssItem(X3)
                                            & ? [X4] : 
                                                ( ssList(X4)
                                                & app(cons(X3,nil),X4) = W
                                                & lt(X1,X3) ) ) ) )
                                | ? [X5] : 
                                    ( ssItem(X5)
                                    & ? [X6] : 
                                        ( ssList(X6)
                                        & app(cons(X5,nil),X6) = Z
                                        & ? [X7] : 
                                            ( ssItem(X7)
                                            & ? [X8] : 
                                                ( ssList(X8)
                                                & app(X8,cons(X7,nil)) = W
                                                & lt(X7,X5) ) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( ? [X9] : 
                            ( ssList(X9)
                            & ? [X10] : 
                                ( ssList(X10)
                                & app(app(X9,U),X10) = V
                                & ! [X11] : 
                                    ( ssItem(X11)
                                   => ! [X12] : 
                                        ( ssList(X12)
                                       => ( app(X12,cons(X11,nil)) != X9
                                          | ! [X13] : 
                                              ( ssItem(X13)
                                             => ! [X14] : 
                                                  ( ssList(X14)
                                                 => ( app(cons(X13,nil),X14) != U
                                                    | ~ lt(X11,X13) ) ) ) ) ) )
                                & ! [X15] : 
                                    ( ssItem(X15)
                                   => ! [X16] : 
                                        ( ssList(X16)
                                       => ( app(cons(X15,nil),X16) != X10
                                          | ! [X17] : 
                                              ( ssItem(X17)
                                             => ! [X18] : 
                                                  ( ssList(X18)
                                                 => ( app(X18,cons(X17,nil)) != U
                                                    | ~ lt(X17,X15) ) ) ) ) ) )
                                & strictorderedP(U) ) )
                        & ( nil != U
                          | nil = V ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
