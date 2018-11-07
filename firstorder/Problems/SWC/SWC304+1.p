%--------------------------------------------------------------------------
% File     : SWC304+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_top_sorted_x_run_ord_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_top_sorted_x_run_ord_max2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  427 (  81 equality)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :  362 (  31 ~  ;  16  |;  51  &)
%                                         (  26 <=>; 238 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  222 (   0 singleton; 201 !;  21 ?)
%            Maximal term depth    :    6 (   1 average)

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
                                | ~ totalorderedP(W)
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
                                                & leq(X1,X3) ) ) ) )
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
                                                & leq(X7,X5) ) ) ) ) ) ) )
                      | ! [X9] : 
                          ( ssItem(X9)
                         => ! [X10] : 
                              ( ssItem(X10)
                             => ! [X11] : 
                                  ( ssList(X11)
                                 => ! [X12] : 
                                      ( ssList(X12)
                                     => ! [X13] : 
                                          ( ssList(X13)
                                         => ( app(app(app(app(X11,cons(X9,nil)),X12),cons(X10,nil)),X13) != U
                                            | ~ lt(X10,X9) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
