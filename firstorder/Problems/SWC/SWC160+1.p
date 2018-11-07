%--------------------------------------------------------------------------
% File     : SWC160+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_cyc_sorted_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_cyc_sorted_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  424 (  79 equality)
%            Maximal formula depth :   30 (   7 average)
%            Number of connectives :  360 (  32 ~  ;  17  |;  47  &)
%                                         (  26 <=>; 238 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  218 (   0 singleton; 201 !;  17 ?)
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
                      | ! [X4] : 
                          ( ssItem(X4)
                         => ! [X5] : 
                              ( ssItem(X5)
                             => ! [X6] : 
                                  ( ssList(X6)
                                 => ! [X7] : 
                                      ( ssList(X7)
                                     => ! [X8] : 
                                          ( ssList(X8)
                                         => ( app(app(app(app(X6,cons(X4,nil)),X7),cons(X5,nil)),X8) != U
                                            | ~ leq(X5,X4)
                                            | ( ! [X9] : 
                                                  ( ssItem(X9)
                                                 => ( ~ memberP(X7,X9)
                                                    | ( leq(X4,X9)
                                                      & leq(X9,X5) ) ) )
                                              & leq(X4,X5) ) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
