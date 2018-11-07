%--------------------------------------------------------------------------
% File     : SWC009+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_filter_segment_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_filter_segment_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.56 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  80 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  350 (  29 ~  ;  14  |;  49  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  215 (   0 singleton; 195 !;  20 ?)
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
                          & ? [Z] : 
                              ( ssList(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & app(app(Y,Z),X1) = V
                                  & app(Y,X1) = U ) ) )
                      | ! [X2] : 
                          ( ssList(X2)
                         => ( app(W,X2) != X
                            | ~ strictorderedP(W)
                            | ? [X3] : 
                                ( ssItem(X3)
                                & ? [X4] : 
                                    ( ssList(X4)
                                    & app(cons(X3,nil),X4) = X2
                                    & ? [X5] : 
                                        ( ssItem(X5)
                                        & ? [X6] : 
                                            ( ssList(X6)
                                            & app(X6,cons(X5,nil)) = W
                                            & lt(X5,X3) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
