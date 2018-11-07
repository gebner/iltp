%--------------------------------------------------------------------------
% File     : SWC244+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_pst_pivoted3_x_run_eq_front1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_pivoted3_x_run_eq_front1 [Wei00]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.67 v2.5.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  75 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  352 (  31 ~  ;  17  |;  46  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  212 (   0 singleton; 195 !;  17 ?)
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
                      | ~ frontsegP(X,W)
                      | ~ equalelemsP(W)
                      | nil = U
                      | ? [Y] : 
                          ( ssList(Y)
                          & neq(W,Y)
                          & frontsegP(X,Y)
                          & segmentP(Y,W)
                          & equalelemsP(Y) )
                      | ? [Z] : 
                          ( ssItem(Z)
                          & ? [X1] : 
                              ( ssList(X1)
                              & ? [X2] : 
                                  ( ssList(X2)
                                  & app(app(X1,cons(Z,nil)),X2) = U
                                  & ! [X3] : 
                                      ( ssItem(X3)
                                     => ( ~ memberP(X1,X3)
                                        | ~ memberP(X2,X3)
                                        | ~ lt(Z,X3)
                                        | leq(Z,X3) ) ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
