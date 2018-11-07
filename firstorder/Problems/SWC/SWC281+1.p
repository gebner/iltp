%--------------------------------------------------------------------------
% File     : SWC281+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_sorted2_x_run_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_sorted2_x_run_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  421 (  79 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  357 (  32 ~  ;  17  |;  46  &)
%                                         (  26 <=>; 236 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 199 !;  17 ?)
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
                            | ~ totalorderedP(W)
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
                                            & leq(X2,Z) ) ) ) ) ) )
                      | ! [X4] : 
                          ( ssItem(X4)
                         => ! [X5] : 
                              ( ssList(X5)
                             => ! [X6] : 
                                  ( ssList(X6)
                                 => ( app(app(X5,cons(X4,nil)),X6) != U
                                    | ! [X7] : 
                                        ( ssItem(X7)
                                       => ( ( ~ memberP(X5,X7)
                                            | leq(X7,X4) )
                                          & ( ~ memberP(X6,X7)
                                            | leq(X4,X7) ) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
