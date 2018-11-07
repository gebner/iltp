%--------------------------------------------------------------------------
% File     : SWC064+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_id_segment_total1_x_rot_r_total3
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_segment_total1_x_rot_r_total3 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  413 (  79 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  347 (  30 ~  ;  14  |;  46  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 194 !;  16 ?)
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
                          ( ssItem(Y)
                          & ? [Z] : 
                              ( ssList(Z)
                              & app(cons(Y,nil),Z) != W
                              & app(Z,cons(Y,nil)) = X ) )
                      | ( nil != W
                        & nil = X )
                      | ( ( nil != V
                          | nil = U )
                        & ( ~ neq(V,nil)
                          | ? [X1] : 
                              ( ssList(X1)
                              & neq(X1,nil)
                              & segmentP(V,X1)
                              & segmentP(U,X1) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------