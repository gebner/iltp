%--------------------------------------------------------------------------
% File     : SWC153+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pst_cyc_sorted_x_pst_cyc_sorted
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_cyc_sorted_x_pst_cyc_sorted [Wei00]

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.56 v2.7.0, 0.50 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  424 (  75 equality)
%            Maximal formula depth :   30 (   7 average)
%            Number of connectives :  360 (  32 ~  ;  16  |;  49  &)
%                                         (  26 <=>; 237 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  219 (   0 singleton; 200 !;  19 ?)
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
                   => ( X != V
                      | W != U
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ? [Z] : 
                              ( ssItem(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & ? [X2] : 
                                      ( ssList(X2)
                                      & ? [X3] : 
                                          ( ssList(X3)
                                          & app(app(app(app(X1,cons(Y,nil)),X2),cons(Z,nil)),X3) = W
                                          & leq(Z,Y)
                                          & ( ~ leq(Y,Z)
                                            | ? [X4] : 
                                                ( ssItem(X4)
                                                & memberP(X2,X4)
                                                & ( ~ leq(Y,X4)
                                                  | ~ leq(X4,Z) ) ) ) ) ) ) ) )
                      | ! [X5] : 
                          ( ssItem(X5)
                         => ! [X6] : 
                              ( ssItem(X6)
                             => ! [X7] : 
                                  ( ssList(X7)
                                 => ! [X8] : 
                                      ( ssList(X8)
                                     => ! [X9] : 
                                          ( ssList(X9)
                                         => ( app(app(app(app(X7,cons(X5,nil)),X8),cons(X6,nil)),X9) != U
                                            | ~ leq(X6,X5)
                                            | ( ! [X10] : 
                                                  ( ssItem(X10)
                                                 => ( ~ memberP(X8,X10)
                                                    | ( leq(X10,X6)
                                                      & leq(X5,X10) ) ) )
                                              & leq(X5,X6) ) ) ) ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
