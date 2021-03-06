%--------------------------------------------------------------------------
% File     : SWC111+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_ne_segment_total1_x_run_ord_max1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_ne_segment_total1_x_run_ord_max1 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  412 (  75 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  346 (  30 ~  ;  15  |;  44  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  208 (   0 singleton; 194 !;  14 ?)
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
                      | ~ segmentP(X,W)
                      | ~ totalorderedP(W)
                      | ? [Y] : 
                          ( ssList(Y)
                          & neq(W,Y)
                          & segmentP(X,Y)
                          & segmentP(Y,W)
                          & totalorderedP(Y) )
                      | ( ( nil != V
                          | nil = U )
                        & ( ~ neq(V,nil)
                          | ( neq(U,nil)
                            & segmentP(V,U) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
