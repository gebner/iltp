%--------------------------------------------------------------------------
% File     : SWC100+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_ne_segment_front_total1_x_run_strict_ord_front2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_ne_segment_front_total1_x_run_strict_ord_front2 [Wei00]

% Status   : Theorem
% Rating   : 0.36 v3.1.0, 0.56 v2.7.0, 0.50 v2.5.0, 0.33 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  80 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  352 (  31 ~  ;  16  |;  47  &)
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
                      | ! [Y] : 
                          ( ssList(Y)
                         => ( app(W,Y) != X
                            | ~ strictorderedP(W)
                            | ? [Z] : 
                                ( ssItem(Z)
                                & ? [X1] : 
                                    ( ssList(X1)
                                    & app(cons(Z,nil),X1) = Y
                                    & ? [X2] : 
                                        ( ssItem(X2)
                                        & ? [X3] : 
                                            ( ssList(X3)
                                            & app(X3,cons(X2,nil)) = W
                                            & lt(X2,Z) ) ) ) ) ) )
                      | ( nil != X
                        & nil = W )
                      | ( ( nil != V
                          | nil = U )
                        & ( ~ neq(V,nil)
                          | ( neq(U,nil)
                            & frontsegP(V,U) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
