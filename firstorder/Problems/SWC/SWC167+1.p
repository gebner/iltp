%--------------------------------------------------------------------------
% File     : SWC167+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_diff_adj1_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_diff_adj1_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  418 (  79 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  352 (  30 ~  ;  15  |;  45  &)
%                                         (  26 <=>; 236 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 199 !;  17 ?)
%            Maximal term depth    :    5 (   1 average)

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
                                     => ( app(app(app(X6,cons(X4,nil)),cons(X5,nil)),X7) != U
                                        | neq(X4,X5) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
