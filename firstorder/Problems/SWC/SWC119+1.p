%--------------------------------------------------------------------------
% File     : SWC119+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_ne_segment_total2_x_some_total1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_ne_segment_total2_x_some_total1 [Wei00]

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 1.00 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  410 (  78 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  343 (  29 ~  ;  14  |;  42  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  208 (   0 singleton; 195 !;  13 ?)
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
                      | ( nil != W
                        & nil = X )
                      | ( nil = V
                        & nil = U )
                      | ( ! [Y] : 
                            ( ssItem(Y)
                           => ( cons(Y,nil) != W
                              | ~ memberP(X,Y) ) )
                        & neq(X,nil) )
                      | ( neq(U,nil)
                        & segmentP(V,U) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
