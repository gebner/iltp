%--------------------------------------------------------------------------
% File     : SWC154+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_cyc_sorted_x_pst_equal1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_cyc_sorted_x_pst_equal1 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  418 (  76 equality)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :  352 (  30 ~  ;  14  |;  45  &)
%                                         (  26 <=>; 237 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 200 !;  17 ?)
%            Maximal term depth    :    6 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include list specification axioms and substitution axioms
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
                          & ? [Z] : 
                              ( ssItem(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & ? [X2] : 
                                      ( ssList(X2)
                                      & Y != Z
                                      & app(app(app(X1,cons(Y,nil)),cons(Z,nil)),X2) = W ) ) ) )
                      | ! [X3] : 
                          ( ssItem(X3)
                         => ! [X4] : 
                              ( ssItem(X4)
                             => ! [X5] : 
                                  ( ssList(X5)
                                 => ! [X6] : 
                                      ( ssList(X6)
                                     => ! [X7] : 
                                          ( ssList(X7)
                                         => ( app(app(app(app(X5,cons(X3,nil)),X6),cons(X4,nil)),X7) != U
                                            | ~ leq(X4,X3)
                                            | ( ! [X8] : 
                                                  ( ssItem(X8)
                                                 => ( ~ memberP(X6,X8)
                                                    | ( leq(X3,X8)
                                                      & leq(X8,X4) ) ) )
                                              & leq(X3,X4) ) ) ) ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
