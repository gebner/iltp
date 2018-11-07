%--------------------------------------------------------------------------
% File     : SWC330+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_run_eq_x_pivot
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_run_eq_x_pivot [Wei00]

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  415 (  77 equality)
%            Maximal formula depth :   25 (   7 average)
%            Number of connectives :  351 (  32 ~  ;  17  |;  44  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  212 (   0 singleton; 197 !;  15 ?)
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
                    | ( ! [Y] : 
                          ( ssItem(Y)
                         => ! [Z] : 
                              ( ssList(Z)
                             => ! [X1] : 
                                  ( ~ ssList(X1)
                                  | cons(Y,nil) != W
                                  | app(app(Z,W),X1) != X
                                  | ? [X2] : 
                                      ( ssItem(X2)
                                      & memberP(Z,X2)
                                      & lt(Y,X2) )
                                  | ? [X3] : 
                                      ( ssItem(X3)
                                      & memberP(X1,X3)
                                      & lt(X3,Y) ) ) ) )
                      & ( nil != X
                        | nil != W ) )
                    | ( segmentP(V,U)
                      & equalelemsP(U) ) ) ) ) ) )).

%--------------------------------------------------------------------------
