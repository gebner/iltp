%--------------------------------------------------------------------------
% File     : SWC308+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_rot_l1_x_rot_l_total3
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rot_l1_x_rot_l_total3 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  418 (  82 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives :  351 (  29 ~  ;  13  |;  52  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 194 !;  19 ?)
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
                          & U = Y
                          & ? [Z] : 
                              ( ssList(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & tl(V) = Z
                                  & app(Z,X1) = Y
                                  & ? [X2] : 
                                      ( ssItem(X2)
                                      & cons(X2,nil) = X1
                                      & hd(V) = X2
                                      & neq(nil,V) )
                                  & neq(nil,V) ) ) )
                      | ? [X3] : 
                          ( ssItem(X3)
                          & ? [X4] : 
                              ( ssList(X4)
                              & app(X4,cons(X3,nil)) != W
                              & app(cons(X3,nil),X4) = X ) )
                      | ( nil != W
                        & nil = X ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
