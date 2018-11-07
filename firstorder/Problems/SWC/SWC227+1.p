%--------------------------------------------------------------------------
% File     : SWC227+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_pivoted1_x_run_ord_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_pivoted1_x_run_ord_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  430 (  82 equality)
%            Maximal formula depth :   31 (   7 average)
%            Number of connectives :  369 (  35 ~  ;  22  |;  55  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  221 (   0 singleton; 197 !;  24 ?)
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
                                    | ~ leq(Y,X2)
                                    | leq(X2,Y) ) ) ) )
                    | ! [X3] : 
                        ( ssList(X3)
                       => ! [X4] : 
                            ( ~ ssList(X4)
                            | app(app(X3,W),X4) != X
                            | ~ totalorderedP(W)
                            | ? [X5] : 
                                ( ssItem(X5)
                                & ? [X6] : 
                                    ( ssList(X6)
                                    & app(X6,cons(X5,nil)) = X3
                                    & ? [X7] : 
                                        ( ssItem(X7)
                                        & ? [X8] : 
                                            ( ssList(X8)
                                            & app(cons(X7,nil),X8) = W
                                            & leq(X5,X7) ) ) ) )
                            | ? [X9] : 
                                ( ssItem(X9)
                                & ? [X10] : 
                                    ( ssList(X10)
                                    & app(cons(X9,nil),X10) = X4
                                    & ? [X11] : 
                                        ( ssItem(X11)
                                        & ? [X12] : 
                                            ( ssList(X12)
                                            & app(X12,cons(X11,nil)) = W
                                            & leq(X11,X9) ) ) ) ) ) )
                    | ( nil != X
                      & nil = W ) ) ) ) ) )).

%--------------------------------------------------------------------------
