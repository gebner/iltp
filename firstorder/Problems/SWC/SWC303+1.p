%--------------------------------------------------------------------------
% File     : SWC303+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_top_sorted_x_run_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_top_sorted_x_run_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  419 (  79 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  357 (  34 ~  ;  18  |;  45  &)
%                                         (  26 <=>; 234 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 200 !;  17 ?)
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
                    ( ~ ssList(X)
                    | X != V
                    | W != U
                    | ! [Y] : 
                        ( ~ ssList(Y)
                        | app(W,Y) != X
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
                                        & leq(X2,Z) ) ) ) ) )
                    | ! [X4] : 
                        ( ssItem(X4)
                       => ! [X5] : 
                            ( ssItem(X5)
                           => ! [X6] : 
                                ( ssList(X6)
                               => ! [X7] : 
                                    ( ssList(X7)
                                   => ! [X8] : 
                                        ( ~ ssList(X8)
                                        | app(app(app(app(X6,cons(X4,nil)),X7),cons(X5,nil)),X8) != U
                                        | ~ lt(X5,X4) ) ) ) ) )
                    | ( nil != X
                      & nil = W ) ) ) ) ) )).

%--------------------------------------------------------------------------