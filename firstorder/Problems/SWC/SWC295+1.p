%--------------------------------------------------------------------------
% File     : SWC295+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_strict_sorted2_x_maximal
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_strict_sorted2_x_maximal [Wei00]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.67 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  418 (  78 equality)
%            Maximal formula depth :   24 (   7 average)
%            Number of connectives :  356 (  34 ~  ;  17  |;  43  &)
%                                         (  26 <=>; 236 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 199 !;  14 ?)
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
                          ( ssItem(Y)
                         => ! [Z] : 
                              ( ssList(Z)
                             => ! [X1] : 
                                  ( ssList(X1)
                                 => ( app(app(Z,cons(Y,nil)),X1) != U
                                    | ! [X2] : 
                                        ( ssItem(X2)
                                       => ( ( ~ memberP(Z,X2)
                                            | lt(X2,Y) )
                                          & ( ~ memberP(X1,X2)
                                            | lt(Y,X2) ) ) ) ) ) ) )
                      | ( ! [X3] : 
                            ( ssItem(X3)
                           => ( cons(X3,nil) != W
                              | ~ memberP(X,X3)
                              | ? [X4] : 
                                  ( ssItem(X4)
                                  & X3 != X4
                                  & memberP(X,X4)
                                  & leq(X3,X4) ) ) )
                        & ( nil != X
                          | nil != W ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------