%--------------------------------------------------------------------------
% File     : SWC246+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_pivoted3_x_run_eq_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_pivoted3_x_run_eq_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  426 (  82 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  365 (  35 ~  ;  22  |;  51  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  219 (   0 singleton; 197 !;  22 ?)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | nil = U
                    | ? [Y] : 
                        ( ssItem(Y)
                        & ? [Z] : 
                            ( ssList(Z)
                            & ? [X1] : 
                                ( ssList(X1)
                                & app(app(Z,cons(Y,nil)),X1) = U
                                & ! [X2] : 
                                    ( ~ ssItem(X2)
                                    | ~ memberP(Z,X2)
                                    | ~ memberP(X1,X2)
                                    | ~ lt(Y,X2)
                                    | leq(Y,X2) ) ) ) )
                    | ! [X3] : 
                        ( ssList(X3)
                       => ! [X4] : 
                            ( ~ ssList(X4)
                            | app(app(X3,W),X4) != X
                            | ~ equalelemsP(W)
                            | ? [X5] : 
                                ( ssItem(X5)
                                & ? [X6] : 
                                    ( ssList(X6)
                                    & app(X6,cons(X5,nil)) = X3
                                    & ? [X7] : 
                                        ( ssList(X7)
                                        & app(cons(X5,nil),X7) = W ) ) )
                            | ? [X8] : 
                                ( ssItem(X8)
                                & ? [X9] : 
                                    ( ssList(X9)
                                    & app(cons(X8,nil),X9) = X4
                                    & ? [X10] : 
                                        ( ssList(X10)
                                        & app(X10,cons(X8,nil)) = W ) ) ) ) )
                    | ( nil != X
                      & nil = W ) ) ) ) ) )).

%--------------------------------------------------------------------------
