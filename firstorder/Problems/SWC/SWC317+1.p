%--------------------------------------------------------------------------
% File     : SWC317+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_rot_r2_x_rot_r2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rot_r2_x_rot_r2 [Wei00]

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.56 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  411 (  77 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  345 (  30 ~  ;  14  |;  42  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  211 (   0 singleton; 196 !;  15 ?)
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
                      | ( ( ~ neq(V,nil)
                          | ? [Y] : 
                              ( ssItem(Y)
                              & ? [Z] : 
                                  ( ssList(Z)
                                  & app(cons(Y,nil),Z) = U
                                  & app(Z,cons(Y,nil)) = V ) )
                          | ! [X1] : 
                              ( ssItem(X1)
                             => ! [X2] : 
                                  ( ssList(X2)
                                 => ( app(cons(X1,nil),X2) != W
                                    | app(X2,cons(X1,nil)) != X ) ) ) )
                        & ( ~ neq(V,nil)
                          | neq(X,nil) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------