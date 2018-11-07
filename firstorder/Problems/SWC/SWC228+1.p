%--------------------------------------------------------------------------
% File     : SWC228+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_pivoted1_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_pivoted1_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  422 (  80 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  358 (  32 ~  ;  18  |;  49  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 196 !;  20 ?)
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
                      | nil = U
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ? [Z] : 
                              ( ssList(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & app(app(Z,cons(Y,nil)),X1) = U
                                  & ! [X2] : 
                                      ( ssItem(X2)
                                     => ( ~ memberP(Z,X2)
                                        | ~ memberP(X1,X2)
                                        | ~ leq(Y,X2)
                                        | leq(X2,Y) ) ) ) ) )
                      | ! [X3] : 
                          ( ssList(X3)
                         => ( app(W,X3) != X
                            | ~ strictorderedP(W)
                            | ? [X4] : 
                                ( ssItem(X4)
                                & ? [X5] : 
                                    ( ssList(X5)
                                    & app(cons(X4,nil),X5) = X3
                                    & ? [X6] : 
                                        ( ssItem(X6)
                                        & ? [X7] : 
                                            ( ssList(X7)
                                            & app(X7,cons(X6,nil)) = W
                                            & lt(X6,X4) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
