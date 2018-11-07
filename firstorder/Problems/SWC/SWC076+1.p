%--------------------------------------------------------------------------
% File     : SWC076+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_id_segment_total2_x_run_eq_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_total2_x_run_eq_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  422 (  82 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  355 (  29 ~  ;  16  |;  51  &)
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
                      | ? [Y] : 
                          ( ssList(Y)
                          & neq(Y,nil)
                          & segmentP(V,Y)
                          & segmentP(U,Y) )
                      | ! [Z] : 
                          ( ssList(Z)
                         => ! [X1] : 
                              ( ssList(X1)
                             => ( app(app(Z,W),X1) != X
                                | ~ equalelemsP(W)
                                | ? [X2] : 
                                    ( ssItem(X2)
                                    & ? [X3] : 
                                        ( ssList(X3)
                                        & app(X3,cons(X2,nil)) = Z
                                        & ? [X4] : 
                                            ( ssList(X4)
                                            & app(cons(X2,nil),X4) = W ) ) )
                                | ? [X5] : 
                                    ( ssItem(X5)
                                    & ? [X6] : 
                                        ( ssList(X6)
                                        & app(cons(X5,nil),X6) = X1
                                        & ? [X7] : 
                                            ( ssList(X7)
                                            & app(X7,cons(X5,nil)) = W ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( nil = V
                        & nil = U ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
