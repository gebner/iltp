%--------------------------------------------------------------------------
% File     : SWC326+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_run_eq_front2_x_run_eq_front1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_run_eq_front2_x_run_eq_front1 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  78 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  352 (  31 ~  ;  15  |;  46  &)
%                                         (  26 <=>; 234 =>;   0 <=)
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
                    ( ssList(X)
                   => ( V != X
                      | U != W
                      | ~ frontsegP(X,W)
                      | ~ equalelemsP(W)
                      | ? [Y] : 
                          ( ssList(Y)
                          & neq(W,Y)
                          & frontsegP(X,Y)
                          & segmentP(Y,W)
                          & equalelemsP(Y) )
                      | ( ? [Z] : 
                            ( ssList(Z)
                            & app(U,Z) = V
                            & ! [X1] : 
                                ( ssItem(X1)
                               => ! [X2] : 
                                    ( ssList(X2)
                                   => ( app(cons(X1,nil),X2) != Z
                                      | ! [X3] : 
                                          ( ssList(X3)
                                         => app(X3,cons(X1,nil)) != U ) ) ) )
                            & equalelemsP(U) )
                        & ( nil != U
                          | nil = V ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------