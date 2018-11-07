%--------------------------------------------------------------------------
% File     : SWC202+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_equal3_x_run_eq_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_equal3_x_run_eq_max2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  420 (  81 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  354 (  30 ~  ;  16  |;  48  &)
%                                         (  26 <=>; 234 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 197 !;  20 ?)
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
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ! [Z] : 
                              ( ssItem(Z)
                             => ( ~ memberP(U,Z)
                                | Y = Z ) ) )
                      | ! [X1] : 
                          ( ssList(X1)
                         => ! [X2] : 
                              ( ssList(X2)
                             => ( app(app(X1,W),X2) != X
                                | ~ equalelemsP(W)
                                | ? [X3] : 
                                    ( ssItem(X3)
                                    & ? [X4] : 
                                        ( ssList(X4)
                                        & app(X4,cons(X3,nil)) = X1
                                        & ? [X5] : 
                                            ( ssList(X5)
                                            & app(cons(X3,nil),X5) = W ) ) )
                                | ? [X6] : 
                                    ( ssItem(X6)
                                    & ? [X7] : 
                                        ( ssList(X7)
                                        & app(cons(X6,nil),X7) = X2
                                        & ? [X8] : 
                                            ( ssList(X8)
                                            & app(X8,cons(X6,nil)) = W ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
