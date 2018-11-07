%--------------------------------------------------------------------------
% File     : SWC299+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_pst_top_sorted_x_pivot
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_top_sorted_x_pivot [Wei00]

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  420 (  78 equality)
%            Maximal formula depth :   25 (   7 average)
%            Number of connectives :  356 (  32 ~  ;  16  |;  43  &)
%                                         (  26 <=>; 239 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  217 (   0 singleton; 202 !;  15 ?)
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
                          ( ssItem(Y)
                         => ! [Z] : 
                              ( ssItem(Z)
                             => ! [X1] : 
                                  ( ssList(X1)
                                 => ! [X2] : 
                                      ( ssList(X2)
                                     => ! [X3] : 
                                          ( ssList(X3)
                                         => ( app(app(app(app(X1,cons(Y,nil)),X2),cons(Z,nil)),X3) != U
                                            | ~ lt(Z,Y) ) ) ) ) ) )
                      | ( ! [X4] : 
                            ( ssItem(X4)
                           => ! [X5] : 
                                ( ssList(X5)
                               => ! [X6] : 
                                    ( ssList(X6)
                                   => ( cons(X4,nil) != W
                                      | app(app(X5,W),X6) != X
                                      | ? [X7] : 
                                          ( ssItem(X7)
                                          & memberP(X5,X7)
                                          & lt(X4,X7) )
                                      | ? [X8] : 
                                          ( ssItem(X8)
                                          & memberP(X6,X8)
                                          & lt(X8,X4) ) ) ) ) )
                        & ( nil != X
                          | nil != W ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
