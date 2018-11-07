%--------------------------------------------------------------------------
% File     : SWC092+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_id_segment_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.33 v2.5.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  78 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  351 (  30 ~  ;  15  |;  48  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 195 !;  18 ?)
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
                      | ~ neq(V,nil)
                      | ? [Y] : 
                          ( ssList(Y)
                          & neq(Y,nil)
                          & segmentP(V,Y)
                          & segmentP(U,Y) )
                      | ! [Z] : 
                          ( ssList(Z)
                         => ( app(W,Z) != X
                            | ~ strictorderedP(W)
                            | ? [X1] : 
                                ( ssItem(X1)
                                & ? [X2] : 
                                    ( ssList(X2)
                                    & app(cons(X1,nil),X2) = Z
                                    & ? [X3] : 
                                        ( ssItem(X3)
                                        & ? [X4] : 
                                            ( ssList(X4)
                                            & app(X4,cons(X3,nil)) = W
                                            & lt(X3,X1) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------