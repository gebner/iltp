%--------------------------------------------------------------------------
% File     : SWC313+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_rot_l_total2_x_rot_l_total3
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rot_l_total2_x_rot_l_total3 [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.89 v2.7.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  413 (  81 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  347 (  30 ~  ;  14  |;  46  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  211 (   0 singleton; 194 !;  17 ?)
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
                              & app(Z,cons(Y,nil)) != W
                              & app(cons(Y,nil),Z) = X ) )
                      | ( nil != W
                        & nil = X )
                      | ( ( nil != V
                          | nil = U )
                        & ( ~ neq(V,nil)
                          | ? [X1] : 
                              ( ssItem(X1)
                              & ? [X2] : 
                                  ( ssList(X2)
                                  & app(cons(X1,nil),X2) = V
                                  & app(X2,cons(X1,nil)) = U ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
